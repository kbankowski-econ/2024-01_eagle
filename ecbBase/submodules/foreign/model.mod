[type = 'longrun', name='U2_US_10Y', blockname='foreign']
U2_US_10Y = 0.9*U2_US_10Y(-1) + 0.1*U2_OIS_10Y + res_U2_US_10Y;

[type = 'longrun', name='U2_US_EHIC', blockname='foreign']
U2_US_EHIC = 0.98*U2_US_EHIC(-1) + 0.02*U2_EHIC + res_U2_US_EHIC;

[type = 'longrun', name = 'U2_CXEDEX', blockname='foreign']
U2_CXEDEX = U2_YED*(0.5 + 0.1*5*U2_CXEDEX(-1)/U2_YED(-1)) + res_U2_CXEDEX; //Is not corrected for Exchange rate!

[type = 'longrun', name = 'U2_CMEDEX', blockname='foreign']
U2_CMEDEX = U2_YED*(0.5+0.5*U2_CMEDEX(-1)/U2_YED(-1)) + res_U2_CMEDEX; //Is not corrected for Exchange rate!

[type = 'longrun', name = 'U2_PCU', blockname='foreign']
U2_PCU = U2_YED*(0.5 + 0.5*U2_PCU(-1)/U2_YED(-1)) + res_U2_PCU; //Is not corrected for Exchange rate!

[type = 'longrun', name = 'U2_POU', blockname='foreign']
U2_POU = U2_YED*(0.5+0.5*U2_POU(-1)/U2_YED(-1)) + res_U2_POU; //Is not corrected for Exchange rate!

[type = 'longrun', name = 'U2_WDREX', blockname='foreign']
U2_WDREX =  0.0399981884057971*U2_YER + res_U2_WDREX;