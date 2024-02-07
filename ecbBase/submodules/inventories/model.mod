[name='U2_SIVR', blockname='inventories']
diff(log(U2_SIVR)) =  0.13494*(log(U2_T_Y_SIVR(-1)) - log(U2_Y_SIVR(-1)))
                    +  0.67349*(log(U2_SIVR(-1)) - log(U2_SIVR(-2))) 
                    + (1 -  0.67349)*(log(U2_YER(-1)) - log(U2_YER(-2)))             
                    + res_U2_SIVR;

[name = 'U2_T_Y_SIVR', blockname='inventories']
U2_T_Y_SIVR = U2_T_Y_SIVR(-1) + 0.005*(U2_Y_SIVR - U2_T_Y_SIVR(-1)) + res_U2_T_Y_SIVR;

[name = 'U2_Y_SIVR', blockname='inventories']
U2_Y_SIVR = U2_SIVR/U2_YER;

[name = 'U2_IVR', blockname='inventories']
U2_IVR = U2_SIVR - U2_SIVR(-1);