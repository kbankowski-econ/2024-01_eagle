var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_HH_COD,    // from prices
U2_BU_ITD,    // from prices
U2_HH_COR,    // from consumption
U2_BU_ITR,    // from business 
U2_GO_COR,    // from fiscal
U2_GO_TIN,    // from fiscal
U2_GO_ITR,    // from fiscal
U2_GO_ITN,    // from fiscal
U2_XTN,       // from trade
U2_MTN,       // from trade
U2_T_YER,     // from production
U2_HH_IHN,    // from residential
U2_HH_IHR,    // from residential
U2_LEN,       // from labour
U2_YED,       // from wapro
U2_C_CEN      // from wapro
U2_IVN        // from inventories
U2_GO_ITD     // from fiscal
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;


/* Going into the rest of the model:
U2_G_YER      --> to business / consumption / financial / fiscal / policy_rule / wapro / residential
U2_GOSMIN     --> to fiscal / income
U2_CEN        --> to fiscal / income
U2_YER        --> to income / labour / residential / consumption
U2_YEN        --> to inventories
U2_ITR        --> to production / trade



U2_YER--> to consumption
U2_G_YER--> to consumption / fiscal / financial 
U2_HH_CON--> to fiscal
U2_GOSMIN--> to fiscal
U2_CEN--> to fiscal
U2_YER--> to income
U2_GOSMIN--> to income
U2_CEN--> to income
U2_YEN--> to inventories
U2_YER--> to labour
U2_G_YER--> to labour
U2_ITR--> to production
U2_YER--> to residential
U2_G_YER--> to residential
U2_ITR--> to trade
U2_G_YER--> to policy_rule
U2_G_YER--> to wapro
U2_HH_CON--> to wealth
*/

