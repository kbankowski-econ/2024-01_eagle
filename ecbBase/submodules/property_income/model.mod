[type = 'longrun', name='U2_HH_DINP', blockname='property_income']
U2_HH_DINP = U2_HH_GOS + U2_HH_B_IRN  + U2_HH_C_DDN  + U2_HH_B_OPPN - (1-U2_S_SCNL -U2_S_SCNT)*U2_HH_B_SCN - (1-U2_S_DTNL -U2_S_DTNT)*U2_HH_DTN;

[type = 'longrun', name='U2_HH_GOS', blockname='property_income']
U2_HH_GOS = (0.00662500592216903*U2_SKHR*U2_HH_IHD) + 0.0154013499128474 * (U2_S_RPPD - 1) * U2_YEN + 0.0000290161118605059*0.00001 * (TTREND - 36) * U2_YEN + res_U2_HH_GOS; 
//constant next to trend to be deleted once re-estimated

[type = 'longrun', name='U2_HH_GOSMIN', blockname='property_income']
U2_HH_GOSMIN = U2_HH_GOS + U2_MIN; 

[name='U2_HH_B_IRN', blockname='property_income']
U2_HH_B_IRN = (+ 0.00114956281785698 * U2_YEN
            + 0.94969509339701    * (U2_HH_B_IRN(-1)* U2_YEN/ U2_YEN(-1)) 
            + 0.0657064103825197  * 0.01 * U2_S_RW_NFAN(-1) * U2_YEN
            + 0.000125120827820586* U2_STN  * U2_YEN
            - 0.000365842999657253* (U2_HH_L_IHN - U2_HH_L_DEP) * U2_YEN)+res_U2_HH_B_IRN; // Net interest rate income  (once DR (deposit rate) in FB, open also this channel!!!!) 

[type = 'longrun', name='U2_HH_C_ODDR', long_run_name = 'U2_HH_C_DDR', blockname='property_income']
U2_HH_C_ODDR = exp(-1.36387782692927 + log(U2_HH_GOSMIN / U2_HH_COD)+ 0.00395241629225460 * TTREND + 0.00395241629225460 * (-36));

[name='U2_HH_C_DDN', blockname='property_income']
U2_HH_C_DDN = U2_HH_C_DDR * U2_HH_COD;

[name='U2_HH_C_DDR', blockname='property_income']
diff(log(U2_HH_C_DDR)) = -0.0239538776284123*U2_H_Q_YER(-1)/100
                     + 0.240294215370070*(log(U2_HH_C_ODDR(-1)) - log(U2_HH_C_DDR(-1))) 
                     - 0.0855186960074087*diff(log(U2_HH_C_DDR(-1)))
                     + 0.138336715054055*diff(log(U2_HH_C_DDR(-2))) 
                     + 0.329267363507400*diff(log(U2_HH_C_DDR(-3)))
                     + U2_HH_C_EODDR 
                     + res_U2_HH_C_DDR;

[name='U2_HH_C_EODDR', blockname='property_income']
U2_HH_C_EODDR =  -0.000615617051882433*U2_A_YED(-1) 
               -0.000249487403214088*U2_A_YED(-2) 
               +0.00285006044721382*U2_G_YER(-1) 
               -0.00346192425592066*U2_G_YER(-2) 
               -0.00240408455647777*U2_STN_R(-1)
               +0.00287431340807250*U2_STN_R(-2) 
               - 0.000470228851594828 *U2_ESTN(-1)
               +0.000865104455097059*U2_EHIC(-1)
               +0.0862739534743975*diff(log(U2_HH_C_ODDR(-1)))
               +0.0657845926807516*diff(log(U2_HH_C_ODDR(-2))) 
               +0.489809948919216*U2_H_Q_YER(-1)/100;

[name='U2_HH_B_OPPN', blockname='property_income']
U2_HH_B_OPPN = U2_HH_B_OPPN(-1) * (1.02*1.019)^0.25 + res_U2_HH_B_OPPN;

[name='U2_G_HH_S_VDIRP', blockname='property_income'] // Present value of the property income gap
U2_G_HH_S_VDIRP =  +0.02898456432949391*U2_A_YED 
                   -0.01894184469195323*U2_G_YER 
                   +0.09084535068154286*U2_STN_R 
                   +0.1377229231092268*U2_ESTN 
                   -0.05316283358446328*U2_EHIC  
                   +0.2463148024025871*U2_G_HH_S_DIRP 
                   +0.02417826925496892*U2_A_YED(-1) 
                   -0.0563747000716339*U2_G_YER(-1) 
                   -0.2285690511701694*U2_STN_R(-1) 
                   +0.01161817251369773*U2_G_HH_S_DIRP(-1);

[type = 'longrun', name='U2_HH_EDIRP', blockname='property_income'] // Permanent property income 
U2_HH_EDIRP = exp(log(U2_H_HH_S_DIRP) + log(U2_H_HH_Y_DIR) + log(U2_T_YER) + (U2_G_HH_S_VDIRP/100 + U2_G_HH_Y_VDIR/100 + U2_G_VYER/100));

[type = 'longrun', name='U2_H_HH_S_DIRP', blockname='property_income']  // Share of property income in total income (closing towards model based SS - second term (WHY NOT (-1) in ecm target term?)
U2_H_HH_S_DIRP = U2_H_HH_S_DIRP(-1) + 0.05*(U2_HH_DIRP/U2_HH_DIR - U2_H_HH_S_DIRP(-1)) + res_U2_H_HH_S_DIRP;

[type = 'longrun', name='U2_HH_DIRP', blockname='property_income'] // Real property income 
U2_HH_DIRP = U2_HH_DINP / U2_HH_COD;

[name='U2_G_HH_S_DIRP', blockname='property_income'] // Gap of the property income to total income
U2_G_HH_S_DIRP = 100*((U2_HH_DIRP/U2_HH_DIR) / U2_H_HH_S_DIRP - 1); 