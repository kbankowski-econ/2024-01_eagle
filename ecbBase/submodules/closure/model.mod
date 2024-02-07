[type = 'longrun', name = 'U2_HH_CON', blockname='closure']
U2_HH_CON = U2_HH_COR*U2_HH_COD;

[type = 'longrun', name = 'U2_BU_ITN', blockname='closure']
U2_BU_ITN = U2_BU_ITR*U2_BU_ITD;

[type = 'longrun', name='U2_YEN', blockname='closure']
U2_YEN = U2_YED * U2_YER;

[type = 'longrun', name='U2_YER', blockname='closure']
diff(log(U2_YER)) =  (0.52902+0.00212999999999974)*log(U2_HH_COR/U2_HH_COR(-1))
                              + 0.22614*log(U2_GO_COR/U2_GO_COR(-1))  
                              + 0.11299*log(U2_BU_ITR/U2_BU_ITR(-1))
                              + 0.05411*log(U2_HH_IHR/U2_HH_IHR(-1))
                              + 0.02846*log(U2_GO_ITR/U2_GO_ITR(-1))
                              + 0.41393 *log(U2_XTR/U2_XTR(-1))
                              -0.36522*log(U2_MTR/U2_MTR(-1))
                              + 0.40051*log(U2_SIVR/U2_SIVR(-1)) 
                              -0.40207*log(U2_SIVR(-1)/U2_SIVR(-2)) 
                              + res_U2_YER;


[name='U2_IVN', blockname='closure']
U2_IVN = U2_YEN - U2_HH_CON - U2_GO_CON - U2_ITN - U2_XTN + U2_MTN;

[type = 'longrun', name='U2_S_GO_COR', blockname='closure']
U2_S_GO_COR = 100*U2_GO_COR/U2_YER;

[type = 'longrun', name='U2_GOSMIN', blockname='closure']
U2_GOSMIN = U2_YEN -  U2_CEN - U2_TIN;

[name = 'U2_TIN', blockname='closure']
log(U2_TIN) = log(U2_TIN(-1)) + diff(log(U2_GO_TIN)) + res_U2_TIN;

[name='U2_G_YER', blockname='closure']
U2_G_YER = 100*(log(U2_YER) - log(U2_T_YER));

[name='U2_T_YEN2', blockname='closure']
U2_T_YEN2 = U2_YED_N * U2_T_YER;

[name='U2_G_YEN', blockname='closure']
U2_G_YEN = 100*(U2_YEN/U2_T_YEN2 - 1);

[name='U2_G_YED', blockname='closure']
U2_G_YED = 100*(U2_YED/U2_YED_N - 1);

[type = 'longrun', name = 'U2_ITN', blockname='closure']
U2_ITN = U2_BU_ITN + U2_HH_IHN + U2_GO_ITN;

[type = 'longrun', name='U2_ITR', blockname='closure']
U2_ITR = U2_BU_ITR + U2_HH_IHR + U2_GO_ITR;

[type = 'longrun', name = 'U2_ITD', blockname='closure']
U2_ITD = U2_ITN / U2_ITR;

[type = 'longrun', name='U2_CEN', blockname='closure']
U2_CEN = U2_C_CEN * U2_LEN;


// Ratios
[name = 'U2_RAT_GO_TRN', blockname='closure']
U2_RAT_GO_TRN  = U2_GO_TRN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_TRN', blockname='closure']
U2_RAT_T_GO_TRN  = U2_GO_TRN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_DTN', blockname='closure']
U2_RAT_GO_DTN  = U2_GO_DTN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_DTN', blockname='closure']
U2_RAT_T_GO_DTN  = U2_GO_DTN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_TIN', blockname='closure']
U2_RAT_GO_TIN  = U2_GO_TIN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_TIN', blockname='closure']
U2_RAT_T_GO_TIN  = U2_GO_TIN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_SCN', blockname='closure']
U2_RAT_GO_SCN  = U2_GO_SCN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_SCN', blockname='closure']
U2_RAT_T_GO_SCN  = U2_GO_SCN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_RRN', blockname='closure']
U2_RAT_GO_RRN  = U2_GO_RRN / U2_YEN * 100; 

// Ratio of RRN, which is comparable to tax rates for reporting purposes
[name = 'U2_GO_R_RRN', blockname='closure']
U2_GO_R_RRN  = U2_GO_RRN / U2_T_YEN; 

[name = 'U2_RAT_T_GO_RRN', blockname='closure']
U2_RAT_T_GO_RRN  = U2_GO_RRN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_TEN', blockname='closure']
U2_RAT_GO_TEN  = U2_GO_TEN / U2_YEN * 100;

[name = 'U2_RAT_T_GO_TEN', blockname='closure']
U2_RAT_T_GO_TEN  = U2_GO_TEN / U2_T_YEN * 100;

[name = 'U2_RAT_GO_IPN', blockname='closure']
U2_RAT_GO_IPN  = U2_GO_IPN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_IPN', blockname='closure']
U2_RAT_T_GO_IPN  = U2_GO_IPN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_SBCN', blockname='closure']
U2_RAT_GO_SBCN  = U2_GO_SBCN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_SBCN', blockname='closure']
U2_RAT_T_GO_SBCN  = U2_GO_SBCN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_CEN', blockname='closure']
U2_RAT_GO_CEN  = U2_GO_CEN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_CEN', blockname='closure']
U2_RAT_T_GO_CEN  = U2_GO_CEN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_PUN', blockname='closure']
U2_RAT_GO_PUN  = U2_GO_PUN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_PUN', blockname='closure']
U2_RAT_T_GO_PUN  = U2_GO_PUN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_PUR', blockname='closure']
U2_RAT_GO_PUR  = U2_GO_PUR / U2_YER * 100; 

[name = 'U2_RAT_T_GO_PUR', blockname='closure']
U2_RAT_T_GO_PUR  = U2_GO_PUR / U2_T_YER * 100; 

[name = 'U2_RAT_GO_SIN', blockname='closure']
U2_RAT_GO_SIN  = U2_GO_SIN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_SIN', blockname='closure']
U2_RAT_T_GO_SIN  = U2_GO_SIN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_ITN', blockname='closure']
U2_RAT_GO_ITN  = U2_GO_ITN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_ITN', blockname='closure']
U2_RAT_T_GO_ITN  = U2_GO_ITN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_ITR', blockname='closure']
U2_RAT_GO_ITR  = U2_GO_ITR / U2_YER * 100; 

[name = 'U2_RAT_T_GO_ITR', blockname='closure']
U2_RAT_T_GO_ITR  = U2_GO_ITR / U2_T_YER * 100; 

[name = 'U2_RAT_GO_REN', blockname='closure']
U2_RAT_GO_REN  = U2_GO_REN / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_REN', blockname='closure']
U2_RAT_T_GO_REN  = U2_GO_REN / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_PTE', blockname='closure']
U2_RAT_GO_PTE  = (U2_GO_TEN - U2_GO_IPN) / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_PTE', blockname='closure']
U2_RAT_T_GO_PTE  = (U2_GO_TEN - U2_GO_IPN) / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_DEF', blockname='closure']
U2_RAT_GO_DEF  = - U2_GO_B9N / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_DEF', blockname='closure']
U2_RAT_T_GO_DEF  = - U2_GO_B9N / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_PDF', blockname='closure']
U2_RAT_GO_PDF  =  (U2_GO_B9N + U2_GO_IPN)  / U2_YEN * 100; 

[name = 'U2_RAT_T_GO_PDF', blockname='closure']
U2_RAT_T_GO_PDF  =  (U2_GO_B9N + U2_GO_IPN)  / U2_T_YEN * 100; 

[name = 'U2_RAT_GO_MAL', blockname='closure']
U2_RAT_GO_MAL  =  U2_GO_MAL / (4 * U2_YEN) * 100; 

[name = 'U2_RAT_T_GO_MAL', blockname='closure']
U2_RAT_T_GO_MAL  =  U2_GO_MAL / (4 * U2_T_YEN) * 100; 

[name = 'U2_RAT_GO_B9N', blockname='closure']
U2_RAT_GO_B9N  =  U2_GO_B9N /  U2_YEN * 100; 

[name = 'U2_RAT_T_GO_B9N', blockname='closure']
U2_RAT_T_GO_B9N  =  U2_GO_B9N /  U2_T_YEN * 100; 

// Private investment
[name = 'U2_BUHH_ITR', blockname='closure']
U2_BUHH_ITR  =  U2_BU_ITR + U2_HH_IHR; 

// Primary Spendings
[name = 'U2_GO_PTE', blockname='closure']
U2_GO_PTE  = U2_GO_TEN - U2_GO_IPN; 

// Primary balance
[name = 'U2_GO_PDF', blockname='closure']
U2_GO_PDF  =  U2_GO_B9N + U2_GO_IPN; 

// Consumption tax base
[name = 'U2_HHGO_CONPUN', blockname='closure']
U2_HHGO_CONPUN  =  U2_HH_CON + U2_GO_PUN; 

// Fiscal Gaps

[name = 'U2_G_GO_SBCN', blockname='closure']
U2_G_GO_SBCN = (U2_GO_SBCN - U2_T_GO_SBCN) / U2_T_YEN * 100;

[name = 'U2_G_GO_CER', blockname='closure']
U2_G_GO_CER = (U2_GO_CER - U2_T_GO_CER) / U2_T_YER * 100;

[name = 'U2_G_GO_PUR', blockname='closure']
U2_G_GO_PUR = (U2_GO_PUR - U2_T_GO_PUR) / U2_T_YER * 100;

[name = 'U2_G_GO_SIN', blockname='closure']
U2_G_GO_SIN = (U2_GO_SIN - U2_T_GO_SIN) / U2_T_YEN * 100;

[name = 'U2_G_GO_ITR', blockname='closure']
U2_G_GO_ITR = (U2_GO_ITR - U2_T_GO_ITR) / U2_T_YER * 100;

[name = 'U2_G_GO_BU_R_DTN', blockname='closure']
U2_G_GO_BU_R_DTN  = (U2_GO_BU_R_DTN - U2_T_GO_BU_R_DTN) * U2_GOSMIN / U2_T_YEN * 100;

[name = 'U2_G_GO_HH_R_DTN', blockname='closure']
U2_G_GO_HH_R_DTN  = (U2_GO_HH_R_DTN - U2_T_GO_HH_R_DTN) * U2_CEN / U2_T_YEN * 100;

[name = 'U2_G_GO_R_TIN', blockname='closure']
U2_G_GO_R_TIN  = (U2_GO_R_TIN - U2_T_GO_R_TIN) * (U2_HH_CON + U2_GO_PUN) / U2_T_YEN * 100;

[name = 'U2_G_GO_BU_R_SCN', blockname='closure']
U2_G_GO_BU_R_SCN  = (U2_GO_BU_R_SCN - U2_T_GO_BU_R_SCN) * U2_CEN / U2_T_YEN * 100;

[name = 'U2_G_GO_HH_R_SCN', blockname='closure']
U2_G_GO_HH_R_SCN  = (U2_GO_HH_R_SCN - U2_T_GO_HH_R_SCN) * U2_CEN / U2_T_YEN * 100;

[name='U2_G_A4_YED', blockname='closure']
U2_G_A4_YED = U2_A4_YED - U2_A_YED_TAR;

[name='U2_GO_ITRCOR', blockname='closure']
U2_GO_ITRCOR = U2_GO_ITR + U2_GO_COR;

// Variables present in MC which were missing in BASE
[name = 'U2_Q4_YED', blockname='closure']
U2_Q4_YED = 4*100*(U2_YED/U2_YED(-1)-1);

[name = 'U2_Q4_HH_COD', blockname='closure']
U2_Q4_HH_COD = 4*100*(U2_HH_COD/U2_HH_COD(-1)-1); 
                          
[name = 'U2_Q4_MTD', blockname='closure']
U2_Q4_MTD = 4*100*(U2_MTD/U2_MTD(-1)-1); 

[name = 'U2_A4_YER', blockname='closure']
U2_A4_YER = 100*(U2_YER/U2_YER(-4)-1); 

// equations moved from the fiscal block
[type = 'longrun', name='U2_T_YEN', blockname='closure']
U2_T_YEN = U2_T_YER*U2_YED;

[name='U2_GO_ITN', type = 'longrun', blockname='fiscal']
U2_GO_ITN = U2_GO_ITR * U2_GO_ITD;

[type ='longrun',name='U2_GO_B9N', blockname='fiscal']
U2_GO_B9N = U2_GO_TRN - U2_GO_TEN;                                              // Net lending, revenues minus expenditure

[type ='longrun',name='U2_GO_MAL', blockname='fiscal']
U2_GO_MAL = U2_GO_MAL(-1) - U2_GO_B9N + res_U2_GO_MAL;                     // Evolution of debt, where DDA is a residual

[type ='longrun',name='U2_GO_IPN', blockname='fiscal']
U2_GO_IPN = U2_GO_R_IPN * U2_GO_MAL(-1) / 400;                             // This interest rate is annualised

[type ='longrun',name='U2_GO_TEN', blockname='fiscal']
U2_GO_TEN = U2_GO_IPN + U2_GO_SBCN + U2_GO_CEN + U2_GO_PUN + U2_GO_SIN + U2_GO_ITN + U2_GO_REN; // Total expenditure, sum of every component

// ------------------------- End of total expenditure block -----------------------//
[type ='longrun', name='U2_GO_COR', blockname='fiscal']
U2_GO_COR = U2_GO_CER + U2_GO_PUR + res_U2_GO_COR;            // Real final consumption expenditure, as the sum of all component

[type ='longrun',name='U2_GO_CON', blockname='fiscal']
U2_GO_CON = U2_GO_CEN + U2_GO_PUN + res_U2_GO_CON;              // Nominal final consumption expenditure, as the sum of all component

[type ='longrun',name='U2_GO_COD', blockname='fiscal']
U2_GO_COD = U2_GO_CON / U2_GO_COR;                    // Government consumption deflator, computed from final consumption expenditures

[type ='longrun',name='U2_GO_LNN', blockname='fiscal']
U2_GO_LNN = exp(log(U2_GO_CER)-log(U2_TFPLG));  

[type ='longrun',name = 'U2_GO_CED', blockname='fiscal']
U2_GO_CED = U2_GO_CEN / U2_GO_CER;   // Government compensation of employee deflator

[type ='longrun',name = 'U2_GO_CEN', blockname='fiscal']
U2_GO_CEN = U2_GO_C_CEN * U2_GO_LNN;             // Compensation of employees, Compensation per head times number of employees

[type = 'longrun', name='U2_GO_PUN', blockname='fiscal']
U2_GO_PUN = U2_GO_PUR * U2_HH_COD;    // Nominal purchases expenditure to nominal identity

[type = 'longrun', name = 'U2_GO_RW_SCN', blockname='fiscal']
U2_GO_RW_SCN  = U2_GO_RW_R_SCN * U2_WAN;   // Nominal net social contributions imputed 

[type = 'longrun', name = 'U2_GO_SCN', blockname='fiscal']
U2_GO_SCN = U2_GO_BU_SCN + U2_GO_HH_SCN + U2_GO_RW_SCN;                 // Nominal current taxes on income and wealth, sum of 3 components

[type = 'longrun', name='U2_GO_TRN', blockname='fiscal']
U2_GO_TRN = U2_GO_DTN + U2_GO_TIN + U2_GO_SCN + U2_GO_RRN;        // Total revenue, sum of all component

[type = 'longrun', name = 'U2_GO_HH_SCN', blockname='fiscal']
U2_GO_HH_SCN  = U2_GO_HH_R_SCN * U2_WAN;   // Nominal net social contributions paid by HH

[type = 'longrun', name = 'U2_GO_BU_SCN', blockname='fiscal']
U2_GO_BU_SCN  = U2_GO_BU_R_SCN * U2_WAN;   // Nominal net social contributions paid by firms

[type = 'longrun', name='U2_GO_HH_DTN', blockname='fiscal']
U2_GO_HH_DTN = U2_WAN*U2_GO_HH_R_DTN; // Nominal taxes payable by households

[type = 'longrun', name = 'U2_GO_DTN', blockname='fiscal']
U2_GO_DTN = U2_GO_BU_DTN + U2_GO_HH_DTN + res_U2_GO_DTN;                 // Nominal current taxes on income and wealth, sum of 3 components

[type = 'longrun', name = 'U2_GO_BU_DTN', blockname='fiscal'] 
U2_GO_BU_DTN  = U2_GO_BU_R_DTN * U2_GOSMIN;    // Nominal taxes payable by corporations

[type = 'longrun', name='U2_GO_TIN', blockname='fiscal']
U2_GO_TIN  = U2_GO_R_TIN * (U2_HH_CON + U2_GO_PUN); // Nominal taxes on production

[type = 'longrun', name='U2_GO_R_TIN_NET', blockname='fiscal']
U2_GO_R_TIN_NET  = (U2_GO_TIN - U2_GO_SIN) / (U2_HH_CON + U2_GO_PUN);
