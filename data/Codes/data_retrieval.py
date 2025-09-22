# -*- coding: utf-8 -*-
"""
Created on Fri Mar  7 10:22:34 2025

@author: petravi
"""

import os
import pandas as pd
import numpy as np


directory = r'/Users/emilepetraviciute/2025-03_eagle/data/raw_data'
out_directory = r'/Users/emilepetraviciute/2025-03_eagle/data' 


#%% Investment split between governmnt and private

individual_countries = ['Austria', 'Belgium', 'Germany', 'Spain', 'Finland', 'France', 'Greece', 'Italy', 'Netherlands', 'Portugal', 'United States']
other_eea = ['Croatia', 'Estonia', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Slovak Republic', 'Slovenia', 'Cyprus', 'Ireland']
other_eu = ['Bulgaria', 'Czech Republic', 'Denmark', 'Hungary', 'Poland', 'Romania', 'Sweden']

'''
Reading in the excel files
'''
gdp = pd.read_csv(os.path.join(directory, 'imf_gdp.csv'), header=0, index_col=3).dropna(axis=1, how='all')
gdp.index = gdp.index.where(gdp.index.str.startswith('Congo'), gdp.index.str.split(',').str[0])
investment = pd.read_csv(os.path.join(directory, 'imf_investment_split.csv'), header=0,  index_col = [0,2]).dropna(axis=1, how='all')
investment = investment[investment['Unit Name'] == 'Percent of GDP']
investment.index = pd.MultiIndex.from_tuples(
    [(country.split(',')[0] if not country.startswith('Congo') else country, level2) 
     for country, level2 in investment.index],
    names=investment.index.names)

gdp = gdp[[col for col in gdp.columns if col.isdigit()]]
investment = investment[[col for col in investment.columns if col.isdigit()]]

#%%

'''
Calculating public, private split in investment
'''

for country in investment.index.get_level_values(0):  
    gov_inv = investment.loc[(country, "General government investment (gross fixed capital formation)")]
    priv_inv = investment.loc[(country, "Private investment (gross fixed capital formation)")]
    total_inv = gov_inv + priv_inv
    gov_share = gov_inv / total_inv
    priv_share = priv_inv / total_inv
    investment.loc[(country, "Government investment share"), :] = gov_share
    investment.loc[(country, "Private investment share"), :] = priv_share
    
investment = investment[~investment.index.get_level_values(1).isin(['General government investment (gross fixed capital formation)','Private investment (gross fixed capital formation)'])]
investment['share'] = None

#Calculating private investment average
investment.loc[investment.index.get_level_values(1) == 'Private investment share', 'share'] = investment.loc[investment.index.get_level_values(1) == 'Private investment share'].mean(axis=1)

# Calculate (1 - 'share' of 'Private investment share') for other investment types
for country in investment.index.get_level_values(0).unique():
    private_share_value = investment.loc[(country, 'Private investment share'), 'share']
    investment.loc[
        (investment.index.get_level_values(0) == country) & 
        (investment.index.get_level_values(1) != 'Private investment share'), 
        'share'
    ] = 1 - private_share_value

investment = pd.DataFrame(investment.iloc[:, -1])
    
'''
Aggregating by weighted GDP
'''
gdp['GDP'] = gdp.mean(axis=1, skipna=True)
gdp = pd.DataFrame(gdp.iloc[:,-1])

#Rest of EU 
gdp_ru = gdp[gdp.index.isin(other_eu)].copy()
investment_ru = investment[investment.index.get_level_values(0).isin(other_eu)].copy()
investment_ru = investment_ru.reset_index()
investment_ru.columns = ['country', 'investment_type', 'share']
investment_ru_merged = investment_ru.merge(gdp_ru, left_on='country', right_index=True)
investment_ru_merged['Weight'] = investment_ru_merged['GDP']/(investment_ru_merged["GDP"].sum()/2)
gov_investment_ru = investment_ru_merged[investment_ru_merged['investment_type'] == 'Government investment share']
private_investment_ru = investment_ru_merged[investment_ru_merged['investment_type'] == 'Private investment share']
gov_inv_ru = (gov_investment_ru['share'] * gov_investment_ru['Weight']).sum() 
pri_inv_ru = (private_investment_ru['share'] * private_investment_ru['Weight']).sum() 

#Rest of Euro Area
gdp_ra = gdp[gdp.index.isin(other_eea)].copy()
investment_ra = investment[investment.index.get_level_values(0).isin(other_eea)].copy()
investment_ra = investment_ra.reset_index()
investment_ra.columns = ['country', 'investment_type', 'share']
investment_ra_merged = investment_ra.merge(gdp_ra, left_on='country', right_index=True)
investment_ra_merged['Weight'] = investment_ra_merged['GDP']/(investment_ra_merged["GDP"].sum()/2)
gov_investment_ra = investment_ra_merged[investment_ra_merged['investment_type'] == 'Government investment share']
private_investment_ra = investment_ra_merged[investment_ra_merged['investment_type'] == 'Private investment share']
gov_inv_ra = (gov_investment_ra['share'] * gov_investment_ra['Weight']).sum() 
pri_inv_ra = (private_investment_ra['share'] * private_investment_ra['Weight']).sum() 

#Rest of World
gdp_rw = gdp[~gdp.index.isin(set(individual_countries + other_eea + other_eu))].copy()
investment_rw = investment[~investment.index.get_level_values(0).isin(set(individual_countries + other_eea + other_eu))].copy()
investment_rw = investment_rw.reset_index()
investment_rw.columns = ['country', 'investment_type', 'share']
investment_rw_merged = investment_rw.merge(gdp_rw, left_on='country', right_index=True)
investment_rw_merged['Weight'] = investment_rw_merged['GDP']/(investment_rw_merged["GDP"].sum()/2)
gov_investment_rw = investment_rw_merged[investment_rw_merged['investment_type'] == 'Government investment share']
private_investment_rw = investment_rw_merged[investment_rw_merged['investment_type'] == 'Private investment share']
gov_inv_rw = (gov_investment_rw['share'] * gov_investment_rw['Weight']).sum() 
pri_inv_rw = (private_investment_rw['share'] * private_investment_rw['Weight']).sum() 

'''
Compiling one dataframe
'''
investment_final = investment[investment.index.get_level_values(0).isin(individual_countries)].copy()
investment_final = investment_final.reset_index()
investment_final.columns = ['country', 'investment_type', 'share']
add_rows = pd.DataFrame([
    ['RA', 'Government investment share', gov_inv_ra],
    ['RA', 'Private investment share', pri_inv_ra],
    ['RU', 'Government investment share', gov_inv_ru],
    ['RU', 'Private investment share', pri_inv_ru],
    ['RW', 'Government investment share', gov_inv_rw],
    ['RW', 'Private investment share', pri_inv_rw]], columns=['country', 'investment_type', 'share'])
investment_final = pd.concat([investment_final, add_rows], ignore_index=True)

'''
Renaming the countries, indexing, printing out 
'''
country_codes = {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'}
investment_final['country'] = investment_final['country'].replace(country_codes)
investment_final.set_index('country', inplace=True)

country_codes = ['RA', 'AT', 'BE', 'ES', 'FI', 'FR', 'GR', 'IT', 'NL', 'PT', 'DE', 'RU', 'RW', 'US']

output_directory = os.path.join(out_directory, 'investment_shares.csv')
investment_final.to_csv(output_directory)

#%% Taxes

individual_countries = ['Austria', 'Belgium', 'Germany', 'Spain', 'Finland', 'France', 'Greece', 'Italy', 'Netherlands', 'Portugal', 'United States']
other_eea = ['Croatia', 'Estonia', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Slovak Republic', 'Slovenia', 'Cyprus', 'Ireland']
other_eu = ['Bulgaria', 'Czechia', 'Denmark', 'Hungary', 'Poland', 'Romania', 'Sweden']

'''
Tax data 
'''
tax_raw_data = pd.read_csv(os.path.join(directory, 'taxes.csv'))
taxes_df = tax_raw_data[['Reference area', 'Revenue category', 'TIME_PERIOD', 'OBS_VALUE', 'Unit multiplier']]
taxes_df.loc[taxes_df['Unit multiplier'] == 'Billions', 'OBS_VALUE'] *= 1000

#Fixing a fault in dataset
taxes_df.loc[taxes_df['Reference area'].isin(['Hungary', 'Slovenia', 'Switzerland']), 'OBS_VALUE'] *= 1000

taxes_df = taxes_df.iloc[:, :-1]
taxes_df = taxes_df[~taxes_df['Reference area'].isin(['Africa', 'OECD average country', 'Latin America and the Caribbean'])]

taxes_dict = {}
for category, group in taxes_df.groupby('Revenue category'):
    pivot_df = group.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    taxes_dict[category] = pivot_df
    
#%%

'''
Consumption data
'''
consumption_raw_data = pd.read_csv(os.path.join(directory, 'consumption.csv'))
consumption_df = consumption_raw_data[['Reference area', 'TIME_PERIOD', 'OBS_VALUE']]
consumption_df = consumption_df.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
consumption_df['average'] = consumption_df.mean(axis=1)

'''
Consumption tax rate
'''
common_countries = consumption_df.index.intersection(taxes_dict['Taxes on goods and services'].index)
consumption_tax_rate_df = taxes_dict['Taxes on goods and services'].loc[common_countries] / consumption_df.loc[common_countries]
consumption_tax_rate_df['average'] = consumption_tax_rate_df.mean(axis=1)
consumption_df = consumption_df.loc[common_countries]

#Rest of EU
consumption_ru = consumption_df[consumption_df.index.isin(other_eu)].copy()
consumption_ru['Weight'] = consumption_ru['average']/consumption_ru["average"].sum()
consumption_tax_ru = consumption_tax_rate_df[consumption_tax_rate_df.index.isin(other_eu)].copy()
con_tax_rate_ru = (consumption_tax_ru['average'] * consumption_ru['Weight']).sum() 

#Rest of EA 
consumption_ra = consumption_df[consumption_df.index.isin(other_eea)].copy()
consumption_ra['Weight'] = consumption_ra['average']/consumption_ra["average"].sum()
consumption_tax_ra = consumption_tax_rate_df[consumption_tax_rate_df.index.isin(other_eea)].copy()
con_tax_rate_ra = (consumption_tax_ra['average'] * consumption_ra['Weight']).sum() 

#Rest of World
consumption_rw = consumption_df[~consumption_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
consumption_rw['Weight'] = consumption_rw['average']/consumption_rw["average"].sum()
consumption_tax_rw = consumption_tax_rate_df[~consumption_tax_rate_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
con_tax_rate_rw = (consumption_tax_rw['average'] * consumption_rw['Weight']).sum() 

#Combining with individual countries
con_tax_rate_df = consumption_tax_rate_df[consumption_tax_rate_df.index.isin(individual_countries)].copy()
con_tax_rate_df = pd.DataFrame(con_tax_rate_df['average'])
con_tax_rate_df.loc['RA', 'average'] = con_tax_rate_ra
con_tax_rate_df.loc['RU', 'average'] = con_tax_rate_ru
con_tax_rate_df.loc['RW', 'average'] = con_tax_rate_rw

country_codes = {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US', 'RA': 'RA', 'RW':'RW', 'RU':'RU'}
con_tax_rate_df.index = con_tax_rate_df.index.map(country_codes)


#%%

'''
Wage income data
'''
wage_income_raw_data = pd.read_csv(os.path.join(directory, 'wage_income.csv'))
wages_df = wage_income_raw_data[['Reference area', 'TIME_PERIOD', 'OBS_VALUE']]
wages_df = wages_df.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
wages_df['average'] = wages_df.mean(axis=1)

'''
Income tax rate
'''
income_tax_rate_df = taxes_dict['Taxes on income and profits of individuals']
es_pt_inc_tax = pd.read_csv(os.path.join(directory, 'es_pt_inc_tax.csv'), index_col = 0)
es_pt_inc_tax.columns = es_pt_inc_tax.columns.astype(int)
income_tax_rate_df.loc['Spain'] = es_pt_inc_tax.loc['Spain']
income_tax_rate_df.loc['Portugal'] = es_pt_inc_tax.loc['Portugal']
common_countries = wages_df.index.intersection(income_tax_rate_df.index)
income_tax_rate_df = income_tax_rate_df.loc[common_countries]
income_tax_rate_df = income_tax_rate_df/wages_df.loc[common_countries]
income_tax_rate_df['average'] = income_tax_rate_df.mean(axis=1)
wages_df = wages_df.loc[common_countries]

#Rest of EU
income_ru = wages_df[wages_df.index.isin(other_eu)].copy()
income_ru['Weight'] = income_ru['average']/income_ru["average"].sum()
income_tax_ru = income_tax_rate_df[income_tax_rate_df.index.isin(other_eu)].copy()
inc_tax_rate_ru = (income_tax_ru['average'] * income_ru['Weight']).sum() 

#Rest of EA 
income_ra = wages_df[wages_df.index.isin(other_eea)].copy()
income_ra['Weight'] = income_ra['average']/income_ra["average"].sum()
income_tax_ra = income_tax_rate_df[income_tax_rate_df.index.isin(other_eea)].copy()
inc_tax_rate_ra = (income_tax_ra['average'] * income_ra['Weight']).sum() 

#Rest of World
income_rw = wages_df[~wages_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
income_rw['Weight'] = income_rw['average']/income_rw["average"].sum()
income_tax_rw = income_tax_rate_df[~income_tax_rate_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
inc_tax_rate_rw = (income_tax_rw['average'] * income_rw['Weight']).sum() 

#Combining with individual countries
inc_tax_rate_df = income_tax_rate_df[income_tax_rate_df.index.isin(individual_countries)].copy()
inc_tax_rate_df = pd.DataFrame(inc_tax_rate_df['average'])
inc_tax_rate_df.loc['RA', 'average'] = inc_tax_rate_ra
inc_tax_rate_df.loc['RU', 'average'] = inc_tax_rate_ru
inc_tax_rate_df.loc['RW', 'average'] = inc_tax_rate_rw
inc_tax_rate_df.index = inc_tax_rate_df.index.map(country_codes)

#%%

'''
SSC by firms tax rate 
'''
wages_df = wage_income_raw_data[['Reference area', 'TIME_PERIOD', 'OBS_VALUE']]
wages_df = wages_df.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
wages_df['average'] = wages_df.mean(axis=1)

taxes_dict['Social security contributions (SSC) by employers'] = taxes_dict['Social security contributions (SSC) by employers'].loc[~(taxes_dict['Social security contributions (SSC) by employers'].isna() | (taxes_dict['Social security contributions (SSC) by employers'] == 0)).all(axis=1)]
common_countries = wages_df.index.intersection(taxes_dict['Social security contributions (SSC) by employers'].index)
sscf_tax_rate_df = taxes_dict['Social security contributions (SSC) by employers'].loc[common_countries] / wages_df.loc[common_countries]
sscf_tax_rate_df['average'] = sscf_tax_rate_df.mean(axis=1)
wages_df = wages_df.loc[common_countries]

#Rest of EU
income_ru = wages_df[wages_df.index.isin(other_eu)].copy()
income_ru['Weight'] = income_ru['average']/income_ru["average"].sum()
sscf_tax_ru = sscf_tax_rate_df[sscf_tax_rate_df.index.isin(other_eu)].copy()
sscf_tax_rate_ru = (sscf_tax_ru['average'] * income_ru['Weight']).sum() 

#Rest of EA 
income_ra = wages_df[wages_df.index.isin(other_eea)].copy()
income_ra['Weight'] = income_ra['average']/income_ra["average"].sum()
sscf_tax_ra = sscf_tax_rate_df[sscf_tax_rate_df.index.isin(other_eea)].copy()
sscf_tax_rate_ra = (sscf_tax_ra['average'] * income_ra['Weight']).sum() 

#Rest of World
income_rw = wages_df[~wages_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
income_rw['Weight'] = income_rw['average']/income_rw["average"].sum()
sscf_tax_rw = sscf_tax_rate_df[~sscf_tax_rate_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
sscf_tax_rate_rw = (sscf_tax_rw['average'] * income_rw['Weight']).sum() 

#Combining with individual countries
ssc_f_tax_rate_df = sscf_tax_rate_df[sscf_tax_rate_df.index.isin(individual_countries)].copy()
ssc_f_tax_rate_df = pd.DataFrame(ssc_f_tax_rate_df['average'])
ssc_f_tax_rate_df.loc['RA', 'average'] = sscf_tax_rate_ra
ssc_f_tax_rate_df.loc['RU', 'average'] = sscf_tax_rate_ru
ssc_f_tax_rate_df.loc['RW', 'average'] = sscf_tax_rate_rw
ssc_f_tax_rate_df.index = ssc_f_tax_rate_df.index.map(country_codes)

#%%

'''
SSC by households tax rate 
'''
wages_df = wage_income_raw_data[['Reference area', 'TIME_PERIOD', 'OBS_VALUE']]
wages_df = wages_df.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
wages_df['average'] = wages_df.mean(axis=1)

taxes_dict['Social security contributions (SSC) by employees'] = taxes_dict['Social security contributions (SSC) by employees'].loc[~(taxes_dict['Social security contributions (SSC) by employees'].isna() | (taxes_dict['Social security contributions (SSC) by employees'] == 0)).all(axis=1)]
common_countries = wages_df.index.intersection(taxes_dict['Social security contributions (SSC) by employees'].index)
ssch_tax_rate_df = taxes_dict['Social security contributions (SSC) by employees'].loc[common_countries] / wages_df.loc[common_countries]
ssch_tax_rate_df['average'] = ssch_tax_rate_df.mean(axis=1)
wages_df = wages_df.loc[common_countries]

#Rest of EU
income_ru = wages_df[wages_df.index.isin(other_eu)].copy()
income_ru['Weight'] = income_ru['average']/income_ru["average"].sum()
ssch_tax_ru = ssch_tax_rate_df[ssch_tax_rate_df.index.isin(other_eu)].copy()
ssch_tax_rate_ru = (ssch_tax_ru['average'] * income_ru['Weight']).sum() 

#Rest of EA 
income_ra = wages_df[wages_df.index.isin(other_eea)].copy()
income_ra['Weight'] = income_ra['average']/income_ra["average"].sum()
ssch_tax_ra = ssch_tax_rate_df[ssch_tax_rate_df.index.isin(other_eea)].copy()
ssch_tax_rate_ra = (ssch_tax_ra['average'] * income_ra['Weight']).sum() 

#Rest of World
income_rw = wages_df[~wages_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
income_rw['Weight'] = income_rw['average']/income_rw["average"].sum()
ssch_tax_rw = ssch_tax_rate_df[~ssch_tax_rate_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
ssch_tax_rate_rw = (ssch_tax_rw['average'] * income_rw['Weight']).sum() 

#Combining with individual countries
ssc_h_tax_rate_df = ssch_tax_rate_df[ssch_tax_rate_df.index.isin(individual_countries)].copy()
ssc_h_tax_rate_df = pd.DataFrame(ssc_h_tax_rate_df['average'])
ssc_h_tax_rate_df.loc['RA', 'average'] = ssch_tax_rate_ra
ssc_h_tax_rate_df.loc['RU', 'average'] = ssch_tax_rate_ru
ssc_h_tax_rate_df.loc['RW', 'average'] = ssch_tax_rate_rw
ssc_h_tax_rate_df.index = ssc_h_tax_rate_df.index.map(country_codes)

#%%

'''
Capital tax rate
''' 
cap_tax_raw_data = pd.read_csv(os.path.join(directory, 'capital_tax_loc.csv'))
cap_tax_revenue = cap_tax_raw_data[['Reference area', 'TIME_PERIOD', 'OBS_VALUE', 'Unit multiplier']]
cap_tax_revenue.loc[cap_tax_revenue['Unit multiplier'] == 'Billions', 'OBS_VALUE'] *= 1000
cap_tax_revenue.loc[cap_tax_revenue['Reference area'].isin(['Slovenia', 'Switzerland']), 'OBS_VALUE'] *= 1000

cap_tax_revenue = cap_tax_revenue.iloc[:, :-1]
cap_tax_revenue = cap_tax_revenue.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')

surplus_raw_data = pd.read_csv(os.path.join(directory, 'operating_surplus_local.csv'))
surplus_df = surplus_raw_data[['Reference area', 'Institutional sector', 'TIME_PERIOD', 'OBS_VALUE']]
surplus_df = surplus_df.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')

#To calculate weights 
surplus_raw_data_dollars = pd.read_csv(os.path.join(directory, 'operating_surplus.csv'))
surplus_df_dollars = surplus_raw_data_dollars[['Reference area', 'Institutional sector', 'TIME_PERIOD', 'OBS_VALUE']]
surplus_df_dollars = surplus_df_dollars.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')

#adding Spain and Portugal
es_pt_cap_tax = pd.read_csv(os.path.join(directory, 'es_pt_cap_tax.csv'), index_col = 0)
es_pt_cap_tax.index = ['Spain', 'Portugal']
es_pt_cap_tax.columns = es_pt_cap_tax.columns.astype(int)
cap_tax_revenue.loc['Spain'] = es_pt_cap_tax.loc['Spain']
cap_tax_revenue.loc['Portugal'] = es_pt_cap_tax.loc['Portugal']

cap_tax_revenue = cap_tax_revenue.loc[~(cap_tax_revenue.isna() | (cap_tax_revenue == 0)).all(axis=1)]

common_countries = surplus_df.index.intersection(cap_tax_revenue.index)
capital_tax_rate_df = cap_tax_revenue.loc[common_countries] / surplus_df.loc[common_countries]
capital_tax_rate_df['average'] = capital_tax_rate_df.mean(axis=1)
surplus_df_dollars = surplus_df_dollars.loc[common_countries]
surplus_df_dollars['average'] = surplus_df_dollars.mean(axis=1)

#Rest of EU
surplus_ru_dollars = surplus_df_dollars[surplus_df_dollars.index.isin(other_eu)].copy()
surplus_ru_dollars['Weight'] = surplus_ru_dollars['average']/surplus_ru_dollars["average"].sum()
capital_tax_ru = capital_tax_rate_df[capital_tax_rate_df.index.isin(other_eu)].copy()
capital_tax_rate_ru = (capital_tax_ru['average'] * surplus_ru_dollars['Weight']).sum() 

#Rest of EA 
surplus_ra_dollars = surplus_df_dollars[surplus_df_dollars.index.isin(other_eea)].copy()
surplus_ra_dollars['Weight'] = surplus_ra_dollars['average']/surplus_ra_dollars["average"].sum()
capital_tax_ra = capital_tax_rate_df[capital_tax_rate_df.index.isin(other_eea)].copy()
capital_tax_rate_ra = (capital_tax_ra['average'] * surplus_ra_dollars['Weight']).sum() 

#Rest of World
surplus_rw_dollars = surplus_df_dollars[~surplus_df_dollars.index.isin(set(individual_countries + other_eea + other_eu))].copy()
surplus_rw_dollars['Weight'] = surplus_rw_dollars['average']/surplus_rw_dollars["average"].sum()
capital_tax_rw = capital_tax_rate_df[~capital_tax_rate_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
capital_tax_rate_rw = (capital_tax_rw['average'] * surplus_rw_dollars['Weight']).sum() 

#Combining with individual countries
cap_tax_rate_df = capital_tax_rate_df[capital_tax_rate_df.index.isin(individual_countries)].copy()
cap_tax_rate_df = pd.DataFrame(cap_tax_rate_df['average'])
cap_tax_rate_df.loc['RA', 'average'] = capital_tax_rate_ra
cap_tax_rate_df.loc['RU', 'average'] = capital_tax_rate_ru
cap_tax_rate_df.loc['RW', 'average'] = capital_tax_rate_rw
cap_tax_rate_df.index = cap_tax_rate_df.index.map(country_codes)

'''
Combining to onedataset
'''
final = {'consumption':con_tax_rate_df, 'income': inc_tax_rate_df, 'SSC_firms': ssc_f_tax_rate_df, 'SSC_households': ssc_h_tax_rate_df, 'capital': cap_tax_rate_df}
final_df = pd.DataFrame()
for name, df in final.items():
    final_df[name] = df['average']
final_df = final_df.transpose()
desired_order = ['RA', 'AT', 'BE', 'ES', 'FI', 'FR', 'GR', 'IT', 'NL', 'PT', 'DE', 'RU', 'RW', 'US']
final_df = final_df[desired_order]

output_directory = os.path.join(out_directory, 'tax_rates.csv')
final_df.to_csv(output_directory)

#%%
'''
Debt to gdp ratio
'''
debt = pd.read_excel(os.path.join(directory, 'debt.xlsx'), header=0)
debt.set_index(debt.columns[0], inplace=True)
debt = debt[[col for col in debt.columns if str(col).isdigit() and 1995 <= int(col) <= 2020]]
debt=debt.dropna(axis=0, how='all')
debt = debt.replace('no data', np.nan)
debt['average'] = debt.mean(axis=1)

#Rest of EU
debt_ru = debt[debt.index.isin(other_eu)].copy()
debt_ru['Weight'] = gdp_ru['GDP']/gdp_ru["GDP"].sum()
debtratio_ru = (debt_ru['average'] * debt_ru['Weight']).sum() 
#Rest of EA
debt_ra = debt[debt.index.isin(other_eea)].copy()
debt_ra['Weight'] = gdp_ra['GDP']/gdp_ra["GDP"].sum()
debtratio_ra = (debt_ra['average'] * debt_ra['Weight']).sum() 
#Rest of World
debt_rw = debt[~debt.index.isin(set(individual_countries + other_eea + other_eu))].copy()
debt_rw.index = debt_rw.index.where(debt_rw.index.str.startswith('Congo'), debt_rw.index.str.split(',').str[0])
debt_rw = debt_rw.rename(index={'Congo, Dem. Rep. of the':'Congo, Democratic Republic of the'})
common_countries = gdp.index.intersection(debt_rw.index)
gdp_rw=gdp.loc[common_countries]
debt_rw['Weight'] = gdp_rw['GDP']/gdp_rw["GDP"].sum()
debtratio_rw = (debt_rw['average'] * debt_rw['Weight']).sum()

#Combining with individual countries
debtratio = debt[debt.index.isin(individual_countries)].copy()
debtratio = pd.DataFrame(debtratio['average'])
debtratio.index = debtratio.index.map(country_codes)
debtratio.loc['RA', 'average'] = debtratio_ra
debtratio.loc['RU', 'average'] = debtratio_ru
debtratio.loc['RW', 'average'] = debtratio_rw
debtratio = (debtratio/100)*4
debtratio = debtratio.T
debtratio = debtratio.rename(index={'average':'bytarget'})

output_directory = os.path.join(out_directory, 'debt.csv')
debtratio.to_csv(output_directory)

#%%

'''
Transfers to gdp ratio
'''
transfers_eu = pd.read_csv(os.path.join(directory, 'transfers_eurostat.csv'), header=0)
transfers_eu_df = transfers_eu.pivot(index='Geopolitical entity (reporting)', columns='TIME_PERIOD', values='OBS_VALUE')
transfers_eu_df['average'] = transfers_eu_df.mean(axis=1)

#Rest of EU
transfers_eu_df = transfers_eu_df.rename(index={'Czechia':'Czech Republic'})
transfers_ru = transfers_eu_df[transfers_eu_df.index.isin(other_eu)].copy()
transfers_ru['Weight'] = gdp_ru['GDP']/gdp_ru["GDP"].sum()
transfersratio_ru = (transfers_ru['average'] * transfers_ru['Weight']).sum() 
#Rest of EA
transfers_eu_df = transfers_eu_df.rename(index={'Slovakia':'Slovak Republic'})
transfers_ra = transfers_eu_df[transfers_eu_df.index.isin(other_eea)].copy()
transfers_ra['Weight'] = gdp_ra['GDP']/gdp_ra["GDP"].sum()
transfersratio_ra = (transfers_ra['average'] * transfers_ra['Weight']).sum() 
#RW and US
transfers = pd.read_csv(os.path.join(directory, 'transfers.csv'), header=0)
transfers_df = transfers.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
transfers_df['average'] = transfers_df.mean(axis=1)
transfers_rw = transfers_df[~transfers_df.index.isin(set(individual_countries + other_eea + other_eu))].copy()
common_countries = gdp.index.intersection(transfers_rw.index)
gdp_rw=gdp.loc[common_countries]
transfers_rw['Weight'] = gdp_rw['GDP']/gdp_rw["GDP"].sum()
transfersratio_rw = (transfers_rw['average'] * transfers_rw['Weight']).sum()


#Combining with individual countries
transfersratio = transfers_eu_df[transfers_eu_df.index.isin(individual_countries)].copy()
transfersratio = pd.DataFrame(transfersratio['average'])
transfersratio.index = transfersratio.index.map(country_codes)
transfersratio.loc['US', 'average'] = transfers_df.loc['United States', 'average']
transfersratio.loc['RA', 'average'] = transfersratio_ra
transfersratio.loc['RU', 'average'] = transfersratio_ru
transfersratio.loc['RW', 'average'] = transfersratio_rw
transfersratio = transfersratio.T
transfersratio = transfersratio.rename(index={'average':'trybar'})
transfersratio = transfersratio/100

output_directory = os.path.join(out_directory, 'transfers.csv')
transfersratio.to_csv(output_directory)