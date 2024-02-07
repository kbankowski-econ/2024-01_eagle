var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
U2_HH_DIN,   // from income
U2_HH_CON,   // from consumption
U2_IVN,      // from inventories
U2_HH_COD,   // from prices
U2_HH_IHN,   // from residential
U2_RPPD      // exogenous also in residential
dummy_long_run
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_HH_TWR   --> to consumption
*/