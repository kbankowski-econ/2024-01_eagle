// --+ options: json=compute, stochastic +--

var

////// EA VAR VARIABLES /////5
U2_Q_YED
U2_G_YER
U2_STN
U2_EHIC
U2_ESTN
U2_G_EYER

U2_HH_OCOR

U2_HH_COR
U2_H_Q_YER400

test_1
test_2
;

varexo
/*
U2_HH_SL_CON
U2_LT_10Y
*/
U2_HH_DIRL
U2_HH_DIRT
U2_HH_DIRLT

res_U2_Q_YED
res_U2_G_YER
res_U2_STN
res_U2_EHIC
res_U2_ESTN
//res_U2_G_EYER
res_U2_HH_OCOR
res_U2_H_Q_YER
res_ez
;

parameters  
u2_q_yed_ecm_u2_q_yed_L1
u2_q_yed_ecm_u2_stn_L1
u2_q_yed_u2_q_yed_L1
u2_q_yed_u2_g_yer_L1
u2_q_yed_u2_stn_L1
u2_g_yer_ecm_u2_q_yed_L1
u2_g_yer_ecm_u2_stn_L1
u2_g_yer_u2_q_yed_L1
u2_g_yer_u2_g_yer_L1
u2_g_yer_u2_stn_L1
u2_stn_ecm_u2_q_yed_L1
u2_stn_ecm_u2_stn_L1
u2_stn_u2_q_yed_L1
u2_stn_u2_g_yer_L1
u2_q_yed_ecm_u2_g_yer_L1 
u2_g_yer_ecm_u2_g_yer_L1
u2_stn_ecm_u2_g_yer_L1

u2_hh_ocor_ecm_u2_q_yed_L1
u2_hh_ocor_ecm_u2_stn_L1
u2_hh_ocor_ecm_u2_g_yer_L1
u2_hh_ocor_u2_q_yed_L1
u2_hh_ocor_u2_g_yer_L1
u2_hh_ocor_u2_stn_L1
u2_hh_ocor_ecm_u2_hh_ocor_L1
u2_hh_ocor_u2_hh_ocor_L1

beta
ecm_pac
u2_hh_cor_pac_u2_hh_cor_L1
u2_hh_cor_pac_u2_hh_dsl_con_lt_10y
gamma
//test_gn
;

gamma = 1;
beta = 0.98 ;
ecm_pac = 0.2;
u2_hh_cor_pac_u2_hh_cor_L1 = 0.4;
u2_hh_cor_pac_u2_hh_dsl_con_lt_10y = -0.00286580452009685;
u2_ihr_pac_u2_ihr_L2 = 1;

//test_gn = 0.03;



trend_component_model(model_name=toto, eqtags=['U2_Q_YED', 'U2_G_YER', 'U2_STN', 'U2_EHIC', 'U2_G_EYER', 'U2_ESTN', 'U2_HH_OCOR', 'U2_H_Q_YER400'], targets=['U2_EHIC', 'U2_G_EYER', 'U2_ESTN', 'U2_H_Q_YER400']);

pac_model(auxiliary_model_name=toto, discount=beta, model_name=pacman, growth = U2_H_Q_YER400);
//pac_model(auxiliary_model_name=toto, discount=beta, model_name=pacman,growth=test_gn);



model;


[name='U2_Q_YED']
diff(U2_Q_YED) =   u2_q_yed_ecm_u2_q_yed_L1 * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_q_yed_ecm_u2_stn_L1   * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_q_yed_ecm_u2_g_yer_L1 * (U2_G_YER(-1)- U2_G_EYER(-1)) 
                 + u2_q_yed_u2_q_yed_L1     * diff(U2_Q_YED(-1))                  
                 + u2_q_yed_u2_g_yer_L1     * diff(U2_G_YER(-1))                  
                 + u2_q_yed_u2_stn_L1       * diff(U2_STN(-1))            
                 + res_U2_Q_YED                                           ;  


[name='U2_G_YER']
diff(U2_G_YER) =   u2_g_yer_ecm_u2_q_yed_L1 * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_g_yer_ecm_u2_stn_L1   * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_g_yer_ecm_u2_g_yer_L1 * (U2_G_YER(-1) - U2_G_EYER(-1)) 
                 + u2_g_yer_u2_q_yed_L1     * diff(U2_Q_YED(-1))                  
                 + u2_g_yer_u2_g_yer_L1     * diff(U2_G_YER(-1))                  
                 + u2_g_yer_u2_stn_L1       * diff(U2_STN(-1))             
                 + res_U2_G_YER                                           ;


[name='U2_STN']
diff(U2_STN)   =   u2_stn_ecm_u2_q_yed_L1   * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_stn_ecm_u2_stn_L1     * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_stn_ecm_u2_g_yer_L1   * (U2_G_YER(-1) - U2_G_EYER(-1)) 
                 + u2_stn_u2_q_yed_L1       * diff(U2_Q_YED(-1))                  
                 + u2_stn_u2_g_yer_L1       * diff(U2_G_YER(-1))         
    //           + u2_stn_u2_stn_L1         * diff(U2_STN(-1))
                 + res_U2_STN                                             ;


[name='U2_ESTN']
U2_ESTN        =  U2_ESTN(-1) + res_U2_ESTN                               ;       

[name='U2_EHIC']
U2_EHIC        =  U2_EHIC(-1) + res_U2_EHIC                               ;

[name='U2_G_EYER']
//U2_G_EYER        =  U2_G_EYER(-1) + res_U2_G_EYER                               ;
U2_G_EYER        =  0                               ;


[name='U2_HH_OCOR']
diff(diff(log(U2_HH_OCOR))) =  u2_hh_ocor_ecm_u2_q_yed_L1   * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_hh_ocor_ecm_u2_stn_L1     * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_hh_ocor_ecm_u2_g_yer_L1   * (U2_G_YER(-1) - U2_G_EYER(-1))
                 + u2_hh_ocor_ecm_u2_hh_ocor_L1    * (diff(log(U2_HH_OCOR(-1))) - U2_H_Q_YER400(-1))
                 + u2_hh_ocor_u2_q_yed_L1       * diff(U2_Q_YED(-1))                  
                 + u2_hh_ocor_u2_g_yer_L1       * diff(U2_G_YER(-1))          
                 + u2_hh_ocor_u2_stn_L1         * diff(U2_STN(-1))            
                 + u2_hh_ocor_u2_hh_ocor_L1        * diff(diff(log(U2_HH_OCOR(-1))))             
                 + res_U2_HH_OCOR                                        ;

[name='U2_H_Q_YER400']
//U2_H_Q_YER = U2_H_Q_YER(-1) + res_U2_H_Q_YER;
U2_H_Q_YER400 = U2_H_Q_YER400(-1) + res_U2_H_Q_YER;

test_1 = 0.001779787203418;
test_2 = 0.004165180393452;

[name='zpac']
diff(log(U2_HH_COR)) = gamma*(ecm_pac*(log(U2_HH_OCOR(-1))-log(U2_HH_COR(-1))) + 
                  u2_hh_cor_pac_u2_hh_cor_L1*diff(log(U2_HH_COR(-1))) + 
                  pac_expectation(pacman))   +
                  u2_hh_cor_pac_u2_hh_dsl_con_lt_10y*(U2_HH_SL_CON - 4.521111528029696 + U2_LT_10Y - 3.294431418254544) +   // numbers are the means of the two variables in PAC sample
                  (1-gamma)*(diff(log(U2_HH_DIRL)) - test_1     + 
                             diff(log(U2_HH_DIRT)) - test_2   ) + 
                  res_ez;
end;
