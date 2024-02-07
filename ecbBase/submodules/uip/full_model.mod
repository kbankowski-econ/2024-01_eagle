var
@#include "varendo.mod"
;

varexo

// From other blocks
U2_YED,  // from wapro
U2_CXEDEX,  // from foreign
U2_OIS_10Y,    // from financial
U2_EHIC,   // from wapro
U2_US_10Y // from foreign
U2_US_EHIC //from foreign
U2_EEN_RES //from exchange_rate
@#include "residuals.mod"
@#include "varexo.mod"
;


model;

@#include "model.mod"

end;

/* Going into the rest of the model:
EENX   --> to trade
*/