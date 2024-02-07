[type = 'longrun', name = 'U2_OHEG', long_run_name = 'U2_HEG', blockname='hicp']
U2_OHEG = exp(U2_OHEG_a1 + log(U2_MED) - log(U2_EXR) + U2_OHEG_a2*TTREND + U2_OHEG_a2*(-40)); 

[type = 'noestim', name = 'U2_HEG', blockname='hicp']
diff(log(U2_HEG)) = log((1+U2_EHIC/100)^0.25) + U2_HEG_ecm*(log(U2_HEG(-1))-log(U2_OHEG(-1)))
                     + U2_HEG_a1*(diff(log(U2_MED)-log(U2_EXR))-log((1+U2_EHIC/100)^0.25)) 
                     + U2_HEG_a2*(diff(log(U2_MED(-1))-log(U2_EXR(-1)))-log((1+U2_EHIC(-1)/100)^0.25))
                     + res_U2_HEG;

[type = 'longrun', name = 'U2_OHEF', long_run_name = 'U2_HEF', blockname='hicp']
U2_OHEF = exp(U2_OHEF_a1 + (1-u2_hh_q_ocod_w)*log(U2_YED) + u2_hh_q_ocod_w*log(U2_MXDNO));

[type = 'noestim', name = 'U2_HEF', blockname='hicp']
diff(log(U2_HEF)) = log((1+U2_EHIC/100)^0.25) + U2_HEF_ecm*(log(U2_HEF(-1))-log(U2_OHEF(-1)))
                     + U2_HEF_b1*(diff((1-u2_hh_q_ocod_w)*log(U2_YED) + u2_hh_q_ocod_w*log(U2_MXDNO))-log((1+U2_EHIC/100)^0.25))
                     + U2_HEF_ar1*(diff(log(U2_HEF(-1)))-log((1+U2_EHIC(-1)/100)^0.25))
                     + res_U2_HEF;

[type = 'longrun', name = 'U2_OHEX', long_run_name = 'U2_HEX', blockname='hicp']
U2_OHEX = exp(U2_OHEX_a1 + log(U2_OHEF)*(1-HICP_WE-HICP_WF)/(1-HICP_WE) + (log(U2_C_CEN)-log(U2_T_PRO))*(HICP_WF)/(1-HICP_WE) + U2_OHEX_a2*TTREND + U2_OHEX_a2*(-40)); 

[type = 'noestim', name = 'U2_HEX', blockname='hicp']
diff(log(U2_HEX)) = log((1+U2_EHIC/100)^0.25) + U2_HEX_ecm*(log(U2_HEX(-1))-log(U2_OHEX(-1)))
                     + U2_HEX_a1*(diff(log(U2_YED))-log((1+U2_EHIC/100)^0.25))
                     + U2_HEX_a2*(diff(log(U2_YED(-1)))-log((1+U2_EHIC(-1)/100)^0.25))
                     + res_U2_HEX;

//IDENTITIES				
[type = 'longrun', name = 'U2_HIF', blockname='hicp']
U2_HIF = exp(((1-HICP_WE)*log(U2_HEX) - (1-HICP_WE-HICP_WF)*(log(U2_HEF)))/HICP_WF +U2_ZHIF);

[type = 'longrun', name = 'U2_HIC', blockname='hicp']
U2_HIC = exp((HICP_WE)*log(U2_HEG) + (1-HICP_WE)*log(U2_HEX)+U2_ZHICP);

[type = 'longrun', name = 'U2_MXDNO', blockname='hicp']
U2_MXDNO = exp((log(U2_MXD) - 0.094573*(log(U2_MED)-log(U2_EXR)))/(1-0.094573));

[name = 'U2_ZHICP', blockname='hicp']
U2_ZHICP = U2_ZHICP(-1)*dummy_long_run + res_U2_ZHICP;

[name = 'U2_ZHIF', blockname='hicp']
U2_ZHIF = U2_ZHIF(-1)*dummy_long_run + res_U2_ZHIF;
