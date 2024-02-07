// PRESENT VALUES 5
[name='U2_G_VYER', blockname='consumption']
U2_G_VYER =  -0.01499151549334153*U2_A_YED 
             +0.8792107462362392*U2_G_YER 
             -0.6424098968774221*U2_STN_R 
             +0.3540015152510259*U2_ESTN 
             +0.02782358012275644*U2_EHIC 
             +4.684052472213974*0.000000000000001*U2_G_HH_Y_DIR 
             +1.454093294614866*0.000000000000001*U2_G_HH_S_DIRL 
             -1.201978901415974*0.000000000000001*U2_G_HH_S_DIRT 
             -4.140650972629037*0.0000000000000001*U2_G_HH_S_DIRP 
             -0.01283206462941462*U2_A_YED(-1) 
             -0.3868039428955939*U2_G_YER(-1) 
             +0.2884087837057611*U2_STN_R(-1) 
             -1.305420947118413*0.00000000000000001*U2_ESTN(-1) 
             +4.768480272251573*0.00000000000000001*U2_EHIC(-1) 
             +7.779819116590095*0.0000000000000001*U2_G_HH_Y_DIR(-1) 
             -2.810465000544472*0.0000000000000001*U2_G_HH_S_DIRL(-1) 
             -2.680264350476653*0.0000000000000001*U2_G_HH_S_DIRT(-1) 
             -3.18010280413893*0.0000000000000001*U2_G_HH_S_DIRP(-1);
             

[name='U2_G_HH_Y_VDIR', blockname='consumption']
U2_G_HH_Y_VDIR =  -0.009230270892620181*U2_A_YED 
                  +0.07590395468771453*U2_G_YER 
                  +0.3127463879573804*U2_STN_R 
                  -0.05212692484178189*U2_ESTN 
                  -0.007730329121314082*U2_EHIC 
                  +0.3938706797011818*U2_G_HH_Y_DIR   
                  +0.01696060001393534*U2_A_YED(-1) 
                  +0.1080090555222206*U2_G_YER(-1) 
                  -0.2606192155554706*U2_STN_R(-1)  
                  -0.007312227665584424*U2_G_HH_Y_DIR(-1) ;

[name='U2_G_HH_S_VDIRL', blockname='consumption']
U2_G_HH_S_VDIRL =  +0.002435073433928451*U2_A_YED 
                   -0.04091434440827085*U2_G_YER 
                   +0.02660163104193673*U2_STN_R 
                   -0.06880703236896747*U2_ESTN 
                   -0.009167110607472757*U2_EHIC  
                   +0.2596601501284099*U2_G_HH_S_DIRL 
                   +0.006732037173543491*U2_A_YED(-1) 
                   -0.05419915821236272*U2_G_YER(-1) 
                   +0.04220533601723846*U2_STN_R(-1)  
                   +0.0185100015806456*U2_G_HH_S_DIRL(-1) ;


[name='U2_G_HH_S_VDIRT', blockname='consumption']
U2_G_HH_S_VDIRT =  -0.01963795615722082*U2_A_YED 
                   +0.1283058449302018*U2_G_YER 
                   -0.1074077596165891*U2_STN_R 
                   +0.0422361780176759*U2_ESTN 
                   +0.04802049727678272*U2_EHIC 
                   +0.2803454242562743*U2_G_HH_S_DIRT 
                   -0.02838254111956427*U2_A_YED(-1) 
                   +0.1712633046083032*U2_G_YER(-1) 
                   +0.06517210829796261*U2_STN_R(-1) 
                   +0.008793970550527514*U2_G_HH_S_DIRT(-1);

[type = 'longrun', name='U2_HH_OCOR', long_run_name = 'U2_HH_COR', blockname='consumption']
U2_HH_OCOR = exp(0.504235050500646 -0.0004474779544407735*TTREND -  0.0004474779544407735*(-40)
                                    + (0.5445364252354276)*log(U2_HH_EDIRL) 
                                    + 0.2706525506486854*log(U2_HH_EDIRT) 
                                    + 0.107219242952739*log(U2_HH_EDIRP) 
                                    + 0.07759178116315124*log(U2_HH_TWR));

[type = 'longrun', name='U2_HH_EDIR', blockname='consumption'] // Expected value
U2_HH_EDIR=U2_H_HH_Y_DIR*U2_T_YER*exp(U2_G_HH_Y_VDIR/100 + U2_G_VYER/100);

[type = 'longrun', name='U2_HH_EDIRL', blockname='consumption']
U2_HH_EDIRL = exp(log(U2_H_HH_S_DIRL) + log(U2_H_HH_Y_DIR) + log(U2_T_YER) + (U2_G_HH_S_VDIRL/100 + U2_G_HH_Y_VDIR/100 + U2_G_VYER/100));

[type = 'longrun', name='U2_HH_EDIRT', blockname='consumption']
U2_HH_EDIRT = exp(log(U2_H_HH_S_DIRT) + log(U2_H_HH_Y_DIR) + log(U2_T_YER) + (U2_G_HH_S_VDIRT/100 + U2_G_HH_Y_VDIR/100 + U2_G_VYER/100));

[name = 'U2_HH_COR', blockname='consumption']
U2_HH_COR   =  exp(log(U2_HH_COR(-1)) 
                        +  0.3939685705743931*U2_H_Q_YER(-1)/100
                        + (1-0.3610294645957802)                                                // the share of Ricardian households
                            * (0.3427936977353141*(log(U2_HH_OCOR(-1)) - log(U2_HH_COR(-1)))    // deviation of consumption from the target 
                            + 0.0114310093703755*diff(log(U2_HH_COR(-1)))                       // past consumption growth
                            + U2_HH_EOCOR)                                                      // expected future consumption growth
                        - 0.002*(diff(U2_HH_L_CON))
                        + 0.3610294645957802                                                    // share of hand-to-mouth households
                            * U2_dlyhlt)                                                        // growth of labour income and transfer income
                        + res_U2_HH_COR;

[name = 'U2_HH_EOCOR', blockname='consumption']
U2_HH_EOCOR =  +0.0005440680306598591*U2_A_YED(-1) 
               +0.000311508622575806*U2_A_YED(-2) 
               -0.002335861342913632*U2_G_YER(-1) 
               +0.00192987227399754*U2_G_YER(-2) 
               +0.00005722468555023724*U2_STN_R(-1) 
               -0.00009721990779910743*U2_STN_R(-2) 
               +0.00003999339651460884*U2_ESTN(-1) 
               -0.0008555766532347441*U2_EHIC(-1)  
               +0.1406424140391767*(log(U2_HH_OCOR(-1)) - log(U2_HH_OCOR(-2))) 
               +0.1153394115243199*(log(U2_HH_OCOR(-2)) - log(U2_HH_OCOR(-3))) 
               +0.6810368913781952*U2_H_Q_YER(-1)/100; 

[type = 'longrun', name = 'U2_dlyhlt', blockname='consumption']
U2_dlyhlt = ((log(U2_HH_DIRL + U2_HH_DIRT))-(log(U2_HH_DIRL(-1) + U2_HH_DIRT(-1)))) - 0.004950656824045*(1-dummy_long_run) - 0.00249494791772845*dummy_long_run; 

[type = 'longrun', name= 'U2_T_Q_YER', blockname='consumption'] // THAT WOULD BE GAMMA
U2_T_Q_YER = 100*(log(U2_T_YER) - log(U2_T_YER(-1)));

[type = 'longrun', name = 'U2_H_Q_YER', blockname='consumption']
U2_H_Q_YER = 0.05*(U2_T_Q_YER(-1) - U2_H_Q_YER(-1)) + U2_H_Q_YER(-1) + res_U2_H_Q_YER;

[type = 'longrun', name = 'U2_H_HH_Y_DIR', blockname='consumption']
U2_H_HH_Y_DIR = U2_H_HH_Y_DIR(-1) + 0.05*(U2_HH_DIR/U2_YER - U2_H_HH_Y_DIR(-1)) + res_U2_H_HH_Y_DIR; // INCOME SHOULD BE REAL AND AFTER TAX!!

[type = 'longrun', name='U2_H_HH_S_DIRL', blockname='consumption']
U2_H_HH_S_DIRL = U2_H_HH_S_DIRL(-1) + 0.05*(U2_HH_DIRL/U2_HH_DIR - U2_H_HH_S_DIRL(-1)) + res_U2_H_HH_S_DIRL;

[type = 'longrun', name = 'U2_H_HH_S_DIRT', blockname='consumption']
U2_H_HH_S_DIRT = U2_H_HH_S_DIRT(-1) + 0.05*(U2_HH_DIRT/U2_HH_DIR - U2_H_HH_S_DIRT(-1)) + res_U2_H_HH_S_DIRT;

[name='U2_W0_CEN', blockname='consumption'] // TO PIN DOWN
U2_W0_CEN = exp(log(U2_W0_CEN(-1))  + diff(log(U2_CEN))) + res_U2_W0_CEN ;

[name='U2_MIN', blockname='consumption']
U2_MIN = exp(log(U2_MIN(-1))  + diff(log(U2_W0_CEN))) + res_U2_MIN; // MIXED INCOME ASSUMED TO GROW AT THE RATE OF COMPENSATION TOTAL

[name='U2_HH_DTN', blockname='consumption']
U2_HH_DTN = exp(log(U2_HH_DTN(-1)) + diff(log(U2_GO_HH_DTN)));

[name='U2_HH_B_SBN', blockname='consumption']
U2_HH_B_SBN = exp(log(U2_HH_B_SBN(-1)) + diff(log(U2_GO_SBCN))) + res_U2_HH_B_SBN;

[type = 'longrun', name='U2_HH_DINL', blockname='consumption']
U2_HH_DINL = U2_W0_CEN + U2_MIN - U2_S_SCNL*U2_HH_B_SCN - U2_S_DTNL*U2_HH_DTN; // INTRODUCE COEFFS SINCE THEY ARE MISSING!!
// Social contributions paid by households contain also these paid by employers
// see good explanation in docu\WPfiscal\investigations\household_sector_report_by-ECB.pdf
// for this reason they need to grow with social contributions collected by the gov. from everybody
[name = 'U2_HH_B_SCN', blockname='consumption']
U2_HH_B_SCN = exp(log(U2_HH_B_SCN(-1)) + diff(log(U2_GO_SCN))) + res_U2_HH_B_SCN;

[type = 'longrun', name='U2_HH_DINT', blockname='consumption']
U2_HH_DINT = U2_HH_B_SBN - U2_S_SCNT*U2_HH_B_SCN - U2_S_DTNT*U2_HH_DTN; 

[type = 'longrun', name='U2_HH_DIN', blockname='consumption']
U2_HH_DIN = U2_HH_DINP +U2_HH_DINL +U2_HH_DINT;

[type = 'longrun', name='U2_HH_DIRL', blockname='consumption']
U2_HH_DIRL = exp(log(U2_HH_DINL) - log(U2_HH_COD));

[type = 'longrun', name='U2_HH_DIRT', blockname='consumption']
U2_HH_DIRT = exp(log(U2_HH_DINT) - log(U2_HH_COD));

[type = 'longrun', name='U2_HH_DIR', blockname='consumption']
U2_HH_DIR = exp(log(U2_HH_DIN) - log(U2_HH_COD));

[name='U2_G_HH_Y_DIR', blockname='consumption']
U2_G_HH_Y_DIR = 100*((U2_HH_DIR/U2_YER) / U2_H_HH_Y_DIR - 1);

[name='U2_G_HH_S_DIRL', blockname='consumption']
U2_G_HH_S_DIRL = 100*((U2_HH_DIRL/U2_HH_DIR) / U2_H_HH_S_DIRL - 1);

[name='U2_G_HH_S_DIRT', blockname='consumption']
U2_G_HH_S_DIRT = 100*((U2_HH_DIRT/U2_HH_DIR) / U2_H_HH_S_DIRT - 1);

[name='U2_S_DTNL', blockname='consumption']
U2_S_DTNL = U2_S_DTNL(-1) + res_U2_S_DTNL;

[name='U2_S_SCNL', blockname='consumption']
U2_S_SCNL = U2_S_SCNL(-1) + res_U2_S_SCNL;

[name='U2_S_SCNT', blockname='consumption']
U2_S_SCNT = U2_S_SCNT(-1) + res_U2_S_SCNT;

[name = 'U2_S_DTNT', blockname='consumption']
U2_S_DTNT = U2_S_DTNT(-1) + res_U2_S_DTNT;

[type = 'longrun', name='U2_HH_DIRLT', blockname='consumption']
U2_HH_DIRLT = exp(log(U2_HH_DIRL + U2_HH_DIRT));