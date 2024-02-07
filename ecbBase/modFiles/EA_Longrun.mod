// --+ options: stochastic,json=compute +--

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is the main mod file. The implemented submodular structure of the codes allows user to include or exclude a submodel block in a very simple way.
// The only thing the user needs to do is to select which blocks will be endogenous in the model, which is done by simply listing them in the @#define blocks part
// and to define the list of the blocks which will be exogenized by listing them in the @#define exclude_blocks part bellow.
// IMPORTANT: User needs to ensure that there is no intersection between blocks list and exclude_blocks list, otherwise Dynare will fail and report an error.
// This .mod script will generate the files that form the basis for all other codes in the ECB-MC infrastructure.
///////////////////////////////////////////////////////////////////////////////////////////////////////////

// Define the list of blocks in the model
@#define include_blocks =["UIP", "CONSUMPTION", "BUSINESS", "RESIDENTIAL", "TRADE", "WAPRO", "LABOUR", "PRICE", "FISCAL", "PRODUCTION", "NFA", "FINANCIAL", "WAGE",  "EXCHANGE_RATE", "CLOSURE",  "FOREIGN", "HOUSEPRICE", "INVENTORIES", "PROPERTY_INCOME", "WEALTH", "POLICY_RULE", "HICP"]

// Define the list of the block to exclude
@#define exclude_blocks = [ ]

// Checks whether submodel which is supposed to be excluded is a member of the blocks user wants to include and if TRUE results in Dynare failure with error reported.
@#for el in exclude_blocks
    @#if el in include_blocks
        @#error "@{el} is not excluded from included blocks"
    @#endif
@#endfor

// Created structure exo_path which contains ones if block is included and zeroes otherwise
exo_path_tmp = struct();

@#for el in include_blocks
    exo_path_tmp.@{el}=1;
@#endfor

@#for el in exclude_blocks
    exo_path_tmp.@{el}=0;
@#endfor

global block_names; 
global exo_path submodule_names;

exo_path = struct();
block_names = fieldnames(exo_path_tmp);
for i =1:length(block_names)
    exo_path.(lower(char(block_names(i))))=exo_path_tmp.(char(block_names(i)));
end

exo_path.global = 1;

submodule_names = fieldnames(exo_path);

clear exo_path_tmp;

///////////////////VARIABLES///////////////////
var
//////////////////////////////////UIP///////////////////////////////// 7
@#if !("UIP" in exclude_blocks)
    @#include "uip/varendo.mod"
@#endif

//////////////////////////////////NFA///////////////////////////////// 7
@#if !("NFA" in exclude_blocks)
    @#include "nfa/varendo.mod"
@#endif

//////////////////////////////////HICP///////////////////////////////// 7
@#if !("HICP" in exclude_blocks)
    @#include "hicp/varendo.mod"
@#endif

//////////////////////////////////EXCHANGE_RATE///////////////////////////////// 7
@#if !("EXCHANGE_RATE" in exclude_blocks)
    @#include "exchange_rate/varendo.mod"
@#endif

//////////////////////////////////PROPERTY_INCOME///////////////////////////////// 7
@#if !("PROPERTY_INCOME" in exclude_blocks)
    @#include "property_income/varendo.mod"
@#endif

//////////////////////////////////BUSINESS///////////////////////////////// 7
@#if !("BUSINESS" in exclude_blocks)
    @#include "business/varendo.mod"
@#endif

//////////////////////////////////CONSUMPTION////////////////////////////// 22
@#if !("CONSUMPTION" in exclude_blocks)
    @#include "consumption/varendo.mod"
@#endif

///////////////////////////////// CLOSURE CONDITIONS //////////////////////////////////////
@#if !("CLOSURE" in exclude_blocks)
    @#include "closure/varendo.mod"
@#endif

//////////////////////////////////// FISCAL VARIABLES ///////////////////////
@#if !("FISCAL" in exclude_blocks)
    @#include "fiscal/varendo.mod"
@#endif

//////////////////////////////////// FOREIGN VARIABLES ///////////////////////
@#if !("FOREIGN" in exclude_blocks)
    @#include "foreign/varendo.mod"
@#endif

//////////////////////////////////POLICY RULE///////////////////////////////// 5
@#if !("POLICY_RULE" in exclude_blocks)
    @#include "policy_rule/varendo.mod"
@#endif

//////////////////////////////////WAGE////////////////////////////// 22
@#if !("WAGE" in exclude_blocks)
    @#include "wage/varendo.mod"
@#endif

//////////////////////////////////WEALTH////////////////////////////// 22
@#if !("WEALTH" in exclude_blocks)
    @#include "wealth/varendo.mod"
@#endif


//////////////////////////////////RESIDENTIAL////////////////////////////// 3
@#if !("RESIDENTIAL" in exclude_blocks)
    @#include "residential/varendo.mod"
@#endif

//////////////////////////////////HOUSEPRICE///////////////////////////////// 7
@#if !("HOUSEPRICE" in exclude_blocks)
    @#include "houseprice/varendo.mod"
@#endif

//////////////////////////////////INVENTORIES////////////////////////////// 2
@#if !("INVENTORIES" in exclude_blocks)
    @#include "inventories/varendo.mod"
@#endif



//////////////////////////////////// LABOUR MARKET VARIABLES ///////////////////////
@#if !("LABOUR" in exclude_blocks)
    @#include "labour/varendo.mod"
@#endif
       
                                      	
//////////////////////////////////// TRADE VARIABLES ///////////////////////
@#if !("TRADE" in exclude_blocks)
    @#include "trade/varendo.mod"
@#endif


//////////////////////////////////// PRICE BLOCK DEFLATORS ////////////////////////
@#if !("PRICE" in exclude_blocks)
    @#include "price/varendo.mod"
@#endif

//////////////////////////////////// PRODUCTION FUNCTION ELEMENTS /////////////////
@#if !("PRODUCTION" in exclude_blocks)
    @#include "production/varendo.mod"
@#endif


//////////////////////////////////// WAPRO ///////////////////////////////////////
@#if !("WAPRO" in exclude_blocks)
    @#include "wapro/varendo.mod"
@#endif

//////////////////////////////////// FINANCIAL /////////////////////////////////// 
@#if !("FINANCIAL" in exclude_blocks)
    @#include "financial/varendo.mod"
@#endif
;

varexo
@#include "global/varexo.mod"
///////////////////////////////////  UIP ////////////////////////////////////
@#include "uip/varexo.mod"
@#if !("UIP" in exclude_blocks)
    @#include "uip/residuals.mod"
@#else
    @#include "uip/interaction.mod"
@#endif

///////////////////////////////////  NFA ////////////////////////////////////
@#include "nfa/varexo.mod"
@#if !("NFA" in exclude_blocks)
    @#include "nfa/residuals.mod"
@#else
    @#include "nfa/interaction.mod"
@#endif

///////////////////////////////////  HICP ////////////////////////////////////
@#include "hicp/varexo.mod"
@#if !("HICP" in exclude_blocks)
    @#include "hicp/residuals.mod"
@#else
    @#include "hicp/interaction.mod"
@#endif

///////////////////////////////////  EXCHANGE_RATE ////////////////////////////////////
@#include "exchange_rate/varexo.mod"
@#if !("EXCHANGE_RATE" in exclude_blocks)
    @#include "exchange_rate/residuals.mod"
@#else
    @#include "exchange_rate/interaction.mod"
@#endif

///////////////////////////////////  BUSINESS ////////////////////////////////////
@#include "business/varexo.mod"
@#if !("BUSINESS" in exclude_blocks)
    @#include "business/residuals.mod"
@#else
    @#include "business/interaction.mod"
@#endif

///////////////////////////////////  PROPERTY_INCOME ////////////////////////////////////
@#include "property_income/varexo.mod"
@#if !("PROPERTY_INCOME" in exclude_blocks)
    @#include "property_income/residuals.mod"
@#else
    @#include "property_income/interaction.mod"
@#endif

/////////////////////////////// CLOSURE CONDITIONS ///////////////////////////////
@#include "closure/varexo.mod"
@#if !("CLOSURE" in exclude_blocks)
    @#include "closure/residuals.mod"
@#else
    @#include "closure/interaction.mod"
@#endif

/////////////////////////////////  CONSUMPTION ///////////////////////////////////////
@#include "consumption/varexo.mod"
@#if !("CONSUMPTION" in exclude_blocks)
    @#include "consumption/residuals.mod"
@#else
    @#include "consumption/interaction.mod"
@#endif

//////////////////////// FINANCIAL
@#include "financial/varexo.mod"
@#if !("FINANCIAL" in exclude_blocks)
    @#include "financial/residuals.mod"
@#else
    @#include "financial/interaction.mod"
@#endif

////////////////////////// FISCAL
@#include "fiscal/varexo.mod"
@#if !("FISCAL" in exclude_blocks)
    @#include "fiscal/residuals.mod"
@#else
    @#include "fiscal/interaction.mod"
@#endif

////////////////////////// FOREIGN
@#include "foreign/varexo.mod"
@#if !("FOREIGN" in exclude_blocks)
    @#include "foreign/residuals.mod"
@#else
    @#include "foreign/interaction.mod"
@#endif


////////////////////////// HOUSEPRICE
@#include "houseprice/varexo.mod"
@#if !("HOUSEPRICE" in exclude_blocks)
    @#include "houseprice/residuals.mod"
@#else
    @#include "houseprice/interaction.mod"
@#endif

////////////////////////// WAGE
@#include "wage/varexo.mod"
@#if !("WAGE" in exclude_blocks)
    @#include "wage/residuals.mod"
@#else
    @#include "wage/interaction.mod"
@#endif

////////////////////////// INVENTORIES
@#include "inventories/varexo.mod"
@#if !("INVENTORIES" in exclude_blocks)
    @#include "inventories/residuals.mod"
@#else
    @#include "inventories/interaction.mod"
@#endif

////////////////////////// LABOUR MARKET
@#include "labour/varexo.mod"
@#if !("LABOUR" in exclude_blocks)
    @#include "labour/residuals.mod"
@#else
    @#include "labour/interaction.mod"
@#endif

////////////////////////// PRICE BLOCK DEFLATORS
@#if !("PRICE" in exclude_blocks)
    @#include "price/residuals.mod"
@#else
    @#include "price/interaction.mod"
@#endif

/////////////////////////// PRODUCTION FUNCTION
@#include "production/varexo.mod"
@#if !("PRODUCTION" in exclude_blocks)
    @#include "production/residuals.mod"
@#else
    @#include "production/interaction.mod"
@#endif

//////////////////////////// RESIDENTIAL
@#include "residential/varexo.mod"
@#if !("RESIDENTIAL" in exclude_blocks)
    @#include "residential/residuals.mod"
@#else
    @#include "residential/interaction.mod"
@#endif

// TRADE
@#include "trade/varexo.mod"
@#if !("TRADE" in exclude_blocks)
    @#include "trade/residuals.mod"
@#else
    @#include "trade/interaction.mod"
@#endif

// POLICY RULE
@#include "policy_rule/varexo.mod"
@#if !("POLICY_RULE" in exclude_blocks)
    @#include "policy_rule/residuals.mod"
@#else
    @#include "policy_rule/interaction.mod"
@#endif

// WAPRO
@#include "wapro/varexo.mod"
@#if !("WAPRO" in exclude_blocks)
    @#include "wapro/residuals.mod"
@#else
    @#include "wapro/interaction.mod"
@#endif

/////////////////////////////// WEALTH
@#include "wealth/varexo.mod"
@#if !("WEALTH" in exclude_blocks)
    @#include "wealth/residuals.mod"
@#else
    @#include "wealth/interaction.mod"
@#endif
;

parameters
@#include "global/param_decla.mod"
;

@#include "global/param_calib.mod"

model;
//////////////////////////////////UIP/////////////////////////////////
@#if !("UIP" in exclude_blocks)
    @#include "uip/model.mod"
@#endif

//////////////////////////////////NFA/////////////////////////////////
@#if !("NFA" in exclude_blocks)
    @#include "nfa/model.mod"
@#endif

//////////////////////////////////HICP/////////////////////////////////
@#if !("HICP" in exclude_blocks)
    @#include "hicp/model.mod"
@#endif

//////////////////////////////////EXCHANGE_RATE/////////////////////////////////
@#if !("EXCHANGE_RATE" in exclude_blocks)
    @#include "exchange_rate/model.mod"
@#endif

//////////////////////////////////BUSINESS/////////////////////////////////
@#if !("BUSINESS" in exclude_blocks)
    @#include "business/model.mod"
@#endif

//////////////////////////////// CLOSURE CONDITIONS /////////////////////////////////////////
@#if !("CLOSURE" in exclude_blocks)
    @#include "closure/model.mod"
@#endif

//////////////////////////////////CONSUMPTION////////////////////////////// 
@#if !("CONSUMPTION" in exclude_blocks)
    @#include "consumption/model.mod"
@#endif

////////////////////////////////////// FINANCIAL ///////////////////////////////////////////////////////////
@#if !("FINANCIAL" in exclude_blocks)
    @#include "financial/model.mod"
@#endif

//////////////////////////////////// FISCAL BLOCK ////////////////////////////////////////////////
@#if !("FISCAL" in exclude_blocks)
    @#include "fiscal/model.mod"
@#endif

//////////////////////////////////// PROPERTY_INCOME BLOCK ////////////////////////////////////////////////
@#if !("PROPERTY_INCOME" in exclude_blocks)
    @#include "property_income/model.mod"
@#endif

//////////////////////////////////// FOREIGN BLOCK ////////////////////////////////////////////////
@#if !("FOREIGN" in exclude_blocks)
    @#include "foreign/model.mod"
@#endif

//////////////////////////////////// HOUSEPRICE ////////////////////////////////////////////////
@#if !("HOUSEPRICE" in exclude_blocks)
    @#include "houseprice/model.mod"
@#endif


//////////////////////////////////INVENTORIES//////////////////////////////
@#if !("INVENTORIES" in exclude_blocks)
    @#include "inventories/model.mod"
@#endif

//////////////////////////////////// LABOUR MARKETS BLOCK ////////////////////////////////////////////////									   
@#if !("LABOUR" in exclude_blocks)
    @#include "labour/model.mod"
@#endif

////////////////////////////////////// PRICE  ///////////////////////////////////////////
@#if !("PRICE" in exclude_blocks)
    @#include "price/model.mod"
@#endif

///////////////////////////////////// PRODUCTION  /////////////////////////////////////////
@#if !("PRODUCTION" in exclude_blocks)
    @#include "production/model.mod"
@#endif

//////////////////////////////////RESIDENTIAL//////////////////////////////
@#if !("RESIDENTIAL" in exclude_blocks)
    @#include "residential/model.mod"
@#endif

//////////////////////////////////// TRADE ////////////////////////////////////////////////
@#if !("TRADE" in exclude_blocks)
    @#include "trade/model.mod"
@#endif

//////////////////////////////////POLICY RULE///////////////////////////////// 5
@#if !("POLICY_RULE" in exclude_blocks)
    @#include "policy_rule/model.mod"
@#endif

//////////////////////////////////// WAGE BLOCK ////////////////////////////////////////////////
@#if !("WAGE" in exclude_blocks)
    @#include "wage/model.mod"
@#endif

/////////////////////////////////////// WAPRO /////////////////////////////////////////////////////////
@#if !("WAPRO" in exclude_blocks)
    @#include "wapro/model.mod"
@#endif

/////////////////////////////////////// WEALTH CURVES /////////////////////////////////////////////////////////
@#if !("WEALTH" in exclude_blocks)
    @#include "wealth/model.mod"
@#endif
end;


/////////////////////////////////// Container of dynare structures used in simulation,irf etc routines /////////////////////
objects = {'M_','options_','exo_path'};

dynare_objects = struct();
for i = 1:length(objects)
    dynare_objects.(char(objects(i))) = eval(char(objects(i)));
end

//write_latex_static_model;
//collect_latex_files;
