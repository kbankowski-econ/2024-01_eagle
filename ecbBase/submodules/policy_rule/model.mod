[type = 'longrun', name='U2_STN', blockname='policy_rule']
U2_STN = (U2_STN_SHADOW - (-0.5)) / (1 + exp(-100 * (U2_STN_SHADOW - (-0.5)))) + (-0.5) + res_U2_STN; //Equivalent to max(U2_STN_SHADOW, -0.5) but differentiable

[type = 'longrun', name='U2_STN_SHADOW', blockname='policy_rule']
U2_STN_SHADOW = (0.87+(1-dummy_MP)*(1-0.87)) * U2_STN(-1)
					+ dummy_MP*(1-0.87) * (U2_STN_STAR + U2_A_YED_TAR + 1.7*U2_G_A4_HH_COD + 0.1*(U2_A4_YER-2));

[type = 'longrun', name = 'U2_ESTN', blockname='policy_rule']
U2_ESTN = U2_ESTN(-1) + 0.05*(U2_STN - U2_ESTN(-1)) + res_U2_ESTN;

[type = 'longrun', name='U2_STN_R', blockname='policy_rule']
U2_STN_R = U2_STN + U2_STN_add; 

[type = 'longrun', name='U2_STN_add', blockname='policy_rule']
U2_STN_add =  0.99 * U2_STN_add(-1) + 1/(1+exp(100*U2_STN)) * (1 - 0.99) * (U2_A4_HH_COD - 2) + res_U2_STN_add;

[type = 'longrun', name='U2_LTN_add', blockname='policy_rule']
U2_LTN_add = 0.95 * U2_LTN_add(-1) +  1/(1+exp(100*U2_STN)) * (1 - 0.95) * (U2_A4_HH_COD - 2) + res_U2_LTN_add;