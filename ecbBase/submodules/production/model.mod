[type = 'longrun', name='U2_T_YER', blockname='production']
U2_T_YER = exp(alpha*log(U2_SKFR)+ (1-alpha)*log(U2_T_PRO) + (1-alpha)*(log(U2_T_R_LFP/100)+log(U2_WAP)+log(1-U2_T_R_LUN/100)) + eps_LOG_U2_T_YER);

[name = 'U2_T_PRO', blockname='production']
U2_T_PRO = U2_Q_T_PRO * U2_T_PRO(-1);

[type='longrun', name = 'U2_Q_T_PRO', blockname='production']
U2_Q_T_PRO = (1.012)^0.25 + res_U2_Q_T_PRO;

[name = 'eps_LOG_U2_T_YER', blockname='production']
eps_LOG_U2_T_YER = 0.9782*eps_LOG_U2_T_YER(-1);

[type = 'longrun', name='U2_SKFR', blockname='production']
U2_SKFR = U2_SKFR(-1)*(1 - U2_D_ITR/100) + U2_ITR;