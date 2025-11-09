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
    data_file_A='databases/allCtryNGEUinputTable_A.csv',
    auto_open=True
):
    """Create categorical bubble chart with countries on horizontal axis and variables on vertical axis."""
    
    # Construct file paths
    data_file = os.path.join(project_path, data_file)
    data_file_A = os.path.join(project_path, data_file_A)
    output_prefix = os.path.join(project_path, 'docs/2025-02_working-paper/figures/NGEU_bubble_chart')
    
    # Load data and colors
    df = load_ngeu_data(data_file)
    df_A = load_ngeu_data(data_file_A)
    country_colors = load_country_colors(project_path)
    
    # Filter out columns we don't want to plot (Time, Country, and OtherRev)
    value_columns = [col for col in df.columns if col not in ['Time', 'Country', 'OtherRev']]
    
    # Process first dataset - use only "Total" rows
    df_total = df[df['Time'] == 'Total']
    df_long = df_total.melt(
        id_vars=['Time', 'Country'], 
        value_vars=value_columns,
        var_name='Variable', 
        value_name='Value'
    )
    df_summed = df_long[abs(df_long['Value']) > 1e-6]
    
    # Process second dataset - use only "Total" rows
    df_A_total = df_A[df_A['Time'] == 'Total']
    df_A_long = df_A_total.melt(
        id_vars=['Time', 'Country'], 
        value_vars=value_columns,
        var_name='Variable', 
        value_name='Value'
    )
    df_A_summed = df_A_long[abs(df_A_long['Value']) > 1e-6]
    
    # Get unique countries and variables for axis ordering (combine both datasets)
    all_countries = set(df_summed['Country'].unique()) | set(df_A_summed['Country'].unique())
    all_variables = set(df_summed['Variable'].unique()) | set(df_A_summed['Variable'].unique())
    countries = sorted(all_countries)
    
    # Custom ordering for variables - reversed so visual order matches list order
    variable_order = ['OtherSpend', 'GovInv', 'GovTransf', 'TaxDirectFirm', 'TaxDirectHH']
    variables = [var for var in variable_order if var in all_variables]
    
    # Create categorical mappings for positioning
    country_map = {country: i for i, country in enumerate(countries)}
    variable_map = {var: i for i, var in enumerate(variables)}
    
    # Add positional coordinates for first dataset (circles)
    df_summed['country_pos'] = df_summed['Country'].map(country_map)
    df_summed['variable_pos'] = df_summed['Variable'].map(variable_map)
    
    # Add positional coordinates for second dataset (squares)
    df_A_summed['country_pos'] = df_A_summed['Country'].map(country_map)
    df_A_summed['variable_pos'] = df_A_summed['Variable'].map(variable_map)
    
    # Calculate bubble sizes independently for each dataset - moderate size increase
    df_summed['abs_value'] = abs(df_summed['Value'])
    max_val_circles = df_summed['abs_value'].max()
    df_summed['bubble_size'] = (df_summed['abs_value'] / max_val_circles) * 100  # Max size 100, min approaches 0
    
    df_A_summed['abs_value'] = abs(df_A_summed['Value'])
    max_val_squares = df_A_summed['abs_value'].max()
    df_A_summed['square_size'] = (df_A_summed['abs_value'] / max_val_squares) * 100  # Max size 100, min approaches 0
    
    # Debug: Check AT GovTransf specifically
    at_govtransf_arat = df_summed[(df_summed['Country'] == 'AT') & (df_summed['Variable'] == 'GovTransf')]
    if not at_govtransf_arat.empty:
        value = at_govtransf_arat.iloc[0]['Value']
        bubble_size = at_govtransf_arat.iloc[0]['bubble_size']
        print(f"Debug AT GovTransf Arat: Value={value:.10f}, Max in dataset={max_val_circles:.10f}")
        print(f"Debug AT GovTransf Arat: Relative size={(value/max_val_circles):.4f}, Bubble size={bubble_size:.1f}")
    
    # Show top 5 values in Arat dataset for context
    print("Top 5 values in Arat dataset:")
    top_arat = df_summed.nlargest(5, 'abs_value')[['Country', 'Variable', 'Value', 'bubble_size']]
    for _, row in top_arat.iterrows():
        print(f"  {row['Country']} {row['Variable']}: {row['Value']:.6f} (bubble: {row['bubble_size']:.1f})")
    
    print(f"\nArat dataset stats: min={df_summed['abs_value'].min():.10f}, max={df_summed['abs_value'].max():.10f}")
    print(f"Total data points in Arat: {len(df_summed)}")
    
    # Create two-panel subplot (top: Arat, bottom: A)
    fig = make_subplots(
        rows=2, cols=1,
        subplot_titles=('Dataset: Arat', 'Dataset: A'),
        vertical_spacing=0.1,
        shared_xaxes=True
    )
    
    # Add circles for first dataset (top panel)
    for country in countries:
        country_data = df_summed[df_summed['Country'] == country]
        if not country_data.empty:
            # Get color for this country from Meta.json, fallback to default if not found
            country_color = country_colors.get(country, '#000000')
            
            # Create hover text with more information
            hover_text = [
                f"Country: {row['Country']}<br>" +
                f"Variable: {row['Variable']}<br>" +
                f"Dataset: Arat<br>" +
                f"Total Value: {row['Value']:.5f}"
                for _, row in country_data.iterrows()
            ]
            
            fig.add_trace(
                go.Scatter(
                    x=country_data['country_pos'],
                    y=country_data['variable_pos'],
                    mode='markers',
                    name=f"{country}_arat",
                    marker=dict(
                        symbol='circle',
                        size=country_data['bubble_size'],
                        color=country_color,
                        opacity=0.7,
                        line=dict(width=1, color='white')
                    ),
                    text=hover_text,
                    hovertemplate='%{text}<extra></extra>',
                    showlegend=False
                ),
                row=1, col=1  # Top panel
            )
    
    # Add circles for second dataset (bottom panel)
    for country in countries:
        country_data_A = df_A_summed[df_A_summed['Country'] == country]
        if not country_data_A.empty:
            # Get color for this country from Meta.json, fallback to default if not found
            country_color = country_colors.get(country, '#000000')
            
            # Create hover text with more information
            hover_text = [
                f"Country: {row['Country']}<br>" +
                f"Variable: {row['Variable']}<br>" +
                f"Dataset: A<br>" +
                f"Total Value: {row['Value']:.5f}"
                for _, row in country_data_A.iterrows()
            ]
            
            fig.add_trace(
                go.Scatter(
                    x=country_data_A['country_pos'],
                    y=country_data_A['variable_pos'],
                    mode='markers',
                    name=f"{country}_a",
                    marker=dict(
                        symbol='circle',
                        size=country_data_A['square_size'],
                        color=country_color,
                        opacity=0.7,
                        line=dict(width=1, color='white')
                    ),
                    text=hover_text,
                    hovertemplate='%{text}<extra></extra>',
                    showlegend=False
                ),
                row=2, col=1  # Bottom panel
            )
    
    # Fixed dimensions - stretched vertically for two panels
    cm_to_px = 37.8  # 1 cm ≈ 37.8 pixels (96 DPI)
    optimal_width = int(16 * 1.0 * cm_to_px)
    optimal_height = int(12 * 1.0 * cm_to_px)  # Increased height to 12cm for two panels
    
    # Update layout with styling consistent with plotIRFs.py
    fig.update_layout(
        width=optimal_width,
        height=optimal_height,
        template='simple_white',
        font=dict(family="Times New Roman", size=12),
        showlegend=False,
        margin=dict(l=80, r=35, t=80, b=80)
    )
    
    # Configure axes for both panels
    # Top panel x-axis (no labels, shared with bottom)
    fig.update_xaxes(
        title_text="",
        tickvals=list(range(len(countries))),
        ticktext=[""] * len(countries),  # No labels on top panel
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(countries) - 0.5],
        row=1, col=1
    )
    
    # Bottom panel x-axis (with country labels)
    fig.update_xaxes(
        title_text="",
        tickvals=list(range(len(countries))),
        ticktext=countries,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(countries) - 0.5],
        row=2, col=1
    )
    
    # Top panel y-axis
    fig.update_yaxes(
        title_text="",
        tickvals=list(range(len(variables))),
        ticktext=variables,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(variables) - 0.5],
        row=1, col=1
    )
    
    # Bottom panel y-axis
    fig.update_yaxes(
        title_text="",
        tickvals=list(range(len(variables))),
        ticktext=variables,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(variables) - 0.5],
        row=2, col=1
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
    print(f"  - Circle data points (Arat): {len(df_summed)}")
    print(f"  - Square data points (A): {len(df_A_summed)}")
    print(f"  - Circle value range: {df_summed['Value'].min():.5f} to {df_summed['Value'].max():.5f}")
    print(f"  - Square value range: {df_A_summed['Value'].min():.5f} to {df_A_summed['Value'].max():.5f}")
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