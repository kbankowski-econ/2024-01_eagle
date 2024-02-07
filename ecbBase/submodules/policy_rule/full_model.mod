var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_G_A4_HH_COD // from wapro
U2_A4_YER      // from closure
U2_A_YED_TAR
;

model;
@#include "model.mod"
end;

/* Variables going into the rest of the model:
U2_STN
U2_ESTN
U2_EHIC
*/