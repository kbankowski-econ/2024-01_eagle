// --+ options: stochastic,json=compute +--

var

////// EA VAR VARIABLES /////5
U2_Q_YED
U2_G_YER
U2_STN
U2_EHIC
U2_ESTN
U2_G_EYER

U2_OLEN
U2_Q_TAU

U2_LEN
;

varexo
U2_YER
U2_T_YER
res_U2_Q_YED
res_U2_G_YER
res_U2_STN
res_U2_EHIC
res_U2_ESTN
res_U2_G_EYER
res_U2_OLEN
res_U2_Q_TAU
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
u2_u2_len_yer
;

u2_q_yed_ecm_u2_q_yed_L1=-0.5277900325; 
u2_q_yed_ecm_u2_stn_L1=-0.3461724099; 
u2_q_yed_u2_q_yed_L1=-0.3157161002; 
u2_q_yed_u2_g_yer_L1=-0.0209576958; 
u2_q_yed_u2_stn_L1=0.3344505814; 
u2_g_yer_ecm_u2_q_yed_L1=-0.0821167621; 
u2_g_yer_ecm_u2_stn_L1=-0.1903890548; 
u2_g_yer_u2_q_yed_L1=0.0384349312; 
u2_g_yer_u2_g_yer_L1=0.6718002838; 
u2_g_yer_u2_stn_L1=-0.3467863786; 
u2_stn_ecm_u2_q_yed_L1=-0.0968398456; 
u2_stn_ecm_u2_stn_L1=-0.2113991952; 
u2_stn_u2_q_yed_L1=0.0385060793; 
u2_stn_u2_g_yer_L1=0.2729064693; 
u2_q_yed_ecm_u2_g_yer_L1=0.1544035812; 
u2_g_yer_ecm_u2_g_yer_L1=0.0030891845; 
u2_stn_ecm_u2_g_yer_L1=0.0595681737; 
u2_oihr_ecm_u2_q_yed_L1=-0.0001853389; 
u2_oihr_ecm_u2_stn_L1=-0.0012341294; 
u2_oihr_ecm_u2_g_yer_L1=-0.0002616420; 
u2_oihr_u2_q_yed_L1=0.0006089891; 
u2_oihr_u2_g_yer_L1=0.0062811818; 
u2_oihr_u2_stn_L1=-0.0054095477; 
u2_oihr_ecm_u2_oihr_L1=-0.6258011390; 
u2_oihr_u2_oihr_L1=-0.2168031144; 
beta=0.9800000000; 
ecm_pac=-0.0055259794; 
u2_ihr_pac_u2_ihr_L1=0.8169378750; 
u2_ihr_pac_u2_ihr_L2=-0.0040721097; 
u2_u2_len_yer=1.4641107111; 
h1_pacman_var_U2_Q_YED_lag_1=0.0006107125; 
h1_pacman_var_U2_G_YER_lag_1=0.0013402492; 
h1_pacman_var_U2_STN_lag_1=0.0036696349; 
h1_pacman_var_U2_ESTN_lag_1=-0.0003561459; 
h1_pacman_var_U2_EHIC_lag_1=-0.0014097400; 
h1_pacman_var_U2_G_EYER_lag_1=-0.0024971799; 
h1_pacman_var_AUX_DIFF_166_lag_1=-0.0492651780; 
h1_pacman_var_U2_Q_TAU_lag_1=-0.9921347885; 
h1_pacman_var_U2_Q_YED_lag_2=-0.0002545666; 
h1_pacman_var_U2_G_YER_lag_2=0.0000694908; 
h1_pacman_var_U2_STN_lag_2=-0.0011724550; 
h1_pacman_var_U2_ESTN_lag_2=0.0000000000; 
h1_pacman_var_U2_EHIC_lag_2=0.0000000000; 
h1_pacman_var_U2_G_EYER_lag_2=0.0000000000; 
h1_pacman_var_AUX_DIFF_166_lag_2=0.1233898290; 
h1_pacman_var_U2_Q_TAU_lag_2=0.0000000000; 
pacman_pac_growth_neutrality_correction=0.9180101374; 


beta = 0.98 ;
ecm_pac = 1;
u2_ihr_pac_u2_ihr_L1 = 1;
u2_ihr_pac_u2_ihr_L2 = 1;
u2_u2_len_yer = 1;


var_model(model_name=toto, eqtags=['U2_Q_YED', 'U2_G_YER', 'U2_STN', 'U2_ESTN', 'U2_EHIC', 'U2_G_EYER',  'U2_OLEN', 'U2_Q_TAU']);
pac_model(var_model_name=toto, discount=beta, model_name=pacman, undiff('U2_Q_YED', 1),  undiff('U2_G_YER', 1), undiff('U2_STN', 1), undiff('U2_OLEN', 1), growth = U2_Q_TAU);


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


[name='U2_OLEN', data_type='nonstationary']
diff(diff(log(U2_OLEN))) =  u2_oihr_ecm_u2_q_yed_L1   * (U2_Q_YED(-1) - U2_EHIC(-1))  
                 + u2_oihr_ecm_u2_stn_L1     * (U2_STN(-1)   - U2_ESTN(-1))
                 + u2_oihr_ecm_u2_g_yer_L1   * (U2_G_YER(-1) - U2_G_EYER(-1))
                 + u2_oihr_ecm_u2_oihr_L1    * (diff(log(U2_OLEN(-1))) - U2_Q_TAU(-1))
                 + u2_oihr_u2_q_yed_L1       * diff(U2_Q_YED(-1))                  
                 + u2_oihr_u2_g_yer_L1       * diff(U2_G_YER(-1))          
                 + u2_oihr_u2_stn_L1         * diff(U2_STN(-1))            
                 + u2_oihr_u2_oihr_L1        * diff(diff(log(U2_OLEN(-1))))             
                 + res_U2_OLEN                                           ;

[name='U2_Q_TAU', data_type='nonstationary']
U2_Q_TAU = U2_Q_TAU(-1) + res_U2_Q_TAU;

[name='zpac']
diff(log(U2_LEN)) = ecm_pac*(U2_OLEN(-1) - U2_LEN(-1)) + 
                     u2_ihr_pac_u2_ihr_L1*diff(U2_LEN(-1)) + 
                     u2_ihr_pac_u2_ihr_L2*diff(U2_LEN(-2)) + 
                     u2_u2_len_yer*(diff(log(U2_YER(-1))) - diff(log(U2_T_YER(-1)))) + 
                     pac_expectation(pacman) + 
                     res_ez;
end;
