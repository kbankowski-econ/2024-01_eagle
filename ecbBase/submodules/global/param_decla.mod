/*eq_u2_test
eq_u2_test_ecm*/

U2_A_YED_TAR_SS
/*EA_yhat_pi
EA_pi_pi
EA_beta_pi
EA_mc_pim*/

// HICP BLOCK PARAMETERS
U2_OHEG_a1
U2_OHEG_a2
U2_HEG_ecm
U2_HEG_a1
U2_HEG_a2
U2_OHEF_a1
U2_HEF_ecm
U2_HEF_b1
U2_HEF_b2
U2_HEF_ar1
U2_OHEX_a1
U2_OHEX_a2
U2_HEX_ecm
U2_HEX_a1
U2_HEX_a2
HICP_WE
HICP_WF

// FISCAL BLOCK PARAMETERS
eq_U2_go_bu_r_dtn_U2_g_yer
eq_U2_go_bu_r_dtn_l0
eq_U2_go_bu_r_dtn_l1
eq_U2_go_cer_ecm
eq_U2_go_cer_l0
eq_U2_go_cer_l1
eq_U2_go_cer_U2_g_yer
eq_U2_go_hh_r_dtn_U2_g_yer
eq_U2_go_hh_r_dtn_l0
eq_U2_go_hh_r_dtn_l1
eq_U2_go_itd_ecm
eq_U2_go_itd_l0
eq_U2_go_itd_l1
eq_U2_go_itd_l2
eq_U2_go_itd_l3
eq_U2_go_itr_ecm
eq_U2_go_itr_l0
eq_U2_go_itr_l1
eq_U2_go_itr_U2_g_yer
eq_U2_go_pur_ecm
eq_U2_go_pur_l0
eq_U2_go_pur_l1
eq_U2_go_pur_U2_g_yer
eq_U2_go_bu_r_scn_U2_g_yer
eq_U2_go_bu_r_scn_l0
eq_U2_go_bu_r_scn_l1
eq_U2_go_hh_r_scn_U2_g_yer
eq_U2_go_hh_r_scn_l0
eq_U2_go_hh_r_scn_l1
eq_U2_go_rw_r_scn_U2_g_yer
eq_U2_go_rw_r_scn_l0
eq_U2_go_rw_r_scn_l1
eq_U2_go_r_tin_l0
eq_U2_go_r_tin_l1
eq_U2_go_r_tin_U2_g_yer 
eq_U2_go_rrn_ecm
eq_U2_go_rrn_l0
eq_U2_go_rrn_l1
eq_U2_go_sbcn_ecm
eq_U2_go_sbcn_l0
eq_U2_go_sbcn_l1
eq_U2_go_sbcn_U2_g_yer
eq_U2_go_sin_ecm
eq_U2_go_sin_l0
eq_U2_go_sin_l1
eq_U2_go_sin_U2_g_yer
// LABOUR MARKET PARAMETERS
U2_LNN_a0
U2_LNN_a1
U2_LNN_a2
//U2_LNN_a3
U2_LNN_a4
U2_EOLNN_a1
U2_EOLNN_a2
U2_EOLNN_a3
U2_EOLNN_a4
U2_EOLNN_a5
U2_EOLNN_a6
U2_EOLNN_a7
U2_EOLNN_a8
U2_EOLNN_a9
U2_EOLNN_a10
U2_EOLNN_a11
U2_EOLNN_a12
U2_EOLNN_a13
U2_EOLNN_a14
U2_C_LEH_a0
U2_C_LEH_a1
U2_LSN_a1
U2_LSN_c0
U2_LSN_b1
U2_LSN_b2
U2_R_LFP_a1
U2_R_LFP_a2
u2_olsn_constant

//TRADE PARAMETERS
// Estimated params (behavioral equations)
mst_c, mst_param_1, mtr_c, mtr_lag1, mtr_ecm, mtr_itr, mtr_xtr
pmnst_c, pmnst_param1, lmnd_c, lmnd_ecm, lmnd_lag1, lmnd_lcmd, lmnd_lmed
xnr_c
xnn_c
xxst_c, xxst_param_1, xxst_trend, xxr_c, xxr_wdrex, xxr_leenx
pxxst_c, pxxst_param_1, pxxst_param_2, xxd_c, xxd_ecm, xxd_lcxd, xxd_lyed, xxd_lmxd //xxd_lmtd
mxst_c, mxst_param_1, mxr_c, mxr_lag1, mxr_ecm, mxr_itr, mxr_xtr
pmxst_c, lmxd_c, lmxd_ecm, lmxd_lcmd, lmxd_lmpcom, lmxd_lxxd //lmxd_lxtd
scale_wer
pxst_c, xtd_ecm, mtd_ecm, pmst_c
// Calibrated params
// demand equation
KAPPA_X, KAPPA_C, KAPPA_PUR, KAPPA_CER, KAPPA_GO_ITR, KAPPA_BUHH_ITR

// PRICE BLOCK DEFLATORS
u2_hh_q_ocod_w, u2_q_oitd_w,


// Estimated parameters
u2_hh_q_cod_c, u2_hh_q_cod_l0_hh_q_ocod, u2_hh_q_cod_l0_q_yed,
u2_hh_q_cod_l0_q_mtdno, u2_hh_q_cod_l1_q_yed, u2_hh_q_cod_l0_q_pei,

u2_q_itd_c, u2_q_itd_l1, u2_q_itd_l0_q_yed, u2_q_itd_l1_q_yed,
u2_q_itd_l0_q_mtd, u2_q_itd_l1_q_mtd,

u2_bu_q_itd_c, u2_bu_q_itd_l0_bu_q_oitd, u2_bu_q_itd_l0_q_yed,
u2_bu_q_itd_l0_q_mtdno, u2_bu_q_itd_l1_q_yed, u2_q_itd_l0_q_oitd,

u2_hh_q_itd_c, u2_hh_q_itd_l0_hh_q_oitd, u2_hh_q_itd_l0_q_yed,

u2_hh_q_itd_l1, u2_hh_q_itd_l0_q_mtdno

// PRODUCTION FUNCTION
alpha

/*
// WAPRO
U2_A_YED_TAR_SS
U2_STR_SS
EA_yhat_pi
EA_pi_pi
EA_beta_pi
EA_beta_wpi
EA_lag_wpi
EA_pi_wpi
EA_u_wpi
EA_wgap_y
*/