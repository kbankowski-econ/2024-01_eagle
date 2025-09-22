# -*- coding: utf-8 -*-
"""
Created on Fri Mar 28 10:52:24 2025

@author: petravi
"""
import pandas as pd

country_codes = {
    'REA': 'RA',
    'AUT': 'AT',
    'BEL': 'BE',
    'ESP': 'ES',
    'FIN': 'FI',
    'FRA': 'FR',
    'GRC': 'GR',
    'ITA': 'IT',
    'NLD': 'NL',
    'PRT': 'PT',
    'DEU': 'DE',
    'USA': 'US',
    'RoW': 'RW',
    'REU': 'RU'
}

def rename_column(column_name):
    # Split the column name to extract the country code
    parts = column_name.split('_')
    country_code = parts[0]
    # Replace the country code with the new code from the dictionary
    if country_code in country_codes:
        new_country_code = country_codes[country_code]
        # Reconstruct the column name
        return column_name.replace(country_code, new_country_code)
    return column_name

def filter_columns_by_suffix(df, suffix, order):
    # Filter columns by the given suffix
    filtered_df = df.filter(regex=f'{suffix}$')
    
    # Rename the columns by removing the suffix
    filtered_df.columns = [col.replace(suffix, '') for col in filtered_df.columns]
    
    # Reorder the columns according to desired order, keeping only the present ones
    filtered_df = filtered_df.reindex(columns=[col for col in order if col in filtered_df.columns])
    
    return filtered_df