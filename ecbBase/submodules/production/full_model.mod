var
@#include "varendo.mod"
;

varexo
@#include "varexo.mod"
@#include "residuals.mod"
U2_T_R_LFP, // from labour
U2_T_R_LUN, // from labour
U2_WAP      // from labour
U2_ITR      // from closure
;

parameters
@#include "../global/param_decla.mod"
;

model;
@#include "model.mod"
end;

/* Going into the rest of the model:
U2_T_YER    --> to closure / consumption / fiscal / labour
*/