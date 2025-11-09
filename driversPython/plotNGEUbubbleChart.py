import pandas as pd
import plotly.graph_objects as go
import plotly.express as px
from plotly.subplots import make_subplots
import json
import os
import numpy as np

def load_country_colors(project_path, meta_file='+environment/jsonFiles/Meta.json'):
    """Load country color mappings from Meta.json file."""
    meta_file = os.path.join(project_path, meta_file)
    with open(meta_file, 'r') as f:
        meta = json.load(f)
    return meta['colors']

def load_ngeu_data(data_file):
    """Load NGEU data from CSV file."""
    df = pd.read_csv(data_file)
    return df

def create_bubble_chart(
    project_path,
    data_file='databases/allCtryNGEUinputTable_Arat.csv',
    auto_open=True
):
    """Create categorical bubble chart with countries on horizontal axis and variables on vertical axis."""
    
    # Construct file paths
    data_file = os.path.join(project_path, data_file)
    output_prefix = os.path.join(project_path, 'docs/2025-02_working-paper/figures/NGEU_bubble_chart')
    
    # Load data and colors
    df = load_ngeu_data(data_file)
    country_colors = load_country_colors(project_path)
    
    # Filter out columns we don't want to plot (Time, Country, and OtherRev)
    value_columns = [col for col in df.columns if col not in ['Time', 'Country', 'OtherRev']]
    
    # Filter data for years 2021-2026
    df_filtered = df[df['Time'].isin([2021, 2022, 2023, 2024, 2025, 2026])]
    
    # Create a long format DataFrame for plotting
    df_long = df_filtered.melt(
        id_vars=['Time', 'Country'], 
        value_vars=value_columns,
        var_name='Variable', 
        value_name='Value'
    )
    
    # Sum values by Country and Variable across all years (2021-2026)
    df_summed = df_long.groupby(['Country', 'Variable'])['Value'].sum().reset_index()
    
    # Remove rows with zero or very small values to avoid clutter
    df_summed = df_summed[abs(df_summed['Value']) > 1e-6]
    
    # Get unique countries and variables for axis ordering
    countries = sorted(df_summed['Country'].unique())
    variables = sorted(df_summed['Variable'].unique())
    
    # Create categorical mappings for positioning
    country_map = {country: i for i, country in enumerate(countries)}
    variable_map = {var: i for i, var in enumerate(variables)}
    
    # Add positional coordinates
    df_summed['country_pos'] = df_summed['Country'].map(country_map)
    df_summed['variable_pos'] = df_summed['Variable'].map(variable_map)
    
    # Calculate bubble sizes (scale absolute values for visibility)
    df_summed['abs_value'] = abs(df_summed['Value'])
    # Scale bubble sizes - adjust multiplier as needed for visual balance
    max_val = df_summed['abs_value'].max()
    df_summed['bubble_size'] = (df_summed['abs_value'] / max_val) * 50 + 10  # Min size 10, max size 60
    
    # Create the bubble chart
    fig = go.Figure()
    
    # Add bubbles for each country
    for country in countries:
        country_data = df_summed[df_summed['Country'] == country]
        if not country_data.empty:
            # Get color for this country from Meta.json, fallback to default if not found
            country_color = country_colors.get(country, '#000000')
            
            # Create hover text with more information
            hover_text = [
                f"Country: {row['Country']}<br>" +
                f"Variable: {row['Variable']}<br>" +
                f"Total Value (2021-2026): {row['Value']:.5f}"
                for _, row in country_data.iterrows()
            ]
            
            fig.add_trace(
                go.Scatter(
                    x=country_data['country_pos'],
                    y=country_data['variable_pos'],
                    mode='markers',
                    name=country,
                    marker=dict(
                        size=country_data['bubble_size'],
                        color=country_color,
                        opacity=0.7,
                        line=dict(width=1, color='white')
                    ),
                    text=hover_text,
                    hovertemplate='%{text}<extra></extra>',
                    showlegend=False
                )
            )
    
    # Fixed dimensions matching plotIRFs.py
    cm_to_px = 37.8  # 1 cm ≈ 37.8 pixels (96 DPI)
    optimal_width = int(16 * 1.0 * cm_to_px)
    optimal_height = int(16 * 1.0 * cm_to_px)
    
    # Update layout with styling consistent with plotIRFs.py
    fig.update_layout(
        width=optimal_width,
        height=optimal_height,
        template='simple_white',
        font=dict(family="Times New Roman", size=12),
        showlegend=False,
        margin=dict(l=80, r=35, t=80, b=80)
    )
    
    # Configure axes
    fig.update_xaxes(
        title_text="",
        tickvals=list(range(len(countries))),
        ticktext=countries,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(countries) - 0.5]
    )
    
    fig.update_yaxes(
        title_text="",
        tickvals=list(range(len(variables))),
        ticktext=variables,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(variables) - 0.5]
    )
    
    # Save outputs
    fig.write_html(f'{output_prefix}.html', auto_open=auto_open)
    fig.write_image(f'{output_prefix}.pdf')
    fig.write_image(f'{output_prefix}.png')
    
    print(f"NGEU bubble chart saved to:")
    print(f"  - {output_prefix}.html (interactive)")
    print(f"  - {output_prefix}.pdf")
    print(f"  - {output_prefix}.png")
    
    # Print summary statistics
    print(f"\nData summary:")
    print(f"  - Countries: {len(countries)}")
    print(f"  - Variables: {len(variables)}")
    print(f"  - Total data points: {len(df_summed)}")
    print(f"  - Value range: {df_summed['Value'].min():.5f} to {df_summed['Value'].max():.5f}")
    print(f"  - Time period: 2021-2026 (summed values)")

if __name__ == "__main__":
    # Set project path - adjust this path as needed
    project_path = "/Users/kk/Documents/0000-00_work/2024-01_eagle"
    
    try:
        create_bubble_chart(project_path)
    except FileNotFoundError as e:
        print(f"Error: Could not find required file. {e}")
    except Exception as e:
        print(f"Error creating bubble chart: {e}")