import pandas as pd
import plotly.graph_objects as go
import plotly.express as px
from plotly.subplots import make_subplots
import json
import os

def load_country_colors():
    """Load country colors from Meta.json file."""
    meta_file_path = os.path.join(os.path.dirname(__file__), '..', '+environment', 'jsonFiles', 'Meta.json')
    try:
        with open(meta_file_path, 'r') as f:
            meta_data = json.load(f)
        return meta_data.get('colors', {})
    except (FileNotFoundError, json.JSONDecodeError) as e:
        print(f"Warning: Could not load colors from Meta.json: {e}")
        return {}

def load_and_prepare_data(data_file, variables, year_range=(1995, 2019), scale_factor=100):
    """Load and prepare data for plotting."""
    df = pd.read_csv(data_file)
    df = df[df['year'] != 'average']  # Remove average rows
    df['year'] = pd.to_numeric(df['year'])
    df['value'] = df['value'] * scale_factor
    
    # Extract country from variable name (format: COUNTRY_variable)
    df[['country', 'base_variable']] = df['variable'].str.split('_', n=1, expand=True)
    
    # Filter by base variables and year range
    df = df[df['base_variable'].isin(variables)]
    df = df[(df['year'] >= year_range[0]) & (df['year'] <= year_range[1])]
    
    # Use base_variable as the variable column
    df['variable'] = df['base_variable']
    
    return df

def create_time_series_plot(fig, data, countries, colors, var, row):
    """Add time series plot to subplot."""
    for j, country in enumerate(countries):
        country_data = data[data['country'] == country]
        if not country_data.empty:
            fig.add_trace(
                go.Scatter(
                    x=country_data['year'],
                    y=country_data['value'],
                    mode='lines',
                    name=country,
                    line=dict(color=colors[j]),
                    showlegend=(row == 1),
                    legendgroup=country
                ),
                row=row, col=1
            )

def create_box_plot(fig, data, countries, colors, row):
    """Add box plot with average labels to subplot."""
    tick_labels = []
    for j, country in enumerate(countries):
        country_values = data[data['country'] == country]['value']
        if not country_values.empty:
            avg_value = country_values.mean()
            tick_labels.append(f'{country}<br>{avg_value:.1f}')
            fig.add_trace(
                go.Box(
                    y=country_values,
                    name=country,
                    marker_color=colors[j],
                    showlegend=False
                ),
                row=row, col=2
            )
    
    # Update x-axis with custom labels
    fig.update_xaxes(ticktext=tick_labels, tickvals=list(range(len(countries))), row=row, col=2)

def setup_axes(fig, variables, year_ticks=[1995, 2000, 2005, 2010, 2015, 2020]):
    """Configure axes for all subplots."""
    for i, var in enumerate(variables):
        row = i + 1
        var_title = var.replace("_", " ").title()
        
        # Configure axes
        fig.update_xaxes(title_text="", tickvals=year_ticks, row=row, col=1)
        fig.update_xaxes(title_text="", row=row, col=2)
        fig.update_yaxes(title_text=var_title, row=row, col=1)
        fig.update_yaxes(title_text="", showticklabels=False, row=row, col=2)
        
        # Align y-axes within each row
        if row == 1:
            fig.update_yaxes(matches='y', row=row, col=2)
        else:
            fig.update_yaxes(matches=f'y{2*row-1}', row=row, col=2)

def create_single_panel_charts(
    variables,
    data_file='data/_calibDataCalculated.csv',
    output_prefix='docs/2025-02_working-paper/figures/calibration_charts',
    year_range=(1995, 2019),
    scale_factor=100,
    auto_open=True,
    country_order=['AT', 'BE', 'FI', 'FR', 'DE', 'GR', 'IT', 'NL', 'PT', 'ES', 'RA', 'RU', 'US', 'RW']
):
    """Create single panel calibration charts with time series and box plots."""
    
    # Load and prepare data
    df = load_and_prepare_data(data_file, variables, year_range, scale_factor)
    
    # Use specified country order, fall back to data order for any missing countries
    available_countries = set(df['country'].unique())
    countries = [c for c in country_order if c in available_countries]
    # Add any countries in data but not in specified order
    countries.extend([c for c in available_countries if c not in country_order])
    
    # Load country colors from Meta.json
    country_colors = load_country_colors()
    
    # Create color mapping for countries
    def get_country_color(country):
        return country_colors.get(country, px.colors.qualitative.Vivid[hash(country) % len(px.colors.qualitative.Vivid)])
    
    colors = [get_country_color(country) for country in countries]
    
    # Create subplot structure
    fig = make_subplots(
        rows=len(variables), cols=2,
        specs=[[{"secondary_y": False}, {"secondary_y": False}] for _ in range(len(variables))],
        vertical_spacing=0.06,
        horizontal_spacing=0.05,
        column_widths=[0.33, 0.67]
    )
    
    # Add plots for each variable
    for i, var in enumerate(variables):
        row = i + 1
        var_data = df[df['variable'] == var]
        
        if not var_data.empty:
            create_time_series_plot(fig, var_data, countries, colors, var, row)
            create_box_plot(fig, var_data, countries, colors, row)
    
    # Configure axes
    setup_axes(fig, variables)
    
    # Configure layout
    fig.update_layout(
        template='simple_white',
        height=1200,
        width=850,
        font=dict(family="Times New Roman"),
        showlegend=True,
        legend=dict(
            orientation="h",
            yanchor="bottom",
            y=1.02,
            xanchor="right",
            x=1
        )
    )
    
    # Save outputs
    fig.write_html(f'{output_prefix}.html', auto_open=auto_open)
    fig.write_image(f'{output_prefix}.pdf')
    fig.write_image(f'{output_prefix}.png')
    
    print(f"Charts saved to:")
    print(f"  - {output_prefix}.html (interactive)")
    print(f"  - {output_prefix}.pdf")
    print(f"  - {output_prefix}.png")

def create_calibration_charts(
    data_file='data/_calibDataCalculated.csv',
    year_range=(1995, 2019),
    scale_factor=100,
    auto_open=True,
    country_order=['AT', 'BE', 'FI', 'FR', 'DE', 'GR', 'IT', 'NL', 'PT', 'ES', 'RA', 'RU', 'US', 'RW']
):
    """Create two panels of calibration charts."""
    
    # Define variable sets using actual dataset variable names
    panel1_variables = ['private_consumption', 'cgybar', 'iy', 'igybar', 'imy', 'tby']
    panel2_variables = ['trybar', 'taucbar', 'taunbar', 'tauwhbar', 'tauwfbar', 'taukbar', 'bytarget']
    
    # Create first panel
    create_single_panel_charts(
        data_file=data_file,
        variables=panel1_variables,
        output_prefix='docs/2025-02_working-paper/figures/calibration_charts_panel1',
        year_range=year_range,
        scale_factor=scale_factor,
        auto_open=auto_open,
        country_order=country_order
    )
    
    # Create second panel
    create_single_panel_charts(
        data_file=data_file,
        variables=panel2_variables,
        output_prefix='docs/2025-02_working-paper/figures/calibration_charts_panel2',
        year_range=year_range,
        scale_factor=scale_factor,
        auto_open=auto_open,
        country_order=country_order
    )

if __name__ == "__main__":
    try:
        create_calibration_charts()
    except FileNotFoundError as e:
        print(f"Error: Could not find data file. {e}")
    except Exception as e:
        print(f"Error creating charts: {e}")