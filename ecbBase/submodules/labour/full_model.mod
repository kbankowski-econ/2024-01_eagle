var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_T_YER,    // from production
U2_C_CER,    // from wapro
U2_A_YED,    // from wapro
U2_G_YER,    // from closure
U2_YER,      // from closure
U2_STN,      // from policy_rule
U2_ESTN,     // from policy_rule
U2_EHIC      // from wapro
dummy_long_run // from global
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_LNN      --> to closure
U2_BU_LEN   --> to fiscal / wapro
U2_T_C_LNH  --> to production
U2_T_R_LFP  --> to production
U2_T_R_LUN  --> to production / wapro
U2_WAP      --> to production
U2_R_LUN    --> to wapro
U2_T_LNN    --> to wapro
*/