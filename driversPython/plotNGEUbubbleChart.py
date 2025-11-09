from pathlib import Path
import json

import pandas as pd
import plotly.graph_objects as go
from plotly.subplots import make_subplots


EXCLUDED_COLUMNS = {'Time', 'Country', 'OtherRev'}
VARIABLE_ORDER = ['OtherSpend', 'GovInv', 'GovTransf', 'TaxDirectFirm', 'TaxDirectHH']
VARIABLE_LABEL_MAP = {
    'TaxDirectHH': 'Direct Taxes on Households',
    'GovTransf': 'Gov. Transfers',
    'TaxDirectFirm': 'Direct Taxes on Firms',
    'GovInv': 'Gov. Investment',
    'OtherSpend': 'Other Gov. Spending',
    'OtherRev': 'Oth. Gov Revenue'
}
CM_TO_PX = 37.8  # 1 cm ≈ 37.8 px (96 DPI)
OUTPUT_PREFIX = 'docs/2025-02_working-paper/figures/NGEU_bubble_chart'
META_FILE = '+environment/jsonFiles/Meta.json'


def load_country_colors(project_path):
    meta_path = Path(project_path) / META_FILE
    with meta_path.open('r') as f:
        meta = json.load(f)
    return meta['colors']


def load_ngeu_data(data_file):
    return pd.read_csv(data_file)


def melt_total_rows(df, value_columns):
    """Keep total rows, melt to long format, including zero values."""
    total_rows = df[df['Time'] == 'Total']
    long_df = total_rows.melt(
        id_vars=['Time', 'Country'],
        value_vars=value_columns,
        var_name='Variable',
        value_name='Value'
    )
    return long_df.copy()


def assign_positions(df, country_map, variable_map):
    df['country_pos'] = df['Country'].map(country_map)
    df['variable_pos'] = df['Variable'].map(variable_map)
    return df


def scale_marker_sizes(df, size_col):
    df['abs_value'] = df['Value'].abs()
    max_val = df['abs_value'].max()
    if max_val == 0:
        df[size_col] = 0
    else:
        df[size_col] = (df['abs_value'] / max_val) * 100
    return max_val


def build_hover_text(df, dataset_label):
    return [
        f"Country: {row['Country']}<br>"
        f"Variable: {row['Variable']}<br>"
        f"Dataset: {dataset_label}<br>"
        f"Total Value: {row['Value']:.5f}"
        for _, row in df.iterrows()
    ]


def add_dataset_traces(fig, df, row_idx, country_colors, dataset_label, size_col):
    for country, country_data in df.groupby('Country'):
        color = country_colors.get(country, '#000000')
        fig.add_trace(
            go.Scatter(
                x=country_data['country_pos'],
                y=country_data['variable_pos'],
                mode='markers',
                name=f"{country}_{dataset_label.lower()}",
                marker=dict(
                    symbol='circle',
                    size=country_data[size_col],
                    color=color,
                    opacity=1.0,
                    line=dict(width=1, color='white')
                ),
                text=build_hover_text(country_data, dataset_label),
                hovertemplate='%{text}<extra></extra>',
                showlegend=False
            ),
            row=row_idx,
            col=1
        )


def add_reference_marker(fig, x_pos, y_pos, marker_size, text, row_idx):
    fig.add_trace(
        go.Scatter(
            x=[x_pos],
            y=[y_pos],
            mode='markers+text',
            marker=dict(
                symbol='circle',
                size=marker_size,
                color='lightgray',
                line=dict(width=2, color='gray')
            ),
            text=text,
            textposition="middle right",
            textfont=dict(size=10, color='black'),
            showlegend=False,
            hoverinfo='skip'
        ),
        row=row_idx,
        col=1
    )

def create_bubble_chart(
    project_path,
    data_file='databases/allCtryNGEUinputTable_Arat.csv',
    data_file_A='databases/allCtryNGEUinputTable_A.csv',
    auto_open=True
):
    """Create categorical bubble chart with countries on horizontal axis and variables on vertical axis."""

    project_path = Path(project_path)
    data_path = project_path / data_file
    data_path_A = project_path / data_file_A
    output_prefix = project_path / OUTPUT_PREFIX

    df = load_ngeu_data(data_path)
    df_A = load_ngeu_data(data_path_A)
    country_colors = load_country_colors(project_path)

    value_columns = [col for col in df.columns if col not in EXCLUDED_COLUMNS]

    df_summed = melt_total_rows(df, value_columns)
    df_A_summed = melt_total_rows(df_A, value_columns)

    all_countries = set(df_summed['Country']) | set(df_A_summed['Country'])
    all_variables = set(df_summed['Variable']) | set(df_A_summed['Variable'])
    countries = sorted(all_countries)
    variables = [var for var in VARIABLE_ORDER if var in all_variables]
    variable_labels = [VARIABLE_LABEL_MAP.get(var, var) for var in variables]

    country_map = {country: i for i, country in enumerate(countries)}
    variable_map = {var: i for i, var in enumerate(variables)}

    df_summed = assign_positions(df_summed, country_map, variable_map)
    df_A_summed = assign_positions(df_A_summed, country_map, variable_map)

    max_val_circles = scale_marker_sizes(df_summed, 'bubble_size')
    max_val_squares = scale_marker_sizes(df_A_summed, 'square_size')

    at_govtransf_arat = df_summed[(df_summed['Country'] == 'AT') & (df_summed['Variable'] == 'GovTransf')]
    if not at_govtransf_arat.empty:
        value = at_govtransf_arat.iloc[0]['Value']
        bubble_size = at_govtransf_arat.iloc[0]['bubble_size']
        print(f"Debug AT GovTransf Arat: Value={value:.10f}, Max in dataset={max_val_circles:.10f}")
        print(f"Debug AT GovTransf Arat: Relative size={(value/max_val_circles):.4f}, Bubble size={bubble_size:.1f}")

    print("Top 5 values in Arat dataset:")
    top_arat = df_summed.nlargest(5, 'abs_value')[['Country', 'Variable', 'Value', 'bubble_size']]
    for _, row in top_arat.iterrows():
        print(f"  {row['Country']} {row['Variable']}: {row['Value']:.6f} (bubble: {row['bubble_size']:.1f})")

    print(f"\nArat dataset stats: min={df_summed['abs_value'].min():.10f}, max={df_summed['abs_value'].max():.10f}")
    print(f"Total data points in Arat: {len(df_summed)}")

    fig = make_subplots(
        rows=2,
        cols=1,
        subplot_titles=('(Percentage of National GDP)', '(EUR billions)'),
        vertical_spacing=0.1,
        shared_xaxes=True
    )

    add_dataset_traces(fig, df_summed, 1, country_colors, 'Arat', 'bubble_size')
    add_dataset_traces(fig, df_A_summed, 2, country_colors, 'A', 'square_size')

    legend_x_pos = (len(countries) - 1) / 2
    legend_y_pos = len(variables) + 0.3

    size_1_arat = (1 / max_val_circles) * 100 if max_val_circles else 0
    add_reference_marker(fig, legend_x_pos, legend_y_pos, size_1_arat, "1% of GDP", 1)

    size_1k_a = (10000 / max_val_squares) * 100 if max_val_squares else 0
    add_reference_marker(fig, legend_x_pos, legend_y_pos, size_1k_a, "EUR 10 billion", 2)

    optimal_width = int(16 * CM_TO_PX)
    optimal_height = int(10 * CM_TO_PX)

    fig.update_layout(
        width=optimal_width,
        height=optimal_height,
        template='simple_white',
        font=dict(family="Times New Roman", size=12),
        showlegend=False,
        margin=dict(l=0, r=0, t=20, b=0)
    )

    tick_positions = list(range(len(countries)))
    fig.update_xaxes(
        title_text="",
        tickvals=tick_positions,
        ticktext=[""] * len(countries),
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(countries) - 0.5],
        row=1,
        col=1
    )

    fig.update_xaxes(
        title_text="",
        tickvals=tick_positions,
        ticktext=countries,
        tickfont=dict(size=10),
        showgrid=True,
        gridwidth=0.3,
        gridcolor='#e8e8e8',
        ticks="outside",
        range=[-0.5, len(countries) - 0.5],
        row=2,
        col=1
    )

    tick_vals_y = list(range(len(variables)))
    for row_idx in (1, 2):
        fig.update_yaxes(
            title_text="",
            tickvals=tick_vals_y,
            ticktext=variable_labels,
            tickfont=dict(size=10),
            showgrid=True,
            gridwidth=0.3,
            gridcolor='#e8e8e8',
            ticks="outside",
            range=[-0.5, len(variables) + 0.7],
            row=row_idx,
            col=1
        )

    fig.write_html(f'{output_prefix}.html', auto_open=auto_open)
    fig.write_image(f'{output_prefix}.pdf')
    fig.write_image(f'{output_prefix}.png')

    print("NGEU bubble chart saved to:")
    print(f"  - {output_prefix}.html (interactive)")
    print(f"  - {output_prefix}.pdf")
    print(f"  - {output_prefix}.png")

    print("\nData summary:")
    print(f"  - Countries: {len(countries)}")
    print(f"  - Variables: {len(variables)}")
    print(f"  - Circle data points (Arat): {len(df_summed)}")
    print(f"  - Square data points (A): {len(df_A_summed)}")
    print(f"  - Circle value range: {df_summed['Value'].min():.5f} to {df_summed['Value'].max():.5f}")
    print(f"  - Square value range: {df_A_summed['Value'].min():.5f} to {df_A_summed['Value'].max():.5f}")
    print("  - Time period: 2021-2026 (summed values)")

if __name__ == "__main__":
    # Set project path - adjust this path as needed
    project_path = "/Users/kk/Documents/0000-00_work/2024-01_eagle"
    
    try:
        create_bubble_chart(project_path)
    except FileNotFoundError as e:
        print(f"Error: Could not find required file. {e}")
    except Exception as e:
        print(f"Error creating bubble chart: {e}")
