var
@#include "varendo.mod"
;

varexo

// From other blocks
@#include "residuals.mod"
@#include "varexo.mod"
U2_EENX // From uip
U2_CXEDEX
U2_YED
;


model;

@#include "model.mod"

end;

/* Going into the rest of the model:
EENX   --> to trade
*/