[type = 'longrun', name='U2_EEN_RES', blockname='exchange_rate']
U2_EEN_RES = 0.954253923282400*U2_EEN_RES(-1) + U2_EEN_RES_C*(1-dummy_long_run_EEN) + res_U2_EEN_RES; //0.8

[type = 'longrun', name='U2_EEN_RES_C', blockname='exchange_rate']
U2_EEN_RES_C = (1-dummy_long_run_EEN)*(-0.012345235343546) + 0.9*U2_EEN_RES_C(-1)*dummy_long_run_EEN;

[type = 'longrun', name = 'U2_EXR', blockname='exchange_rate']
U2_EXR = 1/(U2_EENX) + res_U2_EXR; 

[type = 'longrun', name = 'U2_EENM', blockname='exchange_rate']
U2_EENM = U2_EENX + res_U2_EENM;

[type = 'longrun', name = 'U2_REENX', blockname='exchange_rate'] // Real effective exchange rate
U2_REENX = U2_EENX * U2_CXEDEX / U2_YED;