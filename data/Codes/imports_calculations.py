# -*- coding: utf-8 -*-
"""
Created on Fri Mar 28 10:18:44 2025

@author: petravi
"""
import pandas as pd
import numpy as np
def aggregate_year_data(file_path): 
    
    df = pd.read_csv(file_path, index_col=0)
    df.columns = df.columns.astype(str)
    df.index = df.index.astype(str)
    
    """ 
    Sum for RoW, REA, REU both in columns and rows 
    """
    ###
    #For RoW
    ###
    
    
    ## 
    #Rows
    ##
    
    #Define individual countries to keep 
    individual_countries = ['AUT', 'BEL', 'DEU', 'ESP', 'FIN', 'FRA', 'GRC', 'ITA', 'NLD', 'PRT', 'USA']
    other_eea = ['HRV', 'EST', 'LVA', 'LTU', 'LUX', 'MLT', 'SVK', 'SVN', 'CYP', 'IRL']
    eu_countries = ['BGR', 'CZE', 'DNK', 'HUN', 'POL', 'ROU', 'SWE']
    countries_to_keep = set(individual_countries + other_eea + eu_countries)
    
    #Mask to include rows starting with the country codes in the list
    retain_mask = df.index.str.startswith(tuple(countries_to_keep)) | df.index.isin(['VA', 'TLS', 'OUT'])
    retain_rows = df[retain_mask]
    
    #get sector code
    def get_sectorcode(row_name):
        return row_name.split('_')[-1] if '_' in row_name else None
    
    # Aggregate rows for RoW ['VA', 'TLS', 'OUT']
    df_aggregated = df[~retain_mask].copy()  
    df_aggregated['sectorcode'] = df_aggregated.index.map(get_sectorcode)
    aggregate_rows = df_aggregated.groupby('sectorcode').sum()
    aggregate_rows.index = ['RoW_' + sector for sector in aggregate_rows.index]
    
    # Combine retained rows with aggregated rows
    result_rows = pd.concat([retain_rows, aggregate_rows])
    
    ##
    #Columns
    ##
    # Mask to include columns starting with the country codes in the list
    retain_columns_mask = result_rows.columns.str.startswith(tuple(countries_to_keep)) | result_rows.columns.isin(['OUT'])
    retain_columns = result_rows.columns[retain_columns_mask]
    
    # Identify columns not to retain
    columns_to_aggregate = result_rows.columns[~retain_columns_mask]
    
    # Create a new DataFrame for the aggregated columns
    df_aggregated_cols = result_rows[columns_to_aggregate].copy()
    df_aggregated_cols.columns = df_aggregated_cols.columns.map(get_sectorcode)
    
    # Sum aggregated columns by sector code
    aggregate_columns = df_aggregated_cols.groupby(df_aggregated_cols.columns, axis=1).sum()
    aggregate_columns.columns = ['RoW_' + sector for sector in aggregate_columns.columns]
    
    # Combine retained columns with aggregated columns
    aggregated_row = pd.concat([result_rows[retain_columns], aggregate_columns], axis=1)
    
    ###
    ## for ReA
    ###
    
    ##
    #Rows
    ##
    
    countries_to_keep_ea = individual_countries + ['RoW'] + eu_countries
    
    retain_mask_ea = aggregated_row.index.str.startswith(tuple(countries_to_keep_ea)) | aggregated_row.index.isin(['VA', 'TLS', 'OUT'])
    retain_rows_ea = aggregated_row[retain_mask_ea]
    
    # Aggregate rows for RoW ['VA', 'TLS', 'OUT']
    df_aggregated_ea = aggregated_row[~retain_mask_ea].copy()  
    df_aggregated_ea['sectorcode'] = df_aggregated_ea.index.map(get_sectorcode)
    aggregate_rows_ea = df_aggregated_ea.groupby('sectorcode').sum()
    aggregate_rows_ea.index = ['REA_' + sector for sector in aggregate_rows_ea.index]
    
    # Combine retained rows with aggregated rows
    result_rows_ea = pd.concat([retain_rows_ea, aggregate_rows_ea])
    
    ##
    #Columns
    ##
    # Mask to include columns starting with the country codes in the list
    retain_columns_mask_ea = result_rows_ea.columns.str.startswith(tuple(countries_to_keep_ea)) | result_rows_ea.columns.isin(['OUT'])
    retain_columns_ea = result_rows_ea.columns[retain_columns_mask_ea]
    
    # Identify columns not to retain
    columns_to_aggregate_ea = result_rows_ea.columns[~retain_columns_mask_ea]
    
    # Create a new DataFrame for the aggregated columns
    df_aggregated_cols_ea = result_rows_ea[columns_to_aggregate_ea].copy()
    df_aggregated_cols_ea.columns = df_aggregated_cols_ea.columns.map(get_sectorcode)
    
    # Sum aggregated columns by sector code
    aggregate_columns_ea = df_aggregated_cols_ea.groupby(df_aggregated_cols_ea.columns, axis=1).sum()
    aggregate_columns_ea.columns = ['REA_' + sector for sector in aggregate_columns_ea.columns]
    
    # Combine retained columns with aggregated columns
    aggregated_final = pd.concat([result_rows_ea[retain_columns_ea], aggregate_columns_ea], axis=1)
    
    # Rows to move to the end
    rows_to_move = ['TLS', 'VA', 'OUT']
    # Separate rows to move and remaining rows
    rows_moved = aggregated_final.loc[rows_to_move]
    remaining_rows = aggregated_final.drop(rows_to_move, errors='ignore')
    # Concatenate remaining rows with rows to move
    result_ea = pd.concat([remaining_rows, rows_moved])
    
    ###
    ## for REU
    ###
    
    ##
    #Rows
    ##
    
    countries_to_keep_eu = individual_countries + ['RoW'] + ['REA']
    
    retain_mask_eu = result_ea.index.str.startswith(tuple(countries_to_keep_eu)) | result_ea.index.isin(['VA', 'TLS', 'OUT'])
    retain_rows_eu = result_ea[retain_mask_eu]
    
    # Aggregate rows for RoW ['VA', 'TLS', 'OUT']
    df_aggregated_eu = result_ea[~retain_mask_eu].copy()  
    df_aggregated_eu['sectorcode'] = df_aggregated_eu.index.map(get_sectorcode)
    aggregate_rows_eu = df_aggregated_eu.groupby('sectorcode').sum()
    aggregate_rows_eu.index = ['REU_' + sector for sector in aggregate_rows_eu.index]
    
    # Combine retained rows with aggregated rows
    result_rows_eu = pd.concat([retain_rows_eu, aggregate_rows_eu])
    
    ##
    #Columns
    ##
    # Mask to include columns starting with the country codes in the list
    retain_columns_mask_eu = result_rows_eu.columns.str.startswith(tuple(countries_to_keep_eu)) | result_rows_eu.columns.isin(['OUT'])
    retain_columns_eu = result_rows_eu.columns[retain_columns_mask_eu]
    
    # Identify columns not to retain
    columns_to_aggregate_eu = result_rows_eu.columns[~retain_columns_mask_eu]
    
    # Create a new DataFrame for the aggregated columns
    df_aggregated_cols_eu = result_rows_eu[columns_to_aggregate_eu].copy()
    df_aggregated_cols_eu.columns = df_aggregated_cols_eu.columns.map(get_sectorcode)
    
    # Sum aggregated columns by sector code
    aggregate_columns_eu = df_aggregated_cols_eu.groupby(df_aggregated_cols_eu.columns, axis=1).sum()
    aggregate_columns_eu.columns = ['REU_' + sector for sector in aggregate_columns_eu.columns]
    
    # Combine retained columns with aggregated columns
    aggregated_final = pd.concat([result_rows_eu[retain_columns_eu], aggregate_columns_eu], axis=1)
    
    # Rows to move to the end
    rows_to_move = ['TLS', 'VA', 'OUT']
    # Separate rows to move and remaining rows
    rows_moved = aggregated_final.loc[rows_to_move]
    remaining_rows = aggregated_final.drop(rows_to_move, errors='ignore')
    # Concatenate remaining rows with rows to move
    result_final = pd.concat([remaining_rows, rows_moved])
    
    return result_final


'''Calculating indirect imports'''

# Function to process data for each country
def process_country_data(aggregated_data, country_code, individual_countries):
    # Filter for the specific country
    filtered_columns = [label for label in aggregated_data.columns if '_' in label and label.split('_')[0] in [country_code]]
    filtered_columns.append('OUT')  # Add 'OUT' column explicitly
    df_filtered = aggregated_data[filtered_columns]
    
    # Separate domestic and imports
    domestic = df_filtered[df_filtered.index.str.startswith(f'{country_code}_')]
    prefixes = tuple([f'{code}_' for code in individual_countries if code != country_code] + ['RoW_', 'REA_', 'REU_', 'OUT'])
    imports = df_filtered[df_filtered.index.str.startswith(prefixes)]
    
    # Split final demand
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_final = domestic[filtered_columns]
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_final = imports[filtered_columns]
    direct_imports_aggregated = imports_final.groupby(lambda x: x.split('_')[0]).sum()
    direct_imports_aggregated = direct_imports_aggregated.drop(index='OUT')
    
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_int = domestic.drop(columns=filtered_columns)
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_int = imports.drop(columns=filtered_columns)
    
    # Calculate Am and Ad
    Am = imports_int.iloc[:-1, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    Ad = domestic_int.iloc[:, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    
    # Leontief inverse
    dim = len(Ad)
    I = np.eye(dim)
    L = I - Ad.to_numpy()
    LI = np.linalg.inv(L)
    LI_df = pd.DataFrame(LI, index=Ad.index, columns=Ad.columns)
    
    # Indirect imports
    Am_matrix = Am.to_numpy()
    LI_matrix = LI_df.to_numpy()
    Fd_matrix = domestic_final.to_numpy()
    Md = Am_matrix @ (LI_matrix @ Fd_matrix)
    indirect_imports = pd.DataFrame(Md, index=Am.index, columns=domestic_final.columns)
    
    # Aggregate rows by country code
    indirect_imports_aggregated = indirect_imports.groupby(lambda x: x.split('_')[0]).sum()
    
    #Add together 
    imports_aggregated = indirect_imports_aggregated + direct_imports_aggregated
    
    return imports_aggregated

# Function to process data for each country
def process_country_data_RoW(aggregated_data, country_code, individual_countries):
    # Filter for the specific country
    filtered_columns = [label for label in aggregated_data.columns if '_' in label and label.split('_')[0] in [country_code]]
    filtered_columns.append('OUT')  # Add 'OUT' column explicitly
    df_filtered = aggregated_data[filtered_columns]
    
    # Separate domestic and imports
    domestic = df_filtered[df_filtered.index.str.startswith(f'{country_code}_')]
    prefixes = tuple([f'{code}_' for code in individual_countries if code != country_code] + ['REA_', 'REU_', 'OUT'])
    imports = df_filtered[df_filtered.index.str.startswith(prefixes)]
    
    # Split final demand
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_final = domestic[filtered_columns]
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_final = imports[filtered_columns]
    direct_imports_aggregated = imports_final.groupby(lambda x: x.split('_')[0]).sum()
    direct_imports_aggregated = direct_imports_aggregated.drop(index='OUT')
    
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_int = domestic.drop(columns=filtered_columns)
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_int = imports.drop(columns=filtered_columns)
    
    # Calculate Am and Ad
    Am = imports_int.iloc[:-1, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    Ad = domestic_int.iloc[:, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    
    # Leontief inverse
    dim = len(Ad)
    I = np.eye(dim)
    L = I - Ad.to_numpy()
    LI = np.linalg.inv(L)
    LI_df = pd.DataFrame(LI, index=Ad.index, columns=Ad.columns)
    
    # Indirect imports
    Am_matrix = Am.to_numpy()
    LI_matrix = LI_df.to_numpy()
    Fd_matrix = domestic_final.to_numpy()
    Md = Am_matrix @ (LI_matrix @ Fd_matrix)
    indirect_imports = pd.DataFrame(Md, index=Am.index, columns=domestic_final.columns)
    
    # Aggregate rows by country code
    indirect_imports_aggregated = indirect_imports.groupby(lambda x: x.split('_')[0]).sum()
    
    #Add together 
    imports_aggregated = indirect_imports_aggregated + direct_imports_aggregated
    
    return imports_aggregated

# Function to process data for each country
def process_country_data_REA(aggregated_data, country_code, individual_countries):
    # Filter for the specific country
    filtered_columns = [label for label in aggregated_data.columns if '_' in label and label.split('_')[0] in [country_code]]
    filtered_columns.append('OUT')  # Add 'OUT' column explicitly
    df_filtered = aggregated_data[filtered_columns]
    
    # Separate domestic and imports
    domestic = df_filtered[df_filtered.index.str.startswith(f'{country_code}_')]
    prefixes = tuple([f'{code}_' for code in individual_countries if code != country_code] + ['RoW_', 'REU_', 'OUT'])
    imports = df_filtered[df_filtered.index.str.startswith(prefixes)]
    
    # Split final demand
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_final = domestic[filtered_columns]
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_final = imports[filtered_columns]
    direct_imports_aggregated = imports_final.groupby(lambda x: x.split('_')[0]).sum()
    direct_imports_aggregated = direct_imports_aggregated.drop(index='OUT')
    
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_int = domestic.drop(columns=filtered_columns)
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_int = imports.drop(columns=filtered_columns)
    
    # Calculate Am and Ad
    Am = imports_int.iloc[:-1, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    Ad = domestic_int.iloc[:, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    
    # Leontief inverse
    dim = len(Ad)
    I = np.eye(dim)
    L = I - Ad.to_numpy()
    LI = np.linalg.inv(L)
    LI_df = pd.DataFrame(LI, index=Ad.index, columns=Ad.columns)
    
    # Indirect imports
    Am_matrix = Am.to_numpy()
    LI_matrix = LI_df.to_numpy()
    Fd_matrix = domestic_final.to_numpy()
    Md = Am_matrix @ (LI_matrix @ Fd_matrix)
    indirect_imports = pd.DataFrame(Md, index=Am.index, columns=domestic_final.columns)
    
    # Aggregate rows by country code
    indirect_imports_aggregated = indirect_imports.groupby(lambda x: x.split('_')[0]).sum()
    
    #Add together 
    imports_aggregated = indirect_imports_aggregated + direct_imports_aggregated
    
    return imports_aggregated

# Function to process data for each country
def process_country_data_REU(aggregated_data, country_code, individual_countries):
    # Filter for the specific country
    filtered_columns = [label for label in aggregated_data.columns if '_' in label and label.split('_')[0] in [country_code]]
    filtered_columns.append('OUT')  # Add 'OUT' column explicitly
    df_filtered = aggregated_data[filtered_columns]
    
    # Separate domestic and imports
    domestic = df_filtered[df_filtered.index.str.startswith(f'{country_code}_')]
    prefixes = tuple([f'{code}_' for code in individual_countries if code != country_code] + ['RoW_', 'REA_', 'OUT'])
    imports = df_filtered[df_filtered.index.str.startswith(prefixes)]
    
    # Split final demand
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_final = domestic[filtered_columns]
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_final = imports[filtered_columns]
    direct_imports_aggregated = imports_final.groupby(lambda x: x.split('_')[0]).sum()
    direct_imports_aggregated = direct_imports_aggregated.drop(index='OUT')
    
    column_endings = ['HFCE', 'NPISH', 'GGFC', 'GFCF', 'INVNT', 'DPABR']
    filtered_columns = [col for col in domestic.columns if col.endswith(tuple(column_endings))]
    domestic_int = domestic.drop(columns=filtered_columns)
    
    filtered_columns = [col for col in imports.columns if col.endswith(tuple(column_endings))]
    imports_int = imports.drop(columns=filtered_columns)
    
    # Calculate Am and Ad
    Am = imports_int.iloc[:-1, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    Ad = domestic_int.iloc[:, :-1].div(imports_int.iloc[-1, :-1], axis=1).fillna(0)
    
    # Leontief inverse
    dim = len(Ad)
    I = np.eye(dim)
    L = I - Ad.to_numpy()
    LI = np.linalg.inv(L)
    LI_df = pd.DataFrame(LI, index=Ad.index, columns=Ad.columns)
    
    # Indirect imports
    Am_matrix = Am.to_numpy()
    LI_matrix = LI_df.to_numpy()
    Fd_matrix = domestic_final.to_numpy()
    Md = Am_matrix @ (LI_matrix @ Fd_matrix)
    indirect_imports = pd.DataFrame(Md, index=Am.index, columns=domestic_final.columns)
    
    # Aggregate rows by country code
    indirect_imports_aggregated = indirect_imports.groupby(lambda x: x.split('_')[0]).sum()
    
    #Add together 
    imports_aggregated = indirect_imports_aggregated + direct_imports_aggregated
    
    return imports_aggregated