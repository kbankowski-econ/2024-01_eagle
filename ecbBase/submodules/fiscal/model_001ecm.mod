//////////////////////////////////// FISCAL BLOCK ////////////////////////////////////////////////
// TODO: in theory this version of the model shold not be needed

// trend rate of tax payable by corporations [AR + MEAN	]
[name = 'U2_T_GO_BU_R_DTN', type = 'longrun', long_run_name = 'U2_GO_BU_R_DTN', blockname='fiscal']
U2_T_GO_BU_R_DTN  = 0.9*U2_T_GO_BU_R_DTN(-1) + 0.1*U2_T_GO_BU_R_ODTN + res_U2_T_GO_BU_R_DTN;


// trend Rate of tax payable by households, [AR + MEAN]
[type = 'longrun', name = 'U2_T_GO_HH_R_DTN', long_run_name = 'U2_GO_HH_R_DTN', blockname='fiscal']
U2_T_GO_HH_R_DTN  = 0.9*U2_T_GO_HH_R_DTN(-1) + 0.1*U2_T_GO_HH_R_ODTN + res_U2_T_GO_HH_R_DTN; 

//Trend rate for net social contribution paid by firms [AR + MEAN]
[type = 'longrun', name = 'U2_T_GO_BU_R_SCN', long_run_name = 'U2_GO_BU_R_SCN', blockname='fiscal']
U2_T_GO_BU_R_SCN  = 0.9*U2_T_GO_BU_R_SCN(-1) + 0.1*U2_T_GO_BU_R_OSCN + res_U2_T_GO_BU_R_SCN;

//Trend rate for net social contribution paid by HH [AR + MEAN]
[type = 'longrun', name = 'U2_T_GO_HH_R_SCN', long_run_name = 'U2_GO_HH_R_SCN', blockname='fiscal']
U2_T_GO_HH_R_SCN  = 0.9*U2_T_GO_HH_R_SCN(-1) + 0.1*U2_T_GO_HH_R_OSCN + res_U2_T_GO_HH_R_SCN;

//Trend rate for net social contribution imputed [AR + MEAN]
[type = 'longrun', name = 'U2_T_GO_RW_R_SCN', long_run_name = 'U2_GO_RW_R_SCN', blockname='fiscal']
U2_T_GO_RW_R_SCN  = 0.9*U2_T_GO_RW_R_SCN(-1) + 0.1*U2_T_GO_RW_R_OSCN + res_U2_T_GO_RW_R_SCN;

//Trend rate of taxation on production and import [AR + MEAN]
[type = 'longrun', name = 'U2_T_GO_R_TIN', long_run_name = 'U2_GO_R_TIN', blockname='fiscal']
U2_T_GO_R_TIN  = 0.9*U2_T_GO_R_TIN(-1) + 0.1*U2_T_GO_R_OTIN + res_U2_T_GO_R_TIN;

// ------------------- Total income block -------------------------//

// Evolution of the other revenues is the following
// Calibrated
[type = 'longrun', long_run_name = 'U2_GO_RRN', name='U2_T_GO_RRN', blockname='fiscal']
U2_T_GO_RRN  = U2_T_YEN*(U2_GO_Y_ORRN + dummy_FP*0.25*(U2_GO_MAL(-1)/U2_T_YEN(-1)-3.4)) + res_U2_T_GO_RRN; 

[type = 'estimated', name='U2_GO_RRN', sample='1999Q1:2019Q4', blockname='fiscal'] 
log(U2_GO_RRN) = log(U2_GO_RRN(-1)) + diff(log(U2_T_GO_RRN)) +  log(U2_GO_RRN(-1)/U2_T_GO_RRN(-1))*eq_U2_go_rrn_ecm 
                     													+ (diff(log(U2_GO_RRN(-1)))-diff(log(U2_T_GO_RRN)))*eq_U2_go_rrn_l0
                     													+ (diff(log(U2_GO_RRN(-2)))-diff(log(U2_T_GO_RRN)))*eq_U2_go_rrn_l1
                     													+  res_U2_GO_RRN;

// EXPLANATION: The shares next to the output gap is calibrated manually based on 
// drivers/WPfiscal/runEstimFiscal.m so that the output gap coefficient has an interpretation
// comparable across instruments

[type = 'estimated', name='U2_GO_R_TIN', sample = '1999Q1:2019Q4', blockname='fiscal']
U2_GO_R_TIN   =  	U2_T_GO_R_TIN + (U2_GO_R_TIN(-1)-U2_T_GO_R_TIN(-1))*eq_U2_go_r_tin_l0 + 
                           			(U2_GO_R_TIN(-2)-U2_T_GO_R_TIN(-2))*eq_U2_go_r_tin_l1 + 
                            		(1/0.66)*U2_G_YER/100*eq_U2_go_r_tin_U2_g_yer + 
                            		res_U2_GO_R_TIN;

[type = 'longrun', name='U2_GO_TIN', blockname='fiscal']
U2_GO_TIN  = U2_GO_R_TIN * (U2_HH_CON + U2_GO_PUN); // Nominal taxes on production

[type = 'longrun', name='U2_GO_R_TIN_NET', blockname='fiscal']
U2_GO_R_TIN_NET  = (U2_GO_TIN - U2_GO_SIN) / (U2_HH_CON + U2_GO_PUN);

// Taxes payable by corporations
[type= 'estimated', name='U2_GO_BU_R_DTN', sample= '1999Q1:2019Q4', blockname='fiscal'] // Estimated dynamic of tax rate around trend
U2_GO_BU_R_DTN =  U2_T_GO_BU_R_DTN + (U2_GO_BU_R_DTN(-1)-U2_T_GO_BU_R_DTN(-1))*eq_U2_go_bu_r_dtn_l0 + 
                         (U2_GO_BU_R_DTN(-2)-U2_T_GO_BU_R_DTN(-2))*eq_U2_go_bu_r_dtn_l1 + 
                          (1/0.41)*U2_G_YER/100*eq_U2_go_bu_r_dtn_U2_g_yer + 
                          res_U2_GO_BU_R_DTN;

[type = 'longrun', name = 'U2_GO_BU_DTN', blockname='fiscal'] 
U2_GO_BU_DTN  = U2_GO_BU_R_DTN * U2_GOSMIN;    // Nominal taxes payable by corporations


// Taxes payable by households
[type = 'estimated', name='U2_GO_HH_R_DTN', sample = '1999Q1:2019Q4', blockname='fiscal'] // Estimated dynamic of tax rate around trend
U2_GO_HH_R_DTN = U2_T_GO_HH_R_DTN +  (U2_GO_HH_R_DTN(-1)-U2_T_GO_HH_R_DTN(-1))*eq_U2_go_hh_r_dtn_l0 + 
                         (U2_GO_HH_R_DTN(-2)-U2_T_GO_HH_R_DTN(-2))*eq_U2_go_hh_r_dtn_l1 +
                          (1/0.40)*U2_G_YER/100*eq_U2_go_hh_r_dtn_U2_g_yer + 
                          res_U2_GO_HH_R_DTN;

[type = 'longrun', name='U2_GO_HH_DTN', blockname='fiscal']
U2_GO_HH_DTN = U2_WAN*U2_GO_HH_R_DTN; // Nominal taxes payable by households

[type = 'longrun', name = 'U2_GO_DTN', blockname='fiscal']
U2_GO_DTN = U2_GO_BU_DTN + U2_GO_HH_DTN + res_U2_GO_DTN;                 // Nominal current taxes on income and wealth, sum of 3 components

// Net social contributions paid by firms
[type = 'estimated', name='U2_GO_BU_R_SCN', sample='1999Q1:2019Q4', blockname='fiscal'] //  Estimated dynamic of tax rate around trend
U2_GO_BU_R_SCN = U2_T_GO_BU_R_SCN + (U2_GO_BU_R_SCN(-1)-U2_T_GO_BU_R_SCN(-1))*eq_U2_go_bu_r_scn_l0 + 
                          (U2_GO_BU_R_SCN(-2)-U2_T_GO_BU_R_SCN(-2))*eq_U2_go_bu_r_scn_l1 + 
                           (1/0.40)*U2_G_YER/100*eq_U2_go_bu_r_scn_U2_g_yer + 
                           res_U2_GO_BU_R_SCN;

[type = 'longrun', name = 'U2_GO_BU_SCN', blockname='fiscal']
U2_GO_BU_SCN  = U2_GO_BU_R_SCN * U2_WAN;   // Nominal net social contributions paid by firms

// Net social contributions paid by HH
[type = 'estimated', name='U2_GO_HH_R_SCN', sample='1999Q1:2019Q4', blockname='fiscal'] //  Estimated dynamic of tax rate around trend
U2_GO_HH_R_SCN = U2_T_GO_HH_R_SCN + (U2_GO_HH_R_SCN(-1)-U2_T_GO_HH_R_SCN(-1))*eq_U2_go_hh_r_scn_l0 + 
                          (U2_GO_HH_R_SCN(-2)-U2_T_GO_HH_R_SCN(-2))*eq_U2_go_hh_r_scn_l1 + 
                           (1/0.40)*U2_G_YER/100*eq_U2_go_hh_r_scn_U2_g_yer + 
                           res_U2_GO_HH_R_SCN;

[type = 'longrun', name = 'U2_GO_HH_SCN', blockname='fiscal']
U2_GO_HH_SCN  = U2_GO_HH_R_SCN * U2_WAN;   // Nominal net social contributions paid by HH

// Net social contributions imputed
[type = 'estimated', name='U2_GO_RW_R_SCN', sample='1999Q1:2019Q4', blockname='fiscal'] //  Estimated dynamic of tax rate around trend
U2_GO_RW_R_SCN = U2_T_GO_RW_R_SCN + (U2_GO_RW_R_SCN(-1)-U2_T_GO_RW_R_SCN(-1))*eq_U2_go_rw_r_scn_l0 + 
                          (U2_GO_RW_R_SCN(-2)-U2_T_GO_RW_R_SCN(-2))*eq_U2_go_rw_r_scn_l1 + 
                           (1/0.40)*U2_G_YER/100*eq_U2_go_rw_r_scn_U2_g_yer + 
                           res_U2_GO_RW_R_SCN;

[type = 'longrun', name = 'U2_GO_RW_SCN', blockname='fiscal']
U2_GO_RW_SCN  = U2_GO_RW_R_SCN * U2_WAN;   // Nominal net social contributions imputed 

[type = 'longrun', name = 'U2_GO_SCN', blockname='fiscal']
U2_GO_SCN = U2_GO_BU_SCN + U2_GO_HH_SCN + U2_GO_RW_SCN;                 // Nominal current taxes on income and wealth, sum of 3 components

[type = 'longrun', name='U2_GO_TRN', blockname='fiscal']
U2_GO_TRN = U2_GO_DTN + U2_GO_TIN + U2_GO_SCN + U2_GO_RRN;        // Total revenue, sum of all component

// ----------------------- End total income block ---------------------//

// ----------------------- Total expenditure block ---------------------//

// Social benefits in cash
// Calibrated equation
[type = 'longrun', name = 'U2_T_GO_SBCN', long_run_name = 'U2_GO_SBCN', blockname='fiscal']
log(U2_T_GO_SBCN) = log(U2_T_GO_SBCN(-1)) + 0.01*(log(U2_GO_Y_OSBCN/100)-log(U2_T_GO_SBCN(-1)/U2_T_YEN(-1)))  // added smoothing of gdp
                    + log(U2_T_YEN/U2_T_YEN(-1))
                    + res_U2_T_GO_SBCN;

[type = 'estimated', name='U2_GO_SBCN', sample='1999Q1:2019Q4', blockname='fiscal'] // Estimated equation
log(U2_GO_SBCN) = log(U2_GO_SBCN(-1)) + diff(log(U2_T_GO_SBCN)) + log(U2_GO_SBCN(-1)/U2_T_GO_SBCN(-1))*eq_U2_go_sbcn_ecm + // Imposed homogeneity
                                        (diff(log(U2_GO_SBCN(-1)))-diff(log(U2_T_GO_SBCN)))*eq_U2_go_sbcn_l0 +
                                        (diff(log(U2_GO_SBCN(-2)))-diff(log(U2_T_GO_SBCN)))*eq_U2_go_sbcn_l1 -
                                        (1/(U2_GO_Y_OSBCN/100))*U2_G_YER/100*eq_U2_go_sbcn_U2_g_yer*(-1) +
                                         res_U2_GO_SBCN;

// Purchases
// Calibrated equation
[type = 'longrun', long_run_name = 'U2_GO_PUR', name = 'U2_T_GO_PUR', blockname='fiscal']
log(U2_T_GO_PUR) = log(U2_T_GO_PUR(-1)) + 0.01 * (log(U2_GO_Y_OPUN/100)-(log(U2_T_GO_PUR(-1)*U2_HH_COD(-1))-log(U2_T_YEN(-1))))
                         +log(U2_T_YER/U2_T_YER(-1))  + res_U2_T_GO_PUR; // Adde smoothing

[type ='estimated', name='U2_GO_PUR', sample='1999Q1:2019Q4', blockname='fiscal'] // Estimated
log(U2_GO_PUR) = log(U2_GO_PUR(-1)) + diff(log(U2_T_GO_PUR)) + log(U2_GO_PUR(-1)/U2_T_GO_PUR(-1))*eq_U2_go_pur_ecm + // Added homogeneity
                                        (diff(log(U2_GO_PUR(-1)))-diff(log(U2_T_GO_PUR)))*eq_U2_go_pur_l0 +
                                        (diff(log(U2_GO_PUR(-2)))-diff(log(U2_T_GO_PUR)))*eq_U2_go_pur_l1 -
                                        (1/(U2_GO_Y_OPUN/100))*U2_G_YER/100*eq_U2_go_pur_U2_g_yer*(-1) +
                                        res_U2_GO_PUR;

[type = 'longrun', name='U2_GO_PUN', blockname='fiscal']
U2_GO_PUN = U2_GO_PUR * U2_HH_COD;    // Nominal purchases expenditure to nominal identity


// Subsidies
// Calibrated
[type = 'longrun', long_run_name = 'U2_GO_SIN', name = 'U2_T_GO_SIN', blockname='fiscal']
log(U2_T_GO_SIN) = log(U2_T_GO_SIN(-1)) + 0.01 * (log(U2_GO_Y_OSIN/100)-log(U2_T_GO_SIN(-1)/U2_T_YEN(-1)))
                                      + log(U2_T_YEN/U2_T_YEN(-1))  
                                      + res_U2_T_GO_SIN; // Added smoothing


[type = 'estimated', name='U2_GO_SIN', sample='1999Q1:2019Q4', blockname='fiscal'] // Estimated
log(U2_GO_SIN) = log(U2_GO_SIN(-1)) + diff(log(U2_T_GO_SIN)) + log(U2_GO_SIN(-1)/U2_T_GO_SIN(-1))*eq_U2_go_sin_ecm + // Imposed homogeneity
                    (diff(log(U2_GO_SIN(-1)))-diff(log(U2_T_GO_SIN)))*eq_U2_go_sin_l0 + 
                    (diff(log(U2_GO_SIN(-2)))-diff(log(U2_T_GO_SIN)))*eq_U2_go_sin_l1 +
                    (1/(U2_GO_Y_OSIN/100))*U2_G_YER/100*eq_U2_go_sin_U2_g_yer  +
                    res_U2_GO_SIN;


[type = 'longrun', name='U2_T_GO_CER', long_run_name = 'U2_GO_CER', blockname='fiscal']
//log(U2_T_GO_CER) = - 2.28000628628217 + log(U2_T_YER)+ res_U2_T_GO_CER;
log(U2_T_GO_CER)= log(U2_T_GO_CER(-1)) + 0.01*(log(U2_GO_Y_OCEN/100)-log(U2_GO_CEN(-1)/U2_T_YEN(-1)))
                             + log(U2_T_YER/U2_T_YER(-1)) + res_U2_T_GO_CER;

[type = 'estimated', name='U2_GO_CER', sample='1999Q1:2019Q4', blockname='fiscal'] // Estimated
log(U2_GO_CER) = log(U2_GO_CER(-1)) + diff(log(U2_T_GO_CER)) + log(U2_GO_CER(-1)/U2_T_GO_CER(-1))*eq_U2_go_cer_ecm + // Imposed homogeneity
                    (diff(log(U2_GO_CER(-1)))-diff(log(U2_T_GO_CER)))*eq_U2_go_cer_l0 + 
                    (diff(log(U2_GO_CER(-2)))-diff(log(U2_T_GO_CER)))*eq_U2_go_cer_l1 + 
                     (1/(U2_GO_Y_OCEN/100))*U2_G_YER/100*eq_U2_go_cer_U2_g_yer +
                     res_U2_GO_CER;

[type ='longrun',name = 'U2_GO_C_CEN', blockname='fiscal']                     
log(U2_GO_C_CEN)  = log(U2_GO_C_CEN(-1)) + diff(log(U2_C_CEN)) + (1-0.21) * U2_GO_A_C_CEN_EXO + res_U2_GO_C_CEN; // compensation per head, calibrated

[type ='longrun',name = 'U2_GO_CEN', blockname='fiscal']
U2_GO_CEN = U2_GO_C_CEN * U2_GO_LNN;             // Compensation of employees, Compensation per head times number of employees

[type ='longrun',name = 'U2_GO_CED', blockname='fiscal']
U2_GO_CED = U2_GO_CEN / U2_GO_CER;   // Government compensation of employee deflator

// Real gross capital formation
// Calibrated
[type = 'longrun', name='U2_T_GO_ITR', long_run_name = 'U2_GO_ITR', blockname='fiscal']
log(U2_T_GO_ITR)= log(U2_T_GO_ITR(-1)) + 0.01*(log(U2_GO_Y_OITN / 100)-(log(U2_T_GO_ITR(-1)*U2_GO_ITD(-1))-log(U2_T_YEN(-1)))) // Added smoothing
                                        +(log(U2_T_YER)-log(U2_T_YER(-1)))
                                        + res_U2_T_GO_ITR;

[type = 'estimated', name='U2_GO_ITR', sample='1999Q1:2019Q4', blockname='fiscal'] // Estimated
log(U2_GO_ITR) = log(U2_GO_ITR(-1)) + diff(log(U2_T_GO_ITR)) + log(U2_GO_ITR(-1)/U2_T_GO_ITR(-1))*eq_U2_go_itr_ecm +  // Imposed homogeneity
                    (diff(log(U2_GO_ITR(-1)))-diff(log(U2_T_GO_ITR)))* eq_U2_go_itr_l0 +        
                    (diff(log(U2_GO_ITR(-2)))-diff(log(U2_T_GO_ITR)))*eq_U2_go_itr_l1  -
                    (1/(U2_GO_Y_OITN/100))*U2_G_YER/100*eq_U2_go_itr_U2_g_yer*(-1) +
                    res_U2_GO_ITR;

[name='U2_GO_ITN', type = 'longrun', blockname='fiscal']
U2_GO_ITN = U2_GO_ITR * U2_GO_ITD;

[type ='longrun',name='U2_GO_B9N', blockname='fiscal']
U2_GO_B9N = U2_GO_TRN - U2_GO_TEN;                                              // Net lending, revenues minus expenditure

[type ='longrun',name='U2_GO_MAL', blockname='fiscal']
U2_GO_MAL = U2_GO_MAL(-1) - U2_GO_B9N + res_U2_GO_MAL;                     // Evolution of debt, where DDA is a residual

[type ='longrun',name='U2_GO_IPN', blockname='fiscal']
U2_GO_IPN = U2_GO_R_IPN * U2_GO_MAL(-1) / 400;                             // This interest rate is annualised

// Implicit interest rate, estimated equation (see in the investigation folder)
[type ='longrun',name='U2_GO_R_IPN', blockname='fiscal']
U2_GO_R_IPN  = (1 - 0.043979) * U2_GO_R_IPN(-1) + 0.043979 * U2_AMIR + res_U2_GO_R_IPN;

// Target equations, for variables which are not really forecastable.
[type ='longrun',name='U2_GO_REN', blockname='fiscal']
U2_GO_REN  = U2_GO_Y_OREN / 100 * U2_T_YEN + res_U2_GO_REN;  //////////////////////// Problem with residuals

[type ='longrun',name='U2_GO_TEN', blockname='fiscal']
U2_GO_TEN = U2_GO_IPN + U2_GO_SBCN + U2_GO_CEN + U2_GO_PUN + U2_GO_SIN + U2_GO_ITN + U2_GO_REN; // Total expenditure, sum of every component

// ------------------------- End of total expenditure block -----------------------//
[type ='longrun', name='U2_GO_COR', blockname='fiscal']
U2_GO_COR = U2_GO_CER + U2_GO_PUR + res_U2_GO_COR;            // Real final consumption expenditure, as the sum of all component

[type ='longrun',name='U2_GO_CON', blockname='fiscal']
U2_GO_CON = U2_GO_CEN + U2_GO_PUN + res_U2_GO_CON;              // Nominal final consumption expenditure, as the sum of all component

[type ='longrun',name='U2_TFPLG', blockname='fiscal']
log(U2_TFPLG) = log(U2_TFPLG(-1)) + 0.1*diff(log(U2_T_PRO)) + 0.9*diff(log(U2_TFPLG(-1))) + res_U2_TFPLG; // Completely modified

[type ='longrun',name='U2_GO_COD', blockname='fiscal']
U2_GO_COD = U2_GO_CON / U2_GO_COR;                    // Government consumption deflator, computed from final consumption expenditures

[type ='longrun',name='U2_GO_LNN', blockname='fiscal']
U2_GO_LNN = exp(log(U2_GO_CER)-log(U2_TFPLG));  

[type = 'estimated', name='U2_GO_ITD', sample='1999Q1:2019Q4', blockname='fiscal'] // Evolution of government investment deflator
log(U2_GO_ITD) = log(U2_GO_ITD(-1)) + diff(log(U2_YED)) + (log(U2_GO_ITD(-1))-(1-0.158127128)*log(U2_YED(-1))-0.158127128*log(U2_MTD(-1)))*eq_U2_go_itd_ecm + 
                                    (diff(log(U2_GO_ITD(-1)))-diff(log(U2_YED)))*eq_U2_go_itd_l0 +
                                    (diff(log(U2_GO_ITD(-2)))-diff(log(U2_YED)))*eq_U2_go_itd_l1 +
                                    (diff(log(U2_GO_ITD(-3)))-diff(log(U2_YED)))*eq_U2_go_itd_l2 +
                                    (diff(log(U2_GO_ITD(-4)))-diff(log(U2_YED)))*eq_U2_go_itd_l3 +
                                    res_U2_GO_ITD;
                                 

// NOMINAL TREND OUTPUT USED IN FISCAL BLOCK
[type = 'longrun', name='U2_T_YEN', blockname='fiscal']
U2_T_YEN = U2_T_YER*U2_YED;

//////////////////////////////////// END FISCAL BLOCK ////////////////////////////////////////////////


// ADDITIONAL EQUATIONS RELATED TO WAGES
// FROM FISCAL BLOCK
/*
[name='U2_CEN', blockname='fiscal']
U2_CEN = U2_BU_C_CEN*(U2_BU_LEN) + U2_GO_C_CEN*U2_GO_LNN;
U2_C_CEN = U2_CEN/(U2_BU_LEN + U2_GO_LNN); 

U2_C_CER = U2_C_CEN/U2_YED*100;
*/



