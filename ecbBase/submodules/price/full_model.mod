var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
U2_MXD,    // from trade
U2_YED     // from wapro
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_HH_COD     --> to closure / fiscal / income / residential / wealth
U2_BU_ITD     --> to closure
U2_HH_IHD     --> to residential
*/