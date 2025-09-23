# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 19:30:00 2025

@author: Claude Code
Collects calibration data from various CSV files into one consolidated dataframe
"""

import os
import pandas as pd
import numpy as np

# Set up relative paths
data_directory = os.path.join(os.path.dirname(__file__), '..')

def load_and_process_data():
    """Load and process all calibration data files"""
    
    # Initialize dictionary to store all data
    calibration_data = {}
    
    # 1. Load debt data
    debt_path = os.path.join(data_directory, 'debt.csv')
    debt_df = pd.read_csv(debt_path, index_col=0)
    for col in debt_df.columns:
        calibration_data[f'debt_{col}'] = debt_df[col].iloc[0]
    
    # 2. Load shares data
    shares_path = os.path.join(data_directory, 'shares.csv')
    shares_df = pd.read_csv(shares_path, index_col=0)
    for idx in shares_df.index:
        for col in shares_df.columns:
            calibration_data[f'share_{idx}_{col}'] = shares_df.loc[idx, col]
    
    # 3. Load size data
    size_path = os.path.join(data_directory, 'size.csv')
    size_df = pd.read_csv(size_path, index_col=0)
    for col in size_df.columns:
        for idx in size_df.index:
            calibration_data[f'size_{col}_{idx}'] = size_df.loc[idx, col]
    
    # 4. Load tax rates data
    tax_rates_path = os.path.join(data_directory, 'tax_rates.csv')
    tax_rates_df = pd.read_csv(tax_rates_path, index_col=0)
    for idx in tax_rates_df.index:
        for col in tax_rates_df.columns:
            calibration_data[f'tax_{idx}_{col}'] = tax_rates_df.loc[idx, col]
    
    # 5. Load trade balance data
    tby_path = os.path.join(data_directory, 'tby.csv')
    tby_df = pd.read_csv(tby_path, index_col=0)
    for col in tby_df.columns:
        for idx in tby_df.index:
            calibration_data[f'tby_{col}_{idx}'] = tby_df.loc[idx, col]
    
    return calibration_data

def create_consolidated_dataframe(calibration_data):
    """Create consolidated dataframe from calibration data in long format with time dimension"""
    
    # Create lists for the four columns
    countries = []
    variables = []
    years = []
    values = []
    
    for key, value in calibration_data.items():
        # Parse the key to extract variable and country
        parts = key.split('_')
        
        if key.startswith('debt_'):
            country = parts[1]
            variable = 'debt'
        elif key.startswith('share_'):
            # Format: share_type_country
            variable = '_'.join(parts[1:-1])  # e.g., 'private_consumption'
            country = parts[-1]
        elif key.startswith('size_'):
            # Format: size_size_country
            variable = 'size'
            country = parts[2]
        elif key.startswith('tax_'):
            # Format: tax_type_country
            if parts[1] == 'SSC':
                # Handle special case: tax_SSC_firms_country or tax_SSC_households_country
                variable = f"tax_SSC_{parts[2]}"  # e.g., 'tax_SSC_firms'
                country = parts[3]
            else:
                variable = f"tax_{parts[1]}"  # e.g., 'tax_consumption'
                country = parts[2]
        elif key.startswith('tby_'):
            # Format: tby_tby_country
            variable = 'tby'
            country = parts[2]
        else:
            # Fallback
            variable = '_'.join(parts[:-1])
            country = parts[-1]
        
        countries.append(country)
        variables.append(variable)
        years.append('average')  # Mark all current values as averages
        values.append(value)
    
    # Create dataframe
    df = pd.DataFrame({
        'country': countries,
        'variable': variables,
        'year': years,
        'value': values
    })
    
    # Sort by country, variable, then year for better organization
    df = df.sort_values(['country', 'variable', 'year']).reset_index(drop=True)
    
    return df

def add_yearly_data(base_df, yearly_data_dict):
    """
    Add yearly data to the base calibration dataframe
    
    Parameters:
    base_df: DataFrame with average data (from create_consolidated_dataframe)
    yearly_data_dict: Dictionary with structure {year: {country: {variable: value}}}
    
    Returns:
    Extended DataFrame with both yearly and average data
    """
    yearly_rows = []
    
    for year, year_data in yearly_data_dict.items():
        for country, country_data in year_data.items():
            for variable, value in country_data.items():
                yearly_rows.append({
                    'country': country,
                    'variable': variable, 
                    'year': str(year),  # Convert to string for consistency
                    'value': value
                })
    
    if yearly_rows:
        yearly_df = pd.DataFrame(yearly_rows)
        # Combine with base data (averages)
        extended_df = pd.concat([base_df, yearly_df], ignore_index=True)
        # Re-sort
        extended_df = extended_df.sort_values(['country', 'variable', 'year']).reset_index(drop=True)
        return extended_df
    else:
        return base_df

def main():
    """Main function to collect and save calibration data"""
    
    print("Loading calibration data...")
    
    # Load all data
    calibration_data = load_and_process_data()
    
    # Create consolidated dataframe
    consolidated_df = create_consolidated_dataframe(calibration_data)
    
    # Save to CSV
    output_path = os.path.join(data_directory, '_calibDataCollectedFromSingleFiles.csv')
    consolidated_df.to_csv(output_path, index=False)
    
    print(f"Calibration data collected and saved to: {output_path}")
    print(f"Total parameters: {len(consolidated_df)}")
    print(f"Data shape: {consolidated_df.shape}")
    print(f"Countries: {sorted(consolidated_df['country'].unique())}")
    print(f"Variables: {sorted(consolidated_df['variable'].unique())}")
    print(f"Years: {sorted(consolidated_df['year'].unique())}")
    
    # Display first few rows as preview
    print("\nFirst 10 rows:")
    print(consolidated_df.head(10).to_string(index=False))
    
    if len(consolidated_df) > 10:
        print(f"\n... and {len(consolidated_df) - 10} more rows")
    
    # Show structure summary
    print(f"\nData structure:")
    print(f"- {len(consolidated_df['country'].unique())} countries")
    print(f"- {len(consolidated_df['variable'].unique())} variables") 
    print(f"- {len(consolidated_df['year'].unique())} time period (currently only averages)")
    print(f"- Ready for extension with yearly data (1995-2020)")

if __name__ == "__main__":
    main()