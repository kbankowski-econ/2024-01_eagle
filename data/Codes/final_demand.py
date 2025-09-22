# -*- coding: utf-8 -*-
"""
Created on Wed Dec 18 10:44:30 2024

@author: petravi
"""

import os
import pandas as pd

def process_year_data(input_directory):
    # Lists of countries to keep
    individual_countries = ['AUT', 'BEL', 'DEU', 'ESP', 'FIN', 'FRA', 'GRC', 'ITA', 'NLD', 'PRT', 'USA']
    other_eea = ['HRV', 'EST', 'LVA', 'LTU', 'LUX', 'MLT', 'SVK', 'SVN', 'CYP', 'IRL']
    other_eu = ['BGR', 'CZE', 'DNK', 'HUN', 'POL', 'ROU', 'SWE']
    # List of column endings to keep
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    # Combine the lists of countries
    countries_to_keep = set(individual_countries + other_eea + other_eu)
    
    # Dictionary to store DataFrames with years as keys
    year_dataframes = {}

    # Get list of all files in the directory that match the pattern
    files_to_process = [file for file in os.listdir(input_directory) if file.endswith('_SML.csv')]
    
    for file_name in files_to_process:
        # Extract year from file name (assuming the year is at the start of the filename)
        year = file_name.split('_')[0]

        # Construct the full file path
        file_path = os.path.join(input_directory, file_name)

        # Read the CSV file
        df = pd.read_csv(file_path, index_col=0)
        df.columns = df.columns.astype(str)
        df.index = df.index.astype(str)

        # Filter columns based on country codes and endings
        filtered_columns = [
            label for label in df.columns 
            if '_' in label and label.split('_')[1] in column_endings
        ]
        
        # Filter the DataFrame to keep all rows but only the desired columns
        df_filtered = df[filtered_columns]

        # List of index names you want to delete
        indices_to_delete = ['TLS', 'VA', 'OUT']
        # Drop the specified index names
        df_filtered = df_filtered.drop(indices_to_delete)

        # Aggregate rows by summing values for the same country code
        df_filtered.index = [label.split('_')[0] for label in df_filtered.index]
        df_aggregated = df_filtered.groupby(df_filtered.index).sum()

        # Sum rows not in the countries_to_keep list and call it 'RoW'
        rows_to_sum = [index for index in df_aggregated.index if index not in countries_to_keep]
        if rows_to_sum:
            row_sum = df_aggregated.loc[rows_to_sum].sum()
            df_aggregated.loc['RoW'] = row_sum
            df_aggregated = df_aggregated.drop(rows_to_sum, errors='ignore')

        # Sum rows in the other_eea list and call it 'REA'
        rows_to_sum_eea = [index for index in df_aggregated.index if index in other_eea]
        if rows_to_sum_eea:
            eea_sum = df_aggregated.loc[rows_to_sum_eea].sum()
            df_aggregated.loc['REA'] = eea_sum
            df_aggregated = df_aggregated.drop(rows_to_sum_eea, errors='ignore')

        # Sum rows in the other_eu list and call it 'REU'
        rows_to_sum_eu = [index for index in df_aggregated.index if index in other_eu]
        if rows_to_sum_eu:
            eu_sum = df_aggregated.loc[rows_to_sum_eu].sum()
            df_aggregated.loc['REU'] = eu_sum
            df_aggregated = df_aggregated.drop(rows_to_sum_eu, errors='ignore')

        # Aggregate columns without a country code in countries_to_keep into 'RoW_columnending'
        for ending in column_endings:
            columns_to_aggregate = [
                col for col in df_aggregated.columns 
                if '_' in col and col.split('_')[0] not in countries_to_keep and col.split('_')[1] == ending
            ]
            if columns_to_aggregate:
                df_aggregated[f'RoW_{ending}'] = df_aggregated[columns_to_aggregate].sum(axis=1)
                df_aggregated.drop(columns=columns_to_aggregate, inplace=True)

        # Aggregate columns for other_eea into 'REA_columnending'
        for ending in column_endings:
            columns_to_aggregate = [
                col for col in df_aggregated.columns 
                if '_' in col and col.split('_')[0] in other_eea and col.split('_')[1] == ending
            ]
            if columns_to_aggregate:
                df_aggregated[f'REA_{ending}'] = df_aggregated[columns_to_aggregate].sum(axis=1)
                df_aggregated.drop(columns=columns_to_aggregate, inplace=True)

        # Aggregate columns for other_eu into 'REU_columnending'
        for ending in column_endings:
            columns_to_aggregate = [
                col for col in df_aggregated.columns 
                if '_' in col and col.split('_')[0] in other_eu and col.split('_')[1] == ending
            ]
            if columns_to_aggregate:
                df_aggregated[f'REU_{ending}'] = df_aggregated[columns_to_aggregate].sum(axis=1)
                df_aggregated.drop(columns=columns_to_aggregate, inplace=True)

        # Add the processed DataFrame to the dictionary with the year as the key
        year_dataframes[year] = df_aggregated

    return year_dataframes

        