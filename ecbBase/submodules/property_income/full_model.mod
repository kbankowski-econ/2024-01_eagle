var
@#include "varendo.mod"
;


varexo
@#include "residuals.mod"
@#include "varexo.mod"
U2_A_YED
U2_G_YER
U2_T_YER
U2_STN
U2_ESTN
U2_EHIC
U2_H_HH_Y_DIR
U2_G_HH_Y_VDIR
U2_G_VYER
U2_HH_DIR
U2_MIN
U2_S_SCNL
U2_S_SCNT
U2_HH_B_SCN
U2_S_DTNL
U2_S_DTNT
U2_HH_DTN
U2_HH_COD
U2_HH_L_IHN
U2_SKHR
U2_YEN
U2_HH_IHD
U2_H_Q_YER
//U2_GOSMIN
U2_HH_L_DEP
U2_S_RPPD
;

parameters
@#include "../global/param_decla.mod"
;

@#include "../global/param_calib.mod"

model;
@#include "model.mod"
end;