var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_YER,          // From closure
U2_H_Q_YER,      // From consumption
U2_A_YED,        // From wapro
U2_G_YER,        // from closure
U2_LRN,          // from financial
U2_STN,          // from policy_rule
U2_ESTN,         // from policy_rule
U2_EHIC,         // from wapro
U2_HH_COD,       // from price block
U2_HH_IHD        // from price block
U2_RPPD          // from house price block
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_HH_IHR    --> to closure
U2_HH_IHN    --> to closure / wealth
U2_RPPD      --> to wealth
*/