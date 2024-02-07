var
@#include "varendo.mod"
;

varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_YEN  // from closure
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into other blocks
U2_IVN   --> To wealth
*/