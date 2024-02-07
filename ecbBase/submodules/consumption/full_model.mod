var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_HH_TWR       // from wealth
U2_A_YED,       // from wapro
U2_T_YER,       // from production
U2_HH_COD,      // from prices
U2_STN,         // from policy_rule
U2_ESTN,        // from policy_rule
U2_EHIC,        // from wapro
U2_G_YER,       // from closure
U2_CEN,         // From closure
U2_YER,         // from closure
U2_GO_SCN,      // From fiscal
U2_GO_SBCN,     // from fiscal
U2_GO_HH_DTN    // from fiscal
U2_G_HH_S_DIRP  // from property_income
U2_HH_EDIRP     // from property_income
U2_HH_DINP      // from property_income
U2_HH_L_CON     // from financial
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_T_Q_YER     --> to business
U2_H_Q_YER     --> to business / residential
U2_HH_COR      --> to closure / trade
U2_HH_CON      --> to fiscal / wealth
U2_H_HH_Y_DIR  --> to income
U2_H_HH_S_DIRL --> to income
U2_H_HH_S_DIRT --> to income
U2_H_HH_S_DIRP --> to income
*/
