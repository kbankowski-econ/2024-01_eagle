[blockname='uip', name='U2_EENX', type='longrun']
U2_EENX = exp(log(U2_YED)-log(U2_CXEDEX)+0.041576674292888*(U2_US_10Y-U2_US_EHIC-(U2_OIS_10Y-U2_EHIC))+U2_EEN_RES);

[blockname='nfa', name='U2_NFAN', type='longrun']
U2_NFAN = U2_NFAN(-1)+U2_YEN(-1)*((U2_XTN-U2_MTN)/U2_YEN(-1)+U2_NFANRV_S)+res_U2_NFAN;

[blockname='nfa', name='U2_IR_TAN', type='longrun']
U2_IR_TAN = 4.8772+U2_IR_TANRV+0.415093149491357*(U2_US_10Y-4.8772)+res_U2_IR_TAN;

[blockname='nfa', name='U2_IR_TLN', type='longrun']
U2_IR_TLN = 4.8772+U2_IR_TLNRV+0.244695960401461*(U2_OIS_10Y-4.8772)+res_U2_IR_TLN;

[blockname='nfa', name='U2_IR_TANRV']
U2_IR_TANRV = 0.99*U2_IR_TANRV(-1);

[blockname='nfa', name='U2_IR_TLNRV']
U2_IR_TLNRV = 0.99*U2_IR_TLNRV(-1);

[blockname='nfa', name='U2_NFANRV_S', type='longrun']
U2_NFANRV_S = 0.0108890666464730*dummy_long_run-0.216547789948202*(U2_IR_TLN-U2_IR_TLN(-1)-(U2_IR_TAN-U2_IR_TAN(-1)))-0.289743673660576*(log(U2_EENX)-log(U2_EENX(-1)))-1.10180829327982*(log(U2_YED)-log(U2_YED(-1))-0.0047055)+1.15594503610175*(log(U2_CXEDEX)-log(U2_CXEDEX(-1))-0.0047055);

[blockname='nfa', name='U2_NFANRV', type='longrun']
U2_NFANRV = U2_YEN(-1)*U2_NFANRV_S;

[blockname='nfa', name='U2_TBR']
U2_TBR = U2_XTR-U2_MTR;

[blockname='nfa', name='U2_TBN']
U2_TBN = U2_XTN-U2_MTN;

[blockname='hicp', name='U2_HEG', type='noestim']
diff(log(U2_HEG)) = log((1+U2_EHIC/100)^0.25)+U2_HEG_ecm*(log(U2_HEG(-1))-log(U2_OHEG(-1)))+U2_HEG_a1*(diff(log(U2_MED)-log(U2_EXR))-log((1+U2_EHIC/100)^0.25))+U2_HEG_a2*(diff(log(U2_MED(-1))-log(U2_EXR(-1)))-log((1+U2_EHIC(-1)/100)^0.25))+res_U2_HEG;

[blockname='hicp', name='U2_HEF', type='noestim']
diff(log(U2_HEF)) = log((1+U2_EHIC/100)^0.25)+U2_HEF_ecm*(log(U2_HEF(-1))-log(U2_OHEF(-1)))+U2_HEF_b1*(diff(log(U2_YED)*(1-u2_hh_q_ocod_w)+u2_hh_q_ocod_w*log(U2_MXDNO))-log((1+U2_EHIC/100)^0.25))+U2_HEF_ar1*(diff(log(U2_HEF(-1)))-log((1+U2_EHIC(-1)/100)^0.25))+res_U2_HEF;

[blockname='hicp', name='U2_HEX', type='noestim']
diff(log(U2_HEX)) = log((1+U2_EHIC/100)^0.25)+U2_HEX_ecm*(log(U2_HEX(-1))-log(U2_OHEX(-1)))+U2_HEX_a1*(diff(log(U2_YED))-log((1+U2_EHIC/100)^0.25))+U2_HEX_a2*(diff(log(U2_YED(-1)))-log((1+U2_EHIC(-1)/100)^0.25))+res_U2_HEX;

[blockname='hicp', name='U2_HIF', type='longrun']
U2_HIF = exp(((1-HICP_WE)*log(U2_HEX)-log(U2_HEF)*(1-HICP_WE-HICP_WF))/HICP_WF+U2_ZHIF);

[blockname='hicp', name='U2_HIC', type='longrun']
U2_HIC = exp((1-HICP_WE)*log(U2_HEX)+log(U2_HEG)*HICP_WE+U2_ZHICP);

[blockname='hicp', name='U2_MXDNO', type='longrun']
U2_MXDNO = exp((log(U2_MXD)-(log(U2_MED)-log(U2_EXR))*0.094573)/0.905427);

[blockname='hicp', name='U2_ZHICP']
U2_ZHICP = dummy_long_run*U2_ZHICP(-1)+res_U2_ZHICP;

[blockname='hicp', name='U2_ZHIF']
U2_ZHIF = dummy_long_run*U2_ZHIF(-1)+res_U2_ZHIF;

[blockname='hicp', long_run_name='U2_HEG', name='U2_OHEG', type='longrun']
U2_OHEG = exp(U2_OHEG_a1+log(U2_MED)-log(U2_EXR)+U2_OHEG_a2*TTREND+U2_OHEG_a2*(-40));

[blockname='hicp', long_run_name='U2_HEF', name='U2_OHEF', type='longrun']
U2_OHEF = exp(U2_OHEF_a1+log(U2_YED)*(1-u2_hh_q_ocod_w)+u2_hh_q_ocod_w*log(U2_MXDNO));

[blockname='hicp', long_run_name='U2_HEX', name='U2_OHEX', type='longrun']
U2_OHEX = exp(U2_OHEX_a1+log(U2_OHEF)*(1-HICP_WE-HICP_WF)/(1-HICP_WE)+HICP_WF*(log(U2_C_CEN)-log(U2_T_PRO))/(1-HICP_WE)+TTREND*U2_OHEX_a2+(-40)*U2_OHEX_a2);

[blockname='exchange_rate', name='U2_EEN_RES', type='longrun']
U2_EEN_RES = 0.954253923282400*U2_EEN_RES(-1)+U2_EEN_RES_C*(1-dummy_long_run_EEN)+res_U2_EEN_RES;

[blockname='exchange_rate', name='U2_EEN_RES_C', type='longrun']
U2_EEN_RES_C = (1-dummy_long_run_EEN)*(-0.012345235343546)+dummy_long_run_EEN*0.9*U2_EEN_RES_C(-1);

[blockname='exchange_rate', name='U2_EXR', type='longrun']
U2_EXR = 1/U2_EENX+res_U2_EXR;

[blockname='exchange_rate', name='U2_EENM', type='longrun']
U2_EENM = U2_EENX+res_U2_EENM;

[blockname='exchange_rate', name='U2_REENX', type='longrun']
U2_REENX = U2_EENX*U2_CXEDEX/U2_YED;

[blockname='property_income', name='U2_HH_DINP', type='longrun']
U2_HH_DINP = U2_HH_GOS+U2_HH_B_IRN+U2_HH_C_DDN+U2_HH_B_OPPN-U2_HH_B_SCN*(1-U2_S_SCNL-U2_S_SCNT)-U2_HH_DTN*(1-U2_S_DTNL-U2_S_DTNT);

[blockname='property_income', name='U2_HH_GOSMIN', type='longrun']
U2_HH_GOSMIN = U2_MIN+U2_HH_GOS;

[blockname='property_income', name='U2_G_HH_S_VDIRP']
U2_G_HH_S_VDIRP = U2_A_YED*0.02898456432949391-U2_G_YER*0.01894184469195323+U2_STN_R*0.09084535068154286+U2_ESTN*0.1377229231092268-U2_EHIC*0.05316283358446328+U2_G_HH_S_DIRP*0.2463148024025871+U2_A_YED(-1)*0.02417826925496892-U2_G_YER(-1)*0.0563747000716339-U2_STN_R(-1)*0.2285690511701694+U2_G_HH_S_DIRP(-1)*0.01161817251369773;

[blockname='property_income', name='U2_HH_EDIRP', type='longrun']
U2_HH_EDIRP = exp(log(U2_T_YER)+log(U2_H_HH_Y_DIR)+log(U2_H_HH_S_DIRP)+U2_G_VYER/100+U2_G_HH_Y_VDIR/100+U2_G_HH_S_VDIRP/100);

[blockname='property_income', name='U2_H_HH_S_DIRP', type='longrun']
U2_H_HH_S_DIRP = U2_H_HH_S_DIRP(-1)+0.05*(U2_HH_DIRP/U2_HH_DIR-U2_H_HH_S_DIRP(-1))+res_U2_H_HH_S_DIRP;

[blockname='property_income', name='U2_HH_DIRP', type='longrun']
U2_HH_DIRP = U2_HH_DINP/U2_HH_COD;

[blockname='property_income', name='U2_G_HH_S_DIRP']
U2_G_HH_S_DIRP = 100*(U2_HH_DIRP/U2_HH_DIR/U2_H_HH_S_DIRP-1);

[blockname='property_income', name='U2_HH_C_DDR']
diff(log(U2_HH_C_DDR)) = U2_H_Q_YER(-1)*(-0.0239538776284123)/100+0.240294215370070*(log(U2_HH_C_ODDR(-1))-log(U2_HH_C_DDR(-1)))-0.0855186960074087*diff(log(U2_HH_C_DDR(-1)))+0.138336715054055*diff(log(U2_HH_C_DDR(-2)))+0.329267363507400*diff(log(U2_HH_C_DDR(-3)))+U2_HH_C_EODDR+res_U2_HH_C_DDR;

[blockname='property_income', long_run_name='U2_HH_C_DDR', name='U2_HH_C_ODDR', type='longrun']
U2_HH_C_ODDR = exp(log(U2_HH_GOSMIN/U2_HH_COD)-1.36387782692927+TTREND*0.00395241629225460-0.1422869865211656);

[blockname='property_income', name='U2_HH_C_EODDR']
U2_HH_C_EODDR = U2_A_YED(-1)*(-0.000615617051882433)-U2_A_YED(-2)*0.000249487403214088+U2_G_YER(-1)*0.00285006044721382-U2_G_YER(-2)*0.00346192425592066-U2_STN_R(-1)*0.00240408455647777+U2_STN_R(-2)*0.00287431340807250-U2_ESTN(-1)*0.000470228851594828+U2_EHIC(-1)*0.000865104455097059+0.0862739534743975*diff(log(U2_HH_C_ODDR(-1)))+0.0657845926807516*diff(log(U2_HH_C_ODDR(-2)))+U2_H_Q_YER(-1)*0.489809948919216/100;

[blockname='property_income', name='U2_HH_C_DDN']
U2_HH_C_DDN = U2_HH_COD*U2_HH_C_DDR;

[blockname='property_income', name='U2_HH_GOS', type='longrun']
U2_HH_GOS = 0.00662500592216903*U2_SKHR*U2_HH_IHD+U2_YEN*0.0154013499128474*(U2_S_RPPD-1)+U2_YEN*2.90161118605059e-10*(TTREND-36)+res_U2_HH_GOS;

[blockname='property_income', name='U2_HH_B_IRN']
U2_HH_B_IRN = U2_YEN*0.00114956281785698+0.94969509339701*U2_YEN*U2_HH_B_IRN(-1)/U2_YEN(-1)+U2_YEN*0.0006570641038251971*U2_S_RW_NFAN(-1)+U2_YEN*U2_STN*0.000125120827820586-U2_YEN*0.000365842999657253*(U2_HH_L_IHN-U2_HH_L_DEP)+res_U2_HH_B_IRN;

[blockname='property_income', name='U2_HH_B_OPPN']
U2_HH_B_OPPN = U2_HH_B_OPPN(-1)*1.009702865892175+res_U2_HH_B_OPPN;

[blockname='business', name='U2_T_BU_Y_Q_ITR']
U2_T_BU_Y_Q_ITR = 0.95*U2_T_BU_Y_Q_ITR(-1)+0.05*log(U2_BU_Y_ITR/U2_BU_Y_ITR(-1))+res_U2_T_BU_Y_Q_ITR;

[blockname='business', long_run_name='U2_BU_ITR', name='U2_BU_OITR', type='longrun']
U2_BU_OITR = U2_BU_Y_ITR*U2_YER*(U2_H_Q_YER/100+U2_BU_D_ITR/100);

[blockname='business', name='U2_BU_Y_ITR', type='longrun']
U2_BU_Y_ITR = U2_BU_Y_MIBR/(U2_BU_U_ITR/400);

[blockname='business', name='U2_BU_U_ITR', type='longrun']
U2_BU_U_ITR = 400*U2_Y_ITD*(U2_BU_D_ITR/100+U2_BU_L_ITR/400-(1-U2_BU_D_ITR/100)*U2_HGPDR/400)*1/(1-U2_BU_S_DTN);

[blockname='business', name='U2_BU_L_ITR', type='longrun']
U2_BU_L_ITR = U2_BU_L_ITN-U2_EHIC;

[blockname='business', name='U2_BU_ITR']
U2_BU_ITR = exp(log(U2_BU_ITR(-1))-0.00247533082710276+0.4907330395720739*(U2_T_Q_YER(-1)/100+U2_T_BU_Y_Q_ITR(-1)/100)+0.5*(0.1688019699861396*(log(U2_BU_OITR(-1))-log(U2_BU_ITR(-1)))+0.664730661126421*(log(U2_BU_ITR(-1))-log(U2_BU_ITR(-2)))+U2_BU_EOITR)+0.5*(U2_T_BU_Y_Q_ITR(-1)/100+diff(log(U2_YER))))+res_U2_BU_ITR;

[blockname='business', name='U2_BU_EOITR']
U2_BU_EOITR = (-0.001186601493436785)*U2_A_YED(-1)-0.0002134714614338783*U2_A_YED(-2)+0.003275971188221062*U2_G_YER(-1)-0.003534761885240533*U2_G_YER(-2)-0.006879626936423173*U2_STN_R(-1)+0.005003275689830332*U2_STN_R(-2)+0.001876353638934851*U2_ESTN(-1)+U2_EHIC(-1)*0.001400072954870858-0.0005396972606973801*(log(U2_BU_Y_ITR(-1))-log(U2_BU_Y_ITR(-2)))+0.0001660097708417395*(log(U2_BU_Y_ITR(-2))-log(U2_BU_Y_ITR(-3)))+0.006633338778159077*(log(U2_YER(-1))-log(U2_YER(-2)))+0.007361701548928496*(log(U2_YER(-2))-log(U2_YER(-3)))+U2_T_BU_Y_Q_ITR(-1)*0.3541769472192866/100+0.3398082194023431*U2_H_Q_YER(-1)/100;

[blockname='business', name='U2_Y_ITD', type='longrun']
U2_Y_ITD = U2_ITD/U2_YED;

[blockname='business', name='U2_HGPDR', type='longrun']
U2_HGPDR = 0.975*U2_HGPDR(-1)+2.5*(log(U2_Y_ITD)-log(U2_Y_ITD(-1)))+res_U2_HGPDR;

[blockname='business', name='U2_BU_S_DTN']
U2_BU_S_DTN = U2_BU_S_DTN(-1)+diff(U2_GO_BU_R_DTN)+res_U2_BU_S_DTN;

[blockname='consumption', name='U2_HH_B_SCN']
U2_HH_B_SCN = exp(log(U2_HH_B_SCN(-1))+diff(log(U2_GO_SCN)))+res_U2_HH_B_SCN;

[blockname='consumption', name='U2_S_SCNT']
U2_S_SCNT = U2_S_SCNT(-1)+res_U2_S_SCNT;

[blockname='consumption', name='U2_G_VYER']
U2_G_VYER = (-0.01499151549334153)*U2_A_YED+U2_G_YER*0.8792107462362392-0.6424098968774221*U2_STN_R+0.3540015152510259*U2_ESTN+U2_EHIC*0.02782358012275644+4.684052472213974e-15*U2_G_HH_Y_DIR+1.454093294614866e-15*U2_G_HH_S_DIRL-1.201978901415974e-15*U2_G_HH_S_DIRT-4.140650972629037e-16*U2_G_HH_S_DIRP-U2_A_YED(-1)*0.01283206462941462-U2_G_YER(-1)*0.3868039428955939+U2_STN_R(-1)*0.2884087837057611-U2_ESTN(-1)*1.305420947118413e-17+U2_EHIC(-1)*4.768480272251573e-17+7.779819116590094e-16*U2_G_HH_Y_DIR(-1)-2.810465000544472e-16*U2_G_HH_S_DIRL(-1)-2.680264350476653e-16*U2_G_HH_S_DIRT(-1)-3.18010280413893e-16*U2_G_HH_S_DIRP(-1);

[blockname='consumption', name='U2_G_HH_Y_VDIR']
U2_G_HH_Y_VDIR = U2_A_YED*(-0.009230270892620181)+U2_G_YER*0.07590395468771453+U2_STN_R*0.3127463879573804-U2_ESTN*0.05212692484178189-U2_EHIC*0.007730329121314082+U2_G_HH_Y_DIR*0.3938706797011818+U2_A_YED(-1)*0.01696060001393534+U2_G_YER(-1)*0.1080090555222206-U2_STN_R(-1)*0.2606192155554706-U2_G_HH_Y_DIR(-1)*0.007312227665584424;

[blockname='consumption', name='U2_G_HH_S_VDIRL']
U2_G_HH_S_VDIRL = U2_A_YED*0.002435073433928451-U2_G_YER*0.04091434440827085+U2_STN_R*0.02660163104193673-U2_ESTN*0.06880703236896747-U2_EHIC*0.009167110607472757+U2_G_HH_S_DIRL*0.2596601501284099+U2_A_YED(-1)*0.006732037173543491-U2_G_YER(-1)*0.05419915821236272+U2_STN_R(-1)*0.04220533601723846+U2_G_HH_S_DIRL(-1)*0.0185100015806456;

[blockname='consumption', name='U2_G_HH_S_VDIRT']
U2_G_HH_S_VDIRT = U2_A_YED*(-0.01963795615722082)+U2_G_YER*0.1283058449302018-U2_STN_R*0.1074077596165891+U2_ESTN*0.0422361780176759+U2_EHIC*0.04802049727678272+U2_G_HH_S_DIRT*0.2803454242562743-U2_A_YED(-1)*0.02838254111956427+U2_G_YER(-1)*0.1712633046083032+U2_STN_R(-1)*0.06517210829796261+U2_G_HH_S_DIRT(-1)*0.008793970550527514;

[blockname='consumption', long_run_name='U2_HH_COR', name='U2_HH_OCOR', type='longrun']
U2_HH_OCOR = exp(0.504235050500646-TTREND*0.0004474779544407735+0.01789911817763094+0.5445364252354276*log(U2_HH_EDIRL)+0.2706525506486854*log(U2_HH_EDIRT)+0.107219242952739*log(U2_HH_EDIRP)+0.07759178116315124*log(U2_HH_TWR));

[blockname='consumption', name='U2_HH_EDIR', type='longrun']
U2_HH_EDIR = U2_T_YER*U2_H_HH_Y_DIR*exp(U2_G_HH_Y_VDIR/100+U2_G_VYER/100);

[blockname='consumption', name='U2_HH_EDIRL', type='longrun']
U2_HH_EDIRL = exp(log(U2_T_YER)+log(U2_H_HH_S_DIRL)+log(U2_H_HH_Y_DIR)+U2_G_VYER/100+U2_G_HH_Y_VDIR/100+U2_G_HH_S_VDIRL/100);

[blockname='consumption', name='U2_HH_EDIRT', type='longrun']
U2_HH_EDIRT = exp(log(U2_T_YER)+log(U2_H_HH_Y_DIR)+log(U2_H_HH_S_DIRT)+U2_G_VYER/100+U2_G_HH_Y_VDIR/100+U2_G_HH_S_VDIRT/100);

[blockname='consumption', name='U2_HH_COR']
U2_HH_COR = exp(log(U2_HH_COR(-1))+U2_H_Q_YER(-1)*0.3939685705743931/100+0.6389705354042198*(0.3427936977353141*(log(U2_HH_OCOR(-1))-log(U2_HH_COR(-1)))+0.0114310093703755*diff(log(U2_HH_COR(-1)))+U2_HH_EOCOR)-0.002*diff(U2_HH_L_CON)+0.3610294645957802*U2_dlyhlt)+res_U2_HH_COR;

[blockname='consumption', name='U2_HH_EOCOR']
U2_HH_EOCOR = U2_A_YED(-1)*0.0005440680306598591+U2_A_YED(-2)*0.000311508622575806-U2_G_YER(-1)*0.002335861342913632+U2_G_YER(-2)*0.00192987227399754+U2_STN_R(-1)*0.00005722468555023724-U2_STN_R(-2)*0.00009721990779910743+U2_ESTN(-1)*0.00003999339651460884-U2_EHIC(-1)*0.0008555766532347441+0.1406424140391767*(log(U2_HH_OCOR(-1))-log(U2_HH_OCOR(-2)))+0.1153394115243199*(log(U2_HH_OCOR(-2))-log(U2_HH_OCOR(-3)))+U2_H_Q_YER(-1)*0.6810368913781952/100;

[blockname='consumption', name='U2_dlyhlt', type='longrun']
U2_dlyhlt = log(U2_HH_DIRL+U2_HH_DIRT)-log(U2_HH_DIRL(-1)+U2_HH_DIRT(-1))-0.004950656824045*(1-dummy_long_run)-dummy_long_run*0.00249494791772845;

[blockname='consumption', name='U2_T_Q_YER', type='longrun']
U2_T_Q_YER = 100*(log(U2_T_YER)-log(U2_T_YER(-1)));

[blockname='consumption', name='U2_H_Q_YER', type='longrun']
U2_H_Q_YER = U2_H_Q_YER(-1)+0.05*(U2_T_Q_YER(-1)-U2_H_Q_YER(-1))+res_U2_H_Q_YER;

[blockname='consumption', name='U2_H_HH_Y_DIR', type='longrun']
U2_H_HH_Y_DIR = U2_H_HH_Y_DIR(-1)+0.05*(U2_HH_DIR/U2_YER-U2_H_HH_Y_DIR(-1))+res_U2_H_HH_Y_DIR;

[blockname='consumption', name='U2_H_HH_S_DIRL', type='longrun']
U2_H_HH_S_DIRL = U2_H_HH_S_DIRL(-1)+0.05*(U2_HH_DIRL/U2_HH_DIR-U2_H_HH_S_DIRL(-1))+res_U2_H_HH_S_DIRL;

[blockname='consumption', name='U2_H_HH_S_DIRT', type='longrun']
U2_H_HH_S_DIRT = U2_H_HH_S_DIRT(-1)+0.05*(U2_HH_DIRT/U2_HH_DIR-U2_H_HH_S_DIRT(-1))+res_U2_H_HH_S_DIRT;

[blockname='consumption', name='U2_W0_CEN']
U2_W0_CEN = exp(log(U2_W0_CEN(-1))+diff(log(U2_CEN)))+res_U2_W0_CEN;

[blockname='consumption', name='U2_MIN']
U2_MIN = exp(log(U2_MIN(-1))+diff(log(U2_W0_CEN)))+res_U2_MIN;

[blockname='consumption', name='U2_HH_DTN']
U2_HH_DTN = exp(log(U2_HH_DTN(-1))+diff(log(U2_GO_HH_DTN)));

[blockname='consumption', name='U2_HH_B_SBN']
U2_HH_B_SBN = exp(log(U2_HH_B_SBN(-1))+diff(log(U2_GO_SBCN)))+res_U2_HH_B_SBN;

[blockname='consumption', name='U2_HH_DINL', type='longrun']
U2_HH_DINL = U2_W0_CEN+U2_MIN-U2_S_SCNL*U2_HH_B_SCN-U2_HH_DTN*U2_S_DTNL;

[blockname='consumption', name='U2_HH_DINT', type='longrun']
U2_HH_DINT = U2_HH_B_SBN-U2_HH_B_SCN*U2_S_SCNT-U2_HH_DTN*U2_S_DTNT;

[blockname='consumption', name='U2_HH_DIN', type='longrun']
U2_HH_DIN = U2_HH_DINT+U2_HH_DINL+U2_HH_DINP;

[blockname='consumption', name='U2_HH_DIRL', type='longrun']
U2_HH_DIRL = exp(log(U2_HH_DINL)-log(U2_HH_COD));

[blockname='consumption', name='U2_HH_DIRT', type='longrun']
U2_HH_DIRT = exp(log(U2_HH_DINT)-log(U2_HH_COD));

[blockname='consumption', name='U2_HH_DIRLT', type='longrun']
U2_HH_DIRLT = exp(log(U2_HH_DIRL+U2_HH_DIRT));

[blockname='consumption', name='U2_HH_DIR', type='longrun']
U2_HH_DIR = exp(log(U2_HH_DIN)-log(U2_HH_COD));

[blockname='consumption', name='U2_G_HH_Y_DIR']
U2_G_HH_Y_DIR = 100*(U2_HH_DIR/U2_YER/U2_H_HH_Y_DIR-1);

[blockname='consumption', name='U2_G_HH_S_DIRL']
U2_G_HH_S_DIRL = 100*(U2_HH_DIRL/U2_HH_DIR/U2_H_HH_S_DIRL-1);

[blockname='consumption', name='U2_G_HH_S_DIRT']
U2_G_HH_S_DIRT = 100*(U2_HH_DIRT/U2_HH_DIR/U2_H_HH_S_DIRT-1);

[blockname='consumption', name='U2_S_DTNL']
U2_S_DTNL = U2_S_DTNL(-1)+res_U2_S_DTNL;

[blockname='consumption', name='U2_S_DTNT']
U2_S_DTNT = U2_S_DTNT(-1)+res_U2_S_DTNT;

[blockname='consumption', name='U2_S_SCNL']
U2_S_SCNL = U2_S_SCNL(-1)+res_U2_S_SCNL;

[blockname='closure', name='U2_HH_CON', type='longrun']
U2_HH_CON = U2_HH_COR*U2_HH_COD;

[blockname='closure', name='U2_BU_ITN', type='longrun']
U2_BU_ITN = U2_BU_ITR*U2_BU_ITD;

[blockname='closure', name='U2_YEN', type='longrun']
U2_YEN = U2_YED*U2_YER;

[blockname='closure', name='U2_YER', type='longrun']
diff(log(U2_YER)) = 0.5311499999999998*log(U2_HH_COR/U2_HH_COR(-1))+0.22614*log(U2_GO_COR/U2_GO_COR(-1))+0.11299*log(U2_BU_ITR/U2_BU_ITR(-1))+0.05411*log(U2_HH_IHR/U2_HH_IHR(-1))+0.02846*log(U2_GO_ITR/U2_GO_ITR(-1))+0.41393*log(U2_XTR/U2_XTR(-1))-0.36522*log(U2_MTR/U2_MTR(-1))+0.40051*log(U2_SIVR/U2_SIVR(-1))-0.40207*log(U2_SIVR(-1)/U2_SIVR(-2))+res_U2_YER;

[blockname='closure', name='U2_GOSMIN', type='longrun']
U2_GOSMIN = U2_YEN-U2_CEN-U2_TIN;

[blockname='closure', name='U2_TIN']
log(U2_TIN) = log(U2_TIN(-1))+diff(log(U2_GO_TIN))+res_U2_TIN;

[blockname='closure', name='U2_G_YER']
U2_G_YER = 100*(log(U2_YER)-log(U2_T_YER));

[blockname='closure', name='U2_ITN', type='longrun']
U2_ITN = U2_BU_ITN+U2_HH_IHN+U2_GO_ITN;

[blockname='closure', name='U2_ITR', type='longrun']
U2_ITR = U2_GO_ITR+U2_BU_ITR+U2_HH_IHR;

[blockname='closure', name='U2_ITD', type='longrun']
U2_ITD = U2_ITN/U2_ITR;

[blockname='closure', name='U2_CEN', type='longrun']
U2_CEN = U2_C_CEN*U2_LEN;

[blockname='closure', name='U2_IVN']
U2_IVN = U2_MTN+U2_YEN-U2_HH_CON-U2_GO_CON-U2_ITN-U2_XTN;

[blockname='closure', name='U2_S_GO_COR', type='longrun']
U2_S_GO_COR = 100*U2_GO_COR/U2_YER;

[blockname='closure', name='U2_T_YEN2']
U2_T_YEN2 = U2_T_YER*U2_YED_N;

[blockname='closure', name='U2_G_YEN']
U2_G_YEN = 100*(U2_YEN/U2_T_YEN2-1);

[blockname='closure', name='U2_G_YED']
U2_G_YED = 100*(U2_YED/U2_YED_N-1);

[blockname='closure', name='U2_RAT_GO_TRN']
U2_RAT_GO_TRN = 100*U2_GO_TRN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_DTN']
U2_RAT_GO_DTN = 100*U2_GO_DTN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_TIN']
U2_RAT_GO_TIN = 100*U2_GO_TIN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_SCN']
U2_RAT_GO_SCN = 100*U2_GO_SCN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_RRN']
U2_RAT_GO_RRN = 100*U2_GO_RRN/U2_YEN;

[blockname='closure', name='U2_GO_R_RRN']
U2_GO_R_RRN = U2_GO_RRN/U2_T_YEN;

[blockname='closure', name='U2_RAT_GO_TEN']
U2_RAT_GO_TEN = 100*U2_GO_TEN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_IPN']
U2_RAT_GO_IPN = 100*U2_GO_IPN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_SBCN']
U2_RAT_GO_SBCN = 100*U2_GO_SBCN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_CEN']
U2_RAT_GO_CEN = 100*U2_GO_CEN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_PUN']
U2_RAT_GO_PUN = 100*U2_GO_PUN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_PUR']
U2_RAT_GO_PUR = 100*U2_GO_PUR/U2_YER;

[blockname='closure', name='U2_RAT_GO_SIN']
U2_RAT_GO_SIN = 100*U2_GO_SIN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_ITN']
U2_RAT_GO_ITN = 100*U2_GO_ITN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_ITR']
U2_RAT_GO_ITR = 100*U2_GO_ITR/U2_YER;

[blockname='closure', name='U2_RAT_GO_REN']
U2_RAT_GO_REN = 100*U2_GO_REN/U2_YEN;

[blockname='closure', name='U2_RAT_GO_PTE']
U2_RAT_GO_PTE = 100*(U2_GO_TEN-U2_GO_IPN)/U2_YEN;

[blockname='closure', name='U2_RAT_GO_DEF']
U2_RAT_GO_DEF = 100*(-U2_GO_B9N)/U2_YEN;

[blockname='closure', name='U2_RAT_GO_PDF']
U2_RAT_GO_PDF = 100*(U2_GO_IPN+U2_GO_B9N)/U2_YEN;

[blockname='closure', name='U2_RAT_GO_MAL']
U2_RAT_GO_MAL = 100*U2_GO_MAL/(U2_YEN*4);

[blockname='closure', name='U2_RAT_GO_B9N']
U2_RAT_GO_B9N = 100*U2_GO_B9N/U2_YEN;

[blockname='closure', name='U2_RAT_T_GO_TRN']
U2_RAT_T_GO_TRN = 100*U2_GO_TRN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_DTN']
U2_RAT_T_GO_DTN = 100*U2_GO_DTN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_TIN']
U2_RAT_T_GO_TIN = 100*U2_GO_TIN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_SCN']
U2_RAT_T_GO_SCN = 100*U2_GO_SCN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_RRN']
U2_RAT_T_GO_RRN = 100*U2_GO_RRN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_TEN']
U2_RAT_T_GO_TEN = 100*U2_GO_TEN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_IPN']
U2_RAT_T_GO_IPN = 100*U2_GO_IPN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_SBCN']
U2_RAT_T_GO_SBCN = 100*U2_GO_SBCN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_CEN']
U2_RAT_T_GO_CEN = 100*U2_GO_CEN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_PUN']
U2_RAT_T_GO_PUN = 100*U2_GO_PUN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_PUR']
U2_RAT_T_GO_PUR = 100*U2_GO_PUR/U2_T_YER;

[blockname='closure', name='U2_RAT_T_GO_SIN']
U2_RAT_T_GO_SIN = 100*U2_GO_SIN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_ITN']
U2_RAT_T_GO_ITN = 100*U2_GO_ITN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_ITR']
U2_RAT_T_GO_ITR = 100*U2_GO_ITR/U2_T_YER;

[blockname='closure', name='U2_RAT_T_GO_REN']
U2_RAT_T_GO_REN = 100*U2_GO_REN/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_PTE']
U2_RAT_T_GO_PTE = 100*(U2_GO_TEN-U2_GO_IPN)/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_DEF']
U2_RAT_T_GO_DEF = 100*(-U2_GO_B9N)/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_PDF']
U2_RAT_T_GO_PDF = 100*(U2_GO_IPN+U2_GO_B9N)/U2_T_YEN;

[blockname='closure', name='U2_RAT_T_GO_MAL']
U2_RAT_T_GO_MAL = 100*U2_GO_MAL/(U2_T_YEN*4);

[blockname='closure', name='U2_RAT_T_GO_B9N']
U2_RAT_T_GO_B9N = 100*U2_GO_B9N/U2_T_YEN;

[blockname='closure', name='U2_BUHH_ITR']
U2_BUHH_ITR = U2_BU_ITR+U2_HH_IHR;

[blockname='closure', name='U2_GO_PTE']
U2_GO_PTE = U2_GO_TEN-U2_GO_IPN;

[blockname='closure', name='U2_GO_PDF']
U2_GO_PDF = U2_GO_IPN+U2_GO_B9N;

[blockname='closure', name='U2_HHGO_CONPUN']
U2_HHGO_CONPUN = U2_HH_CON+U2_GO_PUN;

[blockname='closure', name='U2_G_GO_SBCN']
U2_G_GO_SBCN = 100*(U2_GO_SBCN-U2_T_GO_SBCN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_CER']
U2_G_GO_CER = 100*(U2_GO_CER-U2_T_GO_CER)/U2_T_YER;

[blockname='closure', name='U2_G_GO_PUR']
U2_G_GO_PUR = 100*(U2_GO_PUR-U2_T_GO_PUR)/U2_T_YER;

[blockname='closure', name='U2_G_GO_SIN']
U2_G_GO_SIN = 100*(U2_GO_SIN-U2_T_GO_SIN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_ITR']
U2_G_GO_ITR = 100*(U2_GO_ITR-U2_T_GO_ITR)/U2_T_YER;

[blockname='closure', name='U2_G_GO_BU_R_DTN']
U2_G_GO_BU_R_DTN = 100*U2_GOSMIN*(U2_GO_BU_R_DTN-U2_T_GO_BU_R_DTN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_HH_R_DTN']
U2_G_GO_HH_R_DTN = 100*U2_CEN*(U2_GO_HH_R_DTN-U2_T_GO_HH_R_DTN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_R_TIN']
U2_G_GO_R_TIN = 100*(U2_HH_CON+U2_GO_PUN)*(U2_GO_R_TIN-U2_T_GO_R_TIN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_BU_R_SCN']
U2_G_GO_BU_R_SCN = 100*U2_CEN*(U2_GO_BU_R_SCN-U2_T_GO_BU_R_SCN)/U2_T_YEN;

[blockname='closure', name='U2_G_GO_HH_R_SCN']
U2_G_GO_HH_R_SCN = 100*U2_CEN*(U2_GO_HH_R_SCN-U2_T_GO_HH_R_SCN)/U2_T_YEN;

[blockname='closure', name='U2_GO_ITRCOR']
U2_GO_ITRCOR = U2_GO_COR+U2_GO_ITR;

[blockname='closure', name='U2_G_A4_YED']
U2_G_A4_YED = U2_A4_YED-U2_A_YED_TAR;

[blockname='closure', name='U2_Q4_YED']
U2_Q4_YED = 400*(U2_YED/U2_YED(-1)-1);

[blockname='closure', name='U2_A4_YER']
U2_A4_YER = 100*(U2_YER/U2_YER(-4)-1);

[blockname='closure', name='U2_Q4_HH_COD']
U2_Q4_HH_COD = 400*(U2_HH_COD/U2_HH_COD(-1)-1);

[blockname='closure', name='U2_Q4_MTD']
U2_Q4_MTD = 400*(U2_MTD/U2_MTD(-1)-1);

[blockname='closure', name='U2_T_YEN', type='longrun']
U2_T_YEN = U2_YED*U2_T_YER;

[blockname='fiscal', name='U2_GO_ITN', type='longrun']
U2_GO_ITN = U2_GO_ITR*U2_GO_ITD;

[blockname='fiscal', name='U2_GO_B9N', type='longrun']
U2_GO_B9N = U2_GO_TRN-U2_GO_TEN;

[blockname='fiscal', name='U2_GO_MAL', type='longrun']
U2_GO_MAL = U2_GO_MAL(-1)-U2_GO_B9N+res_U2_GO_MAL;

[blockname='fiscal', name='U2_GO_IPN', type='longrun']
U2_GO_IPN = U2_GO_MAL(-1)*U2_GO_R_IPN/400;

[blockname='fiscal', name='U2_GO_TEN', type='longrun']
U2_GO_TEN = U2_GO_REN+U2_GO_ITN+U2_GO_SIN+U2_GO_PUN+U2_GO_CEN+U2_GO_IPN+U2_GO_SBCN;

[blockname='fiscal', name='U2_GO_COR', type='longrun']
U2_GO_COR = U2_GO_PUR+U2_GO_CER+res_U2_GO_COR;

[blockname='fiscal', name='U2_GO_CON', type='longrun']
U2_GO_CON = U2_GO_CEN+U2_GO_PUN+res_U2_GO_CON;

[blockname='fiscal', name='U2_GO_COD', type='longrun']
U2_GO_COD = U2_GO_CON/U2_GO_COR;

[blockname='fiscal', name='U2_GO_CEN', type='longrun']
U2_GO_CEN = U2_GO_LNN*U2_GO_C_CEN;

[blockname='fiscal', name='U2_GO_PUN', type='longrun']
U2_GO_PUN = U2_HH_COD*U2_GO_PUR;

[blockname='fiscal', name='U2_GO_RW_SCN', type='longrun']
U2_GO_RW_SCN = U2_GO_RW_R_SCN*U2_WAN;

[blockname='fiscal', name='U2_GO_SCN', type='longrun']
U2_GO_SCN = U2_GO_RW_SCN+U2_GO_BU_SCN+U2_GO_HH_SCN;

[blockname='fiscal', name='U2_GO_HH_DTN', type='longrun']
U2_GO_HH_DTN = U2_GO_HH_R_DTN*U2_WAN;

[blockname='fiscal', name='U2_GO_DTN', type='longrun']
U2_GO_DTN = U2_GO_HH_DTN+U2_GO_BU_DTN+res_U2_GO_DTN;

[blockname='fiscal', name='U2_GO_TRN', type='longrun']
U2_GO_TRN = U2_GO_RRN+U2_GO_SCN+U2_GO_TIN+U2_GO_DTN;

[blockname='fiscal', name='U2_GO_R_TIN_NET', type='longrun']
U2_GO_R_TIN_NET = (U2_GO_TIN-U2_GO_SIN)/(U2_HH_CON+U2_GO_PUN);

[blockname='fiscal', name='U2_GO_TIN', type='longrun']
U2_GO_TIN = (U2_HH_CON+U2_GO_PUN)*U2_GO_R_TIN;

[blockname='fiscal', name='U2_GO_BU_DTN', type='longrun']
U2_GO_BU_DTN = U2_GO_BU_R_DTN*U2_GOSMIN;

[blockname='fiscal', name='U2_GO_BU_SCN', type='longrun']
U2_GO_BU_SCN = U2_GO_BU_R_SCN*U2_WAN;

[blockname='fiscal', name='U2_GO_HH_SCN', type='longrun']
U2_GO_HH_SCN = U2_GO_HH_R_SCN*U2_WAN;

[blockname='fiscal', name='U2_GO_CED', type='longrun']
U2_GO_CED = U2_GO_CEN/U2_GO_CER;

[blockname='fiscal', name='U2_GO_LNN', type='longrun']
U2_GO_LNN = exp(log(U2_GO_CER)-log(U2_TFPLG));

[blockname='fiscal', long_run_name='U2_GO_RRN', name='U2_T_GO_RRN', type='longrun']
U2_T_GO_RRN = U2_T_YEN*(U2_GO_Y_ORRN+0.25*dummy_FP*(U2_GO_MAL(-1)/U2_T_YEN(-1)-3.4))+res_U2_T_GO_RRN;

[blockname='fiscal', name='U2_GO_RRN', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_RRN) = log(U2_GO_RRN(-1))+diff(log(U2_T_GO_RRN))+log(U2_GO_RRN(-1)/U2_T_GO_RRN(-1))*eq_U2_go_rrn_ecm+(diff(log(U2_GO_RRN(-1)))-diff(log(U2_T_GO_RRN)))*eq_U2_go_rrn_l0+(diff(log(U2_GO_RRN(-2)))-diff(log(U2_T_GO_RRN)))*eq_U2_go_rrn_l1+res_U2_GO_RRN;

[blockname='fiscal', long_run_name='U2_GO_R_TIN', name='U2_T_GO_R_TIN', type='longrun']
U2_T_GO_R_TIN = 0.9*U2_T_GO_R_TIN(-1)+0.1*U2_T_GO_R_OTIN+res_U2_T_GO_R_TIN;

[blockname='fiscal', name='U2_GO_R_TIN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_R_TIN = U2_T_GO_R_TIN+(U2_GO_R_TIN(-1)-U2_T_GO_R_TIN(-1))*eq_U2_go_r_tin_l0+(U2_GO_R_TIN(-2)-U2_T_GO_R_TIN(-2))*eq_U2_go_r_tin_l1+U2_G_YER*1.515151515151515/100*eq_U2_go_r_tin_U2_g_yer+res_U2_GO_R_TIN;

[blockname='fiscal', long_run_name='U2_GO_BU_R_SCN', name='U2_T_GO_BU_R_SCN', type='longrun']
U2_T_GO_BU_R_SCN = 0.9*U2_T_GO_BU_R_SCN(-1)+0.1*U2_T_GO_BU_R_OSCN+res_U2_T_GO_BU_R_SCN;

[blockname='fiscal', name='U2_GO_BU_R_SCN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_BU_R_SCN = U2_T_GO_BU_R_SCN+(U2_GO_BU_R_SCN(-1)-U2_T_GO_BU_R_SCN(-1))*eq_U2_go_bu_r_scn_l0+(U2_GO_BU_R_SCN(-2)-U2_T_GO_BU_R_SCN(-2))*eq_U2_go_bu_r_scn_l1+2.5*U2_G_YER/100*eq_U2_go_bu_r_scn_U2_g_yer+res_U2_GO_BU_R_SCN;

[blockname='fiscal', long_run_name='U2_GO_HH_R_SCN', name='U2_T_GO_HH_R_SCN', type='longrun']
U2_T_GO_HH_R_SCN = 0.9*U2_T_GO_HH_R_SCN(-1)+0.1*U2_T_GO_HH_R_OSCN+res_U2_T_GO_HH_R_SCN;

[blockname='fiscal', name='U2_GO_HH_R_SCN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_HH_R_SCN = U2_T_GO_HH_R_SCN+(U2_GO_HH_R_SCN(-1)-U2_T_GO_HH_R_SCN(-1))*eq_U2_go_hh_r_scn_l0+(U2_GO_HH_R_SCN(-2)-U2_T_GO_HH_R_SCN(-2))*eq_U2_go_hh_r_scn_l1+2.5*U2_G_YER/100*eq_U2_go_hh_r_scn_U2_g_yer+res_U2_GO_HH_R_SCN;

[blockname='fiscal', long_run_name='U2_GO_RW_R_SCN', name='U2_T_GO_RW_R_SCN', type='longrun']
U2_T_GO_RW_R_SCN = 0.9*U2_T_GO_RW_R_SCN(-1)+0.1*U2_T_GO_RW_R_OSCN+res_U2_T_GO_RW_R_SCN;

[blockname='fiscal', name='U2_GO_RW_R_SCN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_RW_R_SCN = U2_T_GO_RW_R_SCN+(U2_GO_RW_R_SCN(-1)-U2_T_GO_RW_R_SCN(-1))*eq_U2_go_rw_r_scn_l0+(U2_GO_RW_R_SCN(-2)-U2_T_GO_RW_R_SCN(-2))*eq_U2_go_rw_r_scn_l1+2.5*U2_G_YER/100*eq_U2_go_rw_r_scn_U2_g_yer+res_U2_GO_RW_R_SCN;

[blockname='fiscal', long_run_name='U2_GO_BU_R_DTN', name='U2_T_GO_BU_R_DTN', type='longrun']
U2_T_GO_BU_R_DTN = 0.9*U2_T_GO_BU_R_DTN(-1)+0.1*U2_T_GO_BU_R_ODTN+res_U2_T_GO_BU_R_DTN;

[blockname='fiscal', name='U2_GO_BU_R_DTN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_BU_R_DTN = U2_T_GO_BU_R_DTN+(U2_GO_BU_R_DTN(-1)-U2_T_GO_BU_R_DTN(-1))*eq_U2_go_bu_r_dtn_l0+(U2_GO_BU_R_DTN(-2)-U2_T_GO_BU_R_DTN(-2))*eq_U2_go_bu_r_dtn_l1+U2_G_YER*2.439024390243902/100*eq_U2_go_bu_r_dtn_U2_g_yer+res_U2_GO_BU_R_DTN;

[blockname='fiscal', long_run_name='U2_GO_HH_R_DTN', name='U2_T_GO_HH_R_DTN', type='longrun']
U2_T_GO_HH_R_DTN = 0.9*U2_T_GO_HH_R_DTN(-1)+0.1*U2_T_GO_HH_R_ODTN+res_U2_T_GO_HH_R_DTN;

[blockname='fiscal', name='U2_GO_HH_R_DTN', sample='1999Q1:2019Q4', type='estimated']
U2_GO_HH_R_DTN = U2_T_GO_HH_R_DTN+(U2_GO_HH_R_DTN(-1)-U2_T_GO_HH_R_DTN(-1))*eq_U2_go_hh_r_dtn_l0+(U2_GO_HH_R_DTN(-2)-U2_T_GO_HH_R_DTN(-2))*eq_U2_go_hh_r_dtn_l1+2.5*U2_G_YER/100*eq_U2_go_hh_r_dtn_U2_g_yer+res_U2_GO_HH_R_DTN;

[blockname='fiscal', long_run_name='U2_GO_SBCN', name='U2_T_GO_SBCN', type='longrun']
log(U2_T_GO_SBCN) = log(U2_T_GO_SBCN(-1))+0.1*(log(U2_GO_Y_OSBCN/100)-log(U2_T_GO_SBCN(-1)/U2_T_YEN(-1)))+log(U2_T_YEN/U2_T_YEN(-1))+res_U2_T_GO_SBCN;

[blockname='fiscal', name='U2_GO_SBCN', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_SBCN) = log(U2_GO_SBCN(-1))+diff(log(U2_T_GO_SBCN))+log(U2_GO_SBCN(-1)/U2_T_GO_SBCN(-1))*eq_U2_go_sbcn_ecm+(diff(log(U2_GO_SBCN(-1)))-diff(log(U2_T_GO_SBCN)))*eq_U2_go_sbcn_l0+(diff(log(U2_GO_SBCN(-2)))-diff(log(U2_T_GO_SBCN)))*eq_U2_go_sbcn_l1+U2_G_YER*1/(U2_GO_Y_OSBCN/100)/100*eq_U2_go_sbcn_U2_g_yer+res_U2_GO_SBCN;

[blockname='fiscal', long_run_name='U2_GO_PUR', name='U2_T_GO_PUR', type='longrun']
log(U2_T_GO_PUR) = log(U2_T_GO_PUR(-1))+0.1*(log(U2_GO_Y_OPUN/100)-(log(U2_HH_COD(-1)*U2_T_GO_PUR(-1))-log(U2_T_YEN(-1))))+log(U2_T_YER/U2_T_YER(-1))+res_U2_T_GO_PUR;

[blockname='fiscal', name='U2_GO_PUR', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_PUR) = log(U2_GO_PUR(-1))+diff(log(U2_T_GO_PUR))+log(U2_GO_PUR(-1)/U2_T_GO_PUR(-1))*eq_U2_go_pur_ecm+(diff(log(U2_GO_PUR(-1)))-diff(log(U2_T_GO_PUR)))*eq_U2_go_pur_l0+(diff(log(U2_GO_PUR(-2)))-diff(log(U2_T_GO_PUR)))*eq_U2_go_pur_l1+U2_G_YER*1/(U2_GO_Y_OPUN/100)/100*eq_U2_go_pur_U2_g_yer+res_U2_GO_PUR;

[blockname='fiscal', long_run_name='U2_GO_SIN', name='U2_T_GO_SIN', type='longrun']
log(U2_T_GO_SIN) = log(U2_T_YEN/U2_T_YEN(-1))+log(U2_T_GO_SIN(-1))+0.1*(log(U2_GO_Y_OSIN/100)-log(U2_T_GO_SIN(-1)/U2_T_YEN(-1)))+res_U2_T_GO_SIN;

[blockname='fiscal', name='U2_GO_SIN', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_SIN) = log(U2_GO_SIN(-1))+diff(log(U2_T_GO_SIN))+log(U2_GO_SIN(-1)/U2_T_GO_SIN(-1))*eq_U2_go_sin_ecm+(diff(log(U2_GO_SIN(-1)))-diff(log(U2_T_GO_SIN)))*eq_U2_go_sin_l0+(diff(log(U2_GO_SIN(-2)))-diff(log(U2_T_GO_SIN)))*eq_U2_go_sin_l1+U2_G_YER*1/(U2_GO_Y_OSIN/100)/100*eq_U2_go_sin_U2_g_yer+res_U2_GO_SIN;

[blockname='fiscal', long_run_name='U2_GO_CER', name='U2_T_GO_CER', type='longrun']
log(U2_T_GO_CER) = log(U2_T_YER/U2_T_YER(-1))+log(U2_T_GO_CER(-1))+0.1*(log(U2_GO_Y_OCEN/100)-log(U2_GO_CEN(-1)/U2_T_YEN(-1)))+res_U2_T_GO_CER;

[blockname='fiscal', name='U2_GO_CER', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_CER) = log(U2_GO_CER(-1))+diff(log(U2_T_GO_CER))+log(U2_GO_CER(-1)/U2_T_GO_CER(-1))*eq_U2_go_cer_ecm+(diff(log(U2_GO_CER(-1)))-diff(log(U2_T_GO_CER)))*eq_U2_go_cer_l0+(diff(log(U2_GO_CER(-2)))-diff(log(U2_T_GO_CER)))*eq_U2_go_cer_l1+U2_G_YER*1/(U2_GO_Y_OCEN/100)/100*eq_U2_go_cer_U2_g_yer+res_U2_GO_CER;

[blockname='fiscal', name='U2_GO_C_CEN', type='longrun']
log(U2_GO_C_CEN) = log(U2_GO_C_CEN(-1))+diff(log(U2_C_CEN))+0.79*U2_GO_A_C_CEN_EXO+res_U2_GO_C_CEN;

[blockname='fiscal', long_run_name='U2_GO_ITR', name='U2_T_GO_ITR', type='longrun']
log(U2_T_GO_ITR) = log(U2_T_YER)-log(U2_T_YER(-1))+log(U2_T_GO_ITR(-1))+0.1*(log(U2_GO_Y_OITN/100)-(log(U2_T_GO_ITR(-1)*U2_GO_ITD(-1))-log(U2_T_YEN(-1))))+res_U2_T_GO_ITR;

[blockname='fiscal', name='U2_GO_ITR', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_ITR) = log(U2_GO_ITR(-1))+diff(log(U2_T_GO_ITR))+log(U2_GO_ITR(-1)/U2_T_GO_ITR(-1))*eq_U2_go_itr_ecm+(diff(log(U2_GO_ITR(-1)))-diff(log(U2_T_GO_ITR)))*eq_U2_go_itr_l0+(diff(log(U2_GO_ITR(-2)))-diff(log(U2_T_GO_ITR)))*eq_U2_go_itr_l1+U2_G_YER*1/(U2_GO_Y_OITN/100)/100*eq_U2_go_itr_U2_g_yer+res_U2_GO_ITR;

[blockname='fiscal', name='U2_GO_R_IPN', type='longrun']
U2_GO_R_IPN = 0.956021*U2_GO_R_IPN(-1)+U2_AMIR*0.043979+res_U2_GO_R_IPN;

[blockname='fiscal', name='U2_GO_REN', type='longrun']
U2_GO_REN = U2_T_YEN*U2_GO_Y_OREN/100+res_U2_GO_REN;

[blockname='fiscal', name='U2_TFPLG', type='longrun']
log(U2_TFPLG) = log(U2_TFPLG(-1))+0.1*diff(log(U2_T_PRO))+0.9*diff(log(U2_TFPLG(-1)))+res_U2_TFPLG;

[blockname='fiscal', name='U2_GO_ITD', sample='1999Q1:2019Q4', type='estimated']
log(U2_GO_ITD) = diff(log(U2_YED))+log(U2_GO_ITD(-1))+(log(U2_GO_ITD(-1))-log(U2_YED(-1))*0.8418728719999999-0.158127128*log(U2_MTD(-1)))*eq_U2_go_itd_ecm+(diff(log(U2_GO_ITD(-1)))-diff(log(U2_YED)))*eq_U2_go_itd_l0+(diff(log(U2_GO_ITD(-2)))-diff(log(U2_YED)))*eq_U2_go_itd_l1+(diff(log(U2_GO_ITD(-3)))-diff(log(U2_YED)))*eq_U2_go_itd_l2+(diff(log(U2_GO_ITD(-4)))-diff(log(U2_YED)))*eq_U2_go_itd_l3+res_U2_GO_ITD;

[blockname='foreign', name='U2_US_10Y', type='longrun']
U2_US_10Y = 0.9*U2_US_10Y(-1)+U2_OIS_10Y*0.1+res_U2_US_10Y;

[blockname='foreign', name='U2_CMEDEX', type='longrun']
U2_CMEDEX = U2_YED*(0.5+0.5*U2_CMEDEX(-1)/U2_YED(-1))+res_U2_CMEDEX;

[blockname='foreign', name='U2_CXEDEX', type='longrun']
U2_CXEDEX = U2_YED*(0.5+U2_CXEDEX(-1)*0.5/U2_YED(-1))+res_U2_CXEDEX;

[blockname='foreign', name='U2_PCU', type='longrun']
U2_PCU = U2_YED*(0.5+0.5*U2_PCU(-1)/U2_YED(-1))+res_U2_PCU;

[blockname='foreign', name='U2_POU', type='longrun']
U2_POU = U2_YED*(0.5+0.5*U2_POU(-1)/U2_YED(-1))+res_U2_POU;

[blockname='foreign', name='U2_WDREX', type='longrun']
U2_WDREX = U2_YER*0.0399981884057971+res_U2_WDREX;

[blockname='foreign', name='U2_US_EHIC', type='longrun']
U2_US_EHIC = 0.98*U2_US_EHIC(-1)+U2_EHIC*0.02+res_U2_US_EHIC;

[blockname='policy_rule', name='U2_STN', type='longrun']
U2_STN = (0.5+U2_STN_SHADOW)/(1+exp((0.5+U2_STN_SHADOW)*(-100)))-0.5+res_U2_STN;

[blockname='policy_rule', name='U2_STN_R', type='longrun']
U2_STN_R = U2_STN+U2_STN_add;

[blockname='policy_rule', name='U2_ESTN', type='longrun']
U2_ESTN = U2_ESTN(-1)+0.05*(U2_STN-U2_ESTN(-1))+res_U2_ESTN;

[blockname='policy_rule', name='U2_STN_SHADOW', type='longrun']
U2_STN_SHADOW = U2_STN(-1)*(0.87+(1-dummy_MP)*0.13)+dummy_MP*0.13*(U2_A_YED_TAR+U2_STN_STAR+U2_G_A4_HH_COD*1.7+0.1*(U2_A4_YER-2));

[blockname='policy_rule', name='U2_STN_add', type='longrun']
U2_STN_add = 0.99*U2_STN_add(-1)+1/(1+exp(100*U2_STN))*0.01000000000000001*(U2_A4_HH_COD-2)+res_U2_STN_add;

[blockname='policy_rule', name='U2_LTN_add', type='longrun']
U2_LTN_add = 0.95*U2_LTN_add(-1)+(U2_A4_HH_COD-2)*1/(1+exp(100*U2_STN))*0.05000000000000004+res_U2_LTN_add;

[blockname='wage', name='U2_C_CER']
U2_C_CER = U2_C_WAR+U2_C_GO_BU_SCN/U2_HH_COD;

[blockname='wage', name='U2_G_C_CER']
U2_G_C_CER = 100*(log(U2_C_CER)-log(U2_C_CER_TAR));

[blockname='wage', name='U2_C_CEN']
U2_C_CEN = U2_HH_COD*U2_C_CER;

[blockname='wage', name='U2_C_GO_BU_SCN']
U2_C_GO_BU_SCN = U2_GO_BU_R_SCN*U2_C_WAN;

[blockname='wage', name='U2_A_C_CER']
U2_A_C_CER = 100*((U2_C_CER/U2_C_CER(-1))^4-1);

[blockname='wage', name='U2_A_C_CER_TAR']
U2_A_C_CER_TAR = 100*((U2_C_CER_TAR/U2_C_CER_TAR(-1))^4-1);

[blockname='wage', name='U2_C_CER_TAR']
U2_C_CER_TAR = exp(log(U2_YED)+log(U2_T_YER)+log(1-alpha)-0.173953307123438-log(U2_T_LNN)-log(U2_HH_COD));

[blockname='wage', name='U2_WAN']
U2_WAN = U2_LEN*U2_C_WAN;

[blockname='wage', name='U2_C_WAN', type='longrun']
U2_C_WAN = U2_HH_COD*U2_C_WAR;

[blockname='wage', name='U2_C_WAR']
U2_C_WAR = U2_C_WAR(-1)*(1+(U2_A_C_WAN-100*((U2_HH_COD/U2_HH_COD(-1))^4-1))/100)^0.25;

[blockname='wage', name='U2_A_C_CEN']
U2_A_C_CEN = 100*((U2_C_CER/U2_C_CER(-1))^4-1)+100*((U2_HH_COD/U2_HH_COD(-1))^4-1);

[blockname='wage', name='U2_A_C_WAN']
U2_A_C_WAN = 0.297042*U2_A_C_WAN(-1)+0.61573*U2_E_A_C_CEN_1+0.087229*(U2_EHIC+100*(exp(4*(U2_H_Q_YER/100-diff(log(U2_TAU))))-1))-0.069895*U2_G_R_LUN(-1)-U2_G_C_CER*0.102983315144602+400*0.21*(U2_GO_A_C_CEN_EXO-0.297042*U2_GO_A_C_CEN_EXO(-1))+res_U2_A_C_WAN;

[blockname='wage', name='U2_E_A_C_CEN_1']
U2_E_A_C_CEN_1 = U2_A_YED*(-0.2695576610025321)-U2_G_YER*0.1164541189580619-U2_STN_R*0.2437585272490679+U2_ESTN*0.6138649521249531-U2_EHIC*0.07129772839207263+U2_A_C_CEN*0.097375530112005+(U2_EHIC+100*(exp(4*(U2_H_Q_YER/100-diff(log(U2_TAU))))-1))*0.8280668993449847+U2_A_YED(-1)*0.3408553893946055+U2_G_YER(-1)*0.3497828349942163-U2_STN_R(-1)*0.3701064248758856+0.07455757054301027*U2_A_C_CEN(-1);

[blockname='wealth', name='U2_HH_B_APN']
U2_HH_B_APN = 1.009702865892175*U2_HH_B_APN(-1)+res_U2_HH_B_APN;

[blockname='wealth', name='U2_HH_GSN', type='longrun']
U2_HH_GSN = U2_HH_DIN+U2_HH_B_APN-U2_HH_CON;

[blockname='wealth', name='U2_HH_B_KTN']
U2_HH_B_KTN = 1.009702865892175*U2_HH_B_KTN(-1)+res_U2_HH_B_KTN;

[blockname='wealth', name='U2_HH_IVN']
U2_HH_IVN = U2_HH_IVN(-1)*U2_IVN/U2_IVN(-1)+res_U2_HH_IVN;

[blockname='wealth', name='U2_HH_ITN']
log(U2_HH_ITN) = log(U2_HH_ITN(-1))+diff(log(U2_HH_IHN))+res_U2_HH_ITN;

[blockname='wealth', name='U2_HH_KFN', type='longrun']
U2_HH_KFN = U2_HH_ITN+U2_HH_IVN;

[blockname='wealth', name='U2_HH_NPN']
U2_HH_NPN = 1.009702865892175*U2_HH_NPN(-1)+res_U2_HH_NPN;

[blockname='wealth', name='U2_HH_KFNPN', type='longrun']
U2_HH_KFNPN = U2_HH_KFN+U2_HH_NPN;

[blockname='wealth', name='U2_HH_CFKN', type='longrun']
U2_HH_CFKN = U2_HWN(-1)*U2_HH_D_IHN;

[blockname='wealth', name='U2_HH_D_IHN']
U2_HH_D_IHN = U2_HH_D_IHN(-1)+res_U2_HH_D_IHN;

[blockname='wealth', name='U2_HH_B9N', type='longrun']
U2_HH_B9N = U2_HH_GSN+U2_HH_B_KTN-U2_HH_KFNPN;

[blockname='wealth', name='U2_HH_TWN', type='longrun']
U2_HH_TWN = U2_HH_FWN+U2_HWN;

[blockname='wealth', name='U2_HH_TWR', type='longrun']
U2_HH_TWR = U2_HH_TWN/U2_HH_COD;

[blockname='wealth', name='U2_HWN', type='longrun']
U2_HWN = U2_HH_IHN+U2_HWN(-1)*U2_RPPD/U2_RPPD(-1)-U2_HH_CFKN+res_U2_HWN;

[blockname='wealth', name='U2_HH_FWN', type='longrun']
U2_HH_FWN = U2_HH_FWN(-1)*(0.5930+0.0666*(1+U2_OIS_10Y(-1)/100)/(1+U2_OIS_10Y/100)+0.1622*(1+U2_CB(-1)/100)/(1+U2_CB/100)+0.1782*(1+U2_COE(-1)/100)/(1+U2_COE/100))+U2_HH_B9N+res_U2_HH_FWN;

[blockname='residential', long_run_name='U2_HH_IHR', name='U2_HH_OIHR', type='longrun']
U2_HH_OIHR = exp(log(U2_YER)+(-2.218812700565000)-TTREND*0.00524154912771095+0.2306281616192818-0.1596371660873066*log(U2_HH_U_IHR2)-1.058242895853434*log(U2_S_RPPD_IHD));

[blockname='residential', name='U2_HH_IHR']
diff(log(U2_HH_IHR)) = U2_H_Q_YER(-1)*0.06739281215369619/100+0.09638899937471782*(log(U2_HH_OIHR(-1))-log(U2_HH_IHR(-1)))+0.04898487614573668*diff(log(U2_HH_IHR(-1)))+0.2265768155371683*diff(log(U2_HH_IHR(-2)))+U2_HH_EOIHR+1.051566914914065*(diff(log(U2_YER))-U2_H_Q_YER/100)+res_U2_HH_IHR;

[blockname='residential', name='U2_HH_EOIHR']
U2_HH_EOIHR = U2_A_YED(-1)*0.001342509324637609+U2_A_YED(-2)*0.0007398534363448995-U2_G_YER(-1)*0.001790786823029919+U2_G_YER(-2)*0.0005218877207684839-U2_STN_R(-1)*0.001992445459738594+U2_STN_R(-2)*0.0008276789567732724+U2_ESTN(-1)*0.001164752413378179-U2_EHIC(-1)*0.002082362760981302+0.1081272620865525*diff(log(U2_HH_OIHR(-1)))+0.02567408778743843*diff(log(U2_HH_OIHR(-2)))+U2_H_Q_YER(-1)*0.5232441462894115/100;

[blockname='residential', name='U2_S_RPPD_IHD', type='longrun']
U2_S_RPPD_IHD = U2_HH_IHD/U2_RPPD;

[blockname='residential', name='U2_Q_S_RPPD_IHD']
U2_Q_S_RPPD_IHD = 100*(log(U2_S_RPPD_IHD)-log(U2_S_RPPD_IHD(-1)));

[blockname='residential', name='U2_ES_RPPD_IHD']
U2_ES_RPPD_IHD = 0.875*U2_ES_RPPD_IHD(-1)+U2_Q_S_RPPD_IHD*0.125;

[blockname='residential', name='U2_HH_U_IHR2', type='longrun']
U2_HH_U_IHR2 = 400*(0.034+U2_LRN/400-U2_EHIC/400-U2_ES_RPPD_IHD/100);

[blockname='residential', name='U2_HH_S_IHD', type='longrun']
U2_HH_S_IHD = U2_HH_IHN/U2_HH_IHR/U2_HH_COD;

[blockname='residential', name='U2_HH_IHN', type='longrun']
U2_HH_IHN = U2_HH_IHR*U2_HH_IHD;

[blockname='houseprice', name='U2_RPPD', type='longrun']
U2_RPPD = U2_HH_COD*U2_S_RPPD;

[blockname='houseprice', name='U2_S_RPPD']
log(U2_S_RPPD) = log(U2_S_RPPD(-1))+0.03377856324609714*(log(U2_OS_RPPD(-1))-log(U2_S_RPPD(-1)))+0.6743540829337471*(log(U2_S_RPPD(-1))-log(U2_S_RPPD(-2)))+U2_EOS_RPPD+res_U2_S_RPPD;

[blockname='houseprice', name='U2_HH_U_IHR', type='longrun']
U2_HH_U_IHR = 400*(0.034+U2_HH_L_IHN/400-U2_EHIC/400+U2_S_TIH/4-U2_Q16_S_RPPD*0.4/100);

[blockname='houseprice', name='U2_Q16_S_RPPD']
U2_Q16_S_RPPD = 100*(log(U2_S_RPPD)-log(U2_S_RPPD(-1)))/16+0.9375*U2_Q16_S_RPPD(-1);

[blockname='houseprice', long_run_name='U2_S_RPPD', name='U2_OS_RPPD', type='longrun']
U2_OS_RPPD = exp(4.2259320570432+0.977525222310148*log(U2_HH_DIR)-0.977525222310148*log(U2_SKHR)-0.604599818558331*log(U2_HH_U_IHR));

[blockname='houseprice', name='U2_SKHR', type='longrun']
U2_SKHR = U2_HH_IHR+U2_SKHR(-1)*0.996;

[blockname='houseprice', name='U2_EOS_RPPD']
U2_EOS_RPPD = U2_A_YED(-1)*0.0002715732720895404+U2_A_YED(-2)*0.0002419868208141559-U2_G_YER(-1)*0.0006648010312597198+U2_G_YER(-2)*0.0002228579393801011+0.001176952361833178*U2_STN(-1)-0.0005820038394574548*U2_STN(-2)-U2_ESTN(-1)*0.000594952194231918-U2_EHIC(-1)*0.0005135600929033672+0.02194424631387919*(log(U2_OS_RPPD(-1))-log(U2_OS_RPPD(-2)))+0.005115262633694701*(log(U2_OS_RPPD(-2))-log(U2_OS_RPPD(-3)));

[blockname='inventories', name='U2_SIVR']
diff(log(U2_SIVR)) = 0.13494*(log(U2_T_Y_SIVR(-1))-log(U2_Y_SIVR(-1)))+0.67349*(log(U2_SIVR(-1))-log(U2_SIVR(-2)))+(log(U2_YER(-1))-log(U2_YER(-2)))*0.32651+res_U2_SIVR;

[blockname='inventories', name='U2_Y_SIVR']
U2_Y_SIVR = U2_SIVR/U2_YER;

[blockname='inventories', name='U2_IVR']
U2_IVR = U2_SIVR-U2_SIVR(-1);

[blockname='inventories', name='U2_T_Y_SIVR']
U2_T_Y_SIVR = U2_T_Y_SIVR(-1)+0.005*(U2_Y_SIVR-U2_T_Y_SIVR(-1))+res_U2_T_Y_SIVR;

[blockname='labour', name='U2_TAU']
diff(log(U2_TAU)) = dummy_long_run*diff(log(U2_TAU(-1)))+(1-dummy_long_run)*0.00196851410772615+res_U2_TAU;

[blockname='labour', name='U2_T_R_LFP']
U2_T_R_LFP = U2_T_R_LFP(-1)+res_U2_T_R_LFP;

[blockname='labour', name='U2_T_R_LUN']
U2_T_R_LUN = U2_T_R_LUN(-1)+res_U2_T_R_LUN;

[blockname='labour', long_run_name='U2_C_LNH', name='U2_T_C_LNH', type='longrun']
U2_T_C_LNH = U2_T_C_LNH(-1)+res_U2_T_C_LNH;

[blockname='labour', name='U2_LEN', type='longrun']
U2_LEN = U2_LNN-U2_LSN;

[blockname='labour', fit_name='U2_OLNN', long_run_name='U2_LNN', name='U2_OLNN', type='longrun']
U2_OLNN = exp(log(U2_YER)+log(1-alpha)-0.173953307123438-log(U2_HH_COD*U2_C_CER/U2_YED));

[blockname='labour', name='U2_G_R_LUN']
U2_G_R_LUN = U2_R_LUN-U2_T_R_LUN;

[blockname='labour', name='U2_EOLNN']
U2_EOLNN = U2_A_YED(-1)*1.578873109358013e-05-U2_A_YED(-2)*1.337780689398635e-05-U2_G_YER(-1)*8.569726548615962e-05-U2_G_YER(-2)*0.0001682943048859181-U2_STN_R(-1)*0.0002745989540475266+U2_STN_R(-2)*0.0001972083698857169+U2_ESTN(-1)*7.739035378068758e-05+8.545187589671117e-17*U2_ESTN(-2)-U2_EHIC(-1)*2.410924198985992e-06+6.744692460590405e-17*U2_EHIC(-2)+0.01568182305482077*(log(U2_OLNN(-1))-log(U2_OLNN(-2)))+0.01030957924387501*(log(U2_OLNN(-2))-log(U2_OLNN(-3)))+0.3032207014044752*(log(U2_TAU(-1))-log(U2_TAU(-2)))+8.844442903390441e-17*(log(U2_TAU(-2))-log(U2_TAU(-3)));

[blockname='labour', name='U2_C_LNH']
log(U2_C_LNH) = U2_C_LEH_a0*(log(U2_T_C_LNH(-1))-log(U2_C_LNH(-1)))+U2_C_LEH_a1*(U2_G_YER/100-U2_G_YER(-1)/100-(log(U2_LNN)-log(U2_T_LNN)-(log(U2_LNN(-1))-log(U2_T_LNN(-1)))))+log(U2_C_LNH(-1))-log(U2_T_C_LNH(-1))+log(U2_T_C_LNH)+res_U2_C_LNH;

[blockname='labour', name='U2_LSN', sample='1999Q1:2015Q4']
log(U2_LSN) = diff(log(U2_LNN(-1)))+log(U2_LSN(-1))-0.1*(log(U2_LSN(-1))-log(U2_OLSN(-1)))+res_U2_LSN;

[blockname='labour', estim_type='fit', fit_name='U2_LSN', long_run_name='U2_LSN', name='U2_OLSN', type='longrun']
U2_OLSN = exp(u2_olsn_constant+log(U2_OLNN));

[blockname='labour', name='U2_R_LFP']
U2_R_LFP = U2_R_LFP(-1)+(-0.5)*(U2_R_LFP(-1)-U2_T_R_LFP(-1))-5*U2_R_LFP_a2*(U2_R_LUN(-1)/100-U2_T_R_LUN(-1)/100)+U2_T_R_LFP-U2_T_R_LFP(-1)+res_U2_R_LFP;

[blockname='labour', name='U2_LNN']
log(U2_LNN) = log(U2_LNN(-1))+0.6203224928225873*(log(U2_LNN(-1))-log(U2_LNN(-2)))+diff(log(U2_TAU(-1)))*0.05046540347424328+0.03163100878165136*(log(U2_OLNN(-1))-log(U2_LNN(-1)))+0.1372933400911414*(diff(log(U2_YER))-diff(log(U2_T_YER)))+U2_EOLNN+0.15061*(diff(log(U2_GO_LNN))-diff(log(U2_LNN)))-0.09342677064400988*(diff(log(U2_GO_LNN(-1)))-diff(log(U2_LNN(-1))))+0.000000000737218030979342+res_U2_LNN;

[blockname='labour', name='U2_LFN', type='longrun']
U2_LFN = U2_WAP*U2_R_LFP/100;

[blockname='labour', name='U2_R_LUN', type='longrun']
U2_R_LUN = 100*(1-U2_LNN/U2_LFN);

[blockname='labour', name='U2_T_LNN']
U2_T_LNN = U2_T_R_LFP/100*U2_WAP*(1-U2_T_R_LUN/100);

[blockname='trade', estimate='fit', fit_name='U2_MTR', long_run_name='U2_MTR', name='U2_MST', sample='1999Q1:2019Q4', type='longrun']
U2_MST = exp(mst_c+log(U2_WER)+mst_param_1*((log(U2_MTD)-(log(U2_MED)-log(U2_EXR))*0.094573)/0.905427-log(U2_YED)));

[blockname='trade', estimate='1', name='U2_MTR', sample='2000Q1:2019Q4', type='shortrun']
log(U2_MTR) = U2_H_Q_YER/100+log(U2_MTR(-1))+dummy_long_run*0.001220-0.084203*(log(U2_MTR(-1))-log(U2_MST(-1)))+1.693878*(diff(log(U2_WER))-U2_H_Q_YER/100)-0.118700*diff(log(U2_EENX))+res_U2_MTR;

[blockname='trade', name='U2_XTD', type='longrun']
U2_XTD = (U2_XXD*U2_XXR+U2_XNR*U2_XND)/(U2_XNR+U2_XXR);

[blockname='trade', name='U2_MTD', type='longrun']
U2_MTD = (U2_MXD*U2_MXR+U2_MND*U2_MNR)/(U2_MNR+U2_MXR);

[blockname='trade', estimate='fit', fit_name='U2_MND', long_run_name='U2_MND', name='U2_PMNST', sample='1996Q1:2019Q4', type='longrun']
U2_PMNST = exp(log(U2_MXD)+dummy_long_run*pmnst_c+pmnst_param1*(log(U2_YED)-log(U2_MXD)));

[blockname='trade', name='U2_XNR', type='longrun']
log(U2_XNR) = dummy_long_run*xnr_c+log(U2_XNR(-1))+log(U2_MNR)-log(U2_MNR(-1))+(1-dummy_long_run)*0.2*(log(U2_MNR(-1))-log(U2_XNR(-1)))+res_U2_XNR;

[blockname='trade', name='U2_XNN', type='longrun']
log(U2_XNN) = dummy_long_run*xnn_c+log(U2_XNN(-1))+log(U2_MNN)-log(U2_MNN(-1))+(1-dummy_long_run)*0.2*(log(U2_MNN(-1))-log(U2_XNN(-1)))+res_U2_XNN;

[blockname='trade', estimate='fit', fit_name='U2_XXR', long_run_name='U2_XXR', name='U2_XXST', sample='2000Q1:2019Q4', type='longrun']
U2_XXST = exp(xxst_c+log(U2_WDREX)+xxst_param_1*(log(U2_XXD)-log(U2_CXDEX))+TTREND*xxst_trend);

[blockname='trade', estimate='1', name='U2_XXR', sample='2000Q1:2019Q4', type='shortrun']
log(U2_XXR) = U2_H_Q_YER/100+log(U2_XXR(-1))+dummy_long_run*0.000500-0.072033*(log(U2_XXR(-1))-log(U2_XXST(-1)))+0.892159*(diff(log(U2_WDREX))-U2_H_Q_YER/100)+diff(log(U2_EENX))*0.197255+res_U2_XXR;

[blockname='trade', estimate='fit', fit_name='U2_XXD', long_run_name='U2_XXD', name='U2_PXXST', sample='1995Q1:2019Q4', type='longrun']
U2_PXXST = exp(log(U2_CXDEX)+dummy_long_run*pxxst_c+pxxst_param_1*(log(U2_MXD)*0.3107+log(U2_YED)*0.6893-log(U2_CXDEX)));

[blockname='trade', estimate='1', name='U2_XXD', sample='2000Q1:2019Q4', type='shortrun']
log(U2_XXD) = diff(log(U2_YED))*(1-dummy_long_run)+log(U2_XXD(-1))+dummy_long_run*xxd_c+xxd_ecm*(log(U2_XXD(-1))-log(U2_PXXST(-1)))+xxd_lcxd*(diff(log(U2_CXDEX))-diff(log(U2_YED))*(1-dummy_long_run))+dummy_long_run*diff(log(U2_YED))*xxd_lyed+xxd_lmxd*(diff(log(U2_MXD))-diff(log(U2_YED))*(1-dummy_long_run))+res_U2_XXD;

[blockname='trade', estimate='fit', fit_name='U2_MXR', long_run_name='U2_MXR', name='U2_MXST', sample='2000Q1:2019Q4', type='longrun']
U2_MXST = exp(log(U2_WER)+mxst_c+mxst_param_1*((log(U2_MXD)-(log(U2_MED)-log(U2_EXR))*0.1165)/0.8835-log(U2_YED)));

[blockname='trade', estimate='1', name='U2_MXR', sample='2000Q1:2019Q4', type='shortrun']
log(U2_MXR) = U2_H_Q_YER/100+log(U2_MXR(-1))+dummy_long_run*0.003431-0.070171*(log(U2_MXR(-1))-log(U2_MXST(-1)))+(diff(log(U2_WER))-U2_H_Q_YER/100)*1.552084-diff(log(U2_EENX))*0.103905+res_U2_MXR;

[blockname='trade', estimate='fit', fit_name='U2_MXD', long_run_name='U2_MXD', name='U2_PMXST', sample='1996Q1:2019Q4', type='longrun']
U2_PMXST = exp(log(U2_CMDEX)+dummy_long_run*pmxst_c+0.1165*(log(U2_MED)-log(U2_EXR)-log(U2_CMDEX))+0.30*(log(U2_YED)-log(U2_CMDEX)));

[blockname='trade', estimate='1', name='U2_MXD', sample='2000Q1:2019Q4', type='shortrun']
log(U2_MXD) = U2_EHIC/400+log(U2_MXD(-1))+0.09612*(diff(log(U2_MED))-diff(log(U2_EXR))-U2_EHIC/400)-0.04357*(log(U2_MXD(-1))-log(U2_PMXST(-1)))+0.31723*(diff(log(U2_CMDEX))-U2_EHIC/400)+0.03797*(diff(log(U2_MED(-1)))-diff(log(U2_EXR(-1)))-U2_EHIC(-1)/400)+res_U2_MXD;

[blockname='trade', name='U2_WER', type='longrun']
U2_WER = U2_HH_COR*KAPPA_C+U2_GO_PUR*KAPPA_PUR+U2_GO_CER*KAPPA_CER+U2_GO_ITR*KAPPA_GO_ITR+U2_BUHH_ITR*KAPPA_BUHH_ITR+U2_XTR*KAPPA_X;

[blockname='trade', name='U2_WEREX', type='longrun']
U2_WEREX = U2_HH_COR*KAPPA_C+U2_GO_PUR*KAPPA_PUR+U2_GO_CER*KAPPA_CER+U2_GO_ITR*KAPPA_GO_ITR+U2_BUHH_ITR*KAPPA_BUHH_ITR+U2_XXR*KAPPA_X;

[blockname='trade', name='U2_CXDEX', type='longrun']
log(U2_CXDEX) = log(U2_CXEDEX)+log(U2_EENX);

[blockname='trade', name='U2_CMDEX', type='longrun']
U2_CMDEX = exp(log(U2_CXEDEX)+log(U2_EENX));

[blockname='trade', name='U2_MED', type='longrun']
U2_MED = exp(0.8*log(U2_POU)+0.2*log(U2_PCU));

[blockname='trade', name='U2_MEED', type='longrun']
U2_MEED = exp((log(U2_MTD)-(log(U2_MED)-log(U2_EXR))*0.094573)/0.905427);

[blockname='trade', name='U2_XTR', type='longrun']
U2_XTR = U2_XNR+U2_XXR;

[blockname='trade', name='U2_MNR', type='longrun']
U2_MNR = U2_MTR-U2_MXR;

[blockname='trade', name='U2_XTN', type='longrun']
U2_XTN = U2_XNN+U2_XXN;

[blockname='trade', name='U2_MTN', type='longrun']
U2_MTN = U2_MNN+U2_MXN;

[blockname='trade', name='U2_XXN', type='longrun']
U2_XXN = U2_XXD*U2_XXR;

[blockname='trade', name='U2_MXN', type='longrun']
U2_MXN = U2_MXD*U2_MXR;

[blockname='trade', name='U2_MNN', type='longrun']
U2_MNN = U2_MND*U2_MNR;

[blockname='trade', name='U2_XND', type='longrun']
U2_XND = U2_XNN/U2_XNR;

[blockname='trade', estimate='1', name='U2_MND', sample='1996Q2:2019Q4', type='shortrun']
diff(log(U2_MND)) = diff(log(U2_YED))*(1-dummy_long_run)+dummy_long_run*lmnd_c+lmnd_ecm*(log(U2_MND(-1))-log(U2_PMNST(-1)))+lmnd_lag1*(diff(log(U2_MND(-1)))-diff(log(U2_YED))*(1-dummy_long_run))+lmnd_lcmd*(diff(log(U2_CMDEX))-diff(log(U2_YED))*(1-dummy_long_run))+lmnd_lmed*(diff(log(U2_MED(-1)))-diff(log(U2_YED))*(1-dummy_long_run))+res_U2_MND;

[blockname='price', long_run_name='U2_HH_COD', name='U2_HH_Q_OCOD', type='longrun']
U2_HH_Q_OCOD = exp(log(U2_YED)*(1-u2_hh_q_ocod_w)+u2_hh_q_ocod_w*log(U2_MXD)-0.0225193162293+TTREND*0.000296690463541);

[blockname='price', name='U2_HH_COD', type='noestim']
log(U2_HH_COD) = 0.9629*log(U2_HH_COD(-1))+0.10636*diff(log(U2_MXD))+0.03710*log(U2_HH_Q_OCOD(-1))+diff(log(U2_YED))*0.70707+diff(log(U2_YED(-1)))*0.18657+0.12*diff(U2_GO_R_TIN_NET)+0.004452000000000002*diff(U2_GO_R_TIN_NET(-1))+res_U2_HH_COD;

[blockname='price', name='U2_BU_ITD']
diff(log(U2_BU_ITD)) = 20*u2_bu_q_itd_l0_bu_q_oitd*(log(U2_BU_ITD(-1))-log(U2_BU_Q_OITD(-1)))+diff(log(U2_YED))*u2_bu_q_itd_l0_q_yed+diff(log(U2_YED(-1)))*(1-u2_bu_q_itd_l0_q_yed)+res_U2_BU_ITD;

[blockname='price', name='U2_HH_IHD']
diff(log(U2_HH_IHD)) = 3*u2_hh_q_itd_l0_hh_q_oitd*(log(U2_HH_IHD(-1))-log(U2_HH_Q_OIHD(-1)))+u2_hh_q_itd_l1*diff(log(U2_HH_IHD(-1)))+diff(log(U2_YED))*(1-u2_hh_q_itd_l1)+res_U2_HH_IHD;

[blockname='price', long_run_name='U2_BU_ITD', name='U2_BU_Q_OITD', type='longrun']
U2_BU_Q_OITD = exp(log(U2_YED)*(1-u2_q_oitd_w)+log(U2_MXD)*u2_q_oitd_w);

[blockname='price', long_run_name='U2_HH_IHD', name='U2_HH_Q_OIHD', type='longrun']
U2_HH_Q_OIHD = exp(log(U2_YED)*(1-u2_q_oitd_w)+log(U2_MXD)*u2_q_oitd_w);

[blockname='price', name='U2_A4_HH_COD']
U2_A4_HH_COD = 100*(U2_HH_COD/U2_HH_COD(-4)-1);

[blockname='price', name='U2_G_A4_HH_COD']
U2_G_A4_HH_COD = U2_A4_HH_COD-U2_A_YED_TAR;

[blockname='production', name='U2_T_YER', type='longrun']
U2_T_YER = exp(alpha*log(U2_SKFR)+log(U2_T_PRO)*(1-alpha)+(1-alpha)*(log(U2_T_R_LFP/100)+log(U2_WAP)+log(1-U2_T_R_LUN/100))+eps_LOG_U2_T_YER);

[blockname='production', name='U2_T_PRO']
U2_T_PRO = U2_Q_T_PRO*U2_T_PRO(-1);

[blockname='production', name='U2_SKFR', type='longrun']
U2_SKFR = U2_ITR+U2_SKFR(-1)*(1-U2_D_ITR/100);

[blockname='production', name='U2_Q_T_PRO', type='longrun']
U2_Q_T_PRO = 1.002986593727326+res_U2_Q_T_PRO;

[blockname='production', name='eps_LOG_U2_T_YER']
eps_LOG_U2_T_YER = 0.9782*eps_LOG_U2_T_YER(-1);

[blockname='wapro', name='U2_A_YED']
U2_A_YED = U2_A_YED(-1)*0.311362+0.506136*U2_E_A_YED_1+U2_EHIC*0.182502+U2_G_C_CER*0.09757+U2_G_YER*0.041816+400*0.6*diff(U2_GO_R_TIN_NET)+400*diff(U2_GO_R_TIN_NET(-1))*(-0.1868172)+res_U2_A_YED;

[blockname='wapro', name='U2_A_YED_TAR']
U2_A_YED_TAR = 0.9596*U2_A_YED_TAR(-1)+0.04039999999999999*U2_A_YED_TAR_SS;

[blockname='wapro', name='U2_G_A_YED']
U2_G_A_YED = U2_A_YED-U2_A_YED_TAR;

[blockname='wapro', name='U2_E_G_A_YED']
U2_E_G_A_YED = U2_E_A_YED_1-U2_A_YED_TAR;

[blockname='wapro', name='U2_E_A_YED_1']
U2_E_A_YED_1 = U2_A_YED*0.1564938673812253+U2_G_YER*0.1334458854623972-U2_STN_R*0.0117218285745433+U2_ESTN*0.3461724099496407+U2_EHIC*0.5277900324573784+U2_A_YED(-1)*0.3157161001613962+U2_G_YER(-1)*0.02095769577295687-U2_STN_R(-1)*0.3344505813750971;

[blockname='wapro', name='U2_YED']
log(U2_YED) = log(U2_YED(-1))+log((1+U2_A_YED/100)^0.25);

[blockname='wapro', name='U2_EHIC', type='longrun']
U2_EHIC = U2_EHIC(-1)*0.75+U2_A_YED(-1)*0.1+U2_A_YED_TAR(-1)*0.15+res_U2_EHIC;

[blockname='wapro', name='U2_A4_YED']
U2_A4_YED = 100*(U2_YED/U2_YED(-4)-1);

[blockname='financial', name='U2_STN_E10Y', type='longrun']
U2_STN_E10Y = U2_A_YED*(-0.02935600242341364)+U2_G_YER*0.1066501285291795+U2_STN_R*0.06982637746875023+U2_ESTN*0.8833611584172785+U2_EHIC*0.04540332082378963-U2_A_YED(-1)*0.01604731840037561-U2_G_YER(-1)*0.09131793059891881+U2_STN_R(-1)*0.04681246411397701+U2_ESTN(-1)*3.107870691373677e-17-U2_EHIC(-1)*1.691460791236887e-16;

[blockname='financial', name='U2_HH_SL_CON', type='longrun']
U2_HH_SL_CON = 0.6509727045687386*U2_HH_SL_CON(-1)-U2_G_YER_E10Y*0.5225342408229894+1.506934288049603+res_U2_HH_SL_CON;

[blockname='financial', name='U2_HH_SL_IHN', type='longrun']
U2_HH_SL_IHN = 0.6509221213626804*U2_HH_SL_IHN(-1)-U2_G_YER_E10Y*0.2994203101089784+0.4854373313251851+res_U2_HH_SL_IHN;

[blockname='financial', name='U2_SLRN', type='longrun']
U2_SLRN = 0.8385459986364576*U2_SLRN(-1)-U2_G_YER_E10Y*0.1320766274035222+0.199878472463441+res_U2_SLRN;

[blockname='financial', name='U2_SCB', type='longrun']
U2_SCB = 0.8504901554212972*U2_SCB(-1)-U2_G_YER_E10Y*0.009346069915519031+0.1412295613350578+res_U2_SCB;

[blockname='financial', name='U2_SCOE', type='longrun']
U2_SCOE = 0.8988750095568504*U2_SCOE(-1)-U2_G_YER_E10Y*0.2986890244333941+0.5540725821151542+res_U2_SCOE;

[blockname='financial', name='U2_HH_SL_DEP', type='longrun']
U2_HH_SL_DEP = 0.9416613210722482*U2_HH_SL_DEP(-1)-U2_G_YER_E10Y*0.04581928074633671+0.02657195760686209+res_U2_HH_SL_DEP;

[blockname='financial', name='U2_TP_10Y', type='longrun']
U2_TP_10Y = 0.5934746986689802*U2_TP_10Y(-1)-U2_G_YER_E10Y*0.1055570364658525+0.2018076160034774*U2_dUSTP_10Y+0.6172097419851481+res_U2_TP_10Y;

[blockname='financial', name='U2_OIS_10Y', type='longrun']
U2_OIS_10Y = U2_STN_E10Y+U2_TP_10Y+U2_LTN_add+res_U2_OIS_10Y;

[blockname='financial', name='U2_HH_L_CON', type='longrun']
U2_HH_L_CON = U2_HH_SL_CON+U2_OIS_10Y*0.6905+0.3095*U2_STN;

[blockname='financial', name='U2_HH_CRFL_CON', type='longrun']
U2_HH_CRFL_CON = U2_OIS_10Y*0.6905+0.3095*U2_STN;

[blockname='financial', name='U2_HH_L_IHN', type='longrun']
U2_HH_L_IHN = U2_HH_SL_IHN+U2_OIS_10Y*0.5392+U2_STN*0.4608;

[blockname='financial', name='U2_HH_L_DEP', type='longrun']
U2_HH_L_DEP = U2_HH_SL_DEP+U2_OIS_10Y*0.2854+U2_STN*0.7146;

[blockname='financial', name='U2_LRN', type='longrun']
U2_LRN = U2_SLRN+U2_OIS_10Y*0.2538+U2_STN*0.7462+res_U2_LRN;

[blockname='financial', name='U2_COE', type='longrun']
U2_COE = U2_SCOE+U2_OIS_10Y*0.9617+U2_STN*0.0383;

[blockname='financial', name='U2_CB', type='longrun']
U2_CB = U2_SCB+U2_OIS_10Y*0.5937+U2_STN*0.4063;

[blockname='financial', name='U2_G_YER_E10Y']
U2_G_YER_E10Y = U2_A_YED*0.004691282785574243+U2_G_YER*0.4952841544611875-U2_STN_R*0.4484295340037714+U2_ESTN*0.2783977467257209-U2_EHIC*0.004310644622662757-U2_A_YED(-1)*0.000380638162894678-U2_G_YER(-1)*0.2102047177245404+U2_STN_R(-1)*0.1700317872780548+U2_ESTN(-1)*1.799996721700482e-17+U2_EHIC(-1)*7.197816231568054e-18;

[blockname='financial', name='U2_USTP_10Y', type='longrun']
U2_USTP_10Y = 0.0905862971565422+0.9*U2_USTP_10Y(-1)+res_U2_USTP_10Y;

[blockname='financial', name='U2_dUSTP_10Y', type='longrun']
U2_dUSTP_10Y = U2_USTP_10Y-0.905862971565422;

[blockname='financial', name='U2_BU_L_ITN', type='longrun']
U2_BU_L_ITN = U2_CB*0.073313141+U2_LRN*0.580167022+U2_COE*0.346519836;

[blockname='financial', name='U2_YRB_10Y', type='longrun']
U2_YRB_10Y = U2_OIS_10Y+res_U2_YRB_10Y;

[blockname='financial', name='U2_AMIR', type='longrun']
U2_AMIR = U2_STN_R*0.437404834387+U2_YRB_10Y*0.5625951656129999+res_U2_AMIR;

