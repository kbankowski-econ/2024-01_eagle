[type = 'longrun', name = 'U2_HH_TWR', blockname='wealth'] 
U2_HH_TWR = U2_HH_TWN/U2_HH_COD;   // total real wealth -> enters consumption

[type = 'longrun', name = 'U2_HH_TWN', blockname='wealth']
U2_HH_TWN = U2_HH_FWN  + U2_HWN; // total wealth = financial + housing 

// FINANCIAL WEALTH

[type = 'longrun', name = 'U2_HH_FWN', blockname='wealth']
U2_HH_FWN  = U2_HH_FWN(-1)*(0.5930 + 0.0666 * ((1+U2_OIS_10Y(-1)/100)/(1+U2_OIS_10Y/100)) + 0.1622 * ((1+U2_CB(-1)/100)/(1+U2_CB/100)) + 0.1782 * ((1+U2_COE(-1)/100)/(1+U2_COE/100))) + U2_HH_B9N  + res_U2_HH_FWN;

[type = 'longrun', name = 'U2_HH_B9N', blockname='wealth']
U2_HH_B9N = U2_HH_GSN + U2_HH_B_KTN - U2_HH_KFNPN; // gross savings + capital transfers - household investment  

[type = 'longrun', name = 'U2_HH_GSN', blockname='wealth']
U2_HH_GSN = U2_HH_DIN + U2_HH_B_APN - U2_HH_CON; // GROSS SAVINGS  = Disposable income + adjustment for pensions - consumption

// HOUSING WEALTH
[type = 'longrun', name = 'U2_HWN', blockname='wealth']  
U2_HWN =U2_HWN(-1)*(U2_RPPD/U2_RPPD(-1)) +  U2_HH_IHN - U2_HH_CFKN  + res_U2_HWN; // housing capital = housing capital(-1) + revaluation  +  investment - depreciation 

[name = 'U2_HH_ITN', blockname='wealth']
log(U2_HH_ITN) =  log(U2_HH_ITN(-1))  + diff(log(U2_HH_IHN))  + res_U2_HH_ITN;  // U2_HH_ITN not the same as U2_HH_IHN, as it containes also other investment not relate to residential 

[type = 'longrun', name = 'U2_HH_KFN', blockname='wealth']
U2_HH_KFN = U2_HH_ITN + U2_HH_IVN;          // household investment  + housing inventories  

[type = 'longrun', name = 'U2_HH_KFNPN', blockname='wealth']
U2_HH_KFNPN = U2_HH_KFN + U2_HH_NPN; // Gross capital formation + non-produced assets (P5(P51G+P5M)+NP= P5L) (assumed to grow exogenosly)

[type = 'longrun', name ='U2_HH_CFKN', blockname='wealth']
U2_HH_CFKN = U2_HWN(-1)*U2_HH_D_IHN; // depreciation rate considered for housing

//  'EXOGENOUS PROCESSES'
[ name = 'U2_HH_B_KTN', blockname='wealth']
U2_HH_B_KTN = U2_HH_B_KTN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_B_KTN; // CAPITAL TRANSFERS

[name = 'U2_HH_NPN', blockname='wealth']
U2_HH_NPN =  U2_HH_NPN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_NPN;

[name = 'U2_HH_D_IHN', blockname='wealth']
U2_HH_D_IHN = U2_HH_D_IHN(-1) + res_U2_HH_D_IHN; // depreciation rate, assumed random walk 

[name = 'U2_HH_IVN', blockname='wealth'] // TO EXACTLY PIN DOWN
U2_HH_IVN = U2_HH_IVN(-1)*(U2_IVN/U2_IVN(-1)) + res_U2_HH_IVN;  // household inventories behave as total inventories 

[name = 'U2_HH_B_APN', blockname='wealth']
U2_HH_B_APN = U2_HH_B_APN(-1)*((1.02*1.019)^(1/4)) + res_U2_HH_B_APN; // ADJUSTMENT OF PENSIONS
