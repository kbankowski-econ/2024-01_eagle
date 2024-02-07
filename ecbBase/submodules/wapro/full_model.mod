var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_G_YER,    // from closure
U2_STN,      // from policy_rule
U2_ESTN,     // from policy_rule
U2_G_C_CER   // from wage
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_A_YED    --> to business / consumption / financial / labour / residential
U2_G_A_YED  --> to policy_rule
U2_YED      --> to closure / fiscal / price / trade
U2_C_CEN --> to fiscal
U2_C_CER --> to labour
*/