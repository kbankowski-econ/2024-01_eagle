var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_YED      // from wapro
U2_EXR      // from trade
U2_MED      // from trade
U2_MXD      // from trade
U2_EHIC     // from wapro
U2_T_PRO    // from production 
U2_C_CEN    // from wage
dummy_long_run
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;