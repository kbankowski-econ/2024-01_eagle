// --+ options: stochastic,json=compute +--

var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_H_Q_YER,   // from consumption
U2_T_Q_YER,   // from consumption
U2_BU_L_ITN,  // from financial
U2_EHIC,      // from wapro
U2_ESTN,      // from policy_rule
U2_STN,       // from policy_rule
U2_A_YED,     // from wapro
U2_G_YER,     // from closure
U2_YER        // from closure
U2_ITD        // from closure
U2_YED        // from wapro 
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_BU_ITR--> to closure
U2_BU_L_ITR--> to wapro
*/