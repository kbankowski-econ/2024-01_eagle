# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 20:30:00 2025

@author: Claude Code
Recalculates calibration data by reusing functions and calculations from 
data_retrieval.py and main.py, saving to _calibDataCalculated.csv

MODIFICATION: All "average" values are now computed as the simple arithmetic
mean across yearly values (equal weight per year) for every function that
returns both yearly and average results.
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
    
    # Country groupings from data_retrieval.pyƒƒ
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


def calculate_transfers():

    YEAR_RANGE = list(range(1995, 2021))

    # Groups (match other functions)
    individual_countries = ['Austria','Belgium','Germany','Spain','Finland','France','Greece',
                            'Italy','Netherlands','Portugal','United States']
    other_eea = ['Croatia','Estonia','Latvia','Lithuania','Luxembourg','Malta',
                 'Slovak Republic','Slovenia','Cyprus','Ireland']
    other_eu  = ['Bulgaria','Czech Republic','Denmark','Hungary','Poland','Romania','Sweden']

    country_codes = {'Austria': 'AT','Belgium': 'BE','Spain': 'ES','Finland':'FI','France':'FR',
                     'Greece': 'GR','Italy': 'IT','Netherlands': 'NL','Portugal': 'PT',
                     'Germany': 'DE','United States': 'US',
                     'RA': 'RA','RU': 'RU','RW': 'RW'}
    code_order = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US']

    def _to_int_year_cols(df):
        if df.empty:
            return df
        # Keep only numeric year columns within range
        cols_num = pd.to_numeric(pd.Index(df.columns), errors='coerce')
        mask = cols_num.isin(YEAR_RANGE)
        if not mask.any():
            return df.iloc[:, 0:0]
        df2 = df.iloc[:, mask].copy()
        df2.columns = cols_num[mask].astype(int)
        df2 = df2.reindex(sorted(df2.columns), axis=1)
        return df2

    # ---- GDP: per-year + average (for weights) ----
    gdp_raw = pd.read_csv(os.path.join(raw_data_directory, 'imf_gdp.csv'), header=0, index_col=3).dropna(axis=1, how='all')
    gdp_raw.index = gdp_raw.index.where(gdp_raw.index.str.startswith('Congo'), gdp_raw.index.str.split(',').str[0])
    gdp_years = gdp_raw[[c for c in gdp_raw.columns if str(c).isdigit()]].copy()
    # coerce columns to int years
    gdp_years.columns = [int(c) for c in gdp_years.columns]
    # average GDP (used for the "average" RA/RU/RW weights, to match your prior code)
    gdp_avg = pd.Series(gdp_years.mean(axis=1, skipna=True), name='GDP')

    # ---- EU transfers (Eurostat) ----
    eu = pd.read_csv(os.path.join(raw_data_directory, 'transfers_eurostat.csv'), header=0)
    eu_df = eu.pivot(index='Geopolitical entity (reporting)', columns='TIME_PERIOD', values='OBS_VALUE')
    # Harmonize names used in your earlier snippet
    eu_df = eu_df.rename(index={'Czechia':'Czech Republic', 'Slovakia':'Slovak Republic'})
    # convert year columns to int, keep 1995..2020
    eu_df.columns = pd.to_numeric(eu_df.columns, errors='coerce')
    eu_df = _to_int_year_cols(eu_df)

    # ---- US + Rest of world transfers (OECD/etc.) ----
    rwus = pd.read_csv(os.path.join(raw_data_directory, 'transfers.csv'), header=0)
    rw_df = rwus.pivot(index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    rw_df.columns = pd.to_numeric(rw_df.columns, errors='coerce')
    rw_df = _to_int_year_cols(rw_df)

    # ---- Helper to compute region series: (sum_i transfers_i% * GDP_i) / sum_i GDP_i, per YEAR ----
    def _region_year_series(df, members):
        # df: rows=countries, cols=years (percent of GDP, not yet /100)
        # members: list of country names
        s = {}
        for y in (set(df.columns).intersection(gdp_years.columns)):
            # intersect on members present both in df and GDP
            countries_y = pd.Index(members).intersection(df.index).intersection(gdp_years.index)
            if len(countries_y) == 0:
                s[int(y)] = np.nan
                continue
            vals = pd.to_numeric(df.loc[countries_y, y], errors='coerce')
            wts  = pd.to_numeric(gdp_years.loc[countries_y, y], errors='coerce')
            wsum = wts.sum(skipna=True)
            s[int(y)] = (float((vals * wts).sum(skipna=True)) / wsum) if wsum not in (0, np.nan) else np.nan
        # return as series keyed by int year
        return pd.Series(s, dtype='float64').sort_index()

    # ---- Build yearly country/region values (percent-of-GDP) ----
    yearly_transfers = {}

    # U.S. per year from rw_df (if present)
    us_series = pd.to_numeric(rw_df.loc['United States'] if 'United States' in rw_df.index else pd.Series(dtype='float64'), errors='coerce')

    # Individual EU countries from eu_df; US from rw_df
    indiv_map = {
        'Austria':'eu', 'Belgium':'eu', 'Germany':'eu', 'Spain':'eu', 'Finland':'eu',
        'France':'eu', 'Greece':'eu', 'Italy':'eu', 'Netherlands':'eu', 'Portugal':'eu',
        'United States':'rw'
    }

    # Region series
    ra_series = _region_year_series(eu_df, other_eea)
    ru_series = _region_year_series(eu_df, other_eu)

    # RW members = everything in rw_df not in individuals or EU groups
    rw_members = list(set(rw_df.index) - set(individual_countries + other_eea + other_eu))
    # Harmonize to GDP naming for RW set (Congo)
    rw_idx = pd.Index(rw_members)
    rw_idx = rw_idx.where(rw_idx.str.startswith('Congo'), rw_idx.str.split(',').str[0])
    rw_members = list(rw_idx)
    # Also harmonize rw_df index to match GDP where needed
    rw_df2 = rw_df.copy()
    rw_df2.index = rw_df2.index.where(rw_df2.index.str.startswith('Congo'), rw_df2.index.str.split(',').str[0])
    # RW region series per year from rw_df2
    rw_series = _region_year_series(rw_df2, rw_members)

    # Stitch yearly dict (convert percent -> ratio by /100)
    all_years = sorted(set(eu_df.columns).union(rw_df.columns).intersection(YEAR_RANGE))
    for y in all_years:
        yearmap = {}

        # Individuals
        for name, src in indiv_map.items():
            if src == 'eu' and name in eu_df.index and y in eu_df.columns:
                v = pd.to_numeric(eu_df.loc[name, y], errors='coerce')
            elif src == 'rw' and name in rw_df.index and y in rw_df.columns:
                v = pd.to_numeric(rw_df.loc[name, y], errors='coerce')
            else:
                v = np.nan
            if pd.notna(v):
                yearmap[country_codes[name]] = float(v) / 100.0

        # Regions
        if y in ra_series.index and pd.notna(ra_series.loc[y]):
            yearmap['RA'] = float(ra_series.loc[y]) / 100.0
        if y in ru_series.index and pd.notna(ru_series.loc[y]):
            yearmap['RU'] = float(ru_series.loc[y]) / 100.0
        if y in rw_series.index and pd.notna(rw_series.loc[y]):
            yearmap['RW'] = float(rw_series.loc[y]) / 100.0

        if yearmap:
            yearly_transfers[int(y)] = yearmap

    # ---- Build "average" as simple mean of yearly ratios (equal weight) ----
    if yearly_transfers:
        transfers_df = pd.DataFrame(yearly_transfers).T  # years × codes
        transfers_avg = transfers_df.mean(axis=0, skipna=True).to_frame().T
        transfers_avg.index = ['trybar']
        # ensure columns are in code_order
        transfers_avg = transfers_avg.reindex(columns=code_order)
    else:
        transfers_avg = pd.DataFrame({c: np.nan for c in code_order}, index=['trybar'])

    return transfers_avg, yearly_transfers


def calculate_tax_rates():

    YEAR_RANGE = list(range(1995, 2021))  # keep in sync with the rest of the pipeline

    # Country groupings (same as other functions)
    individual_countries = [
        'Austria','Belgium','Germany','Spain','Finland','France','Greece',
        'Italy','Netherlands','Portugal','United States'
    ]
    other_eea = [
        'Croatia','Estonia','Latvia','Lithuania','Luxembourg','Malta',
        'Slovak Republic','Slovenia','Cyprus','Ireland'
    ]
    other_eu = [
        'Bulgaria','Czech Republic','Denmark','Hungary','Poland','Romania','Sweden'
    ]

    # Code mapping (+ passthrough for regions)
    country_codes = {
        'Austria':'AT','Belgium':'BE','Spain':'ES','Finland':'FI','France':'FR','Greece':'GR',
        'Italy':'IT','Netherlands':'NL','Portugal':'PT','Germany':'DE','United States':'US',
        'RA':'RA','RU':'RU','RW':'RW'
    }
    code_order = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US']

    # ---------- helpers ----------
    def _to_int_year_cols(df):
        """Keep only numeric year columns in YEAR_RANGE, robust across pandas versions."""
        if df.empty:
            return df
        cols_num = pd.to_numeric(pd.Index(df.columns), errors='coerce')
        mask = cols_num.isin(YEAR_RANGE)
        if not mask.any():
            return df.iloc[:, 0:0]           # empty, same index
        df2 = df.iloc[:, mask].copy()
        df2.columns = cols_num[mask].astype(int)
        df2 = df2.reindex(sorted(df2.columns), axis=1)
        return df2


    def _pivot(df, index, columns, values):
        out = df.pivot(index=index, columns=columns, values=values)
        return out

    def _region_series_from_rev_base(rev_df, base_df, countries):
        # Weighted rate per year = sum(revenue)/sum(base)
        sub_rev = rev_df.loc[rev_df.index.intersection(countries)]
        sub_base = base_df.loc[base_df.index.intersection(countries)]
        years = sorted(set(sub_rev.columns).intersection(sub_base.columns).intersection(YEAR_RANGE))
        vals = {}
        for y in years:
            den = sub_base[y].sum(skipna=True)
            num = sub_rev[y].sum(skipna=True)
            vals[y] = (num / den) if (den and den != 0) else np.nan
        return pd.Series(vals)

    def _add_yearly_entries(yearly_dict, series_by_code, label):
        # series_by_code: dict code -> pd.Series(year -> value)
        for code, s in series_by_code.items():
            for y, v in s.items():
                yearly_dict.setdefault(int(y), {})
                yearly_dict[int(y)][f"{code}_{label}"] = float(v) if pd.notna(v) else np.nan

    # ---------- load & preprocess RAW ----------
    # taxes.csv (all revenue categories)
    taxes_raw = pd.read_csv(os.path.join(raw_data_directory, 'taxes.csv'))
    taxes_df = taxes_raw[['Reference area','Revenue category','TIME_PERIOD','OBS_VALUE','Unit multiplier']].copy()

    # Unit fixes
    taxes_df.loc[taxes_df['Unit multiplier'] == 'Billions', 'OBS_VALUE'] *= 1000
    # Dataset quirk
    taxes_df.loc[taxes_df['Reference area'].isin(['Hungary','Slovenia','Switzerland']), 'OBS_VALUE'] *= 1000
    # Drop unwanted aggregates
    taxes_df = taxes_df[~taxes_df['Reference area'].isin(['Africa','OECD average country','Latin America and the Caribbean'])]
    taxes_df = taxes_df.drop(columns=['Unit multiplier'])

    # Split into revenue-category pivot tables
    taxes_dict = {}
    for category, group in taxes_df.groupby('Revenue category'):
        pvt = _pivot(group, index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
        pvt = _to_int_year_cols(pvt)
        taxes_dict[category] = pvt

    # Bases
    cons_raw = pd.read_csv(os.path.join(raw_data_directory, 'consumption.csv'))
    cons_df = _pivot(cons_raw[['Reference area','TIME_PERIOD','OBS_VALUE']],
                     index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    cons_df = _to_int_year_cols(cons_df)

    wages_raw = pd.read_csv(os.path.join(raw_data_directory, 'wage_income.csv'))
    wages_df = _pivot(wages_raw[['Reference area','TIME_PERIOD','OBS_VALUE']],
                      index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    wages_df = _to_int_year_cols(wages_df)

    # Capital base (operating surplus)
    cap_tax_raw = pd.read_csv(os.path.join(raw_data_directory, 'capital_tax_loc.csv'))
    cap_rev = cap_tax_raw[['Reference area','TIME_PERIOD','OBS_VALUE','Unit multiplier']].copy()
    cap_rev.loc[cap_rev['Unit multiplier'] == 'Billions', 'OBS_VALUE'] *= 1000
    cap_rev.loc[cap_rev['Reference area'].isin(['Slovenia','Switzerland']), 'OBS_VALUE'] *= 1000
    cap_rev = cap_rev.drop(columns=['Unit multiplier'])
    cap_rev = _pivot(cap_rev, index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    cap_rev = _to_int_year_cols(cap_rev)

    # Operating surplus (local currency)
    os_local_raw = pd.read_csv(os.path.join(raw_data_directory, 'operating_surplus_local.csv'))
    os_local = _pivot(os_local_raw[['Reference area','Institutional sector','TIME_PERIOD','OBS_VALUE']],
                      index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    os_local = _to_int_year_cols(os_local)

    # Operating surplus (USD) – used only as in your original code for weighting; here we’ll weight per-year anyway
    os_usd_raw = pd.read_csv(os.path.join(raw_data_directory, 'operating_surplus.csv'))
    os_usd = _pivot(os_usd_raw[['Reference area','Institutional sector','TIME_PERIOD','OBS_VALUE']],
                    index='Reference area', columns='TIME_PERIOD', values='OBS_VALUE')
    os_usd = _to_int_year_cols(os_usd)

    # Optional overrides (Spain/Portugal)
    es_pt_inc_path = os.path.join(raw_data_directory, 'es_pt_inc_tax.csv')
    if os.path.exists(es_pt_inc_path):
        es_pt_inc = pd.read_csv(es_pt_inc_path, index_col=0)
        es_pt_inc = _to_int_year_cols(es_pt_inc)
    else:
        es_pt_inc = None

    es_pt_cap_path = os.path.join(raw_data_directory, 'es_pt_cap_tax.csv')
    if os.path.exists(es_pt_cap_path):
        es_pt_cap = pd.read_csv(es_pt_cap_path, index_col=0)
        es_pt_cap.index = ['Spain','Portugal']
        es_pt_cap = _to_int_year_cols(es_pt_cap)
    else:
        es_pt_cap = None

    # ---------- build per-category rates ----------
    # Consumption tax rate = (Taxes on goods and services) / (Consumption)
    cons_tax_rev = taxes_dict.get('Taxes on goods and services', pd.DataFrame())
    # Align to common countries & years
    cons_countries = cons_df.index.intersection(cons_tax_rev.index)
    cons_base = cons_df.loc[cons_countries]
    cons_rev = cons_tax_rev.loc[cons_countries]
    cons_base = _to_int_year_cols(cons_base)
    cons_rev = _to_int_year_cols(cons_rev)
    cons_years = sorted(set(cons_base.columns).intersection(cons_rev.columns).intersection(YEAR_RANGE))
    cons_base = cons_base[cons_years]
    cons_rev = cons_rev[cons_years]
    cons_rate = cons_rev.divide(cons_base).replace([np.inf, -np.inf], np.nan)

    # Income tax rate = (Taxes on income & profits of individuals) / (Wages)
    inc_rev0 = taxes_dict.get('Taxes on income and profits of individuals', pd.DataFrame()).copy()
    if es_pt_inc is not None:
        for ctry in ['Spain','Portugal']:
            if ctry in es_pt_inc.index:
                inc_rev0.loc[ctry, es_pt_inc.columns] = es_pt_inc.loc[ctry]
    inc_countries = wages_df.index.intersection(inc_rev0.index)
    inc_base = wages_df.loc[inc_countries]
    inc_rev = inc_rev0.loc[inc_countries]
    inc_base = _to_int_year_cols(inc_base)
    inc_rev = _to_int_year_cols(inc_rev)
    inc_years = sorted(set(inc_base.columns).intersection(inc_rev.columns).intersection(YEAR_RANGE))
    inc_base = inc_base[inc_years]
    inc_rev = inc_rev[inc_years]
    inc_rate = inc_rev.divide(inc_base).replace([np.inf, -np.inf], np.nan)

    # SSC (firms) = SSC by employers / Wages
    sscf_rev0 = taxes_dict.get('Social security contributions (SSC) by employers', pd.DataFrame())
    if not sscf_rev0.empty:
        sscf_rev0 = sscf_rev0.loc[~(sscf_rev0.isna() | (sscf_rev0 == 0)).all(axis=1)]
    sscf_countries = wages_df.index.intersection(sscf_rev0.index)
    sscf_base = wages_df.loc[sscf_countries]
    sscf_rev = sscf_rev0.loc[sscf_countries]
    sscf_base = _to_int_year_cols(sscf_base)
    sscf_rev = _to_int_year_cols(sscf_rev)
    sscf_years = sorted(set(sscf_base.columns).intersection(sscf_rev.columns).intersection(YEAR_RANGE))
    sscf_base = sscf_base[sscf_years]
    sscf_rev = sscf_rev[sscf_years]
    sscf_rate = sscf_rev.divide(sscf_base).replace([np.inf, -np.inf], np.nan)

    # SSC (households) = SSC by employees / Wages
    ssch_rev0 = taxes_dict.get('Social security contributions (SSC) by employees', pd.DataFrame())
    if not ssch_rev0.empty:
        ssch_rev0 = ssch_rev0.loc[~(ssch_rev0.isna() | (ssch_rev0 == 0)).all(axis=1)]
    ssch_countries = wages_df.index.intersection(ssch_rev0.index)
    ssch_base = wages_df.loc[ssch_countries]
    ssch_rev = ssch_rev0.loc[ssch_countries]
    ssch_base = _to_int_year_cols(ssch_base)
    ssch_rev = _to_int_year_cols(ssch_rev)
    ssch_years = sorted(set(ssch_base.columns).intersection(ssch_rev.columns).intersection(YEAR_RANGE))
    ssch_base = ssch_base[ssch_years]
    ssch_rev = ssch_rev[ssch_years]
    ssch_rate = ssch_rev.divide(sssch_base := ssch_base).replace([np.inf, -np.inf], np.nan) if False else ssch_rev.divide(ssch_base).replace([np.inf, -np.inf], np.nan)
    # Note: last line kept simple to avoid accidental name collision in some pandas versions.

    # Capital tax rate = (Capital tax revenue local) / (Operating surplus local)
    if es_pt_cap is not None:
        for ctry in ['Spain','Portugal']:
            if ctry in es_pt_cap.index:
                cap_rev.loc[ctry, es_pt_cap.columns] = es_pt_cap.loc[ctry]
    cap_countries = os_local.index.intersection(cap_rev.index)
    cap_base = os_local.loc[cap_countries]
    cap_rev2 = cap_rev.loc[cap_countries]
    cap_base = _to_int_year_cols(cap_base)
    cap_rev2 = _to_int_year_cols(cap_rev2)
    cap_years = sorted(set(cap_base.columns).intersection(cap_rev2.columns).intersection(YEAR_RANGE))
    cap_base = cap_base[cap_years]
    cap_rev2 = cap_rev2[cap_years]
    cap_rate = cap_rev2.divide(cap_base).replace([np.inf, -np.inf], np.nan)

    # ---------- build RA/RU/RW series (per year, proper base weights) ----------
    def _region_codes_series(rate_df, base_df):
        # Return dict: code -> pd.Series[year -> value]
        series = {}
        # Individual countries first
        for name in rate_df.index.intersection(individual_countries):
            code = country_codes[name]
            series[code] = rate_df.loc[name]
        # RA, RU, RW
        ra = _region_series_from_rev_base(rev_df=rate_df*base_df, base_df=base_df, countries=other_eea)
        ru = _region_series_from_rev_base(rev_df=rate_df*base_df, base_df=base_df, countries=other_eu)
        rest = set(base_df.index) - set(individual_countries + other_eea + other_eu)
        rw = _region_series_from_rev_base(rev_df=rate_df*base_df, base_df=base_df, countries=list(rest))
        series['RA'] = ra
        series['RU'] = ru
        series['RW'] = rw
        return series

    # Important: for regions we want (sum revenue) / (sum base). We have rate = rev/base.
    # We can pass "rev = rate * base" to the helper to reconstruct revenue cleanly.
    cons_series = _region_codes_series(cons_rate, cons_base)
    inc_series  = _region_codes_series(inc_rate,  inc_base)
    sscf_series = _region_codes_series(sscf_rate, sscf_base)
    ssch_series = _region_codes_series(ssch_rate, ssch_base)
    cap_series  = _region_codes_series(cap_rate,  cap_base)

    # ---------- assemble yearly_taxes ----------
    yearly_taxes = {}
    _add_yearly_entries(yearly_taxes, cons_series, 'consumption')
    _add_yearly_entries(yearly_taxes, inc_series,  'income')
    _add_yearly_entries(yearly_taxes, sscf_series, 'SSC_firms')
    _add_yearly_entries(yearly_taxes, ssch_series, 'SSC_households')
    _add_yearly_entries(yearly_taxes, cap_series,  'capital')

    # ---------- build average matrix (rows = tax types, cols = codes) as simple mean across years ----------
    if yearly_taxes:
        # yearly_taxes: dict year -> { "<country>_<taxlabel>": value, ... }
        yearly_tax_df = pd.DataFrame(yearly_taxes).T  # years x keys
        avg_series = yearly_tax_df.mean(axis=0, skipna=True)  # index like "AT_consumption"
    else:
        avg_series = pd.Series(dtype=float)

    # Parse avg_series into a DataFrame with rows = tax types, cols = country codes
    nested = {}
    for key, val in avg_series.items():
        if isinstance(key, str) and '_' in key:
            country_part, tax_type = key.split('_', 1)
            nested.setdefault(tax_type, {})[country_part] = float(val) if pd.notna(val) else np.nan
    tax_rates_df = pd.DataFrame.from_dict(nested, orient='index')
    # ensure column order matches code_order
    tax_rates_df = tax_rates_df.reindex(columns=code_order)
    # keep NaNs as-is
    return tax_rates_df, yearly_taxes


def calculate_debt_ratios():
    """Calculate debt ratios (yearly + average) like in data_retrieval.py.""" 
    
    # Groups
    individual_countries = [
        'Austria', 'Belgium', 'Germany', 'Spain', 'Finland', 'France',
        'Greece', 'Italy', 'Netherlands', 'Portugal', 'United States'
    ]
    other_eea = [
        'Croatia','Estonia','Latvia','Lithuania','Luxembourg','Malta',
        'Slovak Republic','Slovenia','Cyprus','Ireland'
    ]
    other_eu = ['Bulgaria','Czech Republic','Denmark','Hungary','Poland','Romania','Sweden']

    # Country -> code mapping
    country_codes = {
        'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI',
        'France':'FR', 'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL',
        'Portugal': 'PT', 'Germany': 'DE', 'United States': 'US'
    }

    # ---- Load debt (% of GDP) and coerce year columns to ints ----
    debt_path = os.path.join(raw_data_directory, 'debt.xlsx')
    try:
        debt = pd.read_excel(debt_path, header=0, engine='openpyxl')
    except Exception:
        debt = pd.read_excel(debt_path, header=0)  # fallback if engine kw not supported
    debt.set_index(debt.columns[0], inplace=True)

    year_cols = [c for c in debt.columns if str(c).isdigit() and 1995 <= int(c) <= 2020]
    debt = debt[year_cols].copy()
    debt.columns = [int(c) for c in debt.columns]
    debt = debt.replace('no data', np.nan)
    debt = debt.apply(pd.to_numeric, errors='coerce')
    debt = debt.dropna(axis=0, how='all')

    # ---- Load GDP for weights (mean GDP across available years) ----
    gdp = pd.read_csv(os.path.join(raw_data_directory, 'imf_gdp.csv'),
                      header=0, index_col=3).dropna(axis=1, how='all')
    # Harmonize names like "Congo, Dem. Rep. of the"
    gdp.index = gdp.index.where(gdp.index.str.startswith('Congo'),
                                gdp.index.str.split(',').str[0])
    gdp = gdp[[col for col in gdp.columns if col.isdigit()]]
    gdp['GDP'] = gdp.mean(axis=1, skipna=True)
    gdp = pd.DataFrame(gdp.iloc[:, -1])  # single 'GDP' col

    # ---- Build yearly regional/country debt ratios ----
    yearly_debt = {}
    for year in range(1995, 2021):
        if year not in debt.columns:
            continue

        year_debt = {}

        # Individual countries
        for country in individual_countries:
            if (country in debt.index) and pd.notna(debt.loc[country, year]):
                year_debt[country] = float(debt.loc[country, year])

        # RU (other EU)
        debt_ru = debt.loc[debt.index.isin(other_eu), year].dropna()
        if not debt_ru.empty:
            gdp_ru = gdp.loc[gdp.index.intersection(debt_ru.index)]
            if not gdp_ru.empty and gdp_ru['GDP'].sum() != 0:
                ru_ratio = (debt_ru * gdp_ru['GDP']).sum() / gdp_ru['GDP'].sum()
                year_debt['RU'] = float(ru_ratio)

        # RA (other EEA)
        debt_ra = debt.loc[debt.index.isin(other_eea), year].dropna()
        if not debt_ra.empty:
            gdp_ra = gdp.loc[gdp.index.intersection(debt_ra.index)]
            if not gdp_ra.empty and gdp_ra['GDP'].sum() != 0:
                ra_ratio = (debt_ra * gdp_ra['GDP']).sum() / gdp_ra['GDP'].sum()
                year_debt['RA'] = float(ra_ratio)

        # RW (rest of world)
        rw_countries = list(set(debt.index) - set(individual_countries + other_eea + other_eu))
        if rw_countries:
            debt_rw = debt.loc[debt.index.isin(rw_countries), :].copy()
            if not debt_rw.empty:
                # Harmonize to GDP naming
                debt_rw.index = debt_rw.index.where(debt_rw.index.str.startswith('Congo'),
                                                    debt_rw.index.str.split(',').str[0])
                debt_rw = debt_rw.rename(index={'Congo, Dem. Rep. of the': 'Congo, Democratic Republic of the'})
                common = gdp.index.intersection(debt_rw.index)
                if len(common) > 0 and year in debt_rw.columns:
                    d = debt_rw.loc[common, year].dropna()
                    if not d.empty:
                        g = gdp.loc[d.index, 'GDP']
                        if g.sum() != 0:
                            rw_ratio = (d * g).sum() / g.sum()
                            year_debt['RW'] = float(rw_ratio)

        if year_debt:
            yearly_debt[year] = year_debt

    # ---- Build average as simple mean of yearly debt ratios ----
    if yearly_debt:
        debt_df = pd.DataFrame(yearly_debt).T  # years x countries (indices are country names or codes)
        avg_percent = debt_df.mean(axis=0, skipna=True)  # average percent-of-GDP across years
    else:
        avg_percent = pd.Series(dtype=float)

    # Map country names to codes in result (where applicable)
    avg_mapped = {}
    for country_name, val in avg_percent.items():
        if pd.isna(val):
            continue
        if country_name in country_codes:
            code = country_codes[country_name]
        else:
            # If it's already a code or RA/RU/RW/RW etc, try to keep it
            code = country_name if len(country_name) == 2 else country_name
        avg_mapped[code] = (float(val) / 100.0) * 4.0  # scale to model units

    if avg_mapped:
        debtratio = pd.DataFrame(avg_mapped, index=['bytarget'])
    else:
        debtratio = pd.DataFrame(columns=country_codes.values(), index=['bytarget'])

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
    
    # === AVERAGE: compute simple mean of yearly shares and sizes (equal weight) ===
    if yearly_shares:
        # yearly_shares: dict year -> DataFrame (index=categories, columns=country codes)
        df_shares = pd.concat(yearly_shares, names=['year', 'category'])
        # df_shares has MultiIndex rows (year, category); group by category level to average across years
        shares = df_shares.groupby(level='category').mean()
    else:
        shares = pd.DataFrame(index=[], columns=country_codes)

    if yearly_sizes:
        df_sizes = pd.concat(yearly_sizes, names=['year', 'country'])
        # df_sizes index is MultiIndex (year, country) and column 'size'
        sizes = df_sizes.groupby(level='country').mean()
    else:
        sizes = pd.DataFrame(index=country_codes, columns=['size'])

    # Ensure reindex to canonical country_codes
    shares = shares.reindex(columns=country_codes)
    sizes = sizes.reindex(country_codes)

    return shares, sizes, yearly_shares, yearly_sizes


def calculate_import_components():
    """
    Build bilateral import components and compute trade balances from those shares,
    mirroring main.py logic. Averages are the simple mean across years.
    """
    import re

    country_codes_map = {
        'REA': 'RA', 'AUT': 'AT', 'BEL': 'BE', 'ESP': 'ES', 'FIN': 'FI', 'FRA': 'FR',
        'GRC': 'GR', 'ITA': 'IT', 'NLD': 'NL', 'PRT': 'PT', 'DEU': 'DE', 'USA': 'US',
        'RoW': 'RW', 'REU': 'RU'
    }
    country_codes = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US']
    regions_src   = ['AUT','BEL','DEU','ESP','FIN','FRA','GRC','ITA','NLD','PRT','USA','RoW','REA','REU']

    # Average investment split used to split GFCF
    investment_split = calculate_investment_shares()

    # Year -> raw IO final demand tables
    final_demand_io_raw = process_year_data(raw_io_directory)
    # Normalize dict keys to int years
    final_demand_io = {}
    for k, v in final_demand_io_raw.items():
        m = re.search(r'(\d{4})', str(k))
        if m:
            final_demand_io[int(m.group(1))] = v

    # Helper: find yearly _SML file
    def find_sml_for_year(y: int):
        files = [f for f in os.listdir(raw_io_directory)
                 if f.lower().endswith('_sml.csv') and str(y) in f]
        return os.path.join(raw_io_directory, files[0]) if files else None

    # === Build absolute imports per year (before any normalization) ===
    abs_imports_per_year = {}  # year -> DataFrame exporters×(importer_component cols)
    for year in sorted(final_demand_io.keys()):
        fp = find_sml_for_year(year)
        if not fp:
            continue
        result_final = aggregate_year_data(fp)

        # bilateral absolute imports blocks per importer
        yearly_blocks = {}
        for ccode in regions_src:
            if ccode == 'RoW':
                block = process_country_data_RoW(result_final, ccode, regions_src)
            elif ccode == 'REA':
                block = process_country_data_REA(result_final, ccode, regions_src)
            elif ccode == 'REU':
                block = process_country_data_REU(result_final, ccode, regions_src)
            else:
                block = process_country_data(result_final, ccode, regions_src)
            # ensure full exporter coverage
            for r in regions_src:
                if r not in block.index:
                    block.loc[r] = 0
            yearly_blocks[ccode] = block.reindex(regions_src)

        combined = pd.concat(yearly_blocks.values(), axis=1)  # exporters × (importer,component)
        # Map to RA/AT... index; normalize importer codes on columns
        combined.index = combined.index.map(country_codes_map)
        combined = combined.reindex(country_codes)
        combined.columns = [rename_column(c) for c in combined.columns]
        abs_imports_per_year[year] = combined

    # === YEARLY: transform absolute -> components -> shares-of-output ===
    yearly_components: dict[int, dict[str, pd.Series]] = {}
    yearly_bilateral: dict[int, dict[str, pd.DataFrame]] = {}
    yearly_tby: dict[int, dict[str, float]] = {}

    for year, combined_abs in abs_imports_per_year.items():
        # 1) Collapse HFCE/NPISH/DPABR → imcy; drop INVNT; rename GGFC → imcgy
        combined = combined_abs.copy()
        for reg in country_codes:
            reg_cols = [c for c in combined.columns
                        if c.startswith(reg) and c.split('_')[1] in ['HFCE','NPISH','DPABR']]
            if reg_cols:
                combined[f'{reg}_imcy'] = combined[reg_cols].sum(axis=1)
                combined = combined.drop(columns=reg_cols)
            invnt_cols = [c for c in combined.columns if c.startswith(reg) and c.split('_')[1]=='INVNT']
            if invnt_cols:
                combined = combined.drop(columns=invnt_cols)
            ggfc = f'{reg}_GGFC'
            if ggfc in combined.columns:
                combined = combined.rename(columns={ggfc: f'{reg}_imcgy'})
        combined = combined.reindex(sorted(combined.columns), axis=1)
        combined.loc['Total'] = combined.sum(axis=0)

        # 2) Denominator: that year's output (pre-INVNT), built like your code
        yfd = final_demand_io[year].copy()
        yfd.columns = [rename_column(c) for c in yfd.columns]
        yfd.index = yfd.index.map(country_codes_map)
        yfd.loc['TOTAL'] = yfd.sum()
        year_output = pd.DataFrame(yfd.sum(axis=1))  # denom
        world_output_y = float(year_output.iloc[-1, 0])
        sizes_y = (year_output.iloc[:-1, 0].reindex(country_codes).astype(float) / world_output_y).to_frame('size')

        # 3) Build yfd_agg (public/private consumption & investment) using average investment split
        yfd_agg = yfd.copy()
        for reg in country_codes:
            pcols = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1] in ['HFCE','NPISH','DPABR']]
            if pcols:
                yfd_agg[f'{reg}_private_consumption'] = yfd_agg[pcols].sum(axis=1)
                yfd_agg = yfd_agg.drop(columns=pcols)
            inv_cols = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1]=='GFCF']
            if inv_cols:
                yfd_agg[f'{reg}_investment'] = yfd_agg[inv_cols].sum(axis=1)
                yfd_agg = yfd_agg.drop(columns=inv_cols)
                priv_share = investment_split.loc[reg][investment_split.loc[reg]['investment_type']=='Private investment share']['share'].values[0]
                gov_share  = investment_split.loc[reg][investment_split.loc[reg]['investment_type']=='Government investment share']['share'].values[0]
                yfd_agg[f'{reg}_private_investment'] = yfd_agg[f'{reg}_investment'] * priv_share
                yfd_agg[f'{reg}_public_investment']  = yfd_agg[f'{reg}_investment'] * gov_share
                yfd_agg = yfd_agg.drop(columns=[f'{reg}_investment'])
            invnt_cols = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1]=='INVNT']
            if invnt_cols:
                yfd_agg = yfd_agg.drop(columns=invnt_cols)
            ggfc = f'{reg}_GGFC'
            if ggfc in yfd_agg.columns:
                yfd_agg = yfd_agg.rename(columns={ggfc: f'{reg}_public_consumption'})
        yfd_agg = yfd_agg.reindex(country_codes)

        # 4) Split GFCF imports into imiy/imigy
        totals = pd.DataFrame(combined.iloc[-1, :]).rename(columns={'Total':'imports'})
        gov_share_dict = {}
        for reg in country_codes:
            imcgy_key = f'{reg}_imcgy'
            imports_imcgy = float(totals.loc[imcgy_key, 'imports']) if imcgy_key in totals.index else 0.0
            local_pubc = float(yfd_agg.loc[reg, f'{reg}_public_consumption']) if f'{reg}_public_consumption' in yfd_agg.columns else 0.0
            denom = imports_imcgy + local_pubc
            gov_share_dict[reg] = (imports_imcgy / denom) if denom else 0.0

        for reg in country_codes:
            gfcf_key = f'{reg}_GFCF'
            if gfcf_key in combined.columns:
                s = gov_share_dict.get(reg, 0.0)
                pub_inv = float(yfd_agg.loc[reg, f'{reg}_public_investment']) if f'{reg}_public_investment' in yfd_agg.columns else 0.0
                gov_inv_imports = (s * pub_inv) / (1.0 - s) if (1.0 - s) != 0 else 0.0
                total_gfcf_imp = float(totals.loc[gfcf_key, 'imports']) if gfcf_key in totals.index else 0.0
                private_inv_imports = total_gfcf_imp - gov_inv_imports
                split_private = (private_inv_imports / total_gfcf_imp) if total_gfcf_imp else 0.0
                combined[f'{reg}_imiy']  = combined[gfcf_key] * split_private
                combined[f'{reg}_imigy'] = combined[gfcf_key] * (1.0 - split_private)
                combined = combined.drop(columns=gfcf_key)

        # 5) Normalize to share of output (drop 'Total' exporter row before matrices)
        tm = combined.drop(index='Total', errors='ignore').copy()
        for col in tm.columns:
            reg = col.split('_')[0]
            denom = float(year_output.loc[reg, 0]) if reg in year_output.index else np.nan
            tm[col] = tm[col] / denom if denom and not np.isnan(denom) else 0.0

        # 6) Extract component matrices (shares) and importer totals (shares)
        imcy_mat  = filter_columns_by_suffix(tm, '_imcy',  country_codes)
        imcgy_mat = filter_columns_by_suffix(tm, '_imcgy', country_codes)
        imiy_mat  = filter_columns_by_suffix(tm, '_imiy',  country_codes)
        imigy_mat = filter_columns_by_suffix(tm, '_imigy', country_codes)

        # Save yearly bilateral matrices
        yearly_bilateral[year] = {
            'imcy' : imcy_mat,
            'imcgy': imcgy_mat,
            'imiy' : imiy_mat,
            'imigy': imigy_mat,
        }

        # Importer totals (columns sums)
        s_imcy  = imcy_mat.sum(axis=0)
        s_imcgy = imcgy_mat.sum(axis=0)
        s_imiy  = imiy_mat.sum(axis=0)
        s_imigy = imigy_mat.sum(axis=0)
        s_imy   = s_imcy + s_imcgy + s_imiy + s_imigy

        yearly_components[year] = {
            'imcy' : s_imcy.reindex(country_codes, fill_value=0.0),
            'imcgy': s_imcgy.reindex(country_codes, fill_value=0.0),
            'imiy' : s_imiy.reindex(country_codes, fill_value=0.0),
            'imigy': s_imigy.reindex(country_codes, fill_value=0.0),
            'imy'  : s_imy.reindex(country_codes,  fill_value=0.0),
        }

        # 7) TBY from share matrices (exactly like main.py)
        imy_bilat_y = imcy_mat + imcgy_mat + imiy_mat + imigy_mat
        import_share_y = imy_bilat_y.sum(axis=0)  # importer totals (shares)

        exy_bilat_y = pd.DataFrame(0.0, index=country_codes, columns=country_codes)
        for exp in country_codes:
            for imp in country_codes:
                size_exp = float(sizes_y.loc[exp, 'size'])
                size_imp = float(sizes_y.loc[imp, 'size'])
                exy_bilat_y.loc[exp, imp] = 0.0 if size_exp == 0.0 else \
                    imy_bilat_y.loc[exp, imp] * (size_imp / size_exp)
        export_share_y = exy_bilat_y.sum(axis=1)

        tby_series_y = (export_share_y - import_share_y.reindex(country_codes)).to_dict()
        yearly_tby[year] = tby_series_y

    # === AVERAGE: simple mean of yearly components and bilaterals (equal weight per year) ===
    if not yearly_components:
        empty = pd.Series({c: np.nan for c in country_codes})
        return (
            {'imcy': empty, 'imcgy': empty, 'imiy': empty, 'imigy': empty, 'imy': empty},
            yearly_components,
            {'imcy': pd.DataFrame(), 'imcgy': pd.DataFrame(), 'imiy': pd.DataFrame(), 'imigy': pd.DataFrame()},
            yearly_bilateral,
            empty,
            yearly_tby
        )

    # average importer totals (per component)
    avg_components = {}
    years_list = sorted(yearly_components.keys())
    for comp_name in ['imcy', 'imcgy', 'imiy', 'imigy', 'imy']:
        # build DataFrame with columns=years, index=country_codes
        comp_df = pd.DataFrame({y: yearly_components[y][comp_name] for y in years_list})
        avg_components[comp_name] = comp_df.mean(axis=1, skipna=True)

    # average bilateral matrices elementwise
    bilateral_avg = {}
    for comp_name in ['imcy', 'imcgy', 'imiy', 'imigy']:
        mats = [yearly_bilateral[y][comp_name] for y in years_list if comp_name in yearly_bilateral[y]]
        if mats:
            bilateral_avg[comp_name] = sum(mats) / len(mats)
        else:
            bilateral_avg[comp_name] = pd.DataFrame(0.0, index=country_codes, columns=country_codes)

    # average tby
    if yearly_tby:
        tby_df = pd.DataFrame(yearly_tby).T  # years x codes
        tby_avg = tby_df.mean(axis=0, skipna=True).reindex(country_codes)
    else:
        tby_avg = pd.Series({c: np.nan for c in country_codes})

    return avg_components, yearly_components, bilateral_avg, yearly_bilateral, tby_avg, yearly_tby


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

    print("Calculating import components (incl. bilaterals & TBY)...")
    avg_components, yearly_components, bilateral_avg, yearly_bilateral, tby, yearly_tby = calculate_import_components()
      
    print("Calculating transfers...")
    transfers_avg, yearly_transfers = calculate_transfers()
    
    
    # model country/region code order used everywhere else
    country_codes = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US']



    # Create lists for the four columns
    countries = []
    variables = []
    years = []
    values = []
    
    def _append_bilateral_no_self(df, label, year_str, country_codes, countries, variables, years, values):
        """
        df: bilateral matrix (rows=exporters, cols=importers), already normalized
        label: 'imcy' | 'imcgy' | 'imiy' | 'imigy'
        year_str: '1995'..'2020' or 'average'
        """
        df = df.reindex(index=country_codes, columns=country_codes)
        mask = np.eye(len(df), dtype=bool)
        df_no_diag = df.where(~mask)
        s = df_no_diag.stack()  # (exporter, importer) -> value
        if s.empty:
            return
        for (exp, imp), val in s.items():
            countries.append(imp)                     # importer in 'country'
            variables.append(f"{imp}{exp}_{label}")   # e.g., BEAT_imcy (already importer+exporter)
            years.append(year_str)
            values.append(float(val))

    
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
    # Yearly transfers (ratio = percent/100)
    for year, ymap in yearly_transfers.items():
        for code, val in ymap.items():
            if pd.isna(val):
                continue
            countries.append(code)
            variables.append('trybar')   # keep same label you used earlier
            years.append(str(year))
            values.append(float(val))
    
    # Yearly import components (shares of output)
    for year, comp_dict in yearly_components.items():
        for var_name in ['imcy','imcgy','imiy','imigy','imy']:
            s = comp_dict.get(var_name)
            if s is None:
                continue
            for code, val in s.items():
                if pd.isna(val):
                    continue
                countries.append(code)        # importer code
                variables.append(var_name)    # 'imcy', 'imcgy', 'imiy', 'imigy', 'imy'
                years.append(str(year))       # '1995'..'2020'
                values.append(float(val))     # share of output
    
    # Process yearly debt data — scale to model units: (percent of GDP / 100) * 4
    for year, year_debt_data in yearly_debt.items():
        for country, debt_value in year_debt_data.items():
            if pd.isna(debt_value):
                continue
            country_code = country if len(country) == 2 else {
                'Austria': 'AT', 'Belgium': 'BE', 'Spain': 'ES', 'Finland':'FI', 'France':'FR',
                'Greece': 'GR', 'Italy': 'IT', 'Netherlands': 'NL', 'Portugal': 'PT',
                'Germany': 'DE', 'United States': 'US', 'RA': 'RA', 'RU': 'RU', 'RW': 'RW'
            }.get(country, country)
    
            countries.append(country_code)
            variables.append('debt')
            years.append(str(year))
            values.append((float(debt_value) / 100.0) * 4.0)

    
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
    
    # Process average debt data (now produced as simple mean-of-yearly in calculate_debt_ratios)
    for col in debt.columns:
        countries.append(col)
        variables.append('debt')
        years.append('average')
        values.append(debt[col].iloc[0])
        
    # Average import components
    for var_name, series in avg_components.items():
        for code, val in series.items():
            countries.append(code)
            variables.append(var_name)
            years.append('average')
            values.append(float(val))

    
    # Process average shares data (shares already computed as mean of yearly in calculate_shares_and_size)
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
            
    # Average transfers (already simple mean-of-yearly)
    for col in transfers_avg.columns:
        countries.append(col)
        variables.append('trybar')
        years.append('average')
        values.append(transfers_avg[col].iloc[0])

    
    # Process average tax rates data (tax_rates already created as simple mean-of-yearly)
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
            
        # === Bilateral import shares (yearly) ===
    # variable name style: f"{importer}{exporter}_{kind}", e.g., "BEAT_imcy"
    # === Bilateral import shares (yearly) — skip self-pairs like ATAT ===
    for year, bundle in yearly_bilateral.items():
        for kind in ('imcy','imcgy','imiy','imigy'):
            _append_bilateral_no_self(
                bundle[kind], kind, str(year),
                country_codes, countries, variables, years, values
            )  
    
    # === Bilateral import shares (average) — skip self-pairs ===
    for kind, df in bilateral_avg.items():
        _append_bilateral_no_self(
            df, kind, 'average',
            country_codes, countries, variables, years, values
        )

    
    # Process average trade balance data
    # === Yearly TBY (already normalized as share of output) ===
    for year, tby_year in yearly_tby.items():
        for code, val in tby_year.items():
            if pd.isna(val):
                continue
            countries.append(code)      # e.g., 'AT', 'RA', 'US'
            variables.append('tby')     # variable name
            years.append(str(year))     # '1995'..'2020'
            values.append(float(val))   # share of output

    # Process average trade balance data (tby is now a Series tby_avg)
    for code, val in tby.items():
        countries.append(code)
        variables.append('tby')
        years.append('average')
        values.append(float(val))

    
    # Create dataframe (initially include country for easy prefixing)
    df = pd.DataFrame({
        'country': countries,
        'variable': variables,
        'year': years,
        'value': values
    })
    
    rename_map = {
    'public_consumption': 'cgybar',
    'private_investment': 'iy',
    'private_consumption': 'cy',
    'public_investment': 'igybar',
    'debt': 'bytarget',
    'tax_consumption': 'taucbar',
    'tax_income': 'taunbar',
    'tax_SSC_firms': 'tauwfbar',
    'tax_SSC_households': 'tauwhbar',
    'tax_capital': 'taukbar'
    }
    
    df['variable'] = df['variable'].astype(str).map(lambda v: rename_map.get(v, v))
    
        
    # Now transform: prefix variable names with country code where not already prefixed.
    # Recognized codes (two-letter + region codes) used across the pipeline:
    code_set = {'RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US'}
    def _already_prefixed(varname):
        # consider a variable already prefixed if it starts with any code in code_set
        if not isinstance(varname, str) or len(varname) < 2:
            return False
        # check first two chars
        prefix2 = varname[:2]
        if prefix2 in code_set:
            return True
        # also accept three-letter edge cases if any (not expected) - fallback False
        return False

    # Build new variable names: if variable already starts with a code (e.g. BEAT_imcy, RURW_imiy),
    # leave as-is. Otherwise prefix with country + '_' (e.g., 'AT_tby', 'FR_tax_income').
    df['variable'] = [
        v if _already_prefixed(v) else f"{c}_{v}"
        for c, v in zip(df['country'].astype(str), df['variable'].astype(str))
    ]

    # Drop the country column as requested
    df = df.drop(columns=['country'])

    # Sort by country (now embedded in variable), variable, then year for better organization
    # Use custom sorting for year to put 'average' last
    year_order = [str(y) for y in range(1995, 2021)] + ['average']
    df['year'] = pd.Categorical(df['year'], categories=year_order, ordered=True)
    # Sorting by variable will effectively sort by country-prefix first
    df = df.sort_values(['variable', 'year']).reset_index(drop=True)
    # Convert year back to string for output
    df['year'] = df['year'].astype(str)

    # Adjust numeric formatting mask to find variables that need 6 decimals:
    # any variable containing size, tby, imcy/imcgy/imiy/imigy/imy anywhere in the name.
    v = df['variable'].astype(str)
    m = v.str.contains(r'(size|tby|imcy|imcgy|imiy|imigy|imy)', case=False, regex=True)
    x = pd.to_numeric(df['value'], errors='coerce').fillna(0).to_numpy(float)
    # Format numbers: 6 decimals for the flagged vars, 4 decimals otherwise
    a6 = np.char.mod('%.6f', x)
    a4 = np.char.mod('%.4f', x)
    df['value'] = np.where(m, a6, a4)

    return df

def main():
    """Main function to calculate and save calibration data"""
    
    print("Calculating calibration data from scratch...")
    
    # Calculate consolidated dataframe
    consolidated_df = create_consolidated_dataframe_from_calculations()
    
    # Save to CSV
    output_path = os.path.join(data_directory, '_calibDataCalculated.csv')
    consolidated_df.to_csv(output_path, index=False)
    
    print(f"Calibration data calculated and saved to: {output_path}")
    print(f"Total parameters: {len(consolidated_df)}")
    print(f"Data shape: {consolidated_df.shape}")

    # Infer countries from variable prefixes (first two characters before underscore or start)
    def _extract_country_from_var(var):
        if not isinstance(var, str) or len(var) < 2:
            return var
        return var[:2]
    inferred_countries = sorted({_extract_country_from_var(v) for v in consolidated_df['variable'].unique()})
    print(f"Countries (inferred from variable prefixes): {inferred_countries}")
    print(f"Variables: {sorted(consolidated_df['variable'].unique())}")
    print(f"Years: {sorted(consolidated_df['year'].unique())}")
    
    # Display first few rows as preview
    print("\nFirst 10 rows:")
    print(consolidated_df.head(10).to_string(index=False))
    
    if len(consolidated_df) > 10:
        print(f"\n... and {len(consolidated_df) - 10} more rows")
    
    # Show structure summary
    print(f"\nData structure:")
    print(f"- {len(inferred_countries)} countries (inferred from variable prefixes)")
    print(f"- {len(consolidated_df['variable'].unique())} variables") 
    print(f"- {len(consolidated_df['year'].unique())} time period (including averages)")
    print(f"- Calculated from raw data using embedded functions")

if __name__ == "__main__":
    main()
