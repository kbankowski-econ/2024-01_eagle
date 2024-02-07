[name='U2_T_BU_Y_Q_ITR', blockname='business'] // Desired ratio capital output growth trend
U2_T_BU_Y_Q_ITR=0.95* U2_T_BU_Y_Q_ITR(-1)+0.05*log(U2_BU_Y_ITR/ U2_BU_Y_ITR(-1))+res_U2_T_BU_Y_Q_ITR;

[type = 'longrun', name='U2_BU_OITR', long_run_name = 'U2_BU_ITR', blockname='business']
U2_BU_OITR = U2_YER*U2_BU_Y_ITR*(U2_H_Q_YER/100 + U2_BU_D_ITR/100); // Business investment target

[type = 'longrun', name='U2_BU_Y_ITR', blockname='business'] // Desired capital-output ratio
U2_BU_Y_ITR = U2_BU_Y_MIBR/(U2_BU_U_ITR/400);

@#ifdef longrun
[type = 'longrun', name= 'U2_BU_Y_MIBR', blockname='business']
U2_T_YER = U2_YER;
@#endif

[type = 'longrun', name='U2_BU_U_ITR', blockname='business'] // Real User Cost of Capital
U2_BU_U_ITR = 400*(U2_Y_ITD*(U2_BU_L_ITR/400 + U2_BU_D_ITR/100 - (1-U2_BU_D_ITR/100)*U2_HGPDR/400)*(1/(1-U2_BU_S_DTN))); 

[type = 'longrun', name = 'U2_Y_ITD', blockname='business']
U2_Y_ITD = U2_ITD/U2_YED;

[type = 'longrun', name = 'U2_HGPDR', blockname='business']
U2_HGPDR = 0.975*U2_HGPDR(-1) + 0.025*100*(log(U2_Y_ITD) - log(U2_Y_ITD(-1))) + res_U2_HGPDR;

[type = 'longrun', name='U2_BU_L_ITR', blockname='business'] // Financial cost of capital (lending rate average real)
U2_BU_L_ITR = U2_BU_L_ITN - U2_EHIC;

[name='U2_BU_ITR', blockname='business'] // Business Investment
U2_BU_ITR               =  exp(log(U2_BU_ITR(-1))
                                    - 0.00247533082710276 //too big -> sth is wrong with Business_investment_2var, probably growth neutrality
                                     + 0.4907330395720739*(U2_T_Q_YER(-1)/100+U2_T_BU_Y_Q_ITR(-1)/100) 
                                     + (1-0.5)*(0.1688019699861396*(log(U2_BU_OITR(-1)) - log(U2_BU_ITR(-1)))
                                     + 0.664730661126421*(log(U2_BU_ITR(-1))-log(U2_BU_ITR(-2))) 
                                     + U2_BU_EOITR)
                                     + 0.5*(diff(log(U2_YER)) //should be lagged to be consistent with Michele's estimation
                                     +  U2_T_BU_Y_Q_ITR(-1)/100)) + res_U2_BU_ITR;


[name='U2_BU_EOITR', blockname='business'] // This must stabilize to a given value
U2_BU_EOITR =  -0.001186601493436785*U2_A_YED(-1)
               -0.0002134714614338783*U2_A_YED(-2)
               +0.003275971188221062*U2_G_YER(-1)
               -0.003534761885240533*U2_G_YER(-2)
               -0.006879626936423173*U2_STN_R(-1)
               +0.005003275689830332*U2_STN_R(-2)
               +0.001876353638934851*U2_ESTN(-1)
               +0.001400072954870858*U2_EHIC(-1)
               -0.0005396972606973801*(log(U2_BU_Y_ITR(-1))-log(U2_BU_Y_ITR(-2)))
               +0.0001660097708417395*(log(U2_BU_Y_ITR(-2))-log(U2_BU_Y_ITR(-3)))
               +0.006633338778159077*(log(U2_YER(-1))-log(U2_YER(-2)))
               +0.007361701548928496*(log(U2_YER(-2))-log(U2_YER(-3)))
               +0.3541769472192866*U2_T_BU_Y_Q_ITR(-1)/100
               +0.3398082194023431*U2_H_Q_YER(-1)/100;


[name='U2_BU_S_DTN', blockname='business']
U2_BU_S_DTN = U2_BU_S_DTN(-1) + diff(U2_GO_BU_R_DTN) + res_U2_BU_S_DTN;