[type = 'longrun', name='U2_STN_E10Y', blockname='financial']
U2_STN_E10Y =  -0.02935600242341364*U2_A_YED 
                +0.1066501285291795*U2_G_YER 
                +0.06982637746875023*U2_STN_R 
                +0.8833611584172785*U2_ESTN 
                +0.04540332082378963*U2_EHIC 
                -0.01604731840037561*U2_A_YED(-1) 
                -0.09131793059891881*U2_G_YER(-1) 
                +0.04681246411397701*U2_STN_R(-1)
                 +3.107870691373677*0.00000000000000001*U2_ESTN(-1) 
                -1.691460791236887*0.0000000000000001*U2_EHIC(-1);
                

[name='U2_G_YER_E10Y', blockname='financial']
U2_G_YER_E10Y =  +0.004691282785574243*U2_A_YED 
                +0.4952841544611875*U2_G_YER 
                -0.4484295340037714*U2_STN_R 
                +0.2783977467257209*U2_ESTN 
                -0.004310644622662757*U2_EHIC 
                -0.000380638162894678*U2_A_YED(-1) 
                -0.2102047177245404*U2_G_YER(-1)
                 +0.1700317872780548*U2_STN_R(-1) 
                +1.799996721700482*0.00000000000000001*U2_ESTN(-1) 
                +7.197816231568053*0.000000000000000001*U2_EHIC(-1);


[type = 'longrun', name='U2_TP_10Y', blockname='financial']
U2_TP_10Y =  + 0.5934746986689802*U2_TP_10Y(-1) 
            -0.1055570364658525*U2_G_YER_E10Y 
            + 0.2018076160034774*U2_dUSTP_10Y 
            + 0.6172097419851481 + res_U2_TP_10Y;

[type = 'longrun', name='U2_HH_SL_CON', blockname='financial']
U2_HH_SL_CON = + 0.6509727045687386*U2_HH_SL_CON(-1)  -0.5225342408229894*U2_G_YER_E10Y +  1.506934288049603+ res_U2_HH_SL_CON;

[type = 'longrun', name='U2_HH_SL_IHN', blockname='financial']
U2_HH_SL_IHN =  + 0.6509221213626804*U2_HH_SL_IHN(-1)  -0.2994203101089784*U2_G_YER_E10Y + 0.4854373313251851+ res_U2_HH_SL_IHN;

[type = 'longrun', name='U2_SLRN', blockname='financial']
U2_SLRN =   + 0.8385459986364576*U2_SLRN(-1) -0.1320766274035222*U2_G_YER_E10Y + 0.199878472463441 + res_U2_SLRN;

[type = 'longrun', name='U2_SCB', blockname='financial']
U2_SCB =  + 0.8504901554212972*U2_SCB(-1) -0.009346069915519031*U2_G_YER_E10Y + 0.1412295613350578+ res_U2_SCB;

[type = 'longrun', name='U2_SCOE', blockname='financial']
U2_SCOE = + 0.8988750095568504*U2_SCOE(-1) -0.2986890244333941*U2_G_YER_E10Y + 0.5540725821151542+ res_U2_SCOE;

[type = 'longrun', name='U2_HH_SL_DEP', blockname='financial']
U2_HH_SL_DEP =  + 0.9416613210722482*U2_HH_SL_DEP(-1)-0.04581928074633671*U2_G_YER_E10Y + 0.02657195760686209 + res_U2_HH_SL_DEP;

[type = 'longrun', name='U2_OIS_10Y', blockname='financial']
U2_OIS_10Y = U2_STN_E10Y + U2_TP_10Y + U2_LTN_add + res_U2_OIS_10Y;

[type = 'longrun', name='U2_HH_L_CON', blockname='financial']
U2_HH_L_CON =  + 1*U2_HH_SL_CON + 0.6905*U2_OIS_10Y + 0.3095*U2_STN;

[type = 'longrun', name='U2_HH_CRFL_CON', blockname='financial']
U2_HH_CRFL_CON =  0.6905*U2_OIS_10Y + 0.3095*U2_STN;

[type = 'longrun', name='U2_HH_L_IHN', blockname='financial']
U2_HH_L_IHN =  + 1*U2_HH_SL_IHN + 0.5392*U2_OIS_10Y + 0.4608*U2_STN;

[type = 'longrun', name='U2_LRN', blockname='financial']
U2_LRN =  + 1*U2_SLRN + 0.2538*U2_OIS_10Y + 0.7462 *U2_STN + res_U2_LRN;

[type = 'longrun', name='U2_HH_L_DEP', blockname='financial']
U2_HH_L_DEP = + 1*U2_HH_SL_DEP + 0.2854*U2_OIS_10Y + 0.7146*U2_STN;

[type = 'longrun', name='U2_CB', blockname='financial']
U2_CB =  + 1*U2_SCB + 0.5937*U2_OIS_10Y + 0.4063*U2_STN;

[type = 'longrun', name='U2_COE', blockname='financial']
U2_COE =  + 1*U2_SCOE + 0.9617*U2_OIS_10Y + 0.0383*U2_STN;

[type = 'longrun', name='U2_USTP_10Y', blockname='financial']
U2_USTP_10Y = 0.0905862971565422 + 0.9*U2_USTP_10Y(-1) + res_U2_USTP_10Y;

[type = 'longrun', name='U2_dUSTP_10Y', blockname='financial']
U2_dUSTP_10Y = U2_USTP_10Y - 0.905862971565422;

[type = 'longrun', name='U2_BU_L_ITN', blockname='financial']
U2_BU_L_ITN = 0.073313141*U2_CB + 0.580167022*U2_LRN + 0.346519836*U2_COE;

[type = 'longrun', name='U2_YRB_10Y', blockname='financial']
U2_YRB_10Y = U2_OIS_10Y + res_U2_YRB_10Y;

[type = 'longrun', name='U2_AMIR', blockname='financial']
U2_AMIR = 0.437404834387 * U2_STN_R + (1 - 0.437404834387) * U2_YRB_10Y + res_U2_AMIR;
