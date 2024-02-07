var
@#include "varendo.mod"
;

varexo

// From other blocks
U2_A_YED,  // from wapro
U2_G_YER,  // from closure
U2_STN,    // from policy_rule
U2_ESTN,   // from policy_rule
U2_EHIC    // from wapro
@#include "residuals.mod"
@#include "varexo.mod"
;


model;

@#include "model.mod"

end;

/* Going into the rest of the model:
U2_BU_L_ITN   --> to business
U2_HH_L_CON   --> to consumption
U2_LRN        --> to residential
*/