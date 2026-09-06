import pandas as pd
import plotly.graph_objects as go
import numpy as np
import json
from math import pi, cos, sin


def load_trade_data(data_file, variable_suffix='_imcy', year='average'):
    """Load and process trade flow data."""
    df = pd.read_csv(data_file)
    
    if variable_suffix == '_combined':
        # Special case: sum of multiple variables
        suffixes = ['_imcy', '_imiy', '_imcgy', '_imigy']
        combined_data = []
        
        for suffix in suffixes:
            trade_vars = df[df['variable'].str.endswith(suffix)]
            # Filter for bilateral flows only (4-character country codes + suffix)
            trade_vars = trade_vars[trade_vars['variable'].str.len() == (4 + len(suffix))]
            trade_data = trade_vars[trade_vars['year'] == year].copy()
            
            if trade_data.empty:
                latest_year = trade_vars['year'].max()
                trade_data = trade_vars[trade_vars['year'] == latest_year].copy()
            
            trade_data['importer'] = trade_data['variable'].str[:2]
            trade_data['exporter'] = trade_data['variable'].str[2:4]
            combined_data.append(trade_data[['importer', 'exporter', 'value']])
        
        # Sum all components
        all_data = pd.concat(combined_data, ignore_index=True)
        trade_data = all_data.groupby(['importer', 'exporter'])['value'].sum().reset_index()
        
    else:
        # Single variable case
        trade_vars = df[df['variable'].str.endswith(variable_suffix)]
        # Filter for bilateral flows only (4-character country codes + suffix)
        trade_vars = trade_vars[trade_vars['variable'].str.len() == (4 + len(variable_suffix))]
        trade_data = trade_vars[trade_vars['year'] == year].copy()
        
        if trade_data.empty:
            latest_year = trade_vars['year'].max()
            trade_data = trade_vars[trade_vars['year'] == latest_year].copy()
            print(f"No data for {year}, using latest available year: {latest_year}")
        
        trade_data['importer'] = trade_data['variable'].str[:2]
        trade_data['exporter'] = trade_data['variable'].str[2:4]
        trade_data = trade_data[['importer', 'exporter', 'value']]
    
    # Remove self-trade
    trade_data = trade_data[trade_data['importer'] != trade_data['exporter']]
    
    return trade_data


def load_color_palette(meta_file='+environment/jsonFiles/Meta.json'):
    """Load color palette from Meta.json file."""
    with open(meta_file, 'r') as f:
        meta = json.load(f)
    return meta['colors']


def create_circular_positions(countries):
    """Create circular network layout positions."""
    n = len(countries)
    positions = {}
    for i, country in enumerate(countries):
        angle = 2 * pi * i / n
        positions[country] = (cos(angle), sin(angle))
    return positions


def calculate_node_metrics(trade_data, all_countries):
    """Calculate node sizes and import values."""
    import_values = []
    for country in all_countries:
        total_imports = trade_data[trade_data['importer'] == country]['value'].sum() * 100
        import_values.append(total_imports)
    
    # Normalize node sizes
    max_size = max(import_values) if import_values else 1
    min_size = min(import_values) if import_values else 0
    node_sizes = [15 + ((val - min_size) / (max_size - min_size) if max_size > min_size else 0) * 60 
                  for val in import_values]
    
    return node_sizes, import_values


def filter_top_flows(trade_data, top_n=5):
    """Filter to show only top N import flows for each country."""
    filtered_flows = []
    
    for importer in trade_data['importer'].unique():
        # Get all flows into this country
        country_flows = trade_data[trade_data['importer'] == importer]
        # Sort by value and take top N
        top_flows = country_flows.nlargest(top_n, 'value')
        filtered_flows.append(top_flows)
    
    return pd.concat(filtered_flows, ignore_index=True)


def calculate_edge_metrics(trade_data):
    """Calculate edge normalization parameters."""
    edge_values = trade_data['value'] * 100
    return edge_values.max(), edge_values.min()


def has_reverse_edge(row, trade_data):
    """Check if there's a reverse trade flow for curve calculation."""
    return any((r['exporter'] == row['importer'] and r['importer'] == row['exporter']) 
               for _, r in trade_data.iterrows())


def create_edge_path(x0, y0, x1, y1, has_reverse=False):
    """Create edge path coordinates, with curve if reverse edge exists."""
    if has_reverse:
        # Add curve to avoid overlap
        mid_x = (x0 + x1) / 2
        mid_y = (y0 + y1) / 2
        dx, dy = x1 - x0, y1 - y0
        length = (dx**2 + dy**2)**0.5
        if length > 0:
            # Perpendicular offset for curve
            offset_x = -dy / length * 0.1
            offset_y = dx / length * 0.1
            mid_x += offset_x
            mid_y += offset_y
        return [x0, mid_x, x1], [y0, mid_y, y1]
    else:
        return [x0, x1], [y0, y1]


def calculate_edge_width(value, global_max, global_min):
    """Calculate edge width based on value and global range."""
    if global_max > global_min:
        return 0.3 + ((value - global_min) / (global_max - global_min)) * 9.7
    else:
        return 2


def add_edges(fig, trade_data, positions, color_palette, global_max_edge, global_min_edge):
    """Add all trade flow edges to the figure."""
    for _, row in trade_data.iterrows():
        # Get edge coordinates
        x0, y0 = positions[row['exporter']]
        x1, y1 = positions[row['importer']]
        
        # Create edge path
        reverse_exists = has_reverse_edge(row, trade_data)
        edge_x, edge_y = create_edge_path(x0, y0, x1, y1, reverse_exists)
        
        # Calculate edge properties
        edge_value = row['value'] * 100
        width = calculate_edge_width(edge_value, global_max_edge, global_min_edge)
        edge_color = color_palette.get(row['importer'], '#CCCCCC')
        
        # Add edge to figure
        fig.add_trace(go.Scatter(
            x=edge_x,
            y=edge_y,
            mode='lines',
            line=dict(width=width, color=edge_color, shape='spline'),
            showlegend=False
        ))


def add_nodes(fig, positions, all_countries, node_sizes, node_colors, import_values):
    """Add country nodes to the figure."""
    node_x = [positions[country][0] for country in all_countries]
    node_y = [positions[country][1] for country in all_countries]
    text_labels = [f'{country}<br>{import_val:.1f}' for country, import_val in zip(all_countries, import_values)]
    
    fig.add_trace(go.Scatter(
        x=node_x,
        y=node_y,
        mode='markers+text',
        marker=dict(
            size=node_sizes,
            color=node_colors,
            line=dict(width=2, color='white')
        ),
        text=text_labels,
        textposition="middle center",
        textfont=dict(size=9, color='black'),
        hovertemplate='<b>%{customdata[0]}</b><br>Total Imports: %{customdata[1]:.1f}%<extra></extra>',
        customdata=list(zip(all_countries, import_values)),
        showlegend=False
    ))


def configure_layout(fig, width=None, height=None):
    """Configure the plot layout and styling."""
    # Default dimensions: 16 cm x 16 cm
    if width is None:
        width = int(16 * 37.8)  # cm to px conversion
    if height is None:
        height = int(16 * 37.8)
    
    fig.update_layout(
        width=width,
        height=height,
        template='simple_white',
        font=dict(family="Times New Roman", size=12),
        showlegend=False,
        xaxis=dict(
            showgrid=False, zeroline=False, showticklabels=False,
            showline=False, visible=False, range=[-1.3, 1.3]
        ),
        yaxis=dict(
            showgrid=False, zeroline=False, showticklabels=False,
            showline=False, visible=False, range=[-1.3, 1.3]
        ),
        margin=dict(l=0, r=0, t=0, b=0, pad=0),
        plot_bgcolor='white',
        paper_bgcolor='white'
    )


def save_outputs(fig, output_prefix, auto_open=True):
    """Save visualization in multiple formats."""
    fig.write_html(f'{output_prefix}.html', auto_open=auto_open)
    fig.write_image(f'{output_prefix}.pdf')
    fig.write_image(f'{output_prefix}.png')
    
    print(f"Trade network charts saved to:")
    print(f"  - {output_prefix}.html (interactive)")
    print(f"  - {output_prefix}.pdf")
    print(f"  - {output_prefix}.png")


def create_trade_network(
    data_file='data/_calibDataCalculated.csv',
    variable_suffix='_imcy',
    year='average',
    output_prefix=None,
    auto_open=True,
    top_flows_per_country=5
):
    """Create complete trade flow network visualization."""
    
    # Generate output prefix if not provided
    if output_prefix is None:
        var_name = variable_suffix.replace('_', '').lower()
        output_prefix = f'docs/2025-02_working-paper/figures/trade_network_{var_name}'
    
    # Load data
    trade_data = load_trade_data(data_file, variable_suffix, year)
    color_palette = load_color_palette()
    
    if trade_data.empty:
        print("No trade data found")
        return
    
    # Filter to top flows per country
    filtered_trade_data = filter_top_flows(trade_data, top_flows_per_country)
    
    # Get all countries and create layout (use original data for complete node set)
    all_countries = sorted(set(trade_data['importer'].unique()) | 
                          set(trade_data['exporter'].unique()))
    positions = create_circular_positions(all_countries)
    node_colors = [color_palette.get(country, '#CCCCCC') for country in all_countries]
    
    # Calculate metrics (use original data for node sizes, filtered for edges)
    node_sizes, import_values = calculate_node_metrics(trade_data, all_countries)
    global_max_edge, global_min_edge = calculate_edge_metrics(filtered_trade_data)
    
    # Create visualization
    fig = go.Figure()
    add_edges(fig, filtered_trade_data, positions, color_palette, global_max_edge, global_min_edge)
    add_nodes(fig, positions, all_countries, node_sizes, node_colors, import_values)
    configure_layout(fig)
    
    # Save outputs
    save_outputs(fig, output_prefix, auto_open)
    print(f"Showing {len(filtered_trade_data)} trade flows (top {top_flows_per_country} per country)")


def create_all_trade_networks(
    data_file='data/_calibDataCalculated.csv',
    year='average',
    auto_open=True,
    top_flows_per_country=5
):
    """Create trade network visualizations for all variable types."""
    
    variables = [
        ('_imcy', 'imcy'),
        ('_imiy', 'imiy'), 
        ('_imcgy', 'imcgy'),
        ('_imigy', 'imigy'),
        ('_combined', 'combined')
    ]
    
    print("Creating trade network visualizations...")
    print("=" * 50)
    
    for variable_suffix, var_name in variables:
        print(f"\nGenerating chart for {var_name}...")
        output_prefix = f'docs/2025-02_working-paper/figures/trade_network_{var_name}'
        
        try:
            create_trade_network(
                data_file=data_file,
                variable_suffix=variable_suffix,
                year=year,
                output_prefix=output_prefix,
                auto_open=auto_open,
                top_flows_per_country=top_flows_per_country
            )
        except Exception as e:
            print(f"Error creating {var_name} chart: {e}")
    
    print("\n" + "=" * 50)
    print("All trade network charts completed!")


if __name__ == "__main__":
    import sys, os
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    from timinglog import timed
    try:
        with timed('charts', 'plotTradeFlows'):
            create_all_trade_networks()
    except FileNotFoundError as e:
        print(f"Error: Could not find required file. {e}")
    except Exception as e:
        print(f"Error creating trade networks: {e}")