/*
Beware of exo_path_list characteristics for all newly created variables
*/

[name='U2_G_A4_HH_COD', blockname='price'] // Annual inflation
U2_G_A4_HH_COD = U2_A4_HH_COD - U2_A_YED_TAR;

[name = 'U2_A4_HH_COD', blockname='price']
U2_A4_HH_COD = 100*(U2_HH_COD/U2_HH_COD(-4)-1); 

[type = 'longrun', name = 'U2_HH_Q_OCOD', long_run_name = 'U2_HH_COD', blockname='price']
U2_HH_Q_OCOD = exp((1- u2_hh_q_ocod_w)*log(U2_YED) + u2_hh_q_ocod_w*log(U2_MXD) - 0.0225193162293 + 0.000296690463541*TTREND) ;

[type = 'noestim', name = 'U2_HH_COD', blockname='price']
log(U2_HH_COD) = 0.9629*log(U2_HH_COD(-1))
                + 0.10636*diff(log(U2_MXD))
                + 0.03710*log(U2_HH_Q_OCOD(-1))
                + 0.70707*diff(log(U2_YED))
                + 0.18657*diff(log(U2_YED(-1)))
                + 0.6 * 0.2 * diff(U2_GO_R_TIN_NET)
                + (1-0.9629) * 0.6 * 0.2 * diff(U2_GO_R_TIN_NET(-1))
                + res_U2_HH_COD;

                                             
// BUSINESS INVESTMENT DEFLATOR
[type = 'longrun', name = 'U2_BU_Q_OITD', long_run_name = 'U2_BU_ITD', blockname='price']
U2_BU_Q_OITD = exp((1- u2_q_oitd_w)*log(U2_YED)+ u2_q_oitd_w*log(U2_MXD));

[name = 'U2_BU_ITD', blockname='price']
diff(log(U2_BU_ITD)) = 
                    20*u2_bu_q_itd_l0_bu_q_oitd*(log(U2_BU_ITD(-1)) - log(U2_BU_Q_OITD(-1))) +
                    u2_bu_q_itd_l0_q_yed*diff(log(U2_YED)) + 
                    (1-u2_bu_q_itd_l0_q_yed)*diff(log(U2_YED(-1))) +
                    res_U2_BU_ITD;   
                    
// HOUSEHOLD INVESTMENT DEFLATOR
[type = 'longrun', name = 'U2_HH_Q_OIHD', long_run_name = 'U2_HH_IHD', blockname='price']
U2_HH_Q_OIHD = exp((1- u2_q_oitd_w)*log(U2_YED) +  u2_q_oitd_w*log(U2_MXD));

[name = 'U2_HH_IHD', blockname='price']
diff(log(U2_HH_IHD)) = 
                    3*u2_hh_q_itd_l0_hh_q_oitd* (log(U2_HH_IHD(-1)) - log(U2_HH_Q_OIHD(-1))) +
                    u2_hh_q_itd_l1*diff(log(U2_HH_IHD(-1))) +
                    (1-u2_hh_q_itd_l1)*diff(log(U2_YED)) +
                    res_U2_HH_IHD;