# -*- coding: utf-8 -*-
"""
Created on Thu Jan 23 14:34:53 2025

@author: petravi
"""

import os
import pandas as pd
import numpy as np

from imports_calculations import aggregate_year_data
from imports_calculations import process_country_data
from imports_calculations import process_country_data_RoW
from imports_calculations import process_country_data_REA
from imports_calculations import process_country_data_REU

from final_demand import process_year_data

from functions import rename_column
from functions import filter_columns_by_suffix

directory = r'/Users/emilepetraviciute/2025-03_eagle/data' 
raw_data_directory = r'/Users/emilepetraviciute/2025-03_eagle/data/raw_data'
raw_io_directory = r'/Users/emilepetraviciute/2025-03_eagle/data/raw_data/io'

country_codes_map = {
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
    'REU': 'RU'}

country_codes = ['RA', 'AT', 'BE', 'ES', 'FI', 'FR', 'GR', 'IT', 'NL', 'PT', 'DE', 'RU', 'RW', 'US']

#%% Creating aggregated average final demand IO tables, calculating output

final_demand_io = process_year_data(raw_io_directory)                
average_final_demand_io = sum(final_demand_io.values())/len(final_demand_io)

average_final_demand_io.columns = [rename_column(col) for col in average_final_demand_io.columns]
average_final_demand_io.index = average_final_demand_io.index.map(country_codes_map) 
average_final_demand_io.loc['TOTAL'] = average_final_demand_io.sum()

#Calculating output before removing INVNT
output = pd.DataFrame(average_final_demand_io.sum(axis=1))
sizes = pd.DataFrame(output.iloc[:-1, 0] / output.iloc[-1,0])
sizes = sizes.reindex(country_codes)
sizes = sizes.rename(columns = {0: 'size'})
output_path = os.path.join(directory, 'size.csv')
sizes.to_csv(output_path)

#Get investment shares 
investment_split = pd.read_csv(os.path.join(directory, 'investment_shares.csv'), index_col=0)

#Aggregate, disaggregate, and rename columns
for region in country_codes:
    region_columns = [col for col in average_final_demand_io.columns if col.startswith(region) and col.split('_')[1] in ['HFCE', 'NPISH', 'DPABR']]
    average_final_demand_io[f'{region}_private_consumption'] = average_final_demand_io[region_columns].sum(axis=1)   
    average_final_demand_io = average_final_demand_io.drop(columns=region_columns)

    investment_columns = [col for col in average_final_demand_io.columns if col.startswith(region) and col.split('_')[1] in ['GFCF']]
    average_final_demand_io[f'{region}_investment'] = average_final_demand_io[investment_columns].sum(axis=1)
    average_final_demand_io = average_final_demand_io.drop(columns=investment_columns)

    private_investment_share = investment_split.loc[region][investment_split.loc[region]['investment_type'] == 'Private investment share']['share'].values[0]
    government_investment_share = investment_split.loc[region][investment_split.loc[region]['investment_type'] == 'Government investment share']['share'].values[0]
    average_final_demand_io[f'{region}_private_investment'] = average_final_demand_io[f'{region}_investment'] * private_investment_share
    average_final_demand_io[f'{region}_public_investment'] =  average_final_demand_io[f'{region}_investment'] * government_investment_share
    average_final_demand_io =  average_final_demand_io.drop(columns=[f'{region}_investment'])
    
    inventory_column = [col for col in average_final_demand_io.columns if col.startswith(region) and col.split('_')[1] in ['INVNT']]
    average_final_demand_io = average_final_demand_io.drop(columns=inventory_column)
    
    ggfc_column = f'{region}_GGFC'
    public_consumption_column = f'{region}_public_consumption'
    if ggfc_column in average_final_demand_io.columns:
        average_final_demand_io = average_final_demand_io.rename(columns={ggfc_column: public_consumption_column})

average_final_demand_io = average_final_demand_io.reindex(country_codes)
average_final_demand_io.loc['Total'] = average_final_demand_io.sum(axis=0)    

#%% Calculating share of investment and consumption of the total GDP
totals = average_final_demand_io.loc[['Total']]
output_row = output.iloc[:-1,].T
totals.loc['Output'] = {col: output_row[col.split('_')[0]].iloc[0] for col in totals.columns}
totals.loc['Share'] = totals.loc['Total']/totals.loc['Output'] 

# Create a new DataFrame with required structure
shares = {}
for region in country_codes:
    shares[region] = {}  
for col in totals.columns:
    country, category = col.split('_', 1)  # Split country code and category
    shares[country][category] = totals.at['Share', col]  
shares = pd.DataFrame(shares)
output_path = os.path.join(directory, 'shares.csv')
shares.to_csv(output_path)

#%% Calculating trade matrix 
imports_per_year = {}
regions = ['AUT', 'BEL', 'DEU', 'ESP', 'FIN', 'FRA', 'GRC', 'ITA', 'NLD', 'PRT', 'USA', 'RoW', 'REA', 'REU']

for file_name in os.listdir(raw_io_directory):
    if file_name.endswith('_SML.csv'):
        year = file_name.split('_')[0]  # Extract the year from the file name
        file_path = os.path.join(raw_io_directory, file_name)
        
        # Process the data for the year
        result_final = aggregate_year_data(file_path)
        
        # Calculate imports for each country
        yearly_results = {}
        for country_code in regions:
            if country_code == 'RoW':
                imports=process_country_data_RoW(result_final, country_code, regions)
            elif country_code == 'REA':
                imports = process_country_data_REA(result_final, country_code, regions)
            elif country_code == 'REU':
                imports = process_country_data_REU(result_final, country_code, regions)
            else:
                imports = process_country_data(result_final, country_code, regions)
            yearly_results[country_code] = imports
        
        imports_per_year[year] = yearly_results
        
# Calculate average indirect imports across all years
average_imports = {country: None for country in regions}

for country in regions:
    total = None
    count = 0   
    for year in imports_per_year:
        if country in imports_per_year[year]:
            if total is None:
                total = imports_per_year[year][country].copy()
            else:
                total += imports_per_year[year][country]
            count += 1    
    if total is not None:
        average_imports[country] = total / count

#Combining to one dataframe 
adjusted_results = {}
for country, df in average_imports.items():
    for region in regions:
        if region not in df.index:
            df.loc[region] = 0
    df = df.reindex(regions)
    adjusted_results[country] = df
final_combined_imports = pd.concat(adjusted_results.values(), axis=1)

final_combined_imports.index = final_combined_imports.index.map(country_codes_map) 
final_combined_imports = final_combined_imports.reindex(country_codes)
final_combined_imports.columns = [rename_column(col) for col in final_combined_imports.columns]

# Sum the specific columns for each region and create new columns
for region in country_codes:
    # Select columns for this region
    region_columns = [col for col in final_combined_imports.columns if col.startswith(region) and col.split('_')[1] in ['HFCE', 'NPISH', 'DPABR']]
    # Sum the selected columns
    final_combined_imports[f'{region}_imcy'] = final_combined_imports[region_columns].sum(axis=1)   
    # Drop the original columns
    final_combined_imports = final_combined_imports.drop(columns=region_columns)
    # Rename the column from 'regioncode_GGFC' to 'regioncode_imcgy'
    ggfc_column = f'{region}_GGFC'
    imcgy_column = f'{region}_imcgy'
    if ggfc_column in final_combined_imports.columns:
        final_combined_imports = final_combined_imports.rename(columns={ggfc_column: imcgy_column})
    # Investment
    invnt_column = f'{region}_INVNT'
    if invnt_column in final_combined_imports.columns:
        final_combined_imports = final_combined_imports.drop(columns=[invnt_column])
        
final_combined_imports = final_combined_imports.reindex(sorted(final_combined_imports.columns), axis=1)

#adding total row 
final_combined_imports.loc['Total'] = final_combined_imports.sum(axis=0)
       
#%% Handling split between public and private investment imports

#1)defining import share of government consumption to use later 
imports_gov_con = pd.DataFrame(final_combined_imports.iloc[-1, :])
imports_gov_con = imports_gov_con[imports_gov_con.index.str.endswith('_imcgy')]
imports_gov_con = imports_gov_con.rename(columns={'Total': 'imports'})
imports_gov_con['total'] = 0

for region in country_codes:
    local_consumption = average_final_demand_io.loc[region, f'{region}_public_consumption']
    imports_gov_con.loc[f'{region}_imcgy', 'total'] = local_consumption + imports_gov_con.loc[f'{region}_imcgy', 'imports']

imports_gov_con['share'] = imports_gov_con['imports']/imports_gov_con['total']
gov_share_dict = {index_name.split('_')[0]: imports_gov_con.loc[index_name, 'share'] for index_name in imports_gov_con.index}

#2)calculating absolute governmnet investment imports 
gov_investment = {}
for region in country_codes:
    gov_investment[region] = (gov_share_dict[region] * average_final_demand_io.loc[region, f'{region}_public_investment'])/(1-gov_share_dict[region])

#3) calculating abcolute private investment imports 
private_investment = {}
for region in country_codes: 
    private_investment[region] = final_combined_imports.loc['Total', f'{region}_GFCF'] - gov_investment[region]
    
#4)Find split between public and private for imported investments
import_split_private_investment = {}
for region in country_codes:
    import_split_private_investment[region] = private_investment[region]/final_combined_imports.loc['Total', f'{region}_GFCF']

#5)Update the trade matrix
for region in country_codes:
     gfcf_column = f'{region}_GFCF'
     if gfcf_column in final_combined_imports.columns:
         final_combined_imports[f'{region}_imiy'] = final_combined_imports[gfcf_column] * import_split_private_investment[region]
         final_combined_imports[f'{region}_imigy'] = final_combined_imports[gfcf_column] * (1-import_split_private_investment[region]) 
         final_combined_imports = final_combined_imports.drop(columns=gfcf_column)
#%% Final trade matrix calculation 

# Create an empty DataFrame to store the share_of_gdp results
trade_matrix = final_combined_imports.copy()

# Divide each column by the corresponding country's output value
for col in trade_matrix.columns:
    country_code = col.split('_')[0]  
    trade_matrix[col] = trade_matrix[col] / output.loc[country_code, 0]

'''Splitting into four different variables and applying country codes '''

# Splitting the DataFrame into four based on suffix
imcy = filter_columns_by_suffix(trade_matrix, '_imcy', country_codes)
imiy = filter_columns_by_suffix(trade_matrix, '_imiy', country_codes) 
imcgy = filter_columns_by_suffix(trade_matrix, '_imcgy', country_codes)   
imigy = filter_columns_by_suffix(trade_matrix, '_imigy', country_codes) 

output_path = os.path.join(directory, 'imcy.csv')
imcy.to_csv(output_path)

output_path = os.path.join(directory, 'imcgy.csv')
imcgy.to_csv(output_path)

output_path = os.path.join(directory, 'imiy.csv')
imiy.to_csv(output_path)

output_path = os.path.join(directory, 'imigy.csv')
imigy.to_csv(output_path)

#%% Trade balances 

countries = ['RA', 'AT', 'BE', 'ES', 'FI', 'FR', 'GR', 'IT', 'NL', 'PT', 'DE', 'RU', 'RW', 'US']
countries2 = ['RA', 'AT', 'BE', 'ES', 'FI', 'FR', 'GR', 'IT', 'NL', 'PT', 'DE', 'RU', 'RW', 'US']
    
imy_bilateral = {}
for country1 in countries:
    imy_bilateral[country1] = {}  
    for country2 in countries2:
        # Now you can safely assign values
        imy_bilateral[country1][country2] = (
            imcy.loc[country2, country1] +
            imcgy.loc[country2, country1] +
            imiy.loc[country2, country1] +
            imigy.loc[country2, country1])  
 
imy = {}
for country1 in countries:
    imy[country1] = sum(imy_bilateral[country1].values())
            
exy_bilateral = {}
for country2 in countries2:
    exy_bilateral[country2] = {}
    for country1 in countries:
        exy_bilateral[country2][country1] = imy_bilateral[country1][country2] * (sizes.loc[country1].iloc[0] / sizes.loc[country2].iloc[0])

exy = {}
for country1 in countries:
    exy[country1] = sum(exy_bilateral[country1].values())
    
tby = {}
for country1 in countries:
    tby[country1] = exy[country1] - imy[country1]
    
tby_series = pd.Series(tby, name='tby')
tby_df = tby_series.to_frame()
    
output_path = os.path.join(directory, 'tby.csv')
tby_df.to_csv(output_path)

#%% Graph for the paper 

''' Import share of final demand component '''

imports = pd.DataFrame(final_combined_imports.iloc[-1, :])
imports = imports.rename(columns={'Total': 'imports'})
imports['total'] = 0

for region in country_codes: 
    imports.loc[f'{region}_imcy', 'total'] = imports.loc[f'{region}_imcy', 'imports'] + average_final_demand_io.loc[f'{region}', f'{region}_private_consumption']
    imports.loc[f'{region}_imcgy', 'total'] = imports.loc[f'{region}_imcgy', 'imports'] + average_final_demand_io.loc[f'{region}', f'{region}_public_consumption']
    imports.loc[f'{region}_imiy', 'total'] = imports.loc[f'{region}_imiy', 'imports'] + average_final_demand_io.loc[f'{region}', f'{region}_private_investment']
    imports.loc[f'{region}_imigy', 'total'] = imports.loc[f'{region}_imigy', 'imports'] + average_final_demand_io.loc[f'{region}', f'{region}_public_investment']

imports['Share'] = imports['imports']/imports['total']
imports = imports.T
imports = imports.drop(imports.index[[0,1]])
output_path = os.path.join(directory, 'imports_graph.csv')
imports.to_csv(output_path)

   
 

