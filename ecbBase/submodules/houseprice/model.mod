[type = 'longrun', name='U2_RPPD', blockname='houseprice']
U2_RPPD = U2_S_RPPD*U2_HH_COD;

[name = 'U2_Q16_S_RPPD', blockname='houseprice']
U2_Q16_S_RPPD = (log(U2_S_RPPD) - log(U2_S_RPPD(-1)))*100/16 + 15/16*U2_Q16_S_RPPD(-1) ; //+res_U2_Q16_S_RPPD;

[type = 'longrun', name='U2_HH_U_IHR', blockname='houseprice']
U2_HH_U_IHR = (0.034 + U2_HH_L_IHN/400 - U2_EHIC/400 + U2_S_TIH/4 - 0.4*U2_Q16_S_RPPD/100)*400;

[type = 'longrun', name='U2_OS_RPPD', long_run_name = 'U2_S_RPPD', blockname='houseprice']
U2_OS_RPPD = exp(4.2259320570432 + 0.977525222310148*log(U2_HH_DIR) -0.977525222310148*log(U2_SKHR) -0.604599818558331*log(U2_HH_U_IHR));

[name='U2_S_RPPD', blockname='houseprice']
log(U2_S_RPPD) = log(U2_S_RPPD(-1)) 
                + 0.03377856324609714*(log(U2_OS_RPPD(-1)) - log(U2_S_RPPD(-1))) 
                + 0.6743540829337471*(log(U2_S_RPPD(-1))-log(U2_S_RPPD(-2))) 
                + U2_EOS_RPPD + res_U2_S_RPPD;

[name='U2_EOS_RPPD', blockname='houseprice']
U2_EOS_RPPD =  +0.0002715732720895404*U2_A_YED(-1) 
               +0.0002419868208141559*U2_A_YED(-2) 
               -0.0006648010312597198*U2_G_YER(-1) +0.0002228579393801011*U2_G_YER(-2) +0.001176952361833178*U2_STN(-1) -0.0005820038394574548*U2_STN(-2) -0.000594952194231918*U2_ESTN(-1) -0.0005135600929033672*U2_EHIC(-1)  +0.02194424631387919*(log(U2_OS_RPPD(-1)) - log(U2_OS_RPPD(-2))) +0.005115262633694701*(log(U2_OS_RPPD(-2)) - log(U2_OS_RPPD(-3)));

[type ='longrun', name = 'U2_SKHR', blockname='houseprice']
U2_SKHR = U2_SKHR(-1)*(1 - 0.004) + U2_HH_IHR;