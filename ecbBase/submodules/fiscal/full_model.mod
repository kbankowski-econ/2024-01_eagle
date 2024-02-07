var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_T_YER,   // from production
U2_MXD,     // from trade
U2_HH_COD,  // from prices
U2_HH_CON,  // from consumption
U2_GOSMIN,  // from closure
U2_CEN,     // from closure
U2_G_YER,   // from closure
U2_YED      // from wapro
U2_T_PRO    // from production
U2_AMIR    // from financial
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_GO_COR,    --> to closure / trade
U2_GO_ITR,    --> to closure
U2_GO_TIN,    --> to closure
U2_GO_ITN,    --> to closure
U2_GO_SCN,    --> to income
U2_GO_SBCN,   --> to income
U2_GO_HH_DTN  --> to income
U2_GO_LNN     --> to labour / wapro
U2_GO_C_CEN,  --> to wapro
*/