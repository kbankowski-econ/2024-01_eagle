import pandas as pd
import plotly.graph_objects as go
import plotly.express as px
from plotly.subplots import make_subplots
import json

def load_irf_data(data_file):
    """Load IRF data from CSV file."""
    df = pd.read_csv(data_file)
    
    # The first column contains period labels, rename it
    period_col = df.columns[0]
    df = df.rename(columns={period_col: 'period'})
    
    # Convert to long format
    df_long = df.melt(id_vars=['period'], var_name='variable', value_name='value')
    
    return df_long

def load_variable_descriptions(dict_file):
    """Load variable descriptions from dictionary CSV."""
    df = pd.read_csv(dict_file)
    # Create a mapping from variable name to description
    var_dict = dict(zip(df.iloc[:, 0], df['description']))
    return var_dict

def extract_country_and_var(variable_name):
    """Extract country code and variable from combined variable name (e.g., 'AT_c' -> 'AT', 'c')."""
    if '_' in variable_name:
        parts = variable_name.split('_')
        country = parts[0]
        var = '_'.join(parts[1:])  # Handle variables with multiple underscores
        return country, var
    else:
        # For variables without country prefix (like EA_y)
        return 'EA', variable_name.replace('EA_', '')

def load_config(config_file):
    """Load configuration from JSON file."""
    with open(config_file, 'r') as f:
        config = json.load(f)
    return config

def load_country_colors(meta_file='+environment/jsonFiles/Meta.json'):
    """Load country color mappings from Meta.json file."""
    with open(meta_file, 'r') as f:
        meta = json.load(f)
    return meta['colors']

def create_irf_plots(
    irf_file='docs/2025-02_working-paper/figures/shock_ea_epsr1.csv',
    dict_file='+environment/csvFiles/varDict.csv',
    config_file=None,  # Will be derived from irf_file if not provided
    output_prefix='docs/2025-02_working-paper/figures/shock_ea_epsr1_irfs',
    auto_open=True
):
    """Create IRF charts with 6x3 grid layout."""
    
    # Load data and configuration
    df_long = load_irf_data(irf_file)
    var_dict = load_variable_descriptions(dict_file)
    
    # Derive config filename from CSV filename if not provided
    if config_file is None:
        config_file = irf_file.replace('.csv', '.json')
    
    config = load_config(config_file)
    country_colors = load_country_colors()
    
    # Extract country and variable information
    df_long['country'], df_long['base_var'] = zip(*df_long['variable'].apply(extract_country_and_var))
    
    # Get variables and countries from config
    plot_variables = config['variables']
    country_order = config['countries']
    
    # Filter data for selected variables
    df_plot = df_long[df_long['base_var'].isin(plot_variables)]
    
    # Add row numbers (starting from 1 to match CSV row numbers)
    unique_periods = df_plot['period'].unique()
    period_to_row = {period: idx + 1 for idx, period in enumerate(unique_periods)}
    df_plot['row_number'] = df_plot['period'].map(period_to_row)
    
    # Configure x-axis ticks: show only 1, 10, 20, 30, 40
    tick_values = [1, 10, 20, 30, 40]
    # Filter tick values to only include those that exist in the data
    max_row = df_plot['row_number'].max()
    tick_values = [t for t in tick_values if t <= max_row]
    
    # Use only countries specified in configuration
    available_countries = set(df_plot['country'].unique())
    countries = [c for c in country_order if c in available_countries]
    
    # Calculate grid dimensions based on number of variables
    num_vars = len(plot_variables)
    cols = 3
    rows = (num_vars + cols - 1) // cols  # Ceiling division
    
    # Create subplot structure
    fig = make_subplots(
        rows=rows, cols=cols,
        subplot_titles=[var_dict.get(var, var.replace('_', ' ').title()) for var in plot_variables],
        vertical_spacing=0.07,
        horizontal_spacing=0.06
    )
    
    # Plot each variable
    for i, var in enumerate(plot_variables):
        row = (i // cols) + 1
        col = (i % cols) + 1
        
        # Filter data for this variable
        var_data = df_plot[df_plot['base_var'] == var]
        
        if not var_data.empty:
            # Plot each country
            for j, country in enumerate(countries):
                country_data = var_data[var_data['country'] == country]
                if not country_data.empty:
                    # Get color for this country from Meta.json, fallback to default if not found
                    country_color = country_colors.get(country, '#000000')
                    
                    fig.add_trace(
                        go.Scatter(
                            x=country_data['row_number'],
                            y=country_data['value'],
                            mode='lines',
                            name=country,
                            line=dict(color=country_color, width=3),
                            showlegend=(i == 0),  # Only show legend for first plot
                            legendgroup=country
                        ),
                        row=row, col=col
                    )
        
        # Update axes with grid lines
        fig.update_xaxes(
            title_text="",
            tickvals=tick_values,
            ticktext=tick_values,
            range=[0.5, max_row + 0.5],  # Start x-axis before first point
            tickfont=dict(size=10),
            showgrid=True,
            gridwidth=0.3,
            gridcolor='#e8e8e8',
            ticks="inside",
            row=row, col=col
        )
        fig.update_yaxes(
            title_text="",
            tickfont=dict(size=10),
            showgrid=True,
            gridwidth=0.3,
            gridcolor='#e8e8e8',
            ticks="inside",
            row=row, col=col
        )
        
        # Add horizontal line at zero
        fig.add_hline(y=0, line_dash="dash", line_color="gray", line_width=1,
                     row=row, col=col)
    
    # Fixed dimensions
    cm_to_px = 37.8  # 1 cm ≈ 37.8 pixels (96 DPI)
    optimal_width = int(16 * 1.0 * cm_to_px)
    optimal_height = int(16 * 1.0 * cm_to_px)
    
    fig.update_layout(
        width=optimal_width,
        height=optimal_height,
        template='simple_white',
        font=dict(family="Times New Roman", size=12),
        showlegend=True,
        legend=dict(
            orientation="h",
            yanchor="bottom",
            y=1.05,
            xanchor="center",
            x=0.5,
            font=dict(size=9),
            bordercolor="black",
            borderwidth=0.5
        ),
        margin=dict(l=0, r=35, t=0, b=0)  # Add top margin for legend
    )
    
    # Update subplot title font size
    fig.update_annotations(font_size=12)
    
    # Save outputs
    fig.write_html(f'{output_prefix}.html', auto_open=auto_open)
    fig.write_image(f'{output_prefix}.pdf')
    fig.write_image(f'{output_prefix}.png')
    
    print(f"IRF charts saved to:")
    print(f"  - {output_prefix}.html (interactive)")
    print(f"  - {output_prefix}.pdf")
    print(f"  - {output_prefix}.png")

if __name__ == "__main__":
    try:
        create_irf_plots()
    except FileNotFoundError as e:
        print(f"Error: Could not find required file. {e}")
    except Exception as e:
        print(f"Error creating IRF charts: {e}")