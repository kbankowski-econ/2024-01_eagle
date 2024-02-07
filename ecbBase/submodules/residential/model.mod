[type = 'longrun', name='U2_HH_OIHR', long_run_name = 'U2_HH_IHR', blockname='residential']
U2_HH_OIHR  =      exp(-2.218812700565000
                    -0.00524154912771095*TTREND -0.00524154912771095* (-44)
                    + log(U2_YER)
                    - 0.1596371660873066*log(U2_HH_U_IHR2)
                    - 1.058242895853434*log(U2_S_RPPD_IHD));

[name='U2_HH_IHR', blockname='residential']
diff(log(U2_HH_IHR)) = 0.06739281215369619*U2_H_Q_YER(-1)/100
                     + 0.09638899937471782*(log(U2_HH_OIHR(-1)) - log(U2_HH_IHR(-1))) 
                     + 0.04898487614573668*diff(log(U2_HH_IHR(-1)))
                     + 0.2265768155371683*diff(log(U2_HH_IHR(-2))) 
                     + U2_HH_EOIHR 
                     + 1.051566914914065*(diff(log(U2_YER)) - U2_H_Q_YER/100)
                     + res_U2_HH_IHR;


[name='U2_HH_EOIHR', blockname='residential']
U2_HH_EOIHR =  +0.001342509324637609*U2_A_YED(-1) 
               +0.0007398534363448995*U2_A_YED(-2) 
               -0.001790786823029919*U2_G_YER(-1) 
               +0.0005218877207684839*U2_G_YER(-2) 
               -0.001992445459738594*U2_STN_R(-1) 
               +0.0008276789567732724*U2_STN_R(-2) 
               +0.001164752413378179*U2_ESTN(-1)
               -0.002082362760981302*U2_EHIC(-1) 
               +0.1081272620865525*diff(log(U2_HH_OIHR(-1))) 
               +0.02567408778743843*diff(log(U2_HH_OIHR(-2))) 
               +0.5232441462894115*U2_H_Q_YER(-1)/100;

// Relative house price to HH investment, and its growth rate, and its average
[type = 'longrun', name = 'U2_S_RPPD_IHD', blockname='residential']
U2_S_RPPD_IHD = U2_HH_IHD/U2_RPPD ; 

[name = 'U2_Q_S_RPPD_IHD', blockname='residential']
U2_Q_S_RPPD_IHD = (log(U2_S_RPPD_IHD) -log(U2_S_RPPD_IHD(-1))) *100;

[name = 'U2_ES_RPPD_IHD', blockname='residential']
U2_ES_RPPD_IHD = 7/8*U2_ES_RPPD_IHD(-1) + 1/8*U2_Q_S_RPPD_IHD ; //+ res_U2_ES_RPPD_IHD;

[type = 'longrun', name='U2_HH_U_IHR2', blockname='residential'] // Lending rate - inflation - relative house price to HH investment
U2_HH_U_IHR2 = (0.034 + U2_LRN/400 - U2_EHIC/400 - U2_ES_RPPD_IHD/100)*400;

[type = 'longrun', name = 'U2_HH_S_IHD', blockname='residential']
U2_HH_S_IHD = ((U2_HH_IHN/U2_HH_IHR))/U2_HH_COD; // The deflator of household investment

[type = 'longrun', name = 'U2_HH_IHN', blockname='residential']
U2_HH_IHN = U2_HH_IHR*U2_HH_IHD;
