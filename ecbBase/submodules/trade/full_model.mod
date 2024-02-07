var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_EENX // From uip
U2_YED,    // From WAPRO
U2_HH_COR, // From consumption
U2_GO_COR, // from fiscal
U2_ITR     // from closure
dummy_long_run // from global
U2_EXR
U2_EENM
U2_CXEDEX
U2_POU
U2_PCU
U2_WDREX
U2_EHIC
U2_H_Q_YER
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_XTR	--> to closure
U2_XXR	--> to closure
U2_MXR	--> to closure
U2_MTR	--> to closure
U2_MXD  --> to fiscal / price
U2_MEED --> to price
U2_MED  --> to price
*/