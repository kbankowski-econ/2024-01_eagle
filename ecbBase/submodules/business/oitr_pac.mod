// --+ options: stochastic,json=compute +--

var

////// EA VAR VARIABLES /////5
U2_Q_YED
U2_G_YER
U2_STN
U2_EHIC
U2_ESTN
U2_G_EYER

U2_BU_OITR
U2_H_Q_YER

U2_BU_ITR
;

varexo
U2_T_BU_Y_Q_ITR
U2_YER
res_U2_Q_YED
res_U2_G_YER
res_U2_STN
res_U2_EHIC
res_U2_ESTN
res_U2_G_EYER
res_U2_BU_OITR
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

u2_oihr_ecm_u2_q_yed_L1
u2_oihr_ecm_u2_stn_L1
u2_oihr_ecm_u2_g_yer_L1
u2_oihr_u2_q_yed_L1
u2_oihr_u2_g_yer_L1
u2_oihr_u2_stn_L1
u2_oihr_ecm_u2_oihr_L1
u2_oihr_u2_oihr_L1

beta
ecm_pac
u2_ihr_pac_u2_ihr_L1
u2_ihr_pac_u2_ihr_L2
gamma
;

gamma = 0.5;
beta = 0.98 ;
ecm_pac = 1;
u2_ihr_pac_u2_ihr_L1 = 1;
u2_ihr_pac_u2_ihr_L2 = 1;


var_model(model_name=toto, eqtags=['U2_Q_YED', 'U2_G_YER', 'U2_STN', 'U2_ESTN', 'U2_EHIC', 'U2_G_EYER',  'U2_BU_OITR', 'U2_H_Q_YER']);
pac_model(var_model_name=toto, discount=beta, model_name=pacman, undiff('U2_Q_YED', 1),  undiff('U2_G_YER', 1), undiff('U2_STN', 1), undiff('U2_BU_OITR', 1), growth = U2_H_Q_YER);


model;


[name='U2_Q_YED', data_type='nonstationary']
diff(U2_Q_YED) =   u2_q_yed_ecm_u2_q_yed_L1 * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_q_yed_ecm_u2_stn_L1   * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_q_yed_ecm_u2_g_yer_L1 * (U2_G_YER(-1)- U2_G_EYER(-1)) 
                 + u2_q_yed_u2_q_yed_L1     * diff(U2_Q_YED(-1))                  
                 + u2_q_yed_u2_g_yer_L1     * diff(U2_G_YER(-1))                  
                 + u2_q_yed_u2_stn_L1       * diff(U2_STN(-1))            
                 + res_U2_Q_YED                                           ;  


[name='U2_G_YER', data_type='nonstationary']
diff(U2_G_YER) =   u2_g_yer_ecm_u2_q_yed_L1 * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_g_yer_ecm_u2_stn_L1   * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_g_yer_ecm_u2_g_yer_L1 * (U2_G_YER(-1) - U2_G_EYER(-1)) 
                 + u2_g_yer_u2_q_yed_L1     * diff(U2_Q_YED(-1))                  
                 + u2_g_yer_u2_g_yer_L1     * diff(U2_G_YER(-1))                  
                 + u2_g_yer_u2_stn_L1       * diff(U2_STN(-1))             
                 + res_U2_G_YER                                           ;


[name='U2_STN', data_type='nonstationary']
diff(U2_STN)   =   u2_stn_ecm_u2_q_yed_L1   * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_stn_ecm_u2_stn_L1     * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_stn_ecm_u2_g_yer_L1   * (U2_G_YER(-1) - U2_G_EYER(-1)) 
                 + u2_stn_u2_q_yed_L1       * diff(U2_Q_YED(-1))                  
                 + u2_stn_u2_g_yer_L1       * diff(U2_G_YER(-1))         
    //           + u2_stn_u2_stn_L1         * diff(U2_STN(-1))
                 + res_U2_STN                                             ;


[name='U2_ESTN', data_type='nonstationary']
U2_ESTN        =  U2_ESTN(-1) + res_U2_ESTN                               ;       

[name='U2_EHIC', data_type='nonstationary']
U2_EHIC        =  U2_EHIC(-1) + res_U2_EHIC                               ;

[name='U2_G_EYER', data_type='nonstationary']
U2_G_EYER        =  U2_G_EYER(-1) + res_U2_G_EYER                               ;


[name='U2_BU_OITR', data_type='nonstationary']
diff(diff(log(U2_BU_OITR))) =  u2_oihr_ecm_u2_q_yed_L1   * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_oihr_ecm_u2_stn_L1     * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_oihr_ecm_u2_g_yer_L1   * (U2_G_YER(-1) - U2_G_EYER(-1))
                 + u2_oihr_ecm_u2_oihr_L1    * (diff(log(U2_BU_OITR(-1))) - U2_H_Q_YER(-1))
                 + u2_oihr_u2_q_yed_L1       * diff(U2_Q_YED(-1))                  
                 + u2_oihr_u2_g_yer_L1       * diff(U2_G_YER(-1))          
                 + u2_oihr_u2_stn_L1         * diff(U2_STN(-1))            
                 + u2_oihr_u2_oihr_L1        * diff(diff(log(U2_BU_OITR(-1))))             
                 + res_U2_BU_OITR                                        ;

[name='U2_H_Q_YER', data_type='nonstationary']
U2_H_Q_YER = U2_H_Q_YER(-1) + res_U2_H_Q_YER;

[name='zpac']
diff(log(U2_BU_ITR)) = gamma*(ecm_pac*(U2_BU_OITR(-1) - U2_BU_ITR(-1)) + 
                  u2_ihr_pac_u2_ihr_L1*diff(U2_BU_ITR(-1)) + 
                  u2_ihr_pac_u2_ihr_L2*diff(U2_BU_ITR(-2)) + 
                  pac_expectation(pacman)) +
                  (1-gamma)*diff(log(U2_YER) + 
                  U2_T_BU_Y_Q_ITR(-1)/100) + 
                  res_ez;
end;
