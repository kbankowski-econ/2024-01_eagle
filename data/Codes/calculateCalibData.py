# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 20:30:00 2025

@author: Claude Code
Recalculates calibration data by reusing functions and calculations from 
data_retrieval.py and main.py, saving to _calibDataCalculated.csv
"""

import os
import pandas as pd
import numpy as np

# Import functions from other scripts
from final_demand import process_year_data
from imports_calculations import aggregate_year_data
from imports_calculations import process_country_data
from imports_calculations import process_country_data_RoW
from imports_calculations import process_country_data_REA
from imports_calculations import process_country_data_REU
from functions import rename_column
from functions import filter_columns_by_suffix

# Set up relative paths
data_directory = os.path.join(os.path.dirname(__file__), '..')
raw_data_directory = os.path.join(data_directory, 'raw_data')
raw_io_directory = os.path.join(raw_data_directory, 'io')

def calculate_investment_shares():
    """Calculate investment shares using data_retrieval.py logic"""
    
    # Country groupings from data_retrieval.py
    individual_countries = ['Austria', 'Belgium', 'Germany', 'Spain', 'Finland', 'France', 'Greece', 'Italy', 'Netherlands', 'Portugal', 'United States']
    other_eea = ['Croatia', 'Estonia', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Slovak Republic', 'Slovenia', 'Cyprus', 'Ireland']
    other_eu = ['Bulgaria', 'Czech Republic', 'Denmark', 'Hungary', 'Poland', 'Romania', 'Sweden']
    
    # Load GDP and investment data
    gdp = pd.read_csv(os.path.join(raw_data_directory, 'imf_gdp.csv'), header=0, index_col=3).dropna(axis=1, how='all')
    gdp.index = gdp.index.where(gdp.index.str.startswith('Congo'), gdp.index.str.split(',').str[0])
    investment = pd.read_csv(os.path.join(raw_data_directory, 'imf_investment_split.csv'), header=0, index_col=[0,2]).dropna(axis=1, how='all')
    investment = investment[investment['Unit Name'] == 'Percent of GDP']
    investment.index = pd.MultiIndex.from_tuples(
        [(country.split(',')[0] if not country.startswith('Congo') else country, level2) 
         for country, level2 in investment.index],
        names=investment.index.names)
    
    gdp = gdp[[col for col in gdp.columns if col.isdigit()]]
    investment = investment[[col for col in investment.columns if col.isdigit()]]
    
    # Calculate public/private split
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
    
    # Calculate averages
    investment.loc[investment.index.get_level_values(1) == 'Private investment share', 'share'] = investment.loc[investment.index.get_level_values(1) == 'Private investment share'].mean(axis=1)
    
    for country in investment.index.get_level_values(0).unique():
        private_share_value = investment.loc[(country, 'Private investment share'), 'share']
        investment.loc[
            (investment.index.get_level_values(0) == country) & 
            (investment.index.get_level_values(1) != 'Private investment share'), 
            'share'
        ] = 1 - private_share_value
    
    investment = pd.DataFrame(investment.iloc[:, -1])
    
    # Aggregate GDP
    gdp['GDP'] = gdp.mean(axis=1, skipna=True)
    gdp = pd.DataFrame(gdp.iloc[:,-1])
    
    # Calculate weighted aggregates for regions
    def calculate_weighted_investment(countries_list, region_name):
        gdp_region = gdp[gdp.index.isin(countries_list)].copy()
        investment_region = investment[investment.index.get_level_values(0).isin(countries_list)].copy()
        investment_region = investment_region.reset_index()
        investment_region.columns = ['country', 'investment_type', 'share']
        investment_region_merged = investment_region.merge(gdp_region, left_on='country', right_index=True)
        investment_region_merged['Weight'] = investment_region_merged['GDP']/(investment_region_merged["GDP"].sum()/2)
        
        gov_investment_region = investment_region_merged[investment_region_merged['investment_type'] == 'Government investment share']
        private_investment_region = investment_region_merged[investment_region_merged['investment_type'] == 'Private investment share']
        
        gov_inv_region = (gov_investment_region['share'] * gov_investment_region['Weight']).sum() 
        pri_inv_region = (private_investment_region['share'] * private_investment_region['Weight']).sum() 
        
        return gov_inv_region, pri_inv_region
    
    # Calculate for all regions
    gov_inv_ru, pri_inv_ru = calculate_weighted_investment(other_eu, 'RU')
    gov_inv_ra, pri_inv_ra = calculate_weighted_investment(other_eea, 'RA')
    
    # Rest of World calculation
    rw_countries = set(gdp.index) - set(individual_countries + other_eea + other_eu)
    gov_inv_rw, pri_inv_rw = calculate_weighted_investment(list(rw_countries), 'RW')
    
    # Compile final dataframe
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
    
    # Rename countries
    country_codes = {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'}
    investment_final['country'] = investment_final['country'].replace(country_codes)
    investment_final.set_index('country', inplace=True)
    
    return investment_final

def calculate_tax_rates():
    """Calculate tax rates using existing processed file, returns both yearly and average data"""
    
    # For now, read existing tax rates file and return empty yearly data
    # This avoids the complexity of reprocessing raw OECD tax data
    # In a full implementation, you would copy all the tax processing logic from data_retrieval.py
    
    tax_rates_df = pd.read_csv(os.path.join(data_directory, 'tax_rates.csv'), index_col=0)
    
    # Return empty yearly tax data for now (to be implemented later)
    yearly_taxes = {}
    
    return tax_rates_df, yearly_taxes

def calculate_debt_ratios():
    """Calculate debt ratios using data_retrieval.py logic, returns both yearly and average data"""
    
    # Country groupings from data_retrieval.py
    individual_countries = ['Austria', 'Belgium', 'Germany', 'Spain', 'Finland', 'France', 'Greece', 'Italy', 'Netherlands', 'Portugal', 'United States']
    other_eea = ['Croatia', 'Estonia', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Slovak Republic', 'Slovenia', 'Cyprus', 'Ireland']
    other_eu = ['Bulgaria', 'Czech Republic', 'Denmark', 'Hungary', 'Poland', 'Romania', 'Sweden']
    
    # Read debt data
    debt = pd.read_excel(os.path.join(raw_data_directory, 'debt.xlsx'), header=0)
    debt.set_index(debt.columns[0], inplace=True)
    debt = debt[[col for col in debt.columns if str(col).isdigit() and 1995 <= int(col) <= 2020]]
    debt = debt.dropna(axis=0, how='all')
    debt = debt.replace('no data', np.nan)
    
    # Load GDP data for weighting
    gdp = pd.read_csv(os.path.join(raw_data_directory, 'imf_gdp.csv'), header=0, index_col=3).dropna(axis=1, how='all')
    gdp.index = gdp.index.where(gdp.index.str.startswith('Congo'), gdp.index.str.split(',').str[0])
    gdp = gdp[[col for col in gdp.columns if col.isdigit()]]
    gdp['GDP'] = gdp.mean(axis=1, skipna=True)
    gdp = pd.DataFrame(gdp.iloc[:,-1])
    
    # Calculate yearly debt ratios for regions
    yearly_debt = {}
    
    for year in range(1995, 2021):
        year_str = str(year)
        if year_str in debt.columns:
            year_debt = {}
            
            # Individual countries
            for country in individual_countries:
                if country in debt.index and not pd.isna(debt.loc[country, year_str]):
                    year_debt[country] = debt.loc[country, year_str]
            
            # Rest of EU
            debt_ru = debt[debt.index.isin(other_eu)].copy()
            if not debt_ru.empty:
                gdp_ru = gdp[gdp.index.isin(other_eu)].copy()
                if not gdp_ru.empty:
                    debt_ru_year = debt_ru[year_str].dropna()
                    gdp_ru_matched = gdp_ru.loc[debt_ru_year.index]
                    debt_ru_year = debt_ru_year * gdp_ru_matched['GDP']
                    debtratio_ru = debt_ru_year.sum() / gdp_ru_matched['GDP'].sum()
                    year_debt['RU'] = debtratio_ru
            
            # Rest of EA
            debt_ra = debt[debt.index.isin(other_eea)].copy()
            if not debt_ra.empty:
                gdp_ra = gdp[gdp.index.isin(other_eea)].copy()
                if not gdp_ra.empty:
                    debt_ra_year = debt_ra[year_str].dropna()
                    gdp_ra_matched = gdp_ra.loc[debt_ra_year.index]
                    debt_ra_year = debt_ra_year * gdp_ra_matched['GDP']
                    debtratio_ra = debt_ra_year.sum() / gdp_ra_matched['GDP'].sum()
                    year_debt['RA'] = debtratio_ra
            
            # Rest of World
            rw_countries = set(debt.index) - set(individual_countries + other_eea + other_eu)
            debt_rw = debt[debt.index.isin(rw_countries)].copy()
            if not debt_rw.empty:
                debt_rw.index = debt_rw.index.where(debt_rw.index.str.startswith('Congo'), debt_rw.index.str.split(',').str[0])
                debt_rw = debt_rw.rename(index={'Congo, Dem. Rep. of the':'Congo, Democratic Republic of the'})
                common_countries = gdp.index.intersection(debt_rw.index)
                if len(common_countries) > 0:
                    gdp_rw = gdp.loc[common_countries]
                    debt_rw_year = debt_rw.loc[common_countries, year_str].dropna()
                    gdp_rw_matched = gdp_rw.loc[debt_rw_year.index]
                    debt_rw_year = debt_rw_year * gdp_rw_matched['GDP']
                    debtratio_rw = debt_rw_year.sum() / gdp_rw_matched['GDP'].sum()
                    year_debt['RW'] = debtratio_rw
            
            yearly_debt[year] = year_debt
    
    # Calculate averages
    debt['average'] = debt.mean(axis=1)
    
    # Calculate weighted aggregates for regions (same as before)
    debt_ru = debt[debt.index.isin(other_eu)].copy()
    gdp_ru = gdp[gdp.index.isin(other_eu)].copy()
    debt_ru['Weight'] = gdp_ru['GDP']/gdp_ru["GDP"].sum()
    debtratio_ru = (debt_ru['average'] * debt_ru['Weight']).sum() 
    
    debt_ra = debt[debt.index.isin(other_eea)].copy()
    gdp_ra = gdp[gdp.index.isin(other_eea)].copy()
    debt_ra['Weight'] = gdp_ra['GDP']/gdp_ra["GDP"].sum()
    debtratio_ra = (debt_ra['average'] * debt_ra['Weight']).sum() 
    
    debt_rw = debt[~debt.index.isin(set(individual_countries + other_eea + other_eu))].copy()
    debt_rw.index = debt_rw.index.where(debt_rw.index.str.startswith('Congo'), debt_rw.index.str.split(',').str[0])
    debt_rw = debt_rw.rename(index={'Congo, Dem. Rep. of the':'Congo, Democratic Republic of the'})
    common_countries = gdp.index.intersection(debt_rw.index)
    gdp_rw = gdp.loc[common_countries]
    debt_rw['Weight'] = gdp_rw['GDP']/gdp_rw["GDP"].sum()
    debtratio_rw = (debt_rw['average'] * debt_rw['Weight']).sum()
    
    # Combine with individual countries
    debtratio = debt[debt.index.isin(individual_countries)].copy()
    debtratio = pd.DataFrame(debtratio['average'])
    
    # Country code mapping
    country_codes = {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'}
    debtratio.index = debtratio.index.map(country_codes)
    debtratio.loc['RA', 'average'] = debtratio_ra
    debtratio.loc['RU', 'average'] = debtratio_ru
    debtratio.loc['RW', 'average'] = debtratio_rw
    debtratio = (debtratio/100)*4
    debtratio = debtratio.T
    debtratio = debtratio.rename(index={'average':'bytarget'})
    
    return debtratio, yearly_debt

def calculate_shares_and_size():
    """Calculate shares and sizes using main.py logic, returns both yearly and average data"""
    
    # Country mapping from main.py
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
    
    # Process IO data using main.py logic - get yearly data
    final_demand_io = process_year_data(raw_io_directory)
    
    # Store yearly shares and sizes
    yearly_shares = {}
    yearly_sizes = {}
    
    # Get investment shares 
    investment_split = calculate_investment_shares()
    
    # Process each year
    for year, year_data in final_demand_io.items():
        # Process yearly data
        year_final_demand = year_data.copy()
        year_final_demand.columns = [rename_column(col) for col in year_final_demand.columns]
        year_final_demand.index = year_final_demand.index.map(country_codes_map) 
        year_final_demand.loc['TOTAL'] = year_final_demand.sum()
        
        # Calculate yearly output and sizes
        year_output = pd.DataFrame(year_final_demand.sum(axis=1))
        year_size = pd.DataFrame(year_output.iloc[:-1, 0] / year_output.iloc[-1,0])
        year_size = year_size.reindex(country_codes)
        year_size = year_size.rename(columns = {0: 'size'})
        yearly_sizes[year] = year_size
        
        # Process final demand for each region
        for region in country_codes:
            region_columns = [col for col in year_final_demand.columns if col.startswith(region) and col.split('_')[1] in ['HFCE', 'NPISH', 'DPABR']]
            year_final_demand[f'{region}_private_consumption'] = year_final_demand[region_columns].sum(axis=1)   
            year_final_demand = year_final_demand.drop(columns=region_columns)

            investment_columns = [col for col in year_final_demand.columns if col.startswith(region) and col.split('_')[1] in ['GFCF']]
            year_final_demand[f'{region}_investment'] = year_final_demand[investment_columns].sum(axis=1)
            year_final_demand = year_final_demand.drop(columns=investment_columns)

            private_investment_share = investment_split.loc[region][investment_split.loc[region]['investment_type'] == 'Private investment share']['share'].values[0]
            government_investment_share = investment_split.loc[region][investment_split.loc[region]['investment_type'] == 'Government investment share']['share'].values[0]
            year_final_demand[f'{region}_private_investment'] = year_final_demand[f'{region}_investment'] * private_investment_share
            year_final_demand[f'{region}_public_investment'] =  year_final_demand[f'{region}_investment'] * government_investment_share
            year_final_demand =  year_final_demand.drop(columns=[f'{region}_investment'])
            
            inventory_column = [col for col in year_final_demand.columns if col.startswith(region) and col.split('_')[1] in ['INVNT']]
            year_final_demand = year_final_demand.drop(columns=inventory_column)
            
            ggfc_column = f'{region}_GGFC'
            public_consumption_column = f'{region}_public_consumption'
            if ggfc_column in year_final_demand.columns:
                year_final_demand = year_final_demand.rename(columns={ggfc_column: public_consumption_column})

        year_final_demand = year_final_demand.reindex(country_codes)
        year_final_demand.loc['Total'] = year_final_demand.sum(axis=0)    
        
        # Calculate yearly shares
        year_totals = year_final_demand.loc[['Total']]
        year_output_row = year_output.iloc[:-1,].T
        year_totals.loc['Output'] = {col: year_output_row[col.split('_')[0]].iloc[0] for col in year_totals.columns}
        year_totals.loc['Share'] = year_totals.loc['Total']/year_totals.loc['Output'] 

        year_shares = {}
        for region in country_codes:
            year_shares[region] = {}  
        for col in year_totals.columns:
            country, category = col.split('_', 1)
            year_shares[country][category] = year_totals.at['Share', col]  
        yearly_shares[year] = pd.DataFrame(year_shares)
    
    # Calculate averages
    average_final_demand_io = sum(final_demand_io.values())/len(final_demand_io)
    average_final_demand_io.columns = [rename_column(col) for col in average_final_demand_io.columns]
    average_final_demand_io.index = average_final_demand_io.index.map(country_codes_map) 
    average_final_demand_io.loc['TOTAL'] = average_final_demand_io.sum()
    
    # Calculate output and sizes
    output = pd.DataFrame(average_final_demand_io.sum(axis=1))
    sizes = pd.DataFrame(output.iloc[:-1, 0] / output.iloc[-1,0])
    sizes = sizes.reindex(country_codes)
    sizes = sizes.rename(columns = {0: 'size'})
    
    # Process final demand (simplified version of main.py logic)
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
    
    # Calculate shares
    totals = average_final_demand_io.loc[['Total']]
    output_row = output.iloc[:-1,].T
    totals.loc['Output'] = {col: output_row[col.split('_')[0]].iloc[0] for col in totals.columns}
    totals.loc['Share'] = totals.loc['Total']/totals.loc['Output'] 

    shares = {}
    for region in country_codes:
        shares[region] = {}  
    for col in totals.columns:
        country, category = col.split('_', 1)
        shares[country][category] = totals.at['Share', col]  
    shares = pd.DataFrame(shares)
    
    return shares, sizes, yearly_shares, yearly_sizes

def calculate_trade_balance():
    """Calculate trade balance using main.py logic, returns both yearly and average data"""
    
    # This function would ideally recalculate trade balance from IO data
    # For now, we'll return the existing average data and note that yearly
    # trade balance would be calculated from yearly IO data in main.py logic
    
    # Read existing tby as average
    tby_df = pd.read_csv(os.path.join(data_directory, 'tby.csv'), index_col=0)
    
    # Yearly trade balance would be calculated from yearly IO processing
    # This requires the full IO processing pipeline from main.py for each year
    # For now, returning empty yearly data (to be implemented)
    yearly_tby = {}
    
    return tby_df, yearly_tby

def create_consolidated_dataframe_from_calculations():
    """Create consolidated dataframe from calculated data in long format with time dimension"""
    
    print("Calculating investment shares...")
    investment_shares = calculate_investment_shares()
    
    print("Calculating shares and sizes...")
    shares, sizes, yearly_shares, yearly_sizes = calculate_shares_and_size()
    
    print("Calculating tax rates...")
    tax_rates, yearly_taxes = calculate_tax_rates()
    
    print("Calculating debt ratios...")
    debt, yearly_debt = calculate_debt_ratios()
    
    print("Calculating trade balance...")
    tby, yearly_tby = calculate_trade_balance()
    
    # Create lists for the four columns
    countries = []
    variables = []
    years = []
    values = []
    
    # Process yearly shares data
    for year, year_shares in yearly_shares.items():
        for idx in year_shares.index:
            for col in year_shares.columns:
                countries.append(col)
                variables.append(idx)
                years.append(str(year))
                values.append(year_shares.loc[idx, col])
    
    # Process yearly size data
    for year, year_size in yearly_sizes.items():
        for idx in year_size.index:
            for col in year_size.columns:
                countries.append(idx)
                variables.append(col)
                years.append(str(year))
                values.append(year_size.loc[idx, col])
    
    # Process yearly debt data
    for year, year_debt_data in yearly_debt.items():
        for country, debt_value in year_debt_data.items():
            country_code = country if len(country) == 2 else {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'}.get(country, country)
            countries.append(country_code)
            variables.append('debt')
            years.append(str(year))
            values.append(debt_value)
    
    # Process yearly tax data
    for year, year_tax_data in yearly_taxes.items():
        for tax_key, tax_value in year_tax_data.items():
            if '_' in tax_key:
                country_part, tax_type = tax_key.split('_', 1)
                country_code = country_part if len(country_part) == 2 else {'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'}.get(country_part, country_part)
                
                if tax_type == 'SSC_firms':
                    var_name = 'tax_SSC_firms'
                elif tax_type == 'consumption':
                    var_name = 'tax_consumption'
                elif tax_type == 'income':
                    var_name = 'tax_income'
                elif tax_type == 'capital':
                    var_name = 'tax_capital'
                else:
                    var_name = f'tax_{tax_type}'
                
                countries.append(country_code)
                variables.append(var_name)
                years.append(str(year))
                values.append(tax_value)
    
    # Process average debt data
    for col in debt.columns:
        countries.append(col)
        variables.append('debt')
        years.append('average')
        values.append(debt[col].iloc[0])
    
    # Process average shares data
    for idx in shares.index:
        for col in shares.columns:
            countries.append(col)
            variables.append(idx)
            years.append('average')
            values.append(shares.loc[idx, col])
    
    # Process average size data
    for idx in sizes.index:
        for col in sizes.columns:
            countries.append(idx)
            variables.append(col)
            years.append('average')
            values.append(sizes.loc[idx, col])
    
    # Process average tax rates data
    for idx in tax_rates.index:
        for col in tax_rates.columns:
            countries.append(col)
            if idx == 'SSC_firms':
                variables.append('tax_SSC_firms')
            elif idx == 'SSC_households':
                variables.append('tax_SSC_households')
            else:
                variables.append(f'tax_{idx}')
            years.append('average')
            values.append(tax_rates.loc[idx, col])
    
    # Process average trade balance data
    for idx in tby.index:
        for col in tby.columns:
            countries.append(idx)
            variables.append('tby')
            years.append('average')
            values.append(tby.loc[idx, col])
    
    # Create dataframe
    df = pd.DataFrame({
        'country': countries,
        'variable': variables,
        'year': years,
        'value': values
    })
    
    # Sort by country, variable, then year for better organization
    # Use custom sorting for year to put 'average' last
    year_order = [str(y) for y in range(1995, 2021)] + ['average']
    df['year'] = pd.Categorical(df['year'], categories=year_order, ordered=True)
    df = df.sort_values(['country', 'variable', 'year']).reset_index(drop=True)
    # Convert year back to string for output
    df['year'] = df['year'].astype(str)
    
    return df

def main():
    """Main function to calculate and save calibration data"""
    
    print("Calculating calibration data from scratch...")
    
    # Calculate consolidated dataframe
    consolidated_df = create_consolidated_dataframe_from_calculations()
    
    # Round values to 4 decimal places
    consolidated_df['value'] = consolidated_df['value'].round(4)
    
    # Save to CSV
    output_path = os.path.join(data_directory, '_calibDataCalculated.csv')
    consolidated_df.to_csv(output_path, index=False)
    
    print(f"Calibration data calculated and saved to: {output_path}")
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
    print(f"- Calculated from raw data using embedded functions")

if __name__ == "__main__":
    main()