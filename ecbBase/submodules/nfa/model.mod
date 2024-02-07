// Net foreign assets
[type = 'longrun', name = 'U2_NFAN', blockname='nfa'] 
U2_NFAN    = U2_NFAN(-1) + ((U2_XTN - U2_MTN)/U2_YEN(-1) +  U2_NFANRV_S)*U2_YEN(-1) + res_U2_NFAN;

[type = 'longrun', name = 'U2_NFANRV_S', blockname='nfa'] 
U2_NFANRV_S =  0.0108890666464730 * dummy_long_run - 0.216547789948202*(U2_IR_TLN - U2_IR_TLN(-1) - (U2_IR_TAN - U2_IR_TAN(-1))) - 0.289743673660576 * (log(U2_EENX)-log(U2_EENX(-1))) 
             - 1.10180829327982 * (log(U2_YED) - log(U2_YED(-1)) - 0.0047055)  + 1.15594503610175 * (log(U2_CXEDEX) - log(U2_CXEDEX(-1)) - 0.0047055);

[type = 'longrun', name = 'U2_NFANRV', blockname='nfa']
U2_NFANRV = U2_NFANRV_S*U2_YEN(-1);

[type = 'longrun', name = 'U2_IR_TAN', blockname='nfa'] 
U2_IR_TAN = 4.8772 + U2_IR_TANRV + 0.415093149491357 * (U2_US_10Y - 4.8772)  + res_U2_IR_TAN;

[type = 'longrun', name = 'U2_IR_TLN', blockname='nfa'] 
U2_IR_TLN = 4.8772 + U2_IR_TLNRV + 0.244695960401461 * (U2_OIS_10Y - 4.8772)+ res_U2_IR_TLN;

[name = 'U2_IR_TANRV', blockname='nfa'] 
U2_IR_TANRV = 0.99 * U2_IR_TANRV(-1);

[name = 'U2_IR_TLNRV', blockname='nfa'] 
U2_IR_TLNRV = 0.99 * U2_IR_TLNRV(-1);

[name = 'U2_TBR', blockname='nfa'] 
U2_TBR = U2_XTR - U2_MTR;

[name = 'U2_TBN', blockname='nfa'] 
U2_TBN = U2_XTN - U2_MTN;