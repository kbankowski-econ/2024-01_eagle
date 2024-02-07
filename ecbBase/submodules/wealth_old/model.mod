[name = 'U2_HH_B_APN', blockname='wealth_old']
U2_HH_B_APN = U2_HH_B_APN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_B_APN; // ADJUSTMENT OF PENSIONS

[type = 'longrun', name = 'U2_HH_GSN', blockname='wealth_old']
U2_HH_GSN = U2_HH_DIN + U2_HH_B_APN - U2_HH_CON; // GROSS SAVINGS

[ name = 'U2_HH_B_KTN', blockname='wealth_old']
U2_HH_B_KTN = U2_HH_B_KTN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_B_KTN; // CAPITAL TRANSFERS

[name = 'U2_HH_IVN', blockname='wealth_old'] // TO EXACTLY PIN DOWN
U2_HH_IVN = U2_HH_IVN(-1)*(U2_IVN/U2_IVN(-1)) + res_U2_HH_IVN;  

[name = 'U2_HH_ITN', blockname='wealth_old']
log(U2_HH_ITN) =  log(U2_HH_ITN(-1))  + diff(log(U2_HH_IHN))  + res_U2_HH_ITN;

[type = 'longrun', name = 'U2_HH_KFN', blockname='wealth_old']
U2_HH_KFN = U2_HH_ITN +U2_HH_IVN; 

[name = 'U2_HH_NPN', blockname='wealth_old']
U2_HH_NPN =   U2_HH_NPN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_NPN;

[type = 'longrun', name = 'U2_HH_KFNPN', blockname='wealth_old']
U2_HH_KFNPN = U2_HH_KFN + U2_HH_NPN; // Gross capital formation + non-produced assets (P5(P51G+P5M)+NP= P5L)

[type = 'longrun', name ='U2_HH_CFKN', blockname='wealth_old']
U2_HH_CFKN = U2_HWN(-1)*U2_HH_D_IHN; // depreciation rate considered for housing

[name = 'U2_HH_D_IHN', blockname='wealth_old']
U2_HH_D_IHN = U2_HH_D_IHN(-1) + res_U2_HH_D_IHN;

[type = 'longrun', name = 'U2_HH_B9N', blockname='wealth_old']
U2_HH_B9N = U2_HH_GSN + U2_HH_B_KTN -  U2_HH_KFNPN ;

[type = 'longrun', name = 'U2_HH_TWN', blockname='wealth_old']
U2_HH_TWN = U2_HH_TWN(-1) + U2_HH_B9N - U2_HH_CFKN + U2_HH_TRV;

[name = 'U2_HH_TRV', blockname='wealth_old']
U2_HH_TRV = U2_HH_TRV(-1)*dummy_long_run + res_U2_HH_TRV;

[type = 'longrun', name = 'U2_HH_TWR', blockname='wealth_old']
U2_HH_TWR = U2_HH_TWN/U2_HH_COD;

[type = 'longrun', name = 'U2_HWN', blockname='wealth_old']
U2_HWN = U2_HWN(-1) +  U2_HH_IHN - U2_HH_CFKN + U2_HH_HRV + res_U2_HWN;

[type = 'longrun', name = 'U2_HH_HRV', blockname='wealth_old']
U2_HH_HRV = U2_HWN(-1)*U2_HH_R_HRV;

[name = 'U2_HH_R_HRV', blockname='wealth_old'] // TO SET TO 0
U2_HH_R_HRV = (U2_RPPD/U2_RPPD(-1)-1);