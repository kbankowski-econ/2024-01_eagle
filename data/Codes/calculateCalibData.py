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

def calculate_tax_rates():
    """
    Calculate tax rates for each year (1995–2020) and cross-year averages.

    Returns
    -------
    tax_rates_df : pd.DataFrame
        Rows: ['consumption','income','capital','SSC_firms','SSC_households']
        Cols: model country/region codes (AT, BE, ..., RA, RU, RW, US)
        Values: cross-year mean tax rates.

    yearly_taxes : dict[int, dict[str, float]]
        For each year: mapping like
            {
              'AT_consumption': ...,
              'AT_income': ...,
              'AT_SSC_firms': ...,
              'AT_SSC_households': ...,
              'AT_capital': ...,
              'RA_consumption': ...,
              ...
            }
    """
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
    # Consumption tax rate = (Taxes on goods & services) / (Consumption)
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
    ssch_rate = ssch_rev.divide(ssch_base).replace([np.inf, -np.inf], np.nan)

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
        ra = _region_series_from_rev_base(
            rev_df=rate_df.multiply(base_df),  # we don't actually need this; see below
            base_df=base_df,
            countries=other_eea
        )
        # Note: _region_series_from_rev_base expects revenue & base; pass actual rev & base:
        ra = _region_series_from_rev_base(rev_df=rate_df*base_df, base_df=base_df, countries=other_eea)
        ru = _region_series_from_rev_base(rev_df=rate_df*base_df, base_df=base_df, countries=other_eu)
        # RW = everyone else outside individual + other_eea + other_eu
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

    # ---------- build average matrix (rows = tax types, cols = codes) ----------
    def _mean_by_code(series_by_code):
        # returns dict code -> average (across available years)
        out = {}
        for code, s in series_by_code.items():
            out[code] = float(pd.to_numeric(s, errors='coerce').mean(skipna=True))
        return out

    avg_consumption = _mean_by_code(cons_series)
    avg_income      = _mean_by_code(inc_series)
    avg_capital     = _mean_by_code(cap_series)
    avg_ssc_firms   = _mean_by_code(sscf_series)
    avg_ssc_house   = _mean_by_code(ssch_series)

    # Build DataFrame in the shape your pipeline expects
    tax_rates_df = pd.DataFrame(
        {
            'consumption': {code: avg_consumption.get(code, np.nan) for code in code_order},
            'income':      {code: avg_income.get(code, np.nan)      for code in code_order},
            'capital':     {code: avg_capital.get(code, np.nan)     for code in code_order},
            'SSC_firms':   {code: avg_ssc_firms.get(code, np.nan)   for code in code_order},
            'SSC_households': {code: avg_ssc_house.get(code, np.nan) for code in code_order},
        }
    ).T

    return tax_rates_df, yearly_taxes


def calculate_debt_ratios():
    """Calculate debt ratios (yearly + average) like in data_retrieval.py.

    Returns
    -------
    debtratio : pd.DataFrame
        1×N dataframe (index 'bytarget') with columns as country/region codes.
        Values are (avg debt% / 100) * 4, matching your model target scaling.

    yearly_debt : dict[int, dict[str, float]]
        For each year (1995..2020): mapping of {country_or_region: debt_percent_of_GDP}.
        Country keys are full names for individuals, and 'RA'/'RU'/'RW' for regions.
    """
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

    # ---- Cross-year averages & model scaling ----
    debt['average'] = debt.mean(axis=1)

    # RU average
    avg_ru = debt.loc[debt.index.isin(other_eu), 'average'].dropna()
    g_ru = gdp.loc[gdp.index.intersection(avg_ru.index), 'GDP']
    debtratio_ru = float((avg_ru * g_ru).sum() / g_ru.sum()) if not g_ru.empty else np.nan

    # RA average
    avg_ra = debt.loc[debt.index.isin(other_eea), 'average'].dropna()
    g_ra = gdp.loc[gdp.index.intersection(avg_ra.index), 'GDP']
    debtratio_ra = float((avg_ra * g_ra).sum() / g_ra.sum()) if not g_ra.empty else np.nan

    # RW average
    rw_countries = list(set(debt.index) - set(individual_countries + other_eea + other_eu))
    debt_rw = debt.loc[debt.index.isin(rw_countries), :].copy()
    debt_rw.index = debt_rw.index.where(debt_rw.index.str.startswith('Congo'),
                                        debt_rw.index.str.split(',').str[0])
    debt_rw = debt_rw.rename(index={'Congo, Dem. Rep. of the': 'Congo, Democratic Republic of the'})
    common = gdp.index.intersection(debt_rw.index)
    avg_rw = debt_rw.loc[common, 'average'].dropna()
    g_rw = gdp.loc[avg_rw.index, 'GDP'] if not avg_rw.empty else pd.Series(dtype=float)
    debtratio_rw = float((avg_rw * g_rw).sum() / g_rw.sum()) if not g_rw.empty else np.nan

    # Individuals' averages
    debtratio = pd.DataFrame(debt.loc[debt.index.isin(individual_countries), 'average'])
    debtratio.index = debtratio.index.map(country_codes)

    # Add regions
    debtratio.loc['RA', 'average'] = debtratio_ra
    debtratio.loc['RU', 'average'] = debtratio_ru
    debtratio.loc['RW', 'average'] = debtratio_rw

    # Scale to model target and shape (1×N with index 'bytarget')
    debtratio = (debtratio / 100.0) * 4.0
    debtratio = debtratio.T
    debtratio = debtratio.rename(index={'average': 'bytarget'})

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
    """
    Calculate trade balance (TBY) for each year from IO data, plus a cross-year average.

    Returns
    -------
    tby_avg_df : pd.DataFrame
        Index = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US'], column 'tby'
        Values = average TBY (share of output), same shape as your previous tby.csv.

    yearly_tby : dict[int, dict[str, float]]
        {year: {'AT': val, 'BE': val, ..., 'RA': val, ...}}
    """
    import re

    country_codes_map = {
        'REA': 'RA', 'AUT': 'AT', 'BEL': 'BE', 'ESP': 'ES', 'FIN': 'FI', 'FRA': 'FR',
        'GRC': 'GR', 'ITA': 'IT', 'NLD': 'NL', 'PRT': 'PT', 'DEU': 'DE', 'USA': 'US',
        'RoW': 'RW', 'REU': 'RU'
    }
    country_codes = ['RA','AT','BE','ES','FI','FR','GR','IT','NL','PT','DE','RU','RW','US']
    regions_src = ['AUT','BEL','DEU','ESP','FIN','FRA','GRC','ITA','NLD','PRT','USA','RoW','REA','REU']

    # Average investment shares (we use same split each year, like your average pipeline)
    investment_split = calculate_investment_shares()

    # Load IO-by-year and NORMALIZE keys to ints
    final_demand_io_raw = process_year_data(raw_io_directory)
    final_demand_io = {}
    for k, v in final_demand_io_raw.items():
        y = None
        try:
            y = int(k)
        except Exception:
            m = re.search(r'(\d{4})', str(k))
            if m: y = int(m.group(1))
        if y is not None:
            final_demand_io[y] = v

    yearly_tby = {}

    # Collect IO files and extract year robustly
    filenames = []
    for f in os.listdir(raw_io_directory):
        if f.lower().endswith('.csv') and ('sml' in f.lower()):  # accept *SML*.csv
            m = re.search(r'(\d{4})', f)
            if m:
                filenames.append((int(m.group(1)), f))
    filenames.sort()

    for year, file_name in filenames:
        file_path = os.path.join(raw_io_directory, file_name)

        # If we don't have a matching final demand table for that year, skip
        if year not in final_demand_io:
            # Try lenient fallback for string keys just in case
            if str(year) in final_demand_io_raw:
                final_demand_io[year] = final_demand_io_raw[str(year)]
            else:
                continue

        # --- Build bilateral imports (absolute) for this year ---
        result_final = aggregate_year_data(file_path)

        yearly_results = {}
        for ccode in regions_src:
            if ccode == 'RoW':
                imports_df = process_country_data_RoW(result_final, ccode, regions_src)
            elif ccode == 'REA':
                imports_df = process_country_data_REA(result_final, ccode, regions_src)
            elif ccode == 'REU':
                imports_df = process_country_data_REU(result_final, ccode, regions_src)
            else:
                imports_df = process_country_data(result_final, ccode, regions_src)
            # ensure all rows present
            for r in regions_src:
                if r not in imports_df.index:
                    imports_df.loc[r] = 0
            yearly_results[ccode] = imports_df.reindex(regions_src)

        combined = pd.concat(yearly_results.values(), axis=1)
        combined.index = combined.index.map(country_codes_map)
        combined = combined.reindex(country_codes)
        combined.columns = [rename_column(col) for col in combined.columns]

        # Collapse consumption, drop inventories, rename GGFC -> imcgy
        for reg in country_codes:
            reg_cols = [c for c in combined.columns if c.startswith(reg) and c.split('_')[1] in ['HFCE','NPISH','DPABR']]
            if reg_cols:
                combined[f'{reg}_imcy'] = combined[reg_cols].sum(axis=1)
                combined = combined.drop(columns=reg_cols)
            invnt = [c for c in combined.columns if c.startswith(reg) and c.split('_')[1] == 'INVNT']
            if invnt:
                combined = combined.drop(columns=invnt)
            ggfc = f'{reg}_GGFC'
            if ggfc in combined.columns:
                combined = combined.rename(columns={ggfc: f'{reg}_imcgy'})

        combined = combined.reindex(sorted(combined.columns), axis=1)
        combined.loc['Total'] = combined.sum(axis=0)

        # --- Year-specific final demand & output (pre-INVNT) ---
        yfd = final_demand_io[year].copy()
        yfd.columns = [rename_column(c) for c in yfd.columns]
        yfd.index = yfd.index.map(country_codes_map)
        yfd.loc['TOTAL'] = yfd.sum()
        year_output = pd.DataFrame(yfd.sum(axis=1))  # denom for shares

        # Disaggregate final demand (private/public; split investment by average shares)
        yfd_agg = yfd.copy()
        for reg in country_codes:
            # private consumption
            pcols = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1] in ['HFCE','NPISH','DPABR']]
            if pcols:
                yfd_agg[f'{reg}_private_consumption'] = yfd_agg[pcols].sum(axis=1)
                yfd_agg = yfd_agg.drop(columns=pcols)
            # investment -> split by avg shares
            inv_cols = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1] == 'GFCF']
            if inv_cols:
                yfd_agg[f'{reg}_investment'] = yfd_agg[inv_cols].sum(axis=1)
                yfd_agg = yfd_agg.drop(columns=inv_cols)
                priv_share = investment_split.loc[reg][investment_split.loc[reg]['investment_type']=='Private investment share']['share'].values[0]
                gov_share  = investment_split.loc[reg][investment_split.loc[reg]['investment_type']=='Government investment share']['share'].values[0]
                yfd_agg[f'{reg}_private_investment'] = yfd_agg[f'{reg}_investment'] * priv_share
                yfd_agg[f'{reg}_public_investment']  = yfd_agg[f'{reg}_investment'] * gov_share
                yfd_agg = yfd_agg.drop(columns=[f'{reg}_investment'])
            # inventories
            invnt = [c for c in yfd_agg.columns if c.startswith(reg) and c.split('_')[1] == 'INVNT']
            if invnt:
                yfd_agg = yfd_agg.drop(columns=invnt)
            # government consumption
            ggfc = f'{reg}_GGFC'
            if ggfc in yfd_agg.columns:
                yfd_agg = yfd_agg.rename(columns={ggfc: f'{reg}_public_consumption'})

        yfd_agg = yfd_agg.reindex(country_codes)

        # Year sizes (share of world output)
        year_sizes = pd.DataFrame(year_output.iloc[:-1, 0] / year_output.iloc[-1, 0]).rename(columns={0:'size'}).reindex(country_codes)

        # --- Split GFCF imports into private/public using gov-cons import share logic ---
        imports_totals = pd.DataFrame(combined.iloc[-1, :]).rename(columns={'Total':'imports'})
        gov_share_dict = {}
        for reg in country_codes:
            imcgy_key = f'{reg}_imcgy'
            imports_imcgy = float(imports_totals.loc[imcgy_key, 'imports']) if imcgy_key in imports_totals.index else 0.0
            local_pubc = float(yfd_agg.loc[reg, f'{reg}_public_consumption']) if f'{reg}_public_consumption' in yfd_agg.columns else 0.0
            denom = imports_imcgy + local_pubc
            gov_share_dict[reg] = (imports_imcgy / denom) if denom else 0.0

        gov_inv_imports = {}
        private_inv_imports = {}
        split_private = {}
        for reg in country_codes:
            pub_inv = float(yfd_agg.loc[reg, f'{reg}_public_investment']) if f'{reg}_public_investment' in yfd_agg.columns else 0.0
            s = gov_share_dict.get(reg, 0.0)
            gov_inv_imports[reg] = (s * pub_inv) / (1.0 - s) if (1.0 - s) != 0 else 0.0
            gfcf_key = f'{reg}_GFCF'
            total_gfcf_imp = float(imports_totals.loc[gfcf_key, 'imports']) if gfcf_key in imports_totals.index else 0.0
            private_inv_imports[reg] = total_gfcf_imp - gov_inv_imports[reg]
            split_private[reg] = (private_inv_imports[reg] / total_gfcf_imp) if total_gfcf_imp else 0.0

        for reg in country_codes:
            gfcf_key = f'{reg}_GFCF'
            if gfcf_key in combined.columns:
                combined[f'{reg}_imiy']  = combined[gfcf_key] * split_private[reg]
                combined[f'{reg}_imigy'] = combined[gfcf_key] * (1.0 - split_private[reg])
                combined = combined.drop(columns=gfcf_key)

        # --- Trade matrix as share of output for this year ---
        trade_matrix = combined.copy()
        for col in trade_matrix.columns:
            reg = col.split('_')[0]
            denom = float(year_output.loc[reg, 0]) if reg in year_output.index else np.nan
            trade_matrix[col] = trade_matrix[col] / denom if denom and not np.isnan(denom) else 0.0

        imcy = filter_columns_by_suffix(trade_matrix, '_imcy', country_codes)
        imiy = filter_columns_by_suffix(trade_matrix, '_imiy', country_codes)
        imcgy = filter_columns_by_suffix(trade_matrix, '_imcgy', country_codes)
        imigy = filter_columns_by_suffix(trade_matrix, '_imigy', country_codes)

        # Bilateral imports → totals per importer
        imy_bilateral = {c1: {} for c1 in country_codes}
        for c1 in country_codes:
            for c2 in country_codes:
                imy_bilateral[c1][c2] = (
                    (imcy.loc[c2, c1]  if (c1 in imcy.columns  and c2 in imcy.index)  else 0.0) +
                    (imcgy.loc[c2, c1] if (c1 in imcgy.columns and c2 in imcgy.index) else 0.0) +
                    (imiy.loc[c2, c1]  if (c1 in imiy.columns  and c2 in imiy.index)  else 0.0) +
                    (imigy.loc[c2, c1] if (c1 in imigy.columns and c2 in imigy.index) else 0.0)
                )
        imy = {c1: sum(imy_bilateral[c1].values()) for c1 in country_codes}

        # Exports inferred via size ratios using THIS YEAR's sizes
        exy_bilateral = {c2: {} for c2 in country_codes}
        for c2 in country_codes:
            for c1 in country_codes:
                s1 = float(year_sizes.loc[c1, 'size']) if c1 in year_sizes.index else 0.0
                s2 = float(year_sizes.loc[c2, 'size']) if c2 in year_sizes.index else 0.0
                exy_bilateral[c2][c1] = (imy_bilateral[c1][c2] * (s1 / s2)) if s2 else 0.0
        exy = {c1: sum(exy_bilateral[c1].values()) for c1 in country_codes}

        # Yearly TBY (already "share of output")
        tby_year = {c1: float(exy[c1] - imy[c1]) for c1 in country_codes}
        yearly_tby[year] = tby_year

    # Average across years (simple mean over available years)
    if not yearly_tby:
        # keep previous behavior if nothing was computed
        tby_avg_df = pd.read_csv(os.path.join(data_directory, 'tby.csv'), index_col=0)
        return tby_avg_df, {}

    years_sorted = sorted(yearly_tby.keys())
    mat = pd.DataFrame([{c: yearly_tby[y].get(c, np.nan) for c in country_codes} for y in years_sorted],
                       index=years_sorted)
    tby_avg = mat.mean(axis=0, skipna=True)
    tby_avg_df = tby_avg.to_frame(name='tby')

    return tby_avg_df, yearly_tby


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
    # === Yearly TBY (already normalized as share of output) ===
    for year, tby_year in yearly_tby.items():
        for code, val in tby_year.items():
            if pd.isna(val):
                continue
            countries.append(code)      # e.g., 'AT', 'RA', 'US'
            variables.append('tby')     # variable name
            years.append(str(year))     # '1995'..'2020'
            values.append(float(val))   # share of output

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