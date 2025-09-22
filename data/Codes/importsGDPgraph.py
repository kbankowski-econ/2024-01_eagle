# -*- coding: utf-8 -*-
"""
Created on Wed Dec 11 15:53:21 2024

@author: petravi
"""

import os
import pandas as pd

# Set the working directory
directory = r'/Users/emilepetraviciute/2025-03_eagle/data/raw_data'

#%% 

# List of euro area countries
individual_countries = ['Austria', 'Belgium', 'Finland', 'France', 'Germany', 'Greece', 'Italy', 'Netherlands', 'Portugal', 'Spain', 'United States', 'Japan']
euro_area_countries = [
    'Austria', 'Belgium', 'Cyprus', 'Estonia', 'Finland', 'France', 'Germany',
    'Greece', 'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta',
    'Netherlands', 'Portugal', 'Slovak Republic', 'Slovenia', 'Spain']
eu_non_euro_countries = [
    'Bulgaria', 'Croatia', 'Czech Republic', 'Denmark', 'Hungary', 'Poland',
    'Romania', 'Sweden']
rest_of_ea = ['Estonia', 'Cyprus', 'Ireland', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Slovak Republic', 'Slovenia']

seen = set()
all_countries = [item for lst in [individual_countries, eu_non_euro_countries, euro_area_countries] for item in lst if item not in seen and not seen.add(item)]

# Initialize an empty DataFrame to store results
all_data = pd.DataFrame(columns=['Reporter Name', 'Partner Name', 'Export (US$ Thousand)'])

# Read each file individually
for country in all_countries:
    df = pd.read_excel(os.path.join(directory, 'WITS_imports', f'{country}.xlsx'), sheet_name=1)
    reporter_name = df['Reporter Name'].iloc[0]
    total_import = df.loc[df['Partner Name'] == ' World', 'Import (US$ Thousand)'].sum()
    euro_area_import = df.loc[df['Partner Name'].isin(euro_area_countries), 'Import (US$ Thousand)'].sum()
    eu_non_euro_import = df.loc[df['Partner Name'].isin(eu_non_euro_countries), 'Import (US$ Thousand)'].sum()
    world_import = total_import - euro_area_import - eu_non_euro_import  
    all_data = pd.concat([all_data, pd.DataFrame([{
            'Reporter Name': reporter_name,
            'Euro Area Imports (US$ Thousand)': euro_area_import,
            'EU Non-Euro Area Imports (US$ Thousand)': eu_non_euro_import,
            'Rest of World Import (US$ Thousand)': world_import,
        }])], ignore_index=True)


del all_data['Partner Name']
del all_data['Export (US$ Thousand)'] 
all_data = all_data.set_index('Reporter Name')

all_data.loc['Rest of Euro Area'] = all_data.loc[rest_of_ea].sum()
all_data = all_data.drop(index=rest_of_ea)
all_data.loc['Non-EA EU'] = all_data.loc[eu_non_euro_countries].sum()
all_data = all_data.drop(index=eu_non_euro_countries)

gdp = pd.read_excel(os.path.join(directory, 'world_bank_gdp.xlsx'))
gdp = gdp.set_index('Country Name')
del gdp['Series Name']
del gdp['Series Code']
del gdp['Country Code']
gdp = gdp.rename(index = {'Czechia': 'Czech Republic'})
gdp.loc['Rest of Euro Area'] = gdp.loc[rest_of_ea].sum()
gdp = gdp.drop(index=rest_of_ea)
gdp.loc['Non-EA EU'] = gdp.loc[eu_non_euro_countries].sum()
gdp = gdp.drop(index=eu_non_euro_countries)
gdp = gdp.dropna()
gdp = gdp.div(1000)

for country in individual_countries + ['Rest of Euro Area', 'Non-EA EU']:
    all_data.loc[country, 'GDP (US$ Thousand)'] = gdp.loc[country, '2022 [YR2022]']
all_data.iloc[:, :-1] = all_data.iloc[:, :-1].div(all_data.iloc[:, -1], axis=0)*100
all_data = all_data.rename(columns = {'Euro Area Imports (US$ Thousand)': 'Euro Area Imports (% of importer GDP)', 
                                      'EU Non-Euro Area Imports (US$ Thousand)': 'EU Non-Euro Area Imports (% of importer GDP)', 
                                      'Rest of World Import (US$ Thousand)': 'Rest of World Import (% of importer GDP)'})
del all_data['GDP (US$ Thousand)']

# Save the aggregated results to a CSV file
all_data.to_csv(os.path.join(directory, 'import_graph.csv'))
