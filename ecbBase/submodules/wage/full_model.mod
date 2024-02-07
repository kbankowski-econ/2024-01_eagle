var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_T_YER     // from closure
U2_G_YER,    // from closure
U2_STN,      // from policy_rule
U2_ESTN,     // from policy_rule
U2_EHIC,     // from wapro
U2_G_R_LUN   // from labour
U2_T_LNN     // from labour
//U2_YED       // from wapro
U2_A_YED     // from wapro
//U2_E_A_YED_1 // from wapro
U2_HH_COD    // from price
//U2_A_YED_TAR // from wapro
U2_H_Q_YER   // from consumption
U2_TAU       // from labour
U2_CEN
U2_LEN
//U2_LNN
//U2_A4_YED
//U2_A4_HH_COD
//U2_A_YED_TAR
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;