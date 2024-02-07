[name='U2_TAU', blockname='labour']
diff(log(U2_TAU))= diff(log(U2_TAU(-1)))*dummy_long_run + 0.00196851410772615*(1-dummy_long_run) + res_U2_TAU; 
   
// TARGET PRIVATE EMPLOYEES
[type = 'longrun', name='U2_OLNN', fit_name = 'U2_OLNN', long_run_name = 'U2_LNN', blockname='labour']
U2_OLNN = exp(log(1/1.19)+log(1-alpha) - log(U2_C_CER*U2_HH_COD/U2_YED) + log(U2_YER));

[name='U2_LNN', blockname='labour']
log(U2_LNN)  = + log(U2_LNN(-1))
               + 0.6203224928225873		*(log(U2_LNN(-1))-log(U2_LNN(-2)))
               + 0.05046540347424328      *diff(log(U2_TAU(-1)))
               + 0.03163100878165136		*(log(U2_OLNN(-1)) - log(U2_LNN(-1))) //0.3
               + 0.1372933400911414      *(diff(log(U2_YER)) - diff(log(U2_T_YER)))
               + U2_EOLNN 
			   + 0.15061*(diff(log(U2_GO_LNN))- diff(log(U2_LNN)))
			   - 0.15061*(0.6203224928225873)*(diff(log(U2_GO_LNN(-1)))- diff(log(U2_LNN(-1))))
               + 0.000000000737218030979342
               + res_U2_LNN;
// the share of 0.15061 is the share of U2_GO_LNN in U2_LNN at the steady state
// in addition one should substract the persistence effect so that at least mechanically it is not there

// EXPECTED TARGET PRIVATE EMPLOYEES
[name='U2_EOLNN', blockname='labour']
U2_EOLNN =                  +1.578873109358013*0.00001  *U2_A_YED(-1) 
			 				-1.337780689398635*0.00001  *U2_A_YED(-2) 
			 				-8.56972654861596*0.00001  *U2_G_YER(-1) 
			 				-0.0001682943048859181   *U2_G_YER(-2) 
			 				-0.0002745989540475266  *U2_STN_R(-1) 
			 				+0.0001972083698857169  *U2_STN_R(-2) 
			 				+7.739035378068757*0.00001  *U2_ESTN(-1) 
			 				+8.545187589671115*0.00000000000000001  *U2_ESTN(-2) 
			 				-2.410924198985992*0.000001  *U2_EHIC(-1) 
			 				+6.744692460590405*0.00000000000000001 *U2_EHIC(-2) 
			 				+0.01568182305482077 *(log(U2_OLNN(-1)) - log(U2_OLNN(-2))) 
			 				+0.01030957924387501 *(log(U2_OLNN(-2)) - log(U2_OLNN(-3))) 
			 				+0.3032207014044752 *(log(U2_TAU(-1)) - log(U2_TAU(-2))) 
			 				+8.844442903390441*0.00000000000000001 *(log(U2_TAU(-2)) - log(U2_TAU(-3)));
			 				
							

[type = 'longrun', name = 'U2_T_C_LNH', long_run_name = 'U2_C_LNH', blockname='labour']
U2_T_C_LNH = U2_T_C_LNH(-1) + res_U2_T_C_LNH;										

// Number of hours per head and quarter EA
[name = 'U2_C_LNH', blockname='labour']
log(U2_C_LNH)     =  U2_C_LEH_a0 *(log(U2_T_C_LNH(-1))-log(U2_C_LNH(-1)))
					+U2_C_LEH_a1 *(((U2_G_YER/100)-(U2_G_YER(-1)/100))
					-((log(U2_LNN)-log(U2_T_LNN))
					-(log(U2_LNN(-1))-log(U2_T_LNN(-1)))))
                    +(log(U2_C_LNH(-1))-log(U2_T_C_LNH(-1)))
                    + log(U2_T_C_LNH) 
					+ res_U2_C_LNH;

[name = 'U2_OLSN', type = 'longrun', estim_type = 'fit', fit_name = 'U2_LSN',  long_run_name = 'U2_LSN', blockname='labour']
U2_OLSN = exp(u2_olsn_constant + log(U2_OLNN));

[name='U2_LSN', sample = '1999Q1:2015Q4', blockname='labour']
log(U2_LSN)    =       log(U2_LSN(-1)) 
                      + diff(log(U2_LNN(-1)))
					  - 0.1*(log(U2_LSN(-1)) - log(U2_OLSN(-1)))
					  + res_U2_LSN;


// Labour force participation rate EA
[name = 'U2_T_R_LFP', blockname='labour']
U2_T_R_LFP = U2_T_R_LFP(-1) + res_U2_T_R_LFP;

[name='U2_R_LFP', blockname='labour']
U2_R_LFP =  - 0.5  * (U2_R_LFP(-1) - U2_T_R_LFP(-1))
			- 5*U2_R_LFP_a2 	* (U2_R_LUN(-1)/100 - U2_T_R_LUN(-1)/100)
        	+ U2_R_LFP(-1)
            +(U2_T_R_LFP-U2_T_R_LFP(-1)) 
			+res_U2_R_LFP;

@#ifdef longrun
    [type = 'longrun', name='U2_T_R_LFP', long_run_name = 'U2_R_LFP', blockname='labour']
    U2_T_R_LFP =100*U2_T_LNN/(U2_WAP * (1-U2_T_R_LUN/100));
@#else
    [name='U2_T_LNN', blockname='labour']
    U2_T_LNN = U2_T_R_LFP/100 * U2_WAP * (1-U2_T_R_LUN/100);
@#endif


//total employment EA
[type = 'longrun', name='U2_LEN', blockname='labour']
U2_LEN = U2_LNN - U2_LSN;

//labour force EA
[type = 'longrun', name='U2_LFN', blockname='labour']
U2_LFN	=   U2_R_LFP/100*U2_WAP;

// unemployment rate EA
[name = 'U2_T_R_LUN', blockname='labour']
U2_T_R_LUN = U2_T_R_LUN(-1) + res_U2_T_R_LUN;

[type = 'longrun', name='U2_R_LUN', blockname='labour']
U2_R_LUN = 100*(1-U2_LNN/U2_LFN);

[name = 'U2_G_R_LUN', blockname='labour']
U2_G_R_LUN = U2_R_LUN - U2_T_R_LUN;				  				