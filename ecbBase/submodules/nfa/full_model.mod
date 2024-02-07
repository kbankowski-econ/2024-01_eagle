var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_MTN
U2_XTN
U2_OIS_10Y
U2_US_10Y
U2_EENX
U2_YED
U2_CXEDEX
dummy_long_run
U2_MTR
U2_XTR
U2_YEN
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;