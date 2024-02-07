/*
Beware of exo_path_list characteristics for all newly created variables
*/

// Tags to be checked

[name='U2_C_CER_TAR', blockname='wage']
U2_C_CER_TAR = exp(log(1/1.19)+log(1-alpha)+log(U2_T_YER)-log(U2_T_LNN)
                  + log(U2_YED) - log(U2_HH_COD));

[name='U2_C_GO_BU_SCN', blockname='wage']
U2_C_GO_BU_SCN = U2_GO_BU_R_SCN * U2_C_WAN;

[name='U2_C_CER', blockname='wage']
U2_C_CER = U2_C_WAR + U2_C_GO_BU_SCN / U2_HH_COD;

[name='U2_WAN', blockname='wage']
U2_WAN = U2_C_WAN * U2_LEN;

[name='U2_C_CEN', blockname='wage']
U2_C_CEN = U2_C_CER * U2_HH_COD;

[name='U2_G_C_CER', blockname='wage']
U2_G_C_CER = 100*(log(U2_C_CER) - log(U2_C_CER_TAR));

[name='U2_A_C_CEN', blockname='wage']
U2_A_C_CEN = 100*((U2_C_CER/U2_C_CER(-1))^4 -1) + 100*((U2_HH_COD/U2_HH_COD(-1))^4 -1);

[name='U2_C_WAR', blockname='wage']
U2_C_WAR = U2_C_WAR(-1)*(((U2_A_C_WAN - 100*((U2_HH_COD/U2_HH_COD(-1))^4 -1))/100)+1)^0.25;

[name='U2_A_C_WAN', blockname='wage']
U2_A_C_WAN = 0.297042 * U2_A_C_WAN(-1)  
         + 0.61573 * U2_E_A_C_CEN_1
         + 0.087229 * (100*(exp(4*(U2_H_Q_YER/100 - diff(log(U2_TAU))))-1) + U2_EHIC)   
         - 0.069895 * U2_G_R_LUN(-1)  
         - 0.102983315144602 * U2_G_C_CER
         + 0.21 * (U2_GO_A_C_CEN_EXO - 0.297042 * U2_GO_A_C_CEN_EXO(-1)) * 400
         + res_U2_A_C_WAN;

[type = 'longrun', name='U2_C_WAN', blockname='wage']
U2_C_WAN = U2_C_WAR * U2_HH_COD;

[name='U2_A_C_CER', blockname='wage']
U2_A_C_CER = 100*((U2_C_CER/U2_C_CER(-1))^4 -1);

[name='U2_A_C_CER_TAR', blockname='wage']     
U2_A_C_CER_TAR = 100*((U2_C_CER_TAR/U2_C_CER_TAR(-1))^4 -1);

// VAR EQUATION FOR THE GDP DEFLATOR EXPECTATIONS
[name='U2_E_A_C_CEN_1', blockname='wage'] 
U2_E_A_C_CEN_1 =    -0.2695576610025321*U2_A_YED 
                    -0.1164541189580619*U2_G_YER 
                    -0.2437585272490679*U2_STN_R 
                    +0.6138649521249531*U2_ESTN 
                    -0.07129772839207263*U2_EHIC 
                    +0.097375530112005*U2_A_C_CEN
                    +0.8280668993449847*((100*(exp(4*(U2_H_Q_YER/100 - diff(log(U2_TAU))))-1)) + U2_EHIC)
                    +0.3408553893946055*U2_A_YED(-1) 
                    +0.3497828349942163*U2_G_YER(-1) 
                    -0.3701064248758856*U2_STN_R(-1) 
                    +0.07455757054301027*U2_A_C_CEN(-1);                 