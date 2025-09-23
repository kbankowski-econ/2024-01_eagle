## List of Codes
Folder 'Codes' contain all of the Python codes needed to process the raw data to csv files readable by the model. 
The list of codes: 
    1. Codes defining the functions: 
        -final_demand.py 
            Defines a function used in main.py for aggregating the final demand from input-output tables by regions and sectors. 
        -imports_calculations.py
            Defines functions used in main.py for calculating indirect imports by region. 
        -functions.py
            Defines simple technical functions used in main.py. Defines country codes.
    2. Main codes for data processing:
        -main.py
            From input-output tables and other raw data creates the following .csv files: 
                size.csv (country sizes)
                shares.csv (great ratios)
                imcy.csv, imcgy.csv, imiy.csv, imigy.csv (import shares)
                tby.csv (trade balance)
                imports_graph.csv (data used to make a graph for the paper)
        -data_retrieval.py
            Processes all of the other data used for model calibration and creates the following csv files: 
                investments_shares.csv (split between government and public investment)
                tax_rates.csv (ratios of taxes)
                debt.csv (ratios of debt)
                transfers.csv (transfers ratios)
    3. Additional code used to process data for a graph:
        -importsGDPgraph.py
            Produces import_graph.csv file (in raw_data folder) used to create a graph for the paper

## Running order 
 Note: the codes require pandas, numpy, os packages. Change the directories to the local ones at the start of the codes.    
    1. data_retrieval.py
        -Produces data for calibration, and investment split used in main.py, must be run before main.py
    2. imports_calculations.py, functions.py. final_demand.py
        -Run these, if running the codes for the first time do have the functions defines for main.py
    3. main.py
        -Created the import shares and great ratios shares .csv files
    Optional. importsGDPgraph.py 
        -If there is a need to replicate the graph data, run this. This does not produce any data used for model calibration. 

## List of raw data
Folder raw data contains all of the raw data used in to produce .csv files through main.py, data_retrieval.py, and importsGDPgraph.py
    1. 'io' folder contains all input-output tables used (OECD). 
    2. 'WITS_imports' folder contains data used for the graph produced by importsGDPgraph.py (WITS data)
    3. List of data in raw_data folder: 
        -capital_tax_loc.csv
            Capital tax data in local currency (OECD)
        -consumption.csv
            Consumption data (OECD)
        -debt_eurostat.xlsx
            Debt levels for EU countries (EUROSTAT)
        -debt.xlsx
            Debt levels by country (IMF)
        -es_pt_cap_tax.csv
            Capital tax levels for Spain and Portugal (from ECB SDW)
        -es_pt_inc_tax.csv
            Income tax levels for Spain and Portugal (from ECB SDW)
        -eur_usd_exchange.csv
            EUR to USD exchange rate used to transform data in euros (World Bank)
        -imf_gdp.csv
            GDP (IMF)
        -imf_investment_split.csv
            Government and private investment ratios as % of GDP used to estimate the import share split between government and private investments (IMF)
        -import_graph.csv
            Data created by importsGDPgraph.py to create a graph for the paper
        -operating_surplus_local.csv
            Operating surplus levels in local currency (OECD)
        -operating_surplus.csv
            Operating surplus levels in USD dollars (OECD)
        -taxes.csv
            Tax levels (OECD)
        -transfers_eurostat.csv
            Transfers levels for EU countries (EUROSTAT)
        -transfers.csv
            Transfers levels (OECD)
        -wage_income.csv
            Wage income levels (OECD)
        -world_bank_gdp.xlsx
            GDP (World Bank)

## Next steps
    To create .mod files for data calibration, run, from the main model folder:
        -runChartsForWP.m (create charts for the paper)
        -runSSsharesModFiles (creates .mod files for calibration data)
        -runTradeMatrixFromIoProject (created trade matrix. mod file)