//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;
ctryNumberDouble = 4;
save("paramsToBeSaved", 'ctryNumberDouble')
// Is sigma equal to one for any country ?
// Is omega equal to zero for any country ?
// Endogenous
var
 EA_bf
 EA_m
 EA_pic4
 EA_y
 EA_ygrowth
 EA_ygrowth4
 EA_z
;
// Parameters
parameters
 EA_phirgy
 EA_phirpi
 EA_phirr
 EA_rhoz
 EA_zbar
 EA_ybar
;
// Exogenous
varexo
 EA_epsz
;
// Endogenous
var
 EAAEAB_excy
 EAARW_excy
 EAAUS_excy
 EAAEAB_exiy
 EAARW_exiy
 EAAUS_exiy
EAA_fx
 EAAEAB_gammaimc
 EAARW_gammaimc
 EAAUS_gammaimc
 EAAEAB_gammaimcdag
 EAARW_gammaimcdag
 EAAUS_gammaimcdag
 EAAEAB_gammaimi
 EAARW_gammaimi
 EAAUS_gammaimi
 EAAEAB_gammaimidag
 EAARW_gammaimidag
 EAAUS_gammaimidag
 EAAEAB_gammaimcg
 EAARW_gammaimcg
 EAAUS_gammaimcg
 EAAEAB_gammaimcgdag
 EAARW_gammaimcgdag
 EAAUS_gammaimcgdag
 EAAEAB_gammaimig
 EAARW_gammaimig
 EAAUS_gammaimig
 EAAEAB_gammaimigdag
 EAARW_gammaimigdag
 EAAUS_gammaimigdag
EAA_gx
 EAAEAB_im
 EAARW_im
 EAAUS_im
 EAAEAB_imc
 EAARW_imc
 EAAUS_imc
 EAAEAB_imcy
 EAARW_imcy
 EAAUS_imcy
 EAAEAB_imi
 EAARW_imi
 EAAUS_imi
 EAAEAB_imiy
 EAARW_imiy
 EAAUS_imiy
 EAAEAB_imcg
 EAARW_imcg
 EAAUS_imcg
 EAAEAB_imcgy
 EAARW_imcgy
 EAAUS_imcgy
 EAAEAB_imig
 EAARW_imig
 EAAUS_imig
 EAAEAB_imigy
 EAARW_imigy
 EAAUS_imigy
EAA_piex
EAA_pextilde
 EAAEAB_rer
 EAARW_rer
 EAAUS_rer
EAA_sx
 EAAEAB_tot
 EAARW_tot
 EAAUS_tot
 EAAEAB_weight
 EAARW_weight
 EAAUS_weight
 EAAEAB_weightex
 EAARW_weightex
 EAAUS_weightex
 EAAEAB_weightim
 EAARW_weightim
 EAAUS_weightim
 EAA_b
 EAA_bf
 EAA_by
 EAA_c
 EAA_ci
 EAA_cj
 EAA_cy
 EAA_d
 EAA_dn
 EAA_dt
 EAA_epsilonm
 EAA_etot
 EAA_ex
 EAA_fh
 EAA_fi
 EAA_fj
 EAA_fn
 EAA_cg
 EAA_gammab
 EAA_gammai
 EAA_gammaider
 EAA_gammau
 EAA_gammauder
 EAA_gammav
 EAA_gammavi
 EAA_gammavider
 EAA_gammavj
 EAA_gammavjder
 EAA_gh
 EAA_gi
 EAA_gj
 EAA_gn
 EAA_cgy
 EAA_ht
 EAA_htc
 EAA_hti
 EAA_htcg
 EAA_htig
 EAA_i
 EAA_ig
 EAA_ii
 EAA_im
 EAA_imc
 EAA_imcy
 EAA_imi
 EAA_imiy
 EAA_imcg
 EAA_imcgy
 EAA_imig
 EAA_imigy
 EAA_imy
 EAA_internalrer
 EAA_iy
 EAA_igy
 EAA_k
 EAA_kd
 EAA_kdn
 EAA_kdt
 EAA_ki
 EAA_lambdai
 EAA_lambdaj
 EAA_lcy
 EAA_m
 EAA_mcn
 EAA_mct
 EAA_mi
 EAA_mj
 EAA_nd
 EAA_ndi
 EAA_ndj
 EAA_ndn
 EAA_ndt
 EAA_ni
 EAA_nj
 EAA_nt
 EAA_ntc
 EAA_nti
 EAA_ntcg
 EAA_ntig
 EAA_pex
 EAA_pht
 EAA_phttilde
 EAA_pi
 EAA_pcg
 EAA_pig
 EAA_pic
 EAA_pic4
 EAA_piex4
 EAA_piht
 EAA_piimc
 EAA_piimi
 EAA_piimcg
 EAA_piimig
 EAA_piimc4
 EAA_pim
 EAA_pimc
 EAA_pimi
 EAA_pimcg
 EAA_pimig
 EAA_pint
 EAA_piw
 EAA_piw4
 EAA_pnt
 EAA_pnttilde
 EAA_pttc
 EAA_ptti
 EAA_pttcg
 EAA_pttig
 EAA_py
 EAA_q
 EAA_qc
 EAA_qi
 EAA_qcg
 EAA_qig
 EAA_r
 EAA_reer
 EAA_rer
 EAA_rerdep
 EAA_rk
 EAA_rp
 EAA_rr
 EAA_rrstar
 EAA_sh
 EAA_si
 EAA_sj
 EAA_snt
 EAA_t
 EAA_tauc
 EAA_taud
 EAA_tauk
 EAA_taun
 EAA_tauwf
 EAA_tauwh
 EAA_tb
 EAA_tby
 EAA_ti
 EAA_tj
 EAA_tot
 EAA_tr
 EAA_tri
 EAA_trj
 EAA_try
 EAA_ttc
 EAA_tti
 EAA_ttcg
 EAA_ttig
 EAA_ty
 EAA_u
 EAA_utili
 EAA_utilj
 EAA_vi
 EAA_vj
 EAA_w
 EAA_wcst
 EAA_whty
 EAA_wi
 EAA_witilde
 EAA_wj
 EAA_wjtilde
 EAA_wnty
 EAA_wy
 EAA_y
 EAA_ygap
 EAA_ygrowth
 EAA_ygrowth4
 EAA_yhty
 EAA_ynty
 EAA_yshare
 EAA_ysn
 EAA_yst
 EAA_zcon
 EAA_zinv
 EAA_zn
 EAA_zt
;
// Parameters
parameters
 EAA_alphan
 EAA_alphat
 EAA_beta
 EAA_bfytarget
 EAA_bhytarget
 EAA_bytarget
 EAA_chin
 EAA_chih
 EAA_chii
 EAA_chij
 EAA_chix
 EAA_delta
 EAA_gammab1
 EAA_gammai1
 EAA_gammaimc1
 EAA_gammaimi1
 EAA_gammaimcg1
 EAA_gammaimig1
 EAA_gammau2
 EAA_gammav1
 EAA_gammav2
 EAA_kappa
 EAA_muc
 EAA_mumc
 EAA_mutc
 EAA_nuc
 EAA_nutc
 EAA_mui
 EAA_mumi
 EAA_muti
 EAA_nui
 EAA_nuti
 EAA_mucg
 EAA_mumcg
 EAA_mutcg
 EAA_nucg
 EAA_nutcg
 EAA_muig
 EAA_mumig
 EAA_mutig
 EAA_nuig
 EAA_nutig
 EAA_omega
 EAA_phitb
 EAA_pi4target
 EAA_psin
 EAA_psit
 EAA_rhocg
 EAA_rhoig
 EAA_rhorp
 EAA_rhotauc
 EAA_rhotaud
 EAA_rhotauk
 EAA_rhotaun
 EAA_rhotauwf
 EAA_rhotauwh
 EAA_rhotr
 EAA_rhowcst
 EAA_rhozcon
 EAA_rhozinv
 EAA_rhozn
 EAA_rhozt
 EAA_sigma
 EAA_size
 EAA_xin
 EAA_xih
 EAA_xii
 EAA_xij
 EAA_xix
 EAA_zeta
 EAA_eta
 EAA_etai
 EAA_etaj
 EAA_thetan
 EAA_thetat
 EAA_upsilont
 EAA_upsilontr
 EAAEAB_rerbar
 EAARW_rerbar
 EAAUS_rerbar
 EAA_pibar
 EAA_psinbar
 EAA_psitbar
 EAA_pybar
 EAA_qbar
 EAA_trybar
 EAA_ybar
 EAA_ynbar
 EAA_ytbar
;
// Exogenous
varexo
 EAA_cgybar
 EAA_igybar
 EAA_taucbar
 EAA_taudbar
 EAA_taukbar
 EAA_taunbar
 EAA_tauwfbar
 EAA_tauwhbar
 EAA_wcstbar
 EAA_zconbar
 EAA_zinvbar
 EAA_znbar
 EAA_ztbar
 EAA_epsgc
 EAA_epsgi
 EAA_epstauc
 EAA_epstaud
 EAA_epstauk
 EAA_epstaun
 EAA_epstauwf
 EAA_epstauwh
 EAA_epstr
 EAA_epswcst
 EAA_epszcon
 EAA_epszinv
 EAA_epszn
 EAA_epszt
;
// Endogenous
var
 EABEAA_excy
 EABRW_excy
 EABUS_excy
 EABEAA_exiy
 EABRW_exiy
 EABUS_exiy
EAB_fx
 EABEAA_gammaimc
 EABRW_gammaimc
 EABUS_gammaimc
 EABEAA_gammaimcdag
 EABRW_gammaimcdag
 EABUS_gammaimcdag
 EABEAA_gammaimi
 EABRW_gammaimi
 EABUS_gammaimi
 EABEAA_gammaimidag
 EABRW_gammaimidag
 EABUS_gammaimidag
 EABEAA_gammaimcg
 EABRW_gammaimcg
 EABUS_gammaimcg
 EABEAA_gammaimcgdag
 EABRW_gammaimcgdag
 EABUS_gammaimcgdag
 EABEAA_gammaimig
 EABRW_gammaimig
 EABUS_gammaimig
 EABEAA_gammaimigdag
 EABRW_gammaimigdag
 EABUS_gammaimigdag
EAB_gx
 EABEAA_im
 EABRW_im
 EABUS_im
 EABEAA_imc
 EABRW_imc
 EABUS_imc
 EABEAA_imcy
 EABRW_imcy
 EABUS_imcy
 EABEAA_imi
 EABRW_imi
 EABUS_imi
 EABEAA_imiy
 EABRW_imiy
 EABUS_imiy
 EABEAA_imcg
 EABRW_imcg
 EABUS_imcg
 EABEAA_imcgy
 EABRW_imcgy
 EABUS_imcgy
 EABEAA_imig
 EABRW_imig
 EABUS_imig
 EABEAA_imigy
 EABRW_imigy
 EABUS_imigy
EAB_piex
EAB_pextilde
 EABEAA_rer
 EABRW_rer
 EABUS_rer
EAB_sx
 EABEAA_tot
 EABRW_tot
 EABUS_tot
 EABEAA_weight
 EABRW_weight
 EABUS_weight
 EABEAA_weightex
 EABRW_weightex
 EABUS_weightex
 EABEAA_weightim
 EABRW_weightim
 EABUS_weightim
 EAB_b
 EAB_bf
 EAB_by
 EAB_c
 EAB_ci
 EAB_cj
 EAB_cy
 EAB_d
 EAB_dn
 EAB_dt
 EAB_epsilonm
 EAB_etot
 EAB_ex
 EAB_fh
 EAB_fi
 EAB_fj
 EAB_fn
 EAB_cg
 EAB_gammab
 EAB_gammai
 EAB_gammaider
 EAB_gammau
 EAB_gammauder
 EAB_gammav
 EAB_gammavi
 EAB_gammavider
 EAB_gammavj
 EAB_gammavjder
 EAB_gh
 EAB_gi
 EAB_gj
 EAB_gn
 EAB_cgy
 EAB_ht
 EAB_htc
 EAB_hti
 EAB_htcg
 EAB_htig
 EAB_i
 EAB_ig
 EAB_ii
 EAB_im
 EAB_imc
 EAB_imcy
 EAB_imi
 EAB_imiy
 EAB_imcg
 EAB_imcgy
 EAB_imig
 EAB_imigy
 EAB_imy
 EAB_internalrer
 EAB_iy
 EAB_igy
 EAB_k
 EAB_kd
 EAB_kdn
 EAB_kdt
 EAB_ki
 EAB_lambdai
 EAB_lambdaj
 EAB_lcy
 EAB_m
 EAB_mcn
 EAB_mct
 EAB_mi
 EAB_mj
 EAB_nd
 EAB_ndi
 EAB_ndj
 EAB_ndn
 EAB_ndt
 EAB_ni
 EAB_nj
 EAB_nt
 EAB_ntc
 EAB_nti
 EAB_ntcg
 EAB_ntig
 EAB_pex
 EAB_pht
 EAB_phttilde
 EAB_pi
 EAB_pcg
 EAB_pig
 EAB_pic
 EAB_pic4
 EAB_piex4
 EAB_piht
 EAB_piimc
 EAB_piimi
 EAB_piimcg
 EAB_piimig
 EAB_piimc4
 EAB_pim
 EAB_pimc
 EAB_pimi
 EAB_pimcg
 EAB_pimig
 EAB_pint
 EAB_piw
 EAB_piw4
 EAB_pnt
 EAB_pnttilde
 EAB_pttc
 EAB_ptti
 EAB_pttcg
 EAB_pttig
 EAB_py
 EAB_q
 EAB_qc
 EAB_qi
 EAB_qcg
 EAB_qig
 EAB_r
 EAB_reer
 EAB_rer
 EAB_rerdep
 EAB_rk
 EAB_rp
 EAB_rr
 EAB_rrstar
 EAB_sh
 EAB_si
 EAB_sj
 EAB_snt
 EAB_t
 EAB_tauc
 EAB_taud
 EAB_tauk
 EAB_taun
 EAB_tauwf
 EAB_tauwh
 EAB_tb
 EAB_tby
 EAB_ti
 EAB_tj
 EAB_tot
 EAB_tr
 EAB_tri
 EAB_trj
 EAB_try
 EAB_ttc
 EAB_tti
 EAB_ttcg
 EAB_ttig
 EAB_ty
 EAB_u
 EAB_utili
 EAB_utilj
 EAB_vi
 EAB_vj
 EAB_w
 EAB_wcst
 EAB_whty
 EAB_wi
 EAB_witilde
 EAB_wj
 EAB_wjtilde
 EAB_wnty
 EAB_wy
 EAB_y
 EAB_ygap
 EAB_ygrowth
 EAB_ygrowth4
 EAB_yhty
 EAB_ynty
 EAB_yshare
 EAB_ysn
 EAB_yst
 EAB_zcon
 EAB_zinv
 EAB_zn
 EAB_zt
;
// Parameters
parameters
 EAB_alphan
 EAB_alphat
 EAB_beta
 EAB_bfytarget
 EAB_bhytarget
 EAB_bytarget
 EAB_chin
 EAB_chih
 EAB_chii
 EAB_chij
 EAB_chix
 EAB_delta
 EAB_gammab1
 EAB_gammai1
 EAB_gammaimc1
 EAB_gammaimi1
 EAB_gammaimcg1
 EAB_gammaimig1
 EAB_gammau2
 EAB_gammav1
 EAB_gammav2
 EAB_kappa
 EAB_muc
 EAB_mumc
 EAB_mutc
 EAB_nuc
 EAB_nutc
 EAB_mui
 EAB_mumi
 EAB_muti
 EAB_nui
 EAB_nuti
 EAB_mucg
 EAB_mumcg
 EAB_mutcg
 EAB_nucg
 EAB_nutcg
 EAB_muig
 EAB_mumig
 EAB_mutig
 EAB_nuig
 EAB_nutig
 EAB_omega
 EAB_phitb
 EAB_pi4target
 EAB_psin
 EAB_psit
 EAB_rhocg
 EAB_rhoig
 EAB_rhorp
 EAB_rhotauc
 EAB_rhotaud
 EAB_rhotauk
 EAB_rhotaun
 EAB_rhotauwf
 EAB_rhotauwh
 EAB_rhotr
 EAB_rhowcst
 EAB_rhozcon
 EAB_rhozinv
 EAB_rhozn
 EAB_rhozt
 EAB_sigma
 EAB_size
 EAB_xin
 EAB_xih
 EAB_xii
 EAB_xij
 EAB_xix
 EAB_zeta
 EAB_eta
 EAB_etai
 EAB_etaj
 EAB_thetan
 EAB_thetat
 EAB_upsilont
 EAB_upsilontr
 EABEAA_rerbar
 EABRW_rerbar
 EABUS_rerbar
 EAB_pibar
 EAB_psinbar
 EAB_psitbar
 EAB_pybar
 EAB_qbar
 EAB_trybar
 EAB_ybar
 EAB_ynbar
 EAB_ytbar
;
// Exogenous
varexo
 EAB_cgybar
 EAB_igybar
 EAB_taucbar
 EAB_taudbar
 EAB_taukbar
 EAB_taunbar
 EAB_tauwfbar
 EAB_tauwhbar
 EAB_wcstbar
 EAB_zconbar
 EAB_zinvbar
 EAB_znbar
 EAB_ztbar
 EAB_epsgc
 EAB_epsgi
 EAB_epstauc
 EAB_epstaud
 EAB_epstauk
 EAB_epstaun
 EAB_epstauwf
 EAB_epstauwh
 EAB_epstr
 EAB_epswcst
 EAB_epszcon
 EAB_epszinv
 EAB_epszn
 EAB_epszt
;
// Endogenous
var
 RWEAA_excy
 RWEAB_excy
 RWUS_excy
 RWEAA_exiy
 RWEAB_exiy
 RWUS_exiy
RW_fx
 RWEAA_gammaimc
 RWEAB_gammaimc
 RWUS_gammaimc
 RWEAA_gammaimcdag
 RWEAB_gammaimcdag
 RWUS_gammaimcdag
 RWEAA_gammaimi
 RWEAB_gammaimi
 RWUS_gammaimi
 RWEAA_gammaimidag
 RWEAB_gammaimidag
 RWUS_gammaimidag
 RWEAA_gammaimcg
 RWEAB_gammaimcg
 RWUS_gammaimcg
 RWEAA_gammaimcgdag
 RWEAB_gammaimcgdag
 RWUS_gammaimcgdag
 RWEAA_gammaimig
 RWEAB_gammaimig
 RWUS_gammaimig
 RWEAA_gammaimigdag
 RWEAB_gammaimigdag
 RWUS_gammaimigdag
RW_gx
 RWEAA_im
 RWEAB_im
 RWUS_im
 RWEAA_imc
 RWEAB_imc
 RWUS_imc
 RWEAA_imcy
 RWEAB_imcy
 RWUS_imcy
 RWEAA_imi
 RWEAB_imi
 RWUS_imi
 RWEAA_imiy
 RWEAB_imiy
 RWUS_imiy
 RWEAA_imcg
 RWEAB_imcg
 RWUS_imcg
 RWEAA_imcgy
 RWEAB_imcgy
 RWUS_imcgy
 RWEAA_imig
 RWEAB_imig
 RWUS_imig
 RWEAA_imigy
 RWEAB_imigy
 RWUS_imigy
RW_piex
RW_pextilde
 RWEAA_rer
 RWEAB_rer
 RWUS_rer
RW_sx
 RWEAA_tot
 RWEAB_tot
 RWUS_tot
 RWEAA_weight
 RWEAB_weight
 RWUS_weight
 RWEAA_weightex
 RWEAB_weightex
 RWUS_weightex
 RWEAA_weightim
 RWEAB_weightim
 RWUS_weightim
 RW_b
 RW_bf
 RW_by
 RW_c
 RW_ci
 RW_cj
 RW_cy
 RW_d
 RW_dn
 RW_dt
 RW_epsilonm
 RW_etot
 RW_ex
 RW_fh
 RW_fi
 RW_fj
 RW_fn
 RW_cg
 RW_gammab
 RW_gammai
 RW_gammaider
 RW_gammau
 RW_gammauder
 RW_gammav
 RW_gammavi
 RW_gammavider
 RW_gammavj
 RW_gammavjder
 RW_gh
 RW_gi
 RW_gj
 RW_gn
 RW_cgy
 RW_ht
 RW_htc
 RW_hti
 RW_htcg
 RW_htig
 RW_i
 RW_ig
 RW_ii
 RW_im
 RW_imc
 RW_imcy
 RW_imi
 RW_imiy
 RW_imcg
 RW_imcgy
 RW_imig
 RW_imigy
 RW_imy
 RW_internalrer
 RW_iy
 RW_igy
 RW_k
 RW_kd
 RW_kdn
 RW_kdt
 RW_ki
 RW_lambdai
 RW_lambdaj
 RW_lcy
 RW_m
 RW_mcn
 RW_mct
 RW_mi
 RW_mj
 RW_nd
 RW_ndi
 RW_ndj
 RW_ndn
 RW_ndt
 RW_ni
 RW_nj
 RW_nt
 RW_ntc
 RW_nti
 RW_ntcg
 RW_ntig
 RW_pex
 RW_pht
 RW_phttilde
 RW_pi
 RW_pcg
 RW_pig
 RW_pic
 RW_pic4
 RW_piex4
 RW_piht
 RW_piimc
 RW_piimi
 RW_piimcg
 RW_piimig
 RW_piimc4
 RW_pim
 RW_pimc
 RW_pimi
 RW_pimcg
 RW_pimig
 RW_pint
 RW_piw
 RW_piw4
 RW_pnt
 RW_pnttilde
 RW_pttc
 RW_ptti
 RW_pttcg
 RW_pttig
 RW_py
 RW_q
 RW_qc
 RW_qi
 RW_qcg
 RW_qig
 RW_r
 RW_reer
 RW_rer
 RW_rerdep
 RW_rk
 RW_rp
 RW_rr
 RW_rrstar
 RW_sh
 RW_si
 RW_sj
 RW_snt
 RW_t
 RW_tauc
 RW_taud
 RW_tauk
 RW_taun
 RW_tauwf
 RW_tauwh
 RW_tb
 RW_tby
 RW_ti
 RW_tj
 RW_tot
 RW_tr
 RW_tri
 RW_trj
 RW_try
 RW_ttc
 RW_tti
 RW_ttcg
 RW_ttig
 RW_ty
 RW_u
 RW_utili
 RW_utilj
 RW_vi
 RW_vj
 RW_w
 RW_wcst
 RW_whty
 RW_wi
 RW_witilde
 RW_wj
 RW_wjtilde
 RW_wnty
 RW_wy
 RW_y
 RW_ygap
 RW_ygrowth
 RW_ygrowth4
 RW_yhty
 RW_ynty
 RW_yshare
 RW_ysn
 RW_yst
 RW_zcon
 RW_zinv
 RW_zn
 RW_zt
;
// Parameters
parameters
 RW_alphan
 RW_alphat
 RW_beta
 RW_bfytarget
 RW_bhytarget
 RW_bytarget
 RW_chin
 RW_chih
 RW_chii
 RW_chij
 RW_chix
 RW_delta
 RW_gammab1
 RW_gammai1
 RW_gammaimc1
 RW_gammaimi1
 RW_gammaimcg1
 RW_gammaimig1
 RW_gammau2
 RW_gammav1
 RW_gammav2
 RW_kappa
 RW_muc
 RW_mumc
 RW_mutc
 RW_nuc
 RW_nutc
 RW_mui
 RW_mumi
 RW_muti
 RW_nui
 RW_nuti
 RW_mucg
 RW_mumcg
 RW_mutcg
 RW_nucg
 RW_nutcg
 RW_muig
 RW_mumig
 RW_mutig
 RW_nuig
 RW_nutig
 RW_omega
 RW_phirgy
 RW_phirpi
 RW_phirr
 RW_phitb
 RW_pi4target
 RW_psin
 RW_psit
 RW_rhocg
 RW_rhoig
 RW_rhorp
 RW_rhotauc
 RW_rhotaud
 RW_rhotauk
 RW_rhotaun
 RW_rhotauwf
 RW_rhotauwh
 RW_rhotr
 RW_rhowcst
 RW_rhozcon
 RW_rhozinv
 RW_rhozn
 RW_rhozt
 RW_sigma
 RW_size
 RW_xin
 RW_xih
 RW_xii
 RW_xij
 RW_xix
 RW_zeta
 RW_eta
 RW_etai
 RW_etaj
 RW_thetan
 RW_thetat
 RW_upsilont
 RW_upsilontr
 RWEAA_rerbar
 RWEAB_rerbar
 RWUS_rerbar
 RW_pibar
 RW_psinbar
 RW_psitbar
 RW_pybar
 RW_qbar
 RW_trybar
 RW_ybar
 RW_ynbar
 RW_ytbar
;
// Exogenous
varexo
 RW_cgybar
 RW_igybar
 RW_taucbar
 RW_taudbar
 RW_taukbar
 RW_taunbar
 RW_tauwfbar
 RW_tauwhbar
 RW_wcstbar
 RW_zconbar
 RW_zinvbar
 RW_znbar
 RW_ztbar
 RW_epsgc
 RW_epsgi
 RW_epstauc
 RW_epstaud
 RW_epstauk
 RW_epstaun
 RW_epstauwf
 RW_epstauwh
 RW_epstr
 RW_epswcst
 RW_epszcon
 RW_epszinv
 RW_epszn
 RW_epszt
;
// Endogenous
var
 USEAA_excy
 USEAB_excy
 USRW_excy
 USEAA_exiy
 USEAB_exiy
 USRW_exiy
US_fx
 USEAA_gammaimc
 USEAB_gammaimc
 USRW_gammaimc
 USEAA_gammaimcdag
 USEAB_gammaimcdag
 USRW_gammaimcdag
 USEAA_gammaimi
 USEAB_gammaimi
 USRW_gammaimi
 USEAA_gammaimidag
 USEAB_gammaimidag
 USRW_gammaimidag
 USEAA_gammaimcg
 USEAB_gammaimcg
 USRW_gammaimcg
 USEAA_gammaimcgdag
 USEAB_gammaimcgdag
 USRW_gammaimcgdag
 USEAA_gammaimig
 USEAB_gammaimig
 USRW_gammaimig
 USEAA_gammaimigdag
 USEAB_gammaimigdag
 USRW_gammaimigdag
US_gx
 USEAA_im
 USEAB_im
 USRW_im
 USEAA_imc
 USEAB_imc
 USRW_imc
 USEAA_imcy
 USEAB_imcy
 USRW_imcy
 USEAA_imi
 USEAB_imi
 USRW_imi
 USEAA_imiy
 USEAB_imiy
 USRW_imiy
 USEAA_imcg
 USEAB_imcg
 USRW_imcg
 USEAA_imcgy
 USEAB_imcgy
 USRW_imcgy
 USEAA_imig
 USEAB_imig
 USRW_imig
 USEAA_imigy
 USEAB_imigy
 USRW_imigy
US_piex
US_pextilde
 USEAA_rer
 USEAB_rer
 USRW_rer
US_sx
 USEAA_tot
 USEAB_tot
 USRW_tot
 USEAA_weight
 USEAB_weight
 USRW_weight
 USEAA_weightex
 USEAB_weightex
 USRW_weightex
 USEAA_weightim
 USEAB_weightim
 USRW_weightim
 US_b
 US_bf
 US_by
 US_c
 US_ci
 US_cj
 US_cy
 US_d
 US_dn
 US_dt
 US_epsilonm
 US_etot
 US_ex
 US_fh
 US_fi
 US_fj
 US_fn
 US_cg
 US_gammai
 US_gammaider
 US_gammau
 US_gammauder
 US_gammav
 US_gammavi
 US_gammavider
 US_gammavj
 US_gammavjder
 US_gh
 US_gi
 US_gj
 US_gn
 US_cgy
 US_ht
 US_htc
 US_hti
 US_htcg
 US_htig
 US_i
 US_ig
 US_ii
 US_im
 US_imc
 US_imcy
 US_imi
 US_imiy
 US_imcg
 US_imcgy
 US_imig
 US_imigy
 US_imy
 US_internalrer
 US_iy
 US_igy
 US_k
 US_kd
 US_kdn
 US_kdt
 US_ki
 US_lambdai
 US_lambdaj
 US_lcy
 US_m
 US_mcn
 US_mct
 US_mi
 US_mj
 US_nd
 US_ndi
 US_ndj
 US_ndn
 US_ndt
 US_ni
 US_nj
 US_nt
 US_ntc
 US_nti
 US_ntcg
 US_ntig
 US_pex
 US_pht
 US_phttilde
 US_pi
 US_pcg
 US_pig
 US_pic
 US_pic4
 US_piex4
 US_piht
 US_piimc
 US_piimi
 US_piimcg
 US_piimig
 US_piimc4
 US_pim
 US_pimc
 US_pimi
 US_pimcg
 US_pimig
 US_pint
 US_piw
 US_piw4
 US_pnt
 US_pnttilde
 US_pttc
 US_ptti
 US_pttcg
 US_pttig
 US_py
 US_q
 US_qc
 US_qi
 US_qcg
 US_qig
 US_r
 US_reer
 US_rer
 US_rk
 US_rr
 US_rrstar
 US_sh
 US_si
 US_sj
 US_snt
 US_t
 US_tauc
 US_taud
 US_tauk
 US_taun
 US_tauwf
 US_tauwh
 US_tb
 US_tby
 US_ti
 US_tj
 US_tr
 US_tri
 US_trj
 US_try
 US_ttc
 US_tti
 US_ttcg
 US_ttig
 US_ty
 US_u
 US_utili
 US_utilj
 US_vi
 US_vj
 US_w
 US_wcst
 US_whty
 US_wi
 US_witilde
 US_wj
 US_wjtilde
 US_wnty
 US_wy
 US_y
 US_ygap
 US_ygrowth
 US_ygrowth4
 US_yhty
 US_ynty
 US_yshare
 US_ysn
 US_yst
 US_zcon
 US_zinv
 US_zn
 US_zt
;
// Parameters
parameters
 US_alphan
 US_alphat
 US_beta
 US_bytarget
 US_chin
 US_chih
 US_chii
 US_chij
 US_chix
 US_delta
 US_gammai1
 US_gammaimc1
 US_gammaimi1
 US_gammaimcg1
 US_gammaimig1
 US_gammau2
 US_gammav1
 US_gammav2
 US_kappa
 US_muc
 US_mumc
 US_mutc
 US_nuc
 US_nutc
 US_mui
 US_mumi
 US_muti
 US_nui
 US_nuti
 US_mucg
 US_mumcg
 US_mutcg
 US_nucg
 US_nutcg
 US_muig
 US_mumig
 US_mutig
 US_nuig
 US_nutig
 US_omega
 US_phirgy
 US_phirpi
 US_phirr
 US_phitb
 US_pi4target
 US_psin
 US_psit
 US_rhocg
 US_rhoig
 US_rhotauc
 US_rhotaud
 US_rhotauk
 US_rhotaun
 US_rhotauwf
 US_rhotauwh
 US_rhotr
 US_rhowcst
 US_rhozcon
 US_rhozinv
 US_rhozn
 US_rhozt
 US_sigma
 US_size
 US_xin
 US_xih
 US_xii
 US_xij
 US_xix
 US_zeta
 US_eta
 US_etai
 US_etaj
 US_thetan
 US_thetat
 US_upsilont
 US_upsilontr
 USEAA_rerbar
 USEAB_rerbar
 USRW_rerbar
 US_pibar
 US_psinbar
 US_psitbar
 US_pybar
 US_qbar
 US_trybar
 US_ybar
 US_ynbar
 US_ytbar
;
// Exogenous
varexo
 US_cgybar
 US_igybar
 US_taucbar
 US_taudbar
 US_taukbar
 US_taunbar
 US_tauwfbar
 US_tauwhbar
 US_wcstbar
 US_zconbar
 US_zinvbar
 US_znbar
 US_ztbar
 US_epsgc
 US_epsgi
 US_epstauc
 US_epstaud
 US_epstauk
 US_epstaun
 US_epstauwf
 US_epstauwh
 US_epstr
 US_epswcst
 US_epszcon
 US_epszinv
 US_epszn
 US_epszt
;
parameters
 EAAEAB_numc
 EAAEAB_numi
 EAAEAB_numcg
 EAAEAB_numig
 EAAUS_numc
 EAAUS_numi
 EAAUS_numcg
 EAAUS_numig
 EABEAA_numc
 EABEAA_numi
 EABEAA_numcg
 EABEAA_numig
 EABRW_numc
 EABRW_numi
 EABRW_numcg
 EABRW_numig
 RWEAB_numc
 RWEAB_numi
 RWEAB_numcg
 RWEAB_numig
 RWUS_numc
 RWUS_numi
 RWUS_numcg
 RWUS_numig
 USEAA_numc
 USEAA_numi
 USEAA_numcg
 USEAA_numig
 USRW_numc
 USRW_numi
 USRW_numcg
 USRW_numig
;
        var EAAEAB_nerdep;
        var EAA_gammabh;
var
 EAA_bh
 EAB_bh
;
// Flip some variables
change_type(var)
 EA_ybar
 EAAEAB_rerbar
 EAARW_rerbar
 EAAUS_rerbar
 EAA_pibar
 EAA_psinbar
 EAA_psitbar
 EAA_pybar
 EAA_qbar
 EAA_trybar
 EAA_ybar
 EAA_ynbar
 EAA_ytbar
 EABEAA_rerbar
 EABRW_rerbar
 EABUS_rerbar
 EAB_pibar
 EAB_psinbar
 EAB_psitbar
 EAB_pybar
 EAB_qbar
 EAB_trybar
 EAB_ybar
 EAB_ynbar
 EAB_ytbar
 RWEAA_rerbar
 RWEAB_rerbar
 RWUS_rerbar
 RW_pibar
 RW_psinbar
 RW_psitbar
 RW_pybar
 RW_qbar
 RW_trybar
 RW_ybar
 RW_ynbar
 RW_ytbar
 USEAA_rerbar
 USEAB_rerbar
 USRW_rerbar
 US_pibar
 US_psinbar
 US_psitbar
 US_pybar
 US_qbar
 US_trybar
 US_ybar
 US_ynbar
 US_ytbar
;
var 
        EAA_ccesi EAA_ccesj EAA_dcci EAA_dccj
        EAB_ccesi EAB_ccesj EAB_dcci EAB_dccj
        RW_ccesi RW_ccesj RW_dcci RW_dccj
        US_ccesi US_ccesj US_dcci US_dccj
;
parameters 
        EAA_mucces EAA_nucces
        EAB_mucces EAB_nucces
        RW_mucces RW_nucces
        US_mucces US_nucces
;
model(block, bytecode, cutoff = 0);
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
//-------------
// Household I
//-------------
EAA_ccesi^(1-1/EAA_mucces) = (EAA_nucces)^(1/EAA_mucces)*EAA_ci^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces);
// Utility
EAA_utili = 
EAA_zcon*log(EAA_ccesi-EAA_kappa*EAA_ccesi(-1))-1/(1+EAA_zeta)*(EAA_ni)^(1+EAA_zeta)+EAA_beta*EAA_utili(+1)
;
// Marginal utility of consumption
EAA_dcci = ((EAA_nucces)^(1/EAA_mucces)*EAA_ci^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces))^(1/(EAA_mucces-1))*(EAA_nucces^(1/EAA_mucces))*(EAA_ci^(-1/EAA_mucces));
EAA_lambdai*(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider) = EAA_zcon*(EAA_ccesi-EAA_kappa*EAA_ccesi(-1))^(-EAA_sigma)*EAA_dcci;
// Euler equation for government bonds
EAA_r                   = EAA_beta^(-1)*EAA_lambdai/EAA_lambdai    *EAA_pic;
// Euler equation for money
EAA_vi^(2)*EAA_gammavider = 1-EAA_beta*EAA_lambdai(+1)/(EAA_lambdai*EAA_pic(+1));
// Consumption-based velocity
EAA_vi = EAA_ci/EAA_mi;
// Transaction cost
EAA_gammavi = EAA_gammav1*EAA_vi+EAA_gammav2/EAA_vi-2*(EAA_gammav1*EAA_gammav2)^(1/2);
// Derivative of transaction cost
EAA_gammavider = EAA_gammav1-EAA_gammav2*EAA_vi^(-2);
EAA_delta = EAA_ii/EAA_ki;
EAA_gammai = 0;
EAA_gammaider = 0;
EAA_gammau = 0;
EAA_gammauder = ((EAA_beta^(-1)-1+EAA_delta)*EAA_qbar-EAA_delta*EAA_taukbar*EAA_pibar)/((1-EAA_taukbar)*EAA_pibar);
EAA_u = 1;
EAA_pi = EAA_q;
// Auxiliary equation for Tobin's Q in steady state
EAA_qbar = EAA_q;
// Rate of return on capital
EAA_q = EAA_beta*((1-EAA_tauk)*EAA_rk+(EAA_tauk*EAA_delta)*EAA_pi+(1-EAA_delta)*EAA_q);
// Optimal wage contract (FOC)
EAA_witilde^(1+EAA_etai*EAA_zeta) = EAA_etai/(EAA_etai-1)*EAA_fi/EAA_gi+EAA_wcst;
// Definition of fi
EAA_fi = EAA_wi^(EAA_etai*(1+EAA_zeta))*EAA_ndi^(1+EAA_zeta)+EAA_xii*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai*(1+EAA_zeta))*EAA_fi(+1);
// Definition of gi
EAA_gi = EAA_lambdai*(1-EAA_taun-EAA_tauwh)*EAA_wi^EAA_etai*EAA_ndi+EAA_xii*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai-1)*EAA_gi(+1);
// Aggregate wage rate
EAA_wi^(1-EAA_etai) = (1-EAA_xii)*EAA_witilde^(1-EAA_etai)+EAA_xii*EAA_wi(-1)^(1-EAA_etai)*(EAA_pic(-1)^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))/EAA_pic)^(1-EAA_etai);
//-------------
// Household J
//-------------
EAA_ccesj^(1-1/EAA_mucces) = (EAA_nucces)^(1/EAA_mucces)*EAA_cj^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces);
// Utility
EAA_utilj = 
EAA_zcon*log(EAA_ccesj-EAA_kappa*EAA_ccesj(-1))-1/(1+EAA_zeta)*(EAA_nj)^(1+EAA_zeta)+EAA_beta*EAA_utilj(+1)
;
// Marginal utility of consumption
EAA_dccj = ((EAA_nucces)^(1/EAA_mucces)*EAA_cj^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces))^(1/(EAA_mucces-1))*(EAA_nucces^(1/EAA_mucces))*(EAA_cj^(-1/EAA_mucces));
EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder) = EAA_zcon*(EAA_ccesj-EAA_kappa*EAA_ccesj(-1))^(-EAA_sigma)*EAA_dccj;
// Budget constraint
(1+EAA_tauc+EAA_gammavj)*EAA_cj+EAA_mj = (1-EAA_taun-EAA_tauwh)*EAA_wj*EAA_nj+EAA_trj-EAA_tj+EAA_mj(-1)*EAA_pic^(-1);
// Euler equation for money
EAA_vj^(2)*EAA_gammavjder = 1-EAA_beta*EAA_lambdaj(+1)/(EAA_lambdaj*EAA_pic(+1));
// Consumption-based velocity
EAA_vj = EAA_cj/EAA_mj;
// Transaction technology
EAA_gammavj = EAA_gammav1*EAA_vj+EAA_gammav2/EAA_vj-2*(EAA_gammav1*EAA_gammav2)^(1/2);
// Derivative of transaction technology
EAA_gammavjder = EAA_gammav1-EAA_gammav2*EAA_vj^(-2);
// Optimal wage contract (FOC)
EAA_wjtilde^(1+EAA_etaj*EAA_zeta) = EAA_etaj/(EAA_etaj-1)*EAA_fj/EAA_gj+EAA_wcst;
// Definition of fj
EAA_fj = EAA_wj^(EAA_etaj*(1+EAA_zeta))*EAA_ndj^(1+EAA_zeta)+EAA_xij*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj*(1+EAA_zeta))*EAA_fj(+1);
// Definition of gj
EAA_gj = EAA_lambdaj*(1-EAA_taun-EAA_tauwh)*EAA_wj^EAA_etaj*EAA_ndj+EAA_xij*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj-1)*EAA_gj(+1);
// Aggregate wage rate
EAA_wj^(1-EAA_etaj) = (1-EAA_xij)*EAA_wjtilde^(1-EAA_etaj)+EAA_xij*EAA_wj(-1)^(1-EAA_etaj)*(EAA_pic(-1)^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))/EAA_pic)^(1-EAA_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
EAA_yst = EA_z*EAA_zt*EAA_kdt^EAA_alphat*EAA_ndt^(1-EAA_alphat)-EAA_psitbar;
// Production function nontradable
EAA_ysn = EA_z*EAA_zn*EAA_kdn^EAA_alphan*EAA_ndn^(1-EAA_alphan)-EAA_psinbar;
// Real marginal cost tradable
EAA_mct = 1/(EA_z*EAA_zt*(EAA_alphat)^(EAA_alphat)*(1-EAA_alphat)^(1-EAA_alphat))*EAA_rk^(EAA_alphat)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphat);
// Real marginal cost nontradable
EAA_mcn = 1/(EA_z*EAA_zn*(EAA_alphan)^(EAA_alphan)*(1-EAA_alphan)^(1-EAA_alphan))*EAA_rk^(EAA_alphan)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphan);
// Wage Inflation (qoq)
EAA_piw = EAA_w/EAA_w(-1)*EAA_pic;
// Wage Inflation (yoy)
EAA_piw4 = EAA_pic4;
// Auxiliary equation for steady-state fixed cost
EAA_psitbar = EAA_psit*EAA_ytbar;
// Auxiliary equation for steady-state fixed cost
EAA_psinbar = EAA_psin*EAA_ynbar;
// Capital input (FOC)
EAA_rk = EAA_alphat*(EAA_yst+EAA_psitbar)/EAA_kdt*EAA_mct;
// Capital input (FOC)
EAA_rk = EAA_alphan*(EAA_ysn+EAA_psinbar)/EAA_kdn*EAA_mcn;
// Total capital demand
EAA_kd = EAA_kdt+EAA_kdn;
// Demand for labour services by household I
EAA_ndi = 
(1-EAA_omega)*(EAA_wi/EAA_w)^(-EAA_eta)*EAA_nd
;
// Demand for labour services by household J
EAA_ndj = 
EAA_omega*(EAA_wj/EAA_w)^(-EAA_eta)*EAA_nd
;
// Aggregate labour demand
EAA_nd^(1-1/EAA_eta) = 
(1-EAA_omega)^(1/EAA_eta)*EAA_ndi^(1-1/EAA_eta)+EAA_omega^(1/EAA_eta)*EAA_ndj^(1-1/EAA_eta)
;
// Total demand 
EAA_nd = EAA_ndt+EAA_ndn;
// Aggregate dividends
EAA_d = EAA_py*EAA_y-EAA_rk*EAA_kd-(1+EAA_tauwf)*EAA_w*EAA_nd;
// Non-tradable sector dividends
EAA_dn = EAA_pnt*EAA_ysn-EAA_rk*EAA_kdn-(1+EAA_tauwf)*EAA_w*EAA_ndn;
// Tradable sector dividends
EAA_dt = EAA_pht*EAA_ht
+EAA_pex*EAA_ex
-EAA_rk*EAA_kdt-(1+EAA_tauwf)*EAA_w*EAA_ndt;
// Optimal price contract set in domestic markets (FOC)
EAA_phttilde/EAA_pht = EAA_thetat/(EAA_thetat-1)*EAA_fh/EAA_gh;
// Definition of fh
EAA_fh = EAA_mct*EAA_ht+EAA_xih*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piht(+1)/(EAA_piht^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_fh(+1);
// Definition of gh
EAA_gh = EAA_pht*EAA_ht+EAA_xih*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piht(+1)/(EAA_piht^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^(EAA_thetat-1)*EAA_gh(+1);
// Aggregate intermediate-good price dynamics
EAA_pht^(1-EAA_thetat) = (1-EAA_xih)*EAA_phttilde^(1-EAA_thetat)+EAA_xih*(EAA_pht(-1)/EAA_pic)^(1-EAA_thetat)*(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation
EAA_piht = EAA_pht/EAA_pht(-1)*EAA_pic;
// Optimal price contract set in domestic markets (FOC)
EAA_pnttilde/EAA_pnt = EAA_thetan/(EAA_thetan-1)*EAA_fn/EAA_gn;
// Definition of fn
EAA_fn = EAA_mcn*EAA_nt+EAA_xin*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_pint(+1)/(EAA_pint^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_fn(+1);
// Definition of gn
EAA_gn = EAA_pnt*EAA_nt+EAA_xin*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_pint(+1)/(EAA_pint^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^(EAA_thetan-1)*EAA_gn(+1);
// Aggregate intermediate-good price dynamics
EAA_pnt^(1-EAA_thetan) = (1-EAA_xin)*EAA_pnttilde^(1-EAA_thetan)+EAA_xin*(EAA_pnt(-1)/EAA_pic)^(1-EAA_thetan)*(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin)))^(1-EAA_thetan);
// Intermediate-good price inflation
EAA_pint = EAA_pnt/EAA_pnt(-1)*EAA_pic;
// Optimal price contract set in domestic markets (FOC)
EAA_pextilde/EAA_pex = EAA_thetat/(EAA_thetat-1)*EAA_fx/EAA_gx;
// Definition of fh
EAA_fx = EAA_mct*EAA_ex+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piex(+1)/(EAA_piex^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAA_fx(+1);
// Definition of gh
EAA_gx = EAA_pex*EAA_ex+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piex(+1)/(EAA_piex^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAA_gx(+1);
// Aggregate intermediate-good price dynamics
EAA_pex^(1-EAA_thetat) = (1-EAA_xix)*EAA_pextilde^(1-EAA_thetat)+EAA_xix*(EAA_pex(-1)/EAA_pic)^(1-EAA_thetat)*(EAA_piex(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix)))^(1-EAA_thetat);
// Intermediate-good price inflation
EAA_piex = EAA_pex/EAA_pex(-1)*EAA_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAB_pimtilde
// EABEAA_pimtilde/EABEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAB_fx/EAAEAB_gx;
// Definition of fx
// EAAEAB_fx = EAB_size/EAA_size*EABEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAB_fx(+1);
// Definition of gx   
// EAAEAB_gx = EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAB_pim
// EABEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EABEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EABEAA_pim(-1)/EAB_pic)^(1-EAA_thetat)*(EABEAA_piim(-1)^EAA_chix*EAB_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAB_piim
// EABEAA_piim = EABEAA_pim/EABEAA_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EAAEAB_rer = EAA_rer/EAB_rer;
// Auxiliary equation for steady-state output
EAAEAB_rerbar = EAAEAB_rer;
//Terms of Trade
EAAEAB_tot = EAB_pex*EAAEAB_rer/EAA_pex;
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = RW_pimtilde
// RWEAA_pimtilde/RWEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAARW_fx/EAARW_gx;
// Definition of fx
// EAARW_fx = RW_size/EAA_size*RWEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAARW_fx(+1);
// Definition of gx   
// EAARW_gx = EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAARW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = RW_pim
// RWEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*RWEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(RWEAA_pim(-1)/RW_pic)^(1-EAA_thetat)*(RWEAA_piim(-1)^EAA_chix*RW_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = RW_piim
// RWEAA_piim = RWEAA_pim/RWEAA_pim(-1)*RW_pic;
// Bilateral real exchange rate
EAARW_rer = EAA_rer/RW_rer;
// Auxiliary equation for steady-state output
EAARW_rerbar = EAARW_rer;
//Terms of Trade
EAARW_tot = RW_pex*EAARW_rer/EAA_pex;
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = US_pimtilde
// USEAA_pimtilde/USEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAUS_fx/EAAUS_gx;
// Definition of fx
// EAAUS_fx = US_size/EAA_size*USEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAUS_fx(+1);
// Definition of gx   
// EAAUS_gx = EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = US_pim
// USEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*USEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(USEAA_pim(-1)/US_pic)^(1-EAA_thetat)*(USEAA_piim(-1)^EAA_chix*US_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = US_piim
// USEAA_piim = USEAA_pim/USEAA_pim(-1)*US_pic;
// Bilateral real exchange rate
EAAUS_rer = EAA_rer/US_rer;
// Auxiliary equation for steady-state output
EAAUS_rerbar = EAAUS_rer;
//Terms of Trade
EAAUS_tot = US_pex*EAAUS_rer/EAA_pex;
// Total imports 
EAA_im = 
+EAA_imc
+EAA_imi
+EAA_imcg
+EAA_imig
;
// Total import deflator
EAA_im*EAA_pim  = 
+EAA_pimc*EAA_imc
+EAA_pimi*EAA_imi
+EAA_pimcg*EAA_imcg
+EAA_pimig*EAA_imig
;
// Effective real exchange rate: double weighting (imports)
EAAEAB_weightim = EAAEAB_rer*EAB_pex*EAAEAB_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAB_weightex = EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAB_rer*EAB_py*EAB_y/(EAAEAB_rer*EAB_py*EAB_y
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)+
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*RWEAB_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*USEAB_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAB_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAARW_weightex = RW_size/EAA_size*RWEAA_im/EAA_ex*EAARW_rer*RW_py*RW_y/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAUS_rer*US_pex*RWUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAARW_rer*RW_pex*EABRW_im/(EAAEAB_rer*EAB_py*EAB_y
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAARW_rer*RW_pex*USRW_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAARW_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAARW_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAARW_weightex;
// Effective real exchange rate: double weighting (imports)
EAAUS_weightim = EAAUS_rer*US_pex*EAAUS_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAUS_weightex = US_size/EAA_size*USEAA_im/EAA_ex*EAAUS_rer*US_py*US_y/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAARW_rer*RW_pex*USRW_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAUS_rer*US_pex*EABUS_im/(EAAEAB_rer*EAB_py*EAB_y
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAUS_rer*US_pex*RWUS_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAUS_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightex;
// Effective real exchange rate
EAA_reer = 1
*EAAEAB_rer^EAAEAB_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAARW_tot^EAARW_weight
*EAAUS_tot^EAAUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAA_imc^((EAA_mumc-1)/EAA_mumc) =
+EAAEAB_numc ^(1/EAA_mumc)*EAAEAB_imc^(1-1/EAA_mumc)
+EAAUS_numc ^(1/EAA_mumc)*EAAUS_imc^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAUS_numc
)^(1/EAA_mumc)*EAARW_imc^(1-1/EAA_mumc);
// Demand for bilateral consumption import goods
EAAUS_imc = EAAUS_numc*((US_pex*EAAUS_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAARW_imc = (1
-EAAEAB_numc
-EAAUS_numc
)*((RW_pex*EAARW_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Price of the consumption good (import)
EAA_pimc^(1-EAA_mumc) =
+EAAEAB_numc * (EAB_pex*EAAEAB_rer)^(1-EAA_mumc)
+EAAUS_numc * (US_pex*EAAUS_rer)^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAUS_numc
)*(RW_pex*EAARW_rer)^(1-EAA_mumc);
// Private consumption good (import) inflation
EAA_piimc = EAA_pimc/EAA_pimc(-1)*EAA_pic;
// Private consumption good (import)
EAA_imi^((EAA_mumi-1)/EAA_mumi) =
+EAAEAB_numi ^(1/EAA_mumi)*EAAEAB_imi^(1-1/EAA_mumi)
+EAAUS_numi ^(1/EAA_mumi)*EAAUS_imi^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAUS_numi
)^(1/EAA_mumi)*EAARW_imi^(1-1/EAA_mumi);
// Demand for bilateral consumption import goods
EAAUS_imi = EAAUS_numi*((US_pex*EAAUS_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
EAARW_imi = (1
-EAAEAB_numi
-EAAUS_numi
)*((RW_pex*EAARW_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Price of the consumption good (import)
EAA_pimi^(1-EAA_mumi) =
+EAAEAB_numi * (EAB_pex*EAAEAB_rer)^(1-EAA_mumi)
+EAAUS_numi * (US_pex*EAAUS_rer)^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAUS_numi
)*(RW_pex*EAARW_rer)^(1-EAA_mumi);
// Private consumption good (import) inflation
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Private consumption good (import)
EAA_imcg^((EAA_mumcg-1)/EAA_mumcg) =
+EAAEAB_numcg ^(1/EAA_mumcg)*EAAEAB_imcg^(1-1/EAA_mumcg)
+EAAUS_numcg ^(1/EAA_mumcg)*EAAUS_imcg^(1-1/EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAUS_numcg
)^(1/EAA_mumcg)*EAARW_imcg^(1-1/EAA_mumcg);
// Demand for bilateral consumption import goods
EAAUS_imcg = EAAUS_numcg*((US_pex*EAAUS_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
EAARW_imcg = (1
-EAAEAB_numcg
-EAAUS_numcg
)*((RW_pex*EAARW_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Price of the consumption good (import)
EAA_pimcg^(1-EAA_mumcg) =
+EAAEAB_numcg * (EAB_pex*EAAEAB_rer)^(1-EAA_mumcg)
+EAAUS_numcg * (US_pex*EAAUS_rer)^(1-EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAUS_numcg
)*(RW_pex*EAARW_rer)^(1-EAA_mumcg);
// Private consumption good (import) inflation
EAA_piimcg = EAA_pimcg/EAA_pimcg(-1)*EAA_pic;
// Private consumption good (import)
EAA_imig^((EAA_mumig-1)/EAA_mumig) =
+EAAEAB_numig ^(1/EAA_mumig)*EAAEAB_imig^(1-1/EAA_mumig)
+EAAUS_numig ^(1/EAA_mumig)*EAAUS_imig^(1-1/EAA_mumig)
+(1
-EAAEAB_numig
-EAAUS_numig
)^(1/EAA_mumig)*EAARW_imig^(1-1/EAA_mumig);
// Demand for bilateral consumption import goods
EAAUS_imig = EAAUS_numig*((US_pex*EAAUS_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
EAARW_imig = (1
-EAAEAB_numig
-EAAUS_numig
)*((RW_pex*EAARW_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Price of the consumption good (import)
EAA_pimig^(1-EAA_mumig) =
+EAAEAB_numig * (EAB_pex*EAAEAB_rer)^(1-EAA_mumig)
+EAAUS_numig * (US_pex*EAAUS_rer)^(1-EAA_mumig)
+(1
-EAAEAB_numig
-EAAUS_numig
)*(RW_pex*EAARW_rer)^(1-EAA_mumig);
// Private consumption good (import) inflation
EAA_piimig = EAA_pimig/EAA_pimig(-1)*EAA_pic;
// Private consumption good (import) inflation
EAA_piimc4 = EAA_pimc/EAA_pimc(-4)*EAA_pic4;
// Private consumption good (import) inflation
EAA_piex4 = EAA_pex/EAA_pex(-4)*EAA_pic4;
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
EAA_yst = EAA_sh*EAA_ht+EAA_sx*EAA_ex;
// Aggregate demand for bilateral imported intermediate goods
EAAEAB_im = 
+EAAEAB_imc
+EAAEAB_imi
+EAAEAB_imcg
+EAAEAB_imig
;
EAARW_im = 
+EAARW_imc
+EAARW_imi
+EAARW_imcg
+EAARW_imig
;
EAAUS_im = 
+EAAUS_imc
+EAAUS_imi
+EAAUS_imcg
+EAAUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
EAA_ttc^((EAA_mutc-1)/EAA_mutc) = (EAA_nutc)^(1/EAA_mutc)*EAA_htc^(1-1/EAA_mutc)+(1-EAA_nutc)^(1/EAA_mutc)*EAA_imc^(1-1/EAA_mutc);
// Private consumption good  (total)
EAA_qc^((EAA_muc-1)/EAA_muc) = (EAA_nuc)^(1/EAA_muc)*EAA_ttc^(1-1/EAA_muc)+(1-EAA_nuc)^(1/EAA_muc)*EAA_ntc^(1-1/EAA_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAA_ntc = (1-EAA_nuc)*(EAA_pnt)^(-EAA_muc)*EAA_qc;
// Price of the consumption good (tradable)  
EAA_pttc^(1-EAA_mutc) = (EAA_nutc)*EAA_pht^(1-EAA_mutc)+(1-EAA_nutc)*EAA_pimc^(1-EAA_mutc);
// Price of the consumption good 
1^(1-EAA_muc) = (EAA_nuc)*EAA_pttc^(1-EAA_muc)+(1-EAA_nuc)*EAA_pnt^(1-EAA_muc);
// Demand for domestic intermediate goods
EAA_htc = EAA_nutc*(EAA_pht/EAA_pttc)^(-EAA_mutc)*EAA_ttc;
EAAEAB_gammaimc = 0;
EAAEAB_gammaimcdag = 1;
EAARW_gammaimc = 0;
EAARW_gammaimcdag = 1;
EAAUS_gammaimc = 0;
EAAUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAA_tti^((EAA_muti-1)/EAA_muti) = (EAA_nuti)^(1/EAA_muti)*EAA_hti^(1-1/EAA_muti)+(1-EAA_nuti)^(1/EAA_muti)*EAA_imi^(1-1/EAA_muti);
// Private consumption good  (total)
EAA_qi^((EAA_mui-1)/EAA_mui) = (EAA_nui)^(1/EAA_mui)*EAA_tti^(1-1/EAA_mui)+(1-EAA_nui)^(1/EAA_mui)*EAA_nti^(1-1/EAA_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAA_nti = (1-EAA_nui)*(EAA_pnt/EAA_pi)^(-EAA_mui)*EAA_qi;
// Price of the consumption good (tradable)  
EAA_ptti^(1-EAA_muti) = (EAA_nuti)*EAA_pht^(1-EAA_muti)+(1-EAA_nuti)*EAA_pimi^(1-EAA_muti);
// Price of the consumption good 
EAA_pi^(1-EAA_mui) = (EAA_nui)*EAA_ptti^(1-EAA_mui)+(1-EAA_nui)*EAA_pnt^(1-EAA_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
EAA_pibar = EAA_pi;
// Demand for domestic intermediate goods
EAA_hti = EAA_nuti*(EAA_pht/EAA_ptti)^(-EAA_muti)*EAA_tti;
EAAEAB_gammaimi = 0;
EAAEAB_gammaimidag = 1;
EAARW_gammaimi = 0;
EAARW_gammaimidag = 1;
EAAUS_gammaimi = 0;
EAAUS_gammaimidag = 1;
// Private consumption good (tradable)
EAA_ttcg^((EAA_mutcg-1)/EAA_mutcg) = (EAA_nutcg)^(1/EAA_mutcg)*EAA_htcg^(1-1/EAA_mutcg)+(1-EAA_nutcg)^(1/EAA_mutcg)*EAA_imcg^(1-1/EAA_mutcg);
// Private consumption good  (total)
EAA_qcg^((EAA_mucg-1)/EAA_mucg) = (EAA_nucg)^(1/EAA_mucg)*EAA_ttcg^(1-1/EAA_mucg)+(1-EAA_nucg)^(1/EAA_mucg)*EAA_ntcg^(1-1/EAA_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAA_ntcg = (1-EAA_nucg)*(EAA_pnt/EAA_pcg)^(-EAA_mucg)*EAA_qcg;
// Price of the consumption good (tradable)  
EAA_pttcg^(1-EAA_mutcg) = (EAA_nutcg)*EAA_pht^(1-EAA_mutcg)+(1-EAA_nutcg)*EAA_pimcg^(1-EAA_mutcg);
// Price of the consumption good 
EAA_pcg^(1-EAA_mucg) = (EAA_nucg)*EAA_pttcg^(1-EAA_mucg)+(1-EAA_nucg)*EAA_pnt^(1-EAA_mucg);
// Demand for domestic intermediate goods
EAA_htcg = EAA_nutcg*(EAA_pht/EAA_pttcg)^(-EAA_mutcg)*EAA_ttcg;
EAAEAB_gammaimcg = 0;
EAAEAB_gammaimcgdag = 1;
EAARW_gammaimcg = 0;
EAARW_gammaimcgdag = 1;
EAAUS_gammaimcg = 0;
EAAUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAA_ttig^((EAA_mutig-1)/EAA_mutig) = (EAA_nutig)^(1/EAA_mutig)*EAA_htig^(1-1/EAA_mutig)+(1-EAA_nutig)^(1/EAA_mutig)*EAA_imig^(1-1/EAA_mutig);
// Private consumption good  (total)
EAA_qig^((EAA_muig-1)/EAA_muig) = (EAA_nuig)^(1/EAA_muig)*EAA_ttig^(1-1/EAA_muig)+(1-EAA_nuig)^(1/EAA_muig)*EAA_ntig^(1-1/EAA_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAA_ntig = (1-EAA_nuig)*(EAA_pnt/EAA_pig)^(-EAA_muig)*EAA_qig;
// Price of the consumption good (tradable)  
EAA_pttig^(1-EAA_mutig) = (EAA_nutig)*EAA_pht^(1-EAA_mutig)+(1-EAA_nutig)*EAA_pimig^(1-EAA_mutig);
// Price of the consumption good 
EAA_pig^(1-EAA_muig) = (EAA_nuig)*EAA_pttig^(1-EAA_muig)+(1-EAA_nuig)*EAA_pnt^(1-EAA_muig);
// Demand for domestic intermediate goods
EAA_htig = EAA_nutig*(EAA_pht/EAA_pttig)^(-EAA_mutig)*EAA_ttig;
EAAEAB_gammaimig = 0;
EAAEAB_gammaimigdag = 1;
EAARW_gammaimig = 0;
EAARW_gammaimigdag = 1;
EAAUS_gammaimig = 0;
EAAUS_gammaimigdag = 1;
// Trade balance
EAA_tb =
+EAA_pex*EAB_size/EAA_size*EABEAA_im
-EAB_pex*EAAEAB_rer*EAAEAB_im
+EAA_pex*RW_size/EAA_size*RWEAA_im
-RW_pex*EAARW_rer*EAARW_im
+EAA_pex*US_size/EAA_size*USEAA_im
-US_pex*EAAUS_rer*EAAUS_im
;
// Aggregate exports (volume)
EAA_ex =
+EAB_size/EAA_size*EABEAA_im
+RW_size/EAA_size*RWEAA_im
+US_size/EAA_size*USEAA_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAA_pg = EAA_pht
// TODO: check the (1-EAA_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAA_pcg(-1)*EAA_cg(-1)+EAA_pig(-1)*EAA_ig(-1)+EAA_tr(-1)
	+EAA_b(-1)*EAA_pic(-1)^(-1)+EAA_m(-2)*EAA_pic(-1)^(-1) = EAA_tauc(-1)*EAA_c(-1)+(EAA_taun(-1)+EAA_tauwh(-1))*(EAA_wi(-1)*EAA_ndi(-1)+EAA_wj(-1)*EAA_ndj(-1))+EAA_tauwf(-1)*EAA_w(-1)*EAA_nd(-1)+EAA_tauk(-1)*(EAA_rk(-1)*EAA_u(-1)-(EAA_gammau(-1)+EAA_delta)*EAA_pi(-1))*EAA_k(-1)+EAA_taud(-1)*EAA_d(-1)+EAA_t(-1)+(EAA_r(-1)*(1-EAA_gammab(-1)))^(-1)*EAA_b+EAA_m(-1);
// Government spending, using EAA_pg = EAA_pht
EAA_pcg*EAA_cg = EAA_cgy*EAA_pybar*EAA_ybar;
EAA_pig*EAA_ig = EAA_igy*EAA_pybar*EAA_ybar;
EAA_t = 0;
EAA_b = EAA_bytarget*EAA_pybar*EAA_ybar;
// Auxiliary equation for steady-state output
EAA_ybar = EAA_y;
// Auxiliary equation for steady-state output
EAA_ytbar = EAA_yst;
// Auxiliary equation for steady-state output
EAA_ynbar = EAA_ysn;
// Auxiliary equation for steady-state output deflator
EAA_pybar = EAA_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAA_trybar = EAA_tr/(EAA_pybar*EAA_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAA_ti = EAA_upsilont*EAA_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAA_tri = EAA_upsilontr*EAA_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	EAA_r = EAB_r;
EAA_pic4 = EAA_pi4target;
EAA_rr-1 = EAA_r/EAA_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAA_rrstar-1 = 1/EAA_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAA_c = (1-EAA_omega)*EAA_ci+EAA_omega*EAA_cj;
// Aggregate money holdings
EAA_m = (1-EAA_omega)*EAA_mi+EAA_omega*EAA_mj;
// Aggregate capital stock
EAA_k = (1-EAA_omega)*EAA_ki;
// Aggregate investment
EAA_i = (1-EAA_omega)*EAA_ii;
// Aggregate lump-sum transfers
EAA_trj = 
1/EAA_omega*EAA_tr-(1-EAA_omega)/EAA_omega*EAA_tri
;
// Aggregate lump-sum taxes
EAA_tj = 
1/EAA_omega*EAA_t-(1-EAA_omega)/EAA_omega*EAA_ti
;
// Aggregate transaction costs
EAA_gammav = (1-EAA_omega)*EAA_ci*EAA_gammavi+EAA_omega*EAA_cj*EAA_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAA_ni = EAA_si*EAA_ndi;
// Wage dispersion
EAA_si = (1-EAA_xii)*(EAA_witilde/EAA_wi)^(-EAA_etai)+EAA_xii*(EAA_wi(-1)/EAA_wi)^(-EAA_etai)*(EAA_pic/(EAA_pic(-1)^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai)*EAA_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAA_nj = EAA_sj*EAA_ndj;
// Wage dispersion
EAA_sj = (1-EAA_xij)*(EAA_wjtilde/EAA_wj)^(-EAA_etaj)+EAA_xij*(EAA_wj(-1)/EAA_wj)^(-EAA_etaj)*(EAA_pic/(EAA_pic(-1)^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj)*EAA_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAA_u*EAA_k = EAA_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
EAA_ysn = EAA_snt*EAA_nt;
//  nontradables aggregate demand
EAA_nt = 
+EAA_ntc
+EAA_nti
+EAA_ntcg
+EAA_ntig
;
// Aggregate demand for domestic intermediate goods, using EAA_hg = EAA_cg
EAA_ht =
+EAA_htc
+EAA_hti
+EAA_htcg
+EAA_htig
;
// Price dispersion in the domestic markets
EAA_sh = (1-EAA_xih)*(EAA_phttilde/EAA_pht)^(-EAA_thetat)+EAA_xih*(EAA_piht/(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_sh(-1);
// Price dispersion in the foreign markets
EAA_sx = (1-EAA_xix)*(EAA_pextilde/EAA_pex)^(-EAA_thetat)+EAA_xix*(EAA_piex/(EAA_piex(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAA_sx(-1);
// Price dispersion in the domestic markets
EAA_snt = (1-EAA_xin)*(EAA_pnttilde/EAA_pnt)^(-EAA_thetan)+EAA_xin*(EAA_pint/(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAA_qc = EAA_c+EAA_gammav;
// Aggregate investment and capital utilisation cost
EAA_qi = EAA_i+EAA_k*EAA_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAA_qcg = EAA_cg;
EAA_qig = EAA_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAA_py*EAA_y = 
+EAA_qc
+EAA_pi*EAA_qi
+EAA_pcg*EAA_qcg
+EAA_pig*EAA_qig
+EAA_pex*EAB_size/EAA_size*EABEAA_im
-(EAB_pex*EAAEAB_rer)*EAAEAB_imc
-(EAB_pex*EAAEAB_rer)*EAAEAB_imi
-(EAB_pex*EAAEAB_rer)*EAAEAB_imcg
-(EAB_pex*EAAEAB_rer)*EAAEAB_imig
+EAA_pex*RW_size/EAA_size*RWEAA_im
-(RW_pex*EAARW_rer)*EAARW_imc
-(RW_pex*EAARW_rer)*EAARW_imi
-(RW_pex*EAARW_rer)*EAARW_imcg
-(RW_pex*EAARW_rer)*EAARW_imig
+EAA_pex*US_size/EAA_size*USEAA_im
-(US_pex*EAAUS_rer)*EAAUS_imc
-(US_pex*EAAUS_rer)*EAAUS_imi
-(US_pex*EAAUS_rer)*EAAUS_imcg
-(US_pex*EAAUS_rer)*EAAUS_imig
;
// Aggregate real demand
EAA_y = EAA_yst+EAA_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAA_zt) = (1-EAA_rhozt)*log(EAA_ztbar)+EAA_rhozt*log(EAA_zt(-1))+EAA_epszt;
log(EAA_zn) = (1-EAA_rhozn)*log(EAA_znbar)+EAA_rhozn*log(EAA_zn(-1))+EAA_epszn;
// Government spending shock
EAA_cgy = (1-EAA_rhocg)*EAA_cgybar+EAA_rhocg*EAA_cgy(-1)+EAA_epsgc;
EAA_igy = (1-EAA_rhoig)*EAA_igybar+EAA_rhoig*EAA_igy(-1)+EAA_epsgi;
// Transfer shock
EAA_try = (1-EAA_rhotr)*EAA_trybar+EAA_rhotr*EAA_try(-1)+EAA_epstr;
// Consumption tax shock
EAA_tauc = (1-EAA_rhotauc)*EAA_taucbar+EAA_rhotauc*EAA_tauc(-1)+EAA_epstauc;
// Dividend income tax shock
EAA_taud = (1-EAA_rhotaud)*EAA_taudbar+EAA_rhotaud*EAA_taud(-1)+EAA_epstaud;
// Capital income tax shock
EAA_tauk = (1-EAA_rhotauk)*EAA_taukbar+EAA_rhotauk*EAA_tauk(-1)+EAA_epstauk;
// Labour income tax shock
EAA_taun = (1-EAA_rhotaun)*EAA_taunbar+EAA_rhotaun*EAA_taun(-1)+EAA_epstaun;
// Payroll tax shock: households
EAA_tauwh = (1-EAA_rhotauwh)*EAA_tauwhbar+EAA_rhotauwh*EAA_tauwh(-1)+EAA_epstauwh;
// Payroll tax shock: firms
EAA_tauwf = (1-EAA_rhotauwf)*EAA_tauwfbar+EAA_rhotauwf*EAA_tauwf(-1)+EAA_epstauwf;
// Wage cost push shock
EAA_wcst = (1-EAA_rhowcst)*EAA_wcstbar+EAA_rhowcst*EAA_wcst(-1)+EAA_epswcst;
// Preference shock
log(EAA_zcon) = (1-EAA_rhozcon)*log(EAA_zconbar)+EAA_rhozcon*log(EAA_zcon(-1))+EAA_epszcon;
// Investment specific shock
log(EAA_zinv) = (1-EAA_rhozinv)*log(EAA_zinvbar)+EAA_rhozinv*log(EAA_zinv(-1))+EAA_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAA_cy = EAA_c/(EAA_py*EAA_y);
// Aggregate nominal investment share
EAA_iy = EAA_pi*EAA_i/(EAA_py*EAA_y);
// Aggregate nominal import share  
EAA_imy = (
+EAA_pimc*EAA_imc
+EAA_pimi*EAA_imi
+EAA_pimcg*EAA_imcg
+EAA_pimig*EAA_imig
)/(EAA_py*EAA_y);
// Aggregate nominal import share
EAA_imcy = EAA_pimc*EAA_imc/(EAA_py*EAA_y);
EAA_imiy = EAA_pimi*EAA_imi/(EAA_py*EAA_y);
EAA_imcgy = EAA_pimcg*EAA_imcg/(EAA_py*EAA_y);
EAA_imigy = EAA_pimig*EAA_imig/(EAA_py*EAA_y);
// Aggregate debt-to-output ratio
EAA_by = EAA_b/(EAA_pybar*EAA_ybar);
// Aggregate lump-sum tax-to-output ratio
EAA_ty = EAA_t/(EAA_pybar*EAA_ybar);
// Aggregate labour cost share
EAA_lcy = ((1+EAA_tauwf)*EAA_w*EAA_nd)/(EAA_py*EAA_y);
// Aggregate nominal Wage share
EAA_wy = (EAA_w*EAA_nd)/(EAA_py*EAA_y);
// NT sector nominal Wage share
EAA_wnty = (EAA_w*EAA_ndn)/(EAA_pnt*EAA_ysn);
// T sector nominal Wage share
EAA_whty = (EAA_w*EAA_ndt)/(EAA_pht*EAA_yst);
// T sector share
EAA_yhty = EAA_pht*EAA_yst/(EAA_py*EAA_y);
// NT sector share
EAA_ynty = EAA_pnt*EAA_ysn/(EAA_py*EAA_y);
// Output gap
EAA_ygap = 0;
// Output growth (gross rate)
EAA_ygrowth = EAA_y/EAA_y(-1);
// Output growth (gross rate yoy)
EAA_ygrowth4 = EAA_y/EAA_y(-4);
// Domestic nominal output as a share of world nominal output
EAA_yshare  = EAA_size*EAA_py*EAA_y/EAA_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAA_epsilonm = -1/8*1/(EAA_r*(EAA_gammav2*EAA_r+EAA_r-1));
// Trade balance-to-GDP ratio
EAA_tby = EAA_tb/(EAA_py*EAA_y);
// Bilateral shares
EAAEAB_imcy = (EAB_pex*EAAEAB_rer)*EAAEAB_imc/(EAA_py*EAA_y);
EAAEAB_imiy = (EAB_pex*EAAEAB_rer)*EAAEAB_imi/(EAA_py*EAA_y);
EAAEAB_imcgy = (EAB_pex*EAAEAB_rer)*EAAEAB_imcg/(EAA_py*EAA_y);
EAAEAB_imigy = (EAB_pex*EAAEAB_rer)*EAAEAB_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAB_excy  = EAB_size/EAA_size*EAA_pex*EABEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAB_exiy  = EAB_size/EAA_size*EAA_pex*EABEAA_imi/(EAA_py*EAA_y);
// Bilateral shares
EAARW_imcy = (RW_pex*EAARW_rer)*EAARW_imc/(EAA_py*EAA_y);
EAARW_imiy = (RW_pex*EAARW_rer)*EAARW_imi/(EAA_py*EAA_y);
EAARW_imcgy = (RW_pex*EAARW_rer)*EAARW_imcg/(EAA_py*EAA_y);
EAARW_imigy = (RW_pex*EAARW_rer)*EAARW_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAARW_excy  = RW_size/EAA_size*EAA_pex*RWEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAARW_exiy  = RW_size/EAA_size*EAA_pex*RWEAA_imi/(EAA_py*EAA_y);
// Bilateral shares
EAAUS_imcy = (US_pex*EAAUS_rer)*EAAUS_imc/(EAA_py*EAA_y);
EAAUS_imiy = (US_pex*EAAUS_rer)*EAAUS_imi/(EAA_py*EAA_y);
EAAUS_imcgy = (US_pex*EAAUS_rer)*EAAUS_imcg/(EAA_py*EAA_y);
EAAUS_imigy = (US_pex*EAAUS_rer)*EAAUS_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAUS_excy  = US_size/EAA_size*EAA_pex*USEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAUS_exiy  = US_size/EAA_size*EAA_pex*USEAA_imi/(EAA_py*EAA_y);
// Internal real exchange rate
EAA_internalrer = EAA_pnt/EAA_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
//-------------
// Household I
//-------------
EAB_ccesi^(1-1/EAB_mucces) = (EAB_nucces)^(1/EAB_mucces)*EAB_ci^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces);
// Utility
EAB_utili = 
EAB_zcon*log(EAB_ccesi-EAB_kappa*EAB_ccesi(-1))-1/(1+EAB_zeta)*(EAB_ni)^(1+EAB_zeta)+EAB_beta*EAB_utili(+1)
;
// Marginal utility of consumption
EAB_dcci = ((EAB_nucces)^(1/EAB_mucces)*EAB_ci^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces))^(1/(EAB_mucces-1))*(EAB_nucces^(1/EAB_mucces))*(EAB_ci^(-1/EAB_mucces));
EAB_lambdai*(1+EAB_tauc+EAB_gammavi+EAB_vi*EAB_gammavider) = EAB_zcon*(EAB_ccesi-EAB_kappa*EAB_ccesi(-1))^(-EAB_sigma)*EAB_dcci;
// Euler equation for government bonds
EAB_r = EAB_beta^(-1)*EAB_lambdai/EAB_lambdai(+1)*EAB_pic(+1);
// Euler equation for money
EAB_vi^(2)*EAB_gammavider = 1-EAB_beta*EAB_lambdai(+1)/(EAB_lambdai*EAB_pic(+1));
// Consumption-based velocity
EAB_vi = EAB_ci/EAB_mi;
// Transaction cost
EAB_gammavi = EAB_gammav1*EAB_vi+EAB_gammav2/EAB_vi-2*(EAB_gammav1*EAB_gammav2)^(1/2);
// Derivative of transaction cost
EAB_gammavider = EAB_gammav1-EAB_gammav2*EAB_vi^(-2);
EAB_delta = EAB_ii/EAB_ki;
EAB_gammai = 0;
EAB_gammaider = 0;
EAB_gammau = 0;
EAB_gammauder = ((EAB_beta^(-1)-1+EAB_delta)*EAB_qbar-EAB_delta*EAB_taukbar*EAB_pibar)/((1-EAB_taukbar)*EAB_pibar);
EAB_u = 1;
EAB_pi = EAB_q;
// Auxiliary equation for Tobin's Q in steady state
EAB_qbar = EAB_q;
// Rate of return on capital
EAB_q = EAB_beta*((1-EAB_tauk)*EAB_rk+(EAB_tauk*EAB_delta)*EAB_pi+(1-EAB_delta)*EAB_q);
// Optimal wage contract (FOC)
EAB_witilde^(1+EAB_etai*EAB_zeta) = EAB_etai/(EAB_etai-1)*EAB_fi/EAB_gi+EAB_wcst;
// Definition of fi
EAB_fi = EAB_wi^(EAB_etai*(1+EAB_zeta))*EAB_ndi^(1+EAB_zeta)+EAB_xii*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai*(1+EAB_zeta))*EAB_fi(+1);
// Definition of gi
EAB_gi = EAB_lambdai*(1-EAB_taun-EAB_tauwh)*EAB_wi^EAB_etai*EAB_ndi+EAB_xii*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai-1)*EAB_gi(+1);
// Aggregate wage rate
EAB_wi^(1-EAB_etai) = (1-EAB_xii)*EAB_witilde^(1-EAB_etai)+EAB_xii*EAB_wi(-1)^(1-EAB_etai)*(EAB_pic(-1)^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))/EAB_pic)^(1-EAB_etai);
//-------------
// Household J
//-------------
EAB_ccesj^(1-1/EAB_mucces) = (EAB_nucces)^(1/EAB_mucces)*EAB_cj^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces);
// Utility
EAB_utilj = 
EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)+EAB_beta*EAB_utilj(+1)
;
// Marginal utility of consumption
EAB_dccj = ((EAB_nucces)^(1/EAB_mucces)*EAB_cj^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces))^(1/(EAB_mucces-1))*(EAB_nucces^(1/EAB_mucces))*(EAB_cj^(-1/EAB_mucces));
EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder) = EAB_zcon*(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))^(-EAB_sigma)*EAB_dccj;
// Budget constraint
(1+EAB_tauc+EAB_gammavj)*EAB_cj+EAB_mj = (1-EAB_taun-EAB_tauwh)*EAB_wj*EAB_nj+EAB_trj-EAB_tj+EAB_mj(-1)*EAB_pic^(-1);
// Euler equation for money
EAB_vj^(2)*EAB_gammavjder = 1-EAB_beta*EAB_lambdaj(+1)/(EAB_lambdaj*EAB_pic(+1));
// Consumption-based velocity
EAB_vj = EAB_cj/EAB_mj;
// Transaction technology
EAB_gammavj = EAB_gammav1*EAB_vj+EAB_gammav2/EAB_vj-2*(EAB_gammav1*EAB_gammav2)^(1/2);
// Derivative of transaction technology
EAB_gammavjder = EAB_gammav1-EAB_gammav2*EAB_vj^(-2);
// Optimal wage contract (FOC)
EAB_wjtilde^(1+EAB_etaj*EAB_zeta) = EAB_etaj/(EAB_etaj-1)*EAB_fj/EAB_gj+EAB_wcst;
// Definition of fj
EAB_fj = EAB_wj^(EAB_etaj*(1+EAB_zeta))*EAB_ndj^(1+EAB_zeta)+EAB_xij*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj*(1+EAB_zeta))*EAB_fj(+1);
// Definition of gj
EAB_gj = EAB_lambdaj*(1-EAB_taun-EAB_tauwh)*EAB_wj^EAB_etaj*EAB_ndj+EAB_xij*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj-1)*EAB_gj(+1);
// Aggregate wage rate
EAB_wj^(1-EAB_etaj) = (1-EAB_xij)*EAB_wjtilde^(1-EAB_etaj)+EAB_xij*EAB_wj(-1)^(1-EAB_etaj)*(EAB_pic(-1)^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))/EAB_pic)^(1-EAB_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
EAB_yst = EA_z*EAB_zt*EAB_kdt^EAB_alphat*EAB_ndt^(1-EAB_alphat)-EAB_psitbar;
// Production function nontradable
EAB_ysn = EA_z*EAB_zn*EAB_kdn^EAB_alphan*EAB_ndn^(1-EAB_alphan)-EAB_psinbar;
// Real marginal cost tradable
EAB_mct = 1/(EA_z*EAB_zt*(EAB_alphat)^(EAB_alphat)*(1-EAB_alphat)^(1-EAB_alphat))*EAB_rk^(EAB_alphat)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphat);
// Real marginal cost nontradable
EAB_mcn = 1/(EA_z*EAB_zn*(EAB_alphan)^(EAB_alphan)*(1-EAB_alphan)^(1-EAB_alphan))*EAB_rk^(EAB_alphan)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphan);
// Wage Inflation (qoq)
EAB_piw = EAB_w/EAB_w(-1)*EAB_pic;
// Wage Inflation (yoy)
EAB_piw4 = EAB_pic4;
// Auxiliary equation for steady-state fixed cost
EAB_psitbar = EAB_psit*EAB_ytbar;
// Auxiliary equation for steady-state fixed cost
EAB_psinbar = EAB_psin*EAB_ynbar;
// Capital input (FOC)
EAB_rk = EAB_alphat*(EAB_yst+EAB_psitbar)/EAB_kdt*EAB_mct;
// Capital input (FOC)
EAB_rk = EAB_alphan*(EAB_ysn+EAB_psinbar)/EAB_kdn*EAB_mcn;
// Total capital demand
EAB_kd = EAB_kdt+EAB_kdn;
// Demand for labour services by household I
EAB_ndi = 
(1-EAB_omega)*(EAB_wi/EAB_w)^(-EAB_eta)*EAB_nd
;
// Demand for labour services by household J
EAB_ndj = 
EAB_omega*(EAB_wj/EAB_w)^(-EAB_eta)*EAB_nd
;
// Aggregate labour demand
EAB_nd^(1-1/EAB_eta) = 
(1-EAB_omega)^(1/EAB_eta)*EAB_ndi^(1-1/EAB_eta)+EAB_omega^(1/EAB_eta)*EAB_ndj^(1-1/EAB_eta)
;
// Total demand 
EAB_nd = EAB_ndt+EAB_ndn;
// Aggregate dividends
EAB_d = EAB_py*EAB_y-EAB_rk*EAB_kd-(1+EAB_tauwf)*EAB_w*EAB_nd;
// Non-tradable sector dividends
EAB_dn = EAB_pnt*EAB_ysn-EAB_rk*EAB_kdn-(1+EAB_tauwf)*EAB_w*EAB_ndn;
// Tradable sector dividends
EAB_dt = EAB_pht*EAB_ht
+EAB_pex*EAB_ex
-EAB_rk*EAB_kdt-(1+EAB_tauwf)*EAB_w*EAB_ndt;
// Optimal price contract set in domestic markets (FOC)
EAB_phttilde/EAB_pht = EAB_thetat/(EAB_thetat-1)*EAB_fh/EAB_gh;
// Definition of fh
EAB_fh = EAB_mct*EAB_ht+EAB_xih*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piht(+1)/(EAB_piht^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_fh(+1);
// Definition of gh
EAB_gh = EAB_pht*EAB_ht+EAB_xih*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piht(+1)/(EAB_piht^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^(EAB_thetat-1)*EAB_gh(+1);
// Aggregate intermediate-good price dynamics
EAB_pht^(1-EAB_thetat) = (1-EAB_xih)*EAB_phttilde^(1-EAB_thetat)+EAB_xih*(EAB_pht(-1)/EAB_pic)^(1-EAB_thetat)*(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation
EAB_piht = EAB_pht/EAB_pht(-1)*EAB_pic;
// Optimal price contract set in domestic markets (FOC)
EAB_pnttilde/EAB_pnt = EAB_thetan/(EAB_thetan-1)*EAB_fn/EAB_gn;
// Definition of fn
EAB_fn = EAB_mcn*EAB_nt+EAB_xin*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_pint(+1)/(EAB_pint^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_fn(+1);
// Definition of gn
EAB_gn = EAB_pnt*EAB_nt+EAB_xin*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_pint(+1)/(EAB_pint^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^(EAB_thetan-1)*EAB_gn(+1);
// Aggregate intermediate-good price dynamics
EAB_pnt^(1-EAB_thetan) = (1-EAB_xin)*EAB_pnttilde^(1-EAB_thetan)+EAB_xin*(EAB_pnt(-1)/EAB_pic)^(1-EAB_thetan)*(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin)))^(1-EAB_thetan);
// Intermediate-good price inflation
EAB_pint = EAB_pnt/EAB_pnt(-1)*EAB_pic;
// Optimal price contract set in domestic markets (FOC)
EAB_pextilde/EAB_pex = EAB_thetat/(EAB_thetat-1)*EAB_fx/EAB_gx;
// Definition of fh
EAB_fx = EAB_mct*EAB_ex+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piex(+1)/(EAB_piex^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EAB_fx(+1);
// Definition of gh
EAB_gx = EAB_pex*EAB_ex+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piex(+1)/(EAB_piex^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EAB_gx(+1);
// Aggregate intermediate-good price dynamics
EAB_pex^(1-EAB_thetat) = (1-EAB_xix)*EAB_pextilde^(1-EAB_thetat)+EAB_xix*(EAB_pex(-1)/EAB_pic)^(1-EAB_thetat)*(EAB_piex(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix)))^(1-EAB_thetat);
// Intermediate-good price inflation
EAB_piex = EAB_pex/EAB_pex(-1)*EAB_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAA_pimtilde
// EAAEAB_pimtilde/EAAEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAA_fx/EABEAA_gx;
// Definition of fx
// EABEAA_fx = EAA_size/EAB_size*EAAEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAA_fx(+1);
// Definition of gx   
// EABEAA_gx = EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAA_pim
// EAAEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EAAEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAAEAB_pim(-1)/EAA_pic)^(1-EAB_thetat)*(EAAEAB_piim(-1)^EAB_chix*EAA_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAA_piim
// EAAEAB_piim = EAAEAB_pim/EAAEAB_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EABEAA_rer = EAB_rer/EAA_rer;
// Auxiliary equation for steady-state output
EABEAA_rerbar = EABEAA_rer;
//Terms of Trade
EABEAA_tot = EAA_pex*EABEAA_rer/EAB_pex;
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = RW_pimtilde
// RWEAB_pimtilde/RWEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABRW_fx/EABRW_gx;
// Definition of fx
// EABRW_fx = RW_size/EAB_size*RWEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABRW_fx(+1);
// Definition of gx   
// EABRW_gx = EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = RW_pim
// RWEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*RWEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(RWEAB_pim(-1)/RW_pic)^(1-EAB_thetat)*(RWEAB_piim(-1)^EAB_chix*RW_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = RW_piim
// RWEAB_piim = RWEAB_pim/RWEAB_pim(-1)*RW_pic;
// Bilateral real exchange rate
EABRW_rer = EAB_rer/RW_rer;
// Auxiliary equation for steady-state output
EABRW_rerbar = EABRW_rer;
//Terms of Trade
EABRW_tot = RW_pex*EABRW_rer/EAB_pex;
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = US_pimtilde
// USEAB_pimtilde/USEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABUS_fx/EABUS_gx;
// Definition of fx
// EABUS_fx = US_size/EAB_size*USEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABUS_fx(+1);
// Definition of gx   
// EABUS_gx = EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = US_pim
// USEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*USEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(USEAB_pim(-1)/US_pic)^(1-EAB_thetat)*(USEAB_piim(-1)^EAB_chix*US_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = US_piim
// USEAB_piim = USEAB_pim/USEAB_pim(-1)*US_pic;
// Bilateral real exchange rate
EABUS_rer = EAB_rer/US_rer;
// Auxiliary equation for steady-state output
EABUS_rerbar = EABUS_rer;
//Terms of Trade
EABUS_tot = US_pex*EABUS_rer/EAB_pex;
// Total imports 
EAB_im = 
+EAB_imc
+EAB_imi
+EAB_imcg
+EAB_imig
;
// Total import deflator
EAB_im*EAB_pim  = 
+EAB_pimc*EAB_imc
+EAB_pimi*EAB_imi
+EAB_pimcg*EAB_imcg
+EAB_pimig*EAB_imig
;
// Effective real exchange rate: double weighting (imports)
EABEAA_weightim = EABEAA_rer*EAA_pex*EABEAA_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAA_weightex = EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAA_rer*EAA_py*EAA_y/(EABEAA_rer*EAA_py*EAA_y
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)+
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAA_rer*EAA_pex*RWEAA_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAA_rer*EAA_pex*USEAA_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAA_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABRW_weightex = RW_size/EAB_size*RWEAB_im/EAB_ex*EABRW_rer*RW_py*RW_y/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABRW_rer*RW_pex*EAARW_im/(EABEAA_rer*EAA_py*EAA_y
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABRW_rer*RW_pex*USRW_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABRW_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABRW_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABRW_weightex;
// Effective real exchange rate: double weighting (imports)
EABUS_weightim = EABUS_rer*US_pex*EABUS_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABUS_weightex = US_size/EAB_size*USEAB_im/EAB_ex*EABUS_rer*US_py*US_y/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABUS_rer*US_pex*EAAUS_im/(EABEAA_rer*EAA_py*EAA_y
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABUS_rer*US_pex*RWUS_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EABUS_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightex;
// Effective real exchange rate
EAB_reer = 1
*EABEAA_rer^EABEAA_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABRW_tot^EABRW_weight
*EABUS_tot^EABUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAB_imc^((EAB_mumc-1)/EAB_mumc) =
+EABEAA_numc ^(1/EAB_mumc)*EABEAA_imc^(1-1/EAB_mumc)
+EABRW_numc ^(1/EAB_mumc)*EABRW_imc^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABRW_numc
)^(1/EAB_mumc)*EABUS_imc^(1-1/EAB_mumc);
// Demand for bilateral consumption import goods
EABEAA_imc = EABEAA_numc*((EAA_pex*EABEAA_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABUS_imc = (1
-EABEAA_numc
-EABRW_numc
)*((US_pex*EABUS_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Price of the consumption good (import)
EAB_pimc^(1-EAB_mumc) =
+EABEAA_numc * (EAA_pex*EABEAA_rer)^(1-EAB_mumc)
+EABRW_numc * (RW_pex*EABRW_rer)^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABRW_numc
)*(US_pex*EABUS_rer)^(1-EAB_mumc);
// Private consumption good (import) inflation
EAB_piimc = EAB_pimc/EAB_pimc(-1)*EAB_pic;
// Private consumption good (import)
EAB_imi^((EAB_mumi-1)/EAB_mumi) =
+EABEAA_numi ^(1/EAB_mumi)*EABEAA_imi^(1-1/EAB_mumi)
+EABRW_numi ^(1/EAB_mumi)*EABRW_imi^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABRW_numi
)^(1/EAB_mumi)*EABUS_imi^(1-1/EAB_mumi);
// Demand for bilateral consumption import goods
EABEAA_imi = EABEAA_numi*((EAA_pex*EABEAA_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
EABUS_imi = (1
-EABEAA_numi
-EABRW_numi
)*((US_pex*EABUS_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Price of the consumption good (import)
EAB_pimi^(1-EAB_mumi) =
+EABEAA_numi * (EAA_pex*EABEAA_rer)^(1-EAB_mumi)
+EABRW_numi * (RW_pex*EABRW_rer)^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABRW_numi
)*(US_pex*EABUS_rer)^(1-EAB_mumi);
// Private consumption good (import) inflation
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Private consumption good (import)
EAB_imcg^((EAB_mumcg-1)/EAB_mumcg) =
+EABEAA_numcg ^(1/EAB_mumcg)*EABEAA_imcg^(1-1/EAB_mumcg)
+EABRW_numcg ^(1/EAB_mumcg)*EABRW_imcg^(1-1/EAB_mumcg)
+(1
-EABEAA_numcg
-EABRW_numcg
)^(1/EAB_mumcg)*EABUS_imcg^(1-1/EAB_mumcg);
// Demand for bilateral consumption import goods
EABEAA_imcg = EABEAA_numcg*((EAA_pex*EABEAA_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
EABUS_imcg = (1
-EABEAA_numcg
-EABRW_numcg
)*((US_pex*EABUS_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Price of the consumption good (import)
EAB_pimcg^(1-EAB_mumcg) =
+EABEAA_numcg * (EAA_pex*EABEAA_rer)^(1-EAB_mumcg)
+EABRW_numcg * (RW_pex*EABRW_rer)^(1-EAB_mumcg)
+(1
-EABEAA_numcg
-EABRW_numcg
)*(US_pex*EABUS_rer)^(1-EAB_mumcg);
// Private consumption good (import) inflation
EAB_piimcg = EAB_pimcg/EAB_pimcg(-1)*EAB_pic;
// Private consumption good (import)
EAB_imig^((EAB_mumig-1)/EAB_mumig) =
+EABEAA_numig ^(1/EAB_mumig)*EABEAA_imig^(1-1/EAB_mumig)
+EABRW_numig ^(1/EAB_mumig)*EABRW_imig^(1-1/EAB_mumig)
+(1
-EABEAA_numig
-EABRW_numig
)^(1/EAB_mumig)*EABUS_imig^(1-1/EAB_mumig);
// Demand for bilateral consumption import goods
EABEAA_imig = EABEAA_numig*((EAA_pex*EABEAA_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
EABUS_imig = (1
-EABEAA_numig
-EABRW_numig
)*((US_pex*EABUS_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Price of the consumption good (import)
EAB_pimig^(1-EAB_mumig) =
+EABEAA_numig * (EAA_pex*EABEAA_rer)^(1-EAB_mumig)
+EABRW_numig * (RW_pex*EABRW_rer)^(1-EAB_mumig)
+(1
-EABEAA_numig
-EABRW_numig
)*(US_pex*EABUS_rer)^(1-EAB_mumig);
// Private consumption good (import) inflation
EAB_piimig = EAB_pimig/EAB_pimig(-1)*EAB_pic;
// Private consumption good (import) inflation
EAB_piimc4 = EAB_pimc/EAB_pimc(-4)*EAB_pic4;
// Private consumption good (import) inflation
EAB_piex4 = EAB_pex/EAB_pex(-4)*EAB_pic4;
// Wedge between aggregate demand and production, using EAB_x = RW_size/EAB_size*RW_im
EAB_yst = EAB_sh*EAB_ht+EAB_sx*EAB_ex;
// Aggregate demand for bilateral imported intermediate goods
EABEAA_im = 
+EABEAA_imc
+EABEAA_imi
+EABEAA_imcg
+EABEAA_imig
;
EABRW_im = 
+EABRW_imc
+EABRW_imi
+EABRW_imcg
+EABRW_imig
;
EABUS_im = 
+EABUS_imc
+EABUS_imi
+EABUS_imcg
+EABUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
EAB_ttc^((EAB_mutc-1)/EAB_mutc) = (EAB_nutc)^(1/EAB_mutc)*EAB_htc^(1-1/EAB_mutc)+(1-EAB_nutc)^(1/EAB_mutc)*EAB_imc^(1-1/EAB_mutc);
// Private consumption good  (total)
EAB_qc^((EAB_muc-1)/EAB_muc) = (EAB_nuc)^(1/EAB_muc)*EAB_ttc^(1-1/EAB_muc)+(1-EAB_nuc)^(1/EAB_muc)*EAB_ntc^(1-1/EAB_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAB_ntc = (1-EAB_nuc)*(EAB_pnt)^(-EAB_muc)*EAB_qc;
// Price of the consumption good (tradable)  
EAB_pttc^(1-EAB_mutc) = (EAB_nutc)*EAB_pht^(1-EAB_mutc)+(1-EAB_nutc)*EAB_pimc^(1-EAB_mutc);
// Price of the consumption good 
1^(1-EAB_muc) = (EAB_nuc)*EAB_pttc^(1-EAB_muc)+(1-EAB_nuc)*EAB_pnt^(1-EAB_muc);
// Demand for domestic intermediate goods
EAB_htc = EAB_nutc*(EAB_pht/EAB_pttc)^(-EAB_mutc)*EAB_ttc;
EABEAA_gammaimc = 0;
EABEAA_gammaimcdag = 1;
EABRW_gammaimc = 0;
EABRW_gammaimcdag = 1;
EABUS_gammaimc = 0;
EABUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAB_tti^((EAB_muti-1)/EAB_muti) = (EAB_nuti)^(1/EAB_muti)*EAB_hti^(1-1/EAB_muti)+(1-EAB_nuti)^(1/EAB_muti)*EAB_imi^(1-1/EAB_muti);
// Private consumption good  (total)
EAB_qi^((EAB_mui-1)/EAB_mui) = (EAB_nui)^(1/EAB_mui)*EAB_tti^(1-1/EAB_mui)+(1-EAB_nui)^(1/EAB_mui)*EAB_nti^(1-1/EAB_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAB_nti = (1-EAB_nui)*(EAB_pnt/EAB_pi)^(-EAB_mui)*EAB_qi;
// Price of the consumption good (tradable)  
EAB_ptti^(1-EAB_muti) = (EAB_nuti)*EAB_pht^(1-EAB_muti)+(1-EAB_nuti)*EAB_pimi^(1-EAB_muti);
// Price of the consumption good 
EAB_pi^(1-EAB_mui) = (EAB_nui)*EAB_ptti^(1-EAB_mui)+(1-EAB_nui)*EAB_pnt^(1-EAB_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
EAB_pibar = EAB_pi;
// Demand for domestic intermediate goods
EAB_hti = EAB_nuti*(EAB_pht/EAB_ptti)^(-EAB_muti)*EAB_tti;
EABEAA_gammaimi = 0;
EABEAA_gammaimidag = 1;
EABRW_gammaimi = 0;
EABRW_gammaimidag = 1;
EABUS_gammaimi = 0;
EABUS_gammaimidag = 1;
// Private consumption good (tradable)
EAB_ttcg^((EAB_mutcg-1)/EAB_mutcg) = (EAB_nutcg)^(1/EAB_mutcg)*EAB_htcg^(1-1/EAB_mutcg)+(1-EAB_nutcg)^(1/EAB_mutcg)*EAB_imcg^(1-1/EAB_mutcg);
// Private consumption good  (total)
EAB_qcg^((EAB_mucg-1)/EAB_mucg) = (EAB_nucg)^(1/EAB_mucg)*EAB_ttcg^(1-1/EAB_mucg)+(1-EAB_nucg)^(1/EAB_mucg)*EAB_ntcg^(1-1/EAB_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAB_ntcg = (1-EAB_nucg)*(EAB_pnt/EAB_pcg)^(-EAB_mucg)*EAB_qcg;
// Price of the consumption good (tradable)  
EAB_pttcg^(1-EAB_mutcg) = (EAB_nutcg)*EAB_pht^(1-EAB_mutcg)+(1-EAB_nutcg)*EAB_pimcg^(1-EAB_mutcg);
// Price of the consumption good 
EAB_pcg^(1-EAB_mucg) = (EAB_nucg)*EAB_pttcg^(1-EAB_mucg)+(1-EAB_nucg)*EAB_pnt^(1-EAB_mucg);
// Demand for domestic intermediate goods
EAB_htcg = EAB_nutcg*(EAB_pht/EAB_pttcg)^(-EAB_mutcg)*EAB_ttcg;
EABEAA_gammaimcg = 0;
EABEAA_gammaimcgdag = 1;
EABRW_gammaimcg = 0;
EABRW_gammaimcgdag = 1;
EABUS_gammaimcg = 0;
EABUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAB_ttig^((EAB_mutig-1)/EAB_mutig) = (EAB_nutig)^(1/EAB_mutig)*EAB_htig^(1-1/EAB_mutig)+(1-EAB_nutig)^(1/EAB_mutig)*EAB_imig^(1-1/EAB_mutig);
// Private consumption good  (total)
EAB_qig^((EAB_muig-1)/EAB_muig) = (EAB_nuig)^(1/EAB_muig)*EAB_ttig^(1-1/EAB_muig)+(1-EAB_nuig)^(1/EAB_muig)*EAB_ntig^(1-1/EAB_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAB_ntig = (1-EAB_nuig)*(EAB_pnt/EAB_pig)^(-EAB_muig)*EAB_qig;
// Price of the consumption good (tradable)  
EAB_pttig^(1-EAB_mutig) = (EAB_nutig)*EAB_pht^(1-EAB_mutig)+(1-EAB_nutig)*EAB_pimig^(1-EAB_mutig);
// Price of the consumption good 
EAB_pig^(1-EAB_muig) = (EAB_nuig)*EAB_pttig^(1-EAB_muig)+(1-EAB_nuig)*EAB_pnt^(1-EAB_muig);
// Demand for domestic intermediate goods
EAB_htig = EAB_nutig*(EAB_pht/EAB_pttig)^(-EAB_mutig)*EAB_ttig;
EABEAA_gammaimig = 0;
EABEAA_gammaimigdag = 1;
EABRW_gammaimig = 0;
EABRW_gammaimigdag = 1;
EABUS_gammaimig = 0;
EABUS_gammaimigdag = 1;
// Trade balance
EAB_tb =
+EAB_pex*EAA_size/EAB_size*EAAEAB_im
-EAA_pex*EABEAA_rer*EABEAA_im
+EAB_pex*RW_size/EAB_size*RWEAB_im
-RW_pex*EABRW_rer*EABRW_im
+EAB_pex*US_size/EAB_size*USEAB_im
-US_pex*EABUS_rer*EABUS_im
;
// Aggregate exports (volume)
EAB_ex =
+EAA_size/EAB_size*EAAEAB_im
+RW_size/EAB_size*RWEAB_im
+US_size/EAB_size*USEAB_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAB_pg = EAB_pht
// TODO: check the (1-EAB_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAB_pcg(-1)*EAB_cg(-1)+EAB_pig(-1)*EAB_ig(-1)+EAB_tr(-1)
	+EAB_b(-1)*EAB_pic(-1)^(-1)+EAB_m(-2)*EAB_pic(-1)^(-1) = EAB_tauc(-1)*EAB_c(-1)+(EAB_taun(-1)+EAB_tauwh(-1))*(EAB_wi(-1)*EAB_ndi(-1)+EAB_wj(-1)*EAB_ndj(-1))+EAB_tauwf(-1)*EAB_w(-1)*EAB_nd(-1)+EAB_tauk(-1)*(EAB_rk(-1)*EAB_u(-1)-(EAB_gammau(-1)+EAB_delta)*EAB_pi(-1))*EAB_k(-1)+EAB_taud(-1)*EAB_d(-1)+EAB_t(-1)+(EAB_r(-1)*(1-EAB_gammab(-1)))^(-1)*EAB_b+EAB_m(-1);
// Government spending, using EAB_pg = EAB_pht
EAB_pcg*EAB_cg = EAB_cgy*EAB_pybar*EAB_ybar;
EAB_pig*EAB_ig = EAB_igy*EAB_pybar*EAB_ybar;
EAB_t = 0;
EAB_b = EAB_bytarget*EAB_pybar*EAB_ybar;
// Auxiliary equation for steady-state output
EAB_ybar = EAB_y;
// Auxiliary equation for steady-state output
EAB_ytbar = EAB_yst;
// Auxiliary equation for steady-state output
EAB_ynbar = EAB_ysn;
// Auxiliary equation for steady-state output deflator
EAB_pybar = EAB_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAB_trybar = EAB_tr/(EAB_pybar*EAB_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAB_ti = EAB_upsilont*EAB_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAB_tri = EAB_upsilontr*EAB_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	EAB_r^4-1 = EAB_rrstar^4*EAB_pi4target-1;
EAB_pic4 = EAB_pi4target;
EAB_rr-1 = EAB_r/EAB_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAB_rrstar-1 = 1/EAB_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAB_c = (1-EAB_omega)*EAB_ci+EAB_omega*EAB_cj;
// Aggregate money holdings
EAB_m = (1-EAB_omega)*EAB_mi+EAB_omega*EAB_mj;
// Aggregate capital stock
EAB_k = (1-EAB_omega)*EAB_ki;
// Aggregate investment
EAB_i = (1-EAB_omega)*EAB_ii;
// Aggregate lump-sum transfers
EAB_trj = 
1/EAB_omega*EAB_tr-(1-EAB_omega)/EAB_omega*EAB_tri
;
// Aggregate lump-sum taxes
EAB_tj = 
1/EAB_omega*EAB_t-(1-EAB_omega)/EAB_omega*EAB_ti
;
// Aggregate transaction costs
EAB_gammav = (1-EAB_omega)*EAB_ci*EAB_gammavi+EAB_omega*EAB_cj*EAB_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAB_ni = EAB_si*EAB_ndi;
// Wage dispersion
EAB_si = (1-EAB_xii)*(EAB_witilde/EAB_wi)^(-EAB_etai)+EAB_xii*(EAB_wi(-1)/EAB_wi)^(-EAB_etai)*(EAB_pic/(EAB_pic(-1)^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai)*EAB_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAB_nj = EAB_sj*EAB_ndj;
// Wage dispersion
EAB_sj = (1-EAB_xij)*(EAB_wjtilde/EAB_wj)^(-EAB_etaj)+EAB_xij*(EAB_wj(-1)/EAB_wj)^(-EAB_etaj)*(EAB_pic/(EAB_pic(-1)^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj)*EAB_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAB_u*EAB_k = EAB_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAB_x = RW_size/EAB_size*RW_im
EAB_ysn = EAB_snt*EAB_nt;
//  nontradables aggregate demand
EAB_nt = 
+EAB_ntc
+EAB_nti
+EAB_ntcg
+EAB_ntig
;
// Aggregate demand for domestic intermediate goods, using EAB_hg = EAB_cg
EAB_ht =
+EAB_htc
+EAB_hti
+EAB_htcg
+EAB_htig
;
// Price dispersion in the domestic markets
EAB_sh = (1-EAB_xih)*(EAB_phttilde/EAB_pht)^(-EAB_thetat)+EAB_xih*(EAB_piht/(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_sh(-1);
// Price dispersion in the foreign markets
EAB_sx = (1-EAB_xix)*(EAB_pextilde/EAB_pex)^(-EAB_thetat)+EAB_xix*(EAB_piex/(EAB_piex(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EAB_sx(-1);
// Price dispersion in the domestic markets
EAB_snt = (1-EAB_xin)*(EAB_pnttilde/EAB_pnt)^(-EAB_thetan)+EAB_xin*(EAB_pint/(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAB_qc = EAB_c+EAB_gammav;
// Aggregate investment and capital utilisation cost
EAB_qi = EAB_i+EAB_k*EAB_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAB_qcg = EAB_cg;
EAB_qig = EAB_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAB_py*EAB_y = 
+EAB_qc
+EAB_pi*EAB_qi
+EAB_pcg*EAB_qcg
+EAB_pig*EAB_qig
+EAB_pex*EAA_size/EAB_size*EAAEAB_im
-(EAA_pex*EABEAA_rer)*EABEAA_imc
-(EAA_pex*EABEAA_rer)*EABEAA_imi
-(EAA_pex*EABEAA_rer)*EABEAA_imcg
-(EAA_pex*EABEAA_rer)*EABEAA_imig
+EAB_pex*RW_size/EAB_size*RWEAB_im
-(RW_pex*EABRW_rer)*EABRW_imc
-(RW_pex*EABRW_rer)*EABRW_imi
-(RW_pex*EABRW_rer)*EABRW_imcg
-(RW_pex*EABRW_rer)*EABRW_imig
+EAB_pex*US_size/EAB_size*USEAB_im
-(US_pex*EABUS_rer)*EABUS_imc
-(US_pex*EABUS_rer)*EABUS_imi
-(US_pex*EABUS_rer)*EABUS_imcg
-(US_pex*EABUS_rer)*EABUS_imig
;
// Aggregate real demand
EAB_y = EAB_yst+EAB_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAB_zt) = (1-EAB_rhozt)*log(EAB_ztbar)+EAB_rhozt*log(EAB_zt(-1))+EAB_epszt;
log(EAB_zn) = (1-EAB_rhozn)*log(EAB_znbar)+EAB_rhozn*log(EAB_zn(-1))+EAB_epszn;
// Government spending shock
EAB_cgy = (1-EAB_rhocg)*EAB_cgybar+EAB_rhocg*EAB_cgy(-1)+EAB_epsgc;
EAB_igy = (1-EAB_rhoig)*EAB_igybar+EAB_rhoig*EAB_igy(-1)+EAB_epsgi;
// Transfer shock
EAB_try = (1-EAB_rhotr)*EAB_trybar+EAB_rhotr*EAB_try(-1)+EAB_epstr;
// Consumption tax shock
EAB_tauc = (1-EAB_rhotauc)*EAB_taucbar+EAB_rhotauc*EAB_tauc(-1)+EAB_epstauc;
// Dividend income tax shock
EAB_taud = (1-EAB_rhotaud)*EAB_taudbar+EAB_rhotaud*EAB_taud(-1)+EAB_epstaud;
// Capital income tax shock
EAB_tauk = (1-EAB_rhotauk)*EAB_taukbar+EAB_rhotauk*EAB_tauk(-1)+EAB_epstauk;
// Labour income tax shock
EAB_taun = (1-EAB_rhotaun)*EAB_taunbar+EAB_rhotaun*EAB_taun(-1)+EAB_epstaun;
// Payroll tax shock: households
EAB_tauwh = (1-EAB_rhotauwh)*EAB_tauwhbar+EAB_rhotauwh*EAB_tauwh(-1)+EAB_epstauwh;
// Payroll tax shock: firms
EAB_tauwf = (1-EAB_rhotauwf)*EAB_tauwfbar+EAB_rhotauwf*EAB_tauwf(-1)+EAB_epstauwf;
// Wage cost push shock
EAB_wcst = (1-EAB_rhowcst)*EAB_wcstbar+EAB_rhowcst*EAB_wcst(-1)+EAB_epswcst;
// Preference shock
log(EAB_zcon) = (1-EAB_rhozcon)*log(EAB_zconbar)+EAB_rhozcon*log(EAB_zcon(-1))+EAB_epszcon;
// Investment specific shock
log(EAB_zinv) = (1-EAB_rhozinv)*log(EAB_zinvbar)+EAB_rhozinv*log(EAB_zinv(-1))+EAB_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAB_cy = EAB_c/(EAB_py*EAB_y);
// Aggregate nominal investment share
EAB_iy = EAB_pi*EAB_i/(EAB_py*EAB_y);
// Aggregate nominal import share  
EAB_imy = (
+EAB_pimc*EAB_imc
+EAB_pimi*EAB_imi
+EAB_pimcg*EAB_imcg
+EAB_pimig*EAB_imig
)/(EAB_py*EAB_y);
// Aggregate nominal import share
EAB_imcy = EAB_pimc*EAB_imc/(EAB_py*EAB_y);
EAB_imiy = EAB_pimi*EAB_imi/(EAB_py*EAB_y);
EAB_imcgy = EAB_pimcg*EAB_imcg/(EAB_py*EAB_y);
EAB_imigy = EAB_pimig*EAB_imig/(EAB_py*EAB_y);
// Aggregate debt-to-output ratio
EAB_by = EAB_b/(EAB_pybar*EAB_ybar);
// Aggregate lump-sum tax-to-output ratio
EAB_ty = EAB_t/(EAB_pybar*EAB_ybar);
// Aggregate labour cost share
EAB_lcy = ((1+EAB_tauwf)*EAB_w*EAB_nd)/(EAB_py*EAB_y);
// Aggregate nominal Wage share
EAB_wy = (EAB_w*EAB_nd)/(EAB_py*EAB_y);
// NT sector nominal Wage share
EAB_wnty = (EAB_w*EAB_ndn)/(EAB_pnt*EAB_ysn);
// T sector nominal Wage share
EAB_whty = (EAB_w*EAB_ndt)/(EAB_pht*EAB_yst);
// T sector share
EAB_yhty = EAB_pht*EAB_yst/(EAB_py*EAB_y);
// NT sector share
EAB_ynty = EAB_pnt*EAB_ysn/(EAB_py*EAB_y);
// Output gap
EAB_ygap = 0;
// Output growth (gross rate)
EAB_ygrowth = EAB_y/EAB_y(-1);
// Output growth (gross rate yoy)
EAB_ygrowth4 = EAB_y/EAB_y(-4);
// Domestic nominal output as a share of world nominal output
EAB_yshare  = EAB_size*EAB_py*EAB_y/EAB_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAB_epsilonm = -1/8*1/(EAB_r*(EAB_gammav2*EAB_r+EAB_r-1));
// Trade balance-to-GDP ratio
EAB_tby = EAB_tb/(EAB_py*EAB_y);
// Bilateral shares
EABEAA_imcy = (EAA_pex*EABEAA_rer)*EABEAA_imc/(EAB_py*EAB_y);
EABEAA_imiy = (EAA_pex*EABEAA_rer)*EABEAA_imi/(EAB_py*EAB_y);
EABEAA_imcgy = (EAA_pex*EABEAA_rer)*EABEAA_imcg/(EAB_py*EAB_y);
EABEAA_imigy = (EAA_pex*EABEAA_rer)*EABEAA_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAA_excy  = EAA_size/EAB_size*EAB_pex*EAAEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAA_exiy  = EAA_size/EAB_size*EAB_pex*EAAEAB_imi/(EAB_py*EAB_y);
// Bilateral shares
EABRW_imcy = (RW_pex*EABRW_rer)*EABRW_imc/(EAB_py*EAB_y);
EABRW_imiy = (RW_pex*EABRW_rer)*EABRW_imi/(EAB_py*EAB_y);
EABRW_imcgy = (RW_pex*EABRW_rer)*EABRW_imcg/(EAB_py*EAB_y);
EABRW_imigy = (RW_pex*EABRW_rer)*EABRW_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABRW_excy  = RW_size/EAB_size*EAB_pex*RWEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABRW_exiy  = RW_size/EAB_size*EAB_pex*RWEAB_imi/(EAB_py*EAB_y);
// Bilateral shares
EABUS_imcy = (US_pex*EABUS_rer)*EABUS_imc/(EAB_py*EAB_y);
EABUS_imiy = (US_pex*EABUS_rer)*EABUS_imi/(EAB_py*EAB_y);
EABUS_imcgy = (US_pex*EABUS_rer)*EABUS_imcg/(EAB_py*EAB_y);
EABUS_imigy = (US_pex*EABUS_rer)*EABUS_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABUS_excy  = US_size/EAB_size*EAB_pex*USEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABUS_exiy  = US_size/EAB_size*EAB_pex*USEAB_imi/(EAB_py*EAB_y);
// Internal real exchange rate
EAB_internalrer = EAB_pnt/EAB_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
//-------------
// Household I
//-------------
RW_ccesi^(1-1/RW_mucces) = (RW_nucces)^(1/RW_mucces)*RW_ci^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces);
// Utility
RW_utili = 
RW_zcon*log(RW_ccesi-RW_kappa*RW_ccesi(-1))-1/(1+RW_zeta)*(RW_ni)^(1+RW_zeta)+RW_beta*RW_utili(+1)
;
// Marginal utility of consumption
RW_dcci = ((RW_nucces)^(1/RW_mucces)*RW_ci^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces))^(1/(RW_mucces-1))*(RW_nucces^(1/RW_mucces))*(RW_ci^(-1/RW_mucces));
RW_lambdai*(1+RW_tauc+RW_gammavi+RW_vi*RW_gammavider) = RW_zcon*(RW_ccesi-RW_kappa*RW_ccesi(-1))^(-RW_sigma)*RW_dcci;
// Euler equation for government bonds
RW_r = RW_beta^(-1)*RW_lambdai/RW_lambdai(+1)*RW_pic(+1);
// Euler equation for money
RW_vi^(2)*RW_gammavider = 1-RW_beta*RW_lambdai(+1)/(RW_lambdai*RW_pic(+1));
// Consumption-based velocity
RW_vi = RW_ci/RW_mi;
// Transaction cost
RW_gammavi = RW_gammav1*RW_vi+RW_gammav2/RW_vi-2*(RW_gammav1*RW_gammav2)^(1/2);
// Derivative of transaction cost
RW_gammavider = RW_gammav1-RW_gammav2*RW_vi^(-2);
RW_delta = RW_ii/RW_ki;
RW_gammai = 0;
RW_gammaider = 0;
RW_gammau = 0;
RW_gammauder = ((RW_beta^(-1)-1+RW_delta)*RW_qbar-RW_delta*RW_taukbar*RW_pibar)/((1-RW_taukbar)*RW_pibar);
RW_u = 1;
RW_pi = RW_q;
// Auxiliary equation for Tobin's Q in steady state
RW_qbar = RW_q;
// Rate of return on capital
RW_q = RW_beta*((1-RW_tauk)*RW_rk+(RW_tauk*RW_delta)*RW_pi+(1-RW_delta)*RW_q);
// Optimal wage contract (FOC)
RW_witilde^(1+RW_etai*RW_zeta) = RW_etai/(RW_etai-1)*RW_fi/RW_gi+RW_wcst;
// Definition of fi
RW_fi = RW_wi^(RW_etai*(1+RW_zeta))*RW_ndi^(1+RW_zeta)+RW_xii*RW_beta*(RW_pic(+1)/(RW_pic^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai*(1+RW_zeta))*RW_fi(+1);
// Definition of gi
RW_gi = RW_lambdai*(1-RW_taun-RW_tauwh)*RW_wi^RW_etai*RW_ndi+RW_xii*RW_beta*(RW_pic(+1)/(RW_pic^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai-1)*RW_gi(+1);
// Aggregate wage rate
RW_wi^(1-RW_etai) = (1-RW_xii)*RW_witilde^(1-RW_etai)+RW_xii*RW_wi(-1)^(1-RW_etai)*(RW_pic(-1)^RW_chii*RW_pi4target^(1/4*(1-RW_chii))/RW_pic)^(1-RW_etai);
//-------------
// Household J
//-------------
RW_ccesj^(1-1/RW_mucces) = (RW_nucces)^(1/RW_mucces)*RW_cj^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces);
// Utility
RW_utilj = 
RW_zcon*log(RW_ccesj-RW_kappa*RW_ccesj(-1))-1/(1+RW_zeta)*(RW_nj)^(1+RW_zeta)+RW_beta*RW_utilj(+1)
;
// Marginal utility of consumption
RW_dccj = ((RW_nucces)^(1/RW_mucces)*RW_cj^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces))^(1/(RW_mucces-1))*(RW_nucces^(1/RW_mucces))*(RW_cj^(-1/RW_mucces));
RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder) = RW_zcon*(RW_ccesj-RW_kappa*RW_ccesj(-1))^(-RW_sigma)*RW_dccj;
// Budget constraint
(1+RW_tauc+RW_gammavj)*RW_cj+RW_mj = (1-RW_taun-RW_tauwh)*RW_wj*RW_nj+RW_trj-RW_tj+RW_mj(-1)*RW_pic^(-1);
// Euler equation for money
RW_vj^(2)*RW_gammavjder = 1-RW_beta*RW_lambdaj(+1)/(RW_lambdaj*RW_pic(+1));
// Consumption-based velocity
RW_vj = RW_cj/RW_mj;
// Transaction technology
RW_gammavj = RW_gammav1*RW_vj+RW_gammav2/RW_vj-2*(RW_gammav1*RW_gammav2)^(1/2);
// Derivative of transaction technology
RW_gammavjder = RW_gammav1-RW_gammav2*RW_vj^(-2);
// Optimal wage contract (FOC)
RW_wjtilde^(1+RW_etaj*RW_zeta) = RW_etaj/(RW_etaj-1)*RW_fj/RW_gj+RW_wcst;
// Definition of fj
RW_fj = RW_wj^(RW_etaj*(1+RW_zeta))*RW_ndj^(1+RW_zeta)+RW_xij*RW_beta*(RW_pic(+1)/(RW_pic^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj*(1+RW_zeta))*RW_fj(+1);
// Definition of gj
RW_gj = RW_lambdaj*(1-RW_taun-RW_tauwh)*RW_wj^RW_etaj*RW_ndj+RW_xij*RW_beta*(RW_pic(+1)/(RW_pic^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj-1)*RW_gj(+1);
// Aggregate wage rate
RW_wj^(1-RW_etaj) = (1-RW_xij)*RW_wjtilde^(1-RW_etaj)+RW_xij*RW_wj(-1)^(1-RW_etaj)*(RW_pic(-1)^RW_chij*RW_pi4target^(1/4*(1-RW_chij))/RW_pic)^(1-RW_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
RW_yst = EA_z*RW_zt*RW_kdt^RW_alphat*RW_ndt^(1-RW_alphat)-RW_psitbar;
// Production function nontradable
RW_ysn = EA_z*RW_zn*RW_kdn^RW_alphan*RW_ndn^(1-RW_alphan)-RW_psinbar;
// Real marginal cost tradable
RW_mct = 1/(EA_z*RW_zt*(RW_alphat)^(RW_alphat)*(1-RW_alphat)^(1-RW_alphat))*RW_rk^(RW_alphat)*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
// Real marginal cost nontradable
RW_mcn = 1/(EA_z*RW_zn*(RW_alphan)^(RW_alphan)*(1-RW_alphan)^(1-RW_alphan))*RW_rk^(RW_alphan)*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
// Wage Inflation (qoq)
RW_piw = RW_w/RW_w(-1)*RW_pic;
// Wage Inflation (yoy)
RW_piw4 = RW_pic4;
// Auxiliary equation for steady-state fixed cost
RW_psitbar = RW_psit*RW_ytbar;
// Auxiliary equation for steady-state fixed cost
RW_psinbar = RW_psin*RW_ynbar;
// Capital input (FOC)
RW_rk = RW_alphat*(RW_yst+RW_psitbar)/RW_kdt*RW_mct;
// Capital input (FOC)
RW_rk = RW_alphan*(RW_ysn+RW_psinbar)/RW_kdn*RW_mcn;
// Total capital demand
RW_kd = RW_kdt+RW_kdn;
// Demand for labour services by household I
RW_ndi = 
(1-RW_omega)*(RW_wi/RW_w)^(-RW_eta)*RW_nd
;
// Demand for labour services by household J
RW_ndj = 
RW_omega*(RW_wj/RW_w)^(-RW_eta)*RW_nd
;
// Aggregate labour demand
RW_nd^(1-1/RW_eta) = 
(1-RW_omega)^(1/RW_eta)*RW_ndi^(1-1/RW_eta)+RW_omega^(1/RW_eta)*RW_ndj^(1-1/RW_eta)
;
// Total demand 
RW_nd = RW_ndt+RW_ndn;
// Aggregate dividends
RW_d = RW_py*RW_y-RW_rk*RW_kd-(1+RW_tauwf)*RW_w*RW_nd;
// Non-tradable sector dividends
RW_dn = RW_pnt*RW_ysn-RW_rk*RW_kdn-(1+RW_tauwf)*RW_w*RW_ndn;
// Tradable sector dividends
RW_dt = RW_pht*RW_ht
+RW_pex*RW_ex
-RW_rk*RW_kdt-(1+RW_tauwf)*RW_w*RW_ndt;
// Optimal price contract set in domestic markets (FOC)
RW_phttilde/RW_pht = RW_thetat/(RW_thetat-1)*RW_fh/RW_gh;
// Definition of fh
RW_fh = RW_mct*RW_ht+RW_xih*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piht(+1)/(RW_piht^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_fh(+1);
// Definition of gh
RW_gh = RW_pht*RW_ht+RW_xih*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piht(+1)/(RW_piht^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^(RW_thetat-1)*RW_gh(+1);
// Aggregate intermediate-good price dynamics
RW_pht^(1-RW_thetat) = (1-RW_xih)*RW_phttilde^(1-RW_thetat)+RW_xih*(RW_pht(-1)/RW_pic)^(1-RW_thetat)*(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation
RW_piht = RW_pht/RW_pht(-1)*RW_pic;
// Optimal price contract set in domestic markets (FOC)
RW_pnttilde/RW_pnt = RW_thetan/(RW_thetan-1)*RW_fn/RW_gn;
// Definition of fn
RW_fn = RW_mcn*RW_nt+RW_xin*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_pint(+1)/(RW_pint^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_fn(+1);
// Definition of gn
RW_gn = RW_pnt*RW_nt+RW_xin*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_pint(+1)/(RW_pint^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^(RW_thetan-1)*RW_gn(+1);
// Aggregate intermediate-good price dynamics
RW_pnt^(1-RW_thetan) = (1-RW_xin)*RW_pnttilde^(1-RW_thetan)+RW_xin*(RW_pnt(-1)/RW_pic)^(1-RW_thetan)*(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin)))^(1-RW_thetan);
// Intermediate-good price inflation
RW_pint = RW_pnt/RW_pnt(-1)*RW_pic;
// Optimal price contract set in domestic markets (FOC)
RW_pextilde/RW_pex = RW_thetat/(RW_thetat-1)*RW_fx/RW_gx;
// Definition of fh
RW_fx = RW_mct*RW_ex+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piex(+1)/(RW_piex^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RW_fx(+1);
// Definition of gh
RW_gx = RW_pex*RW_ex+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piex(+1)/(RW_piex^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RW_gx(+1);
// Aggregate intermediate-good price dynamics
RW_pex^(1-RW_thetat) = (1-RW_xix)*RW_pextilde^(1-RW_thetat)+RW_xix*(RW_pex(-1)/RW_pic)^(1-RW_thetat)*(RW_piex(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chix)))^(1-RW_thetat);
// Intermediate-good price inflation
RW_piex = RW_pex/RW_pex(-1)*RW_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAA_pimtilde
// EAARW_pimtilde/EAARW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAA_fx/RWEAA_gx;
// Definition of fx
// RWEAA_fx = EAA_size/RW_size*EAARW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAA_fx(+1);
// Definition of gx   
// RWEAA_gx = RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAA_pim
// EAARW_pim^(1-RW_thetat) = (1-RW_xix)*EAARW_pimtilde^(1-RW_thetat)+RW_xix*(EAARW_pim(-1)/EAA_pic)^(1-RW_thetat)*(EAARW_piim(-1)^RW_chix*EAA_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAA_piim
// EAARW_piim = EAARW_pim/EAARW_pim(-1)*EAA_pic;
// Bilateral real exchange rate
RWEAA_rer = RW_rer/EAA_rer;
// Auxiliary equation for steady-state output
RWEAA_rerbar = RWEAA_rer;
//Terms of Trade
RWEAA_tot = EAA_pex*RWEAA_rer/RW_pex;
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAB_pimtilde
// EABRW_pimtilde/EABRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAB_fx/RWEAB_gx;
// Definition of fx
// RWEAB_fx = EAB_size/RW_size*EABRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAB_fx(+1);
// Definition of gx   
// RWEAB_gx = RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAB_pim
// EABRW_pim^(1-RW_thetat) = (1-RW_xix)*EABRW_pimtilde^(1-RW_thetat)+RW_xix*(EABRW_pim(-1)/EAB_pic)^(1-RW_thetat)*(EABRW_piim(-1)^RW_chix*EAB_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAB_piim
// EABRW_piim = EABRW_pim/EABRW_pim(-1)*EAB_pic;
// Bilateral real exchange rate
RWEAB_rer = RW_rer/EAB_rer;
// Auxiliary equation for steady-state output
RWEAB_rerbar = RWEAB_rer;
//Terms of Trade
RWEAB_tot = EAB_pex*RWEAB_rer/RW_pex;
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = US_pimtilde
// USRW_pimtilde/USRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWUS_fx/RWUS_gx;
// Definition of fx
// RWUS_fx = US_size/RW_size*USRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWUS_fx(+1);
// Definition of gx   
// RWUS_gx = RWUS_rer*USRW_pim*US_size/RW_size*USRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWUS_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = US_pim
// USRW_pim^(1-RW_thetat) = (1-RW_xix)*USRW_pimtilde^(1-RW_thetat)+RW_xix*(USRW_pim(-1)/US_pic)^(1-RW_thetat)*(USRW_piim(-1)^RW_chix*US_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = US_piim
// USRW_piim = USRW_pim/USRW_pim(-1)*US_pic;
// Bilateral real exchange rate
RWUS_rer = RW_rer/US_rer;
// Auxiliary equation for steady-state output
RWUS_rerbar = RWUS_rer;
//Terms of Trade
RWUS_tot = US_pex*RWUS_rer/RW_pex;
// Total imports 
RW_im = 
+RW_imc
+RW_imi
+RW_imcg
+RW_imig
;
// Total import deflator
RW_im*RW_pim  = 
+RW_pimc*RW_imc
+RW_pimi*RW_imi
+RW_pimcg*RW_imcg
+RW_pimig*RW_imig
;
// Effective real exchange rate: double weighting (imports)
RWEAA_weightim = RWEAA_rer*EAA_pex*RWEAA_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAA_weightex = EAA_size/RW_size*EAARW_im/RW_ex*RWEAA_rer*EAA_py*EAA_y/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWUS_rer*US_pex*EAAUS_im
)+
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAA_rer*EAA_pex*EABEAA_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWUS_rer*US_pex*EABUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAA_rer*EAA_pex*USEAA_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAA_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAB_weightim = RWEAB_rer*EAB_pex*RWEAB_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAB_weightex = EAB_size/RW_size*EABRW_im/RW_ex*RWEAB_rer*EAB_py*EAB_y/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWUS_rer*US_pex*EABUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAB_rer*EAB_pex*EAAEAB_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWUS_rer*US_pex*EAAUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAB_rer*EAB_pex*USEAB_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAB_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightex;
// Effective real exchange rate: double weighting (imports)
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWUS_weightex = US_size/RW_size*USRW_im/RW_ex*RWUS_rer*US_py*US_y/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWUS_rer*US_pex*EAAUS_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWUS_rer*US_pex*EABUS_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWUS_rer*US_pex*EABUS_im
)
;
// Effective real exchange rate: double weighting (overall)
RWUS_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightex;
// Effective real exchange rate
RW_reer = 1
*RWEAA_rer^RWEAA_weight
*RWEAB_rer^RWEAB_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWUS_tot^RWUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
RW_imc^((RW_mumc-1)/RW_mumc) =
+RWEAB_numc ^(1/RW_mumc)*RWEAB_imc^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*RWUS_imc^(1-1/RW_mumc)
+(1
-RWEAB_numc
-RWUS_numc
)^(1/RW_mumc)*RWEAA_imc^(1-1/RW_mumc);
// Demand for bilateral consumption import goods
RWEAB_imc = RWEAB_numc*((EAB_pex*RWEAB_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAA_imc = (1
-RWEAB_numc
-RWUS_numc
)*((EAA_pex*RWEAA_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Price of the consumption good (import)
RW_pimc^(1-RW_mumc) =
+RWEAB_numc * (EAB_pex*RWEAB_rer)^(1-RW_mumc)
+RWUS_numc * (US_pex*RWUS_rer)^(1-RW_mumc)
+(1
-RWEAB_numc
-RWUS_numc
)*(EAA_pex*RWEAA_rer)^(1-RW_mumc);
// Private consumption good (import) inflation
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import)
RW_imi^((RW_mumi-1)/RW_mumi) =
+RWEAB_numi ^(1/RW_mumi)*RWEAB_imi^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*RWUS_imi^(1-1/RW_mumi)
+(1
-RWEAB_numi
-RWUS_numi
)^(1/RW_mumi)*RWEAA_imi^(1-1/RW_mumi);
// Demand for bilateral consumption import goods
RWEAB_imi = RWEAB_numi*((EAB_pex*RWEAB_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
RWEAA_imi = (1
-RWEAB_numi
-RWUS_numi
)*((EAA_pex*RWEAA_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Price of the consumption good (import)
RW_pimi^(1-RW_mumi) =
+RWEAB_numi * (EAB_pex*RWEAB_rer)^(1-RW_mumi)
+RWUS_numi * (US_pex*RWUS_rer)^(1-RW_mumi)
+(1
-RWEAB_numi
-RWUS_numi
)*(EAA_pex*RWEAA_rer)^(1-RW_mumi);
// Private consumption good (import) inflation
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Private consumption good (import)
RW_imcg^((RW_mumcg-1)/RW_mumcg) =
+RWEAB_numcg ^(1/RW_mumcg)*RWEAB_imcg^(1-1/RW_mumcg)
+RWUS_numcg ^(1/RW_mumcg)*RWUS_imcg^(1-1/RW_mumcg)
+(1
-RWEAB_numcg
-RWUS_numcg
)^(1/RW_mumcg)*RWEAA_imcg^(1-1/RW_mumcg);
// Demand for bilateral consumption import goods
RWEAB_imcg = RWEAB_numcg*((EAB_pex*RWEAB_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
RWEAA_imcg = (1
-RWEAB_numcg
-RWUS_numcg
)*((EAA_pex*RWEAA_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Price of the consumption good (import)
RW_pimcg^(1-RW_mumcg) =
+RWEAB_numcg * (EAB_pex*RWEAB_rer)^(1-RW_mumcg)
+RWUS_numcg * (US_pex*RWUS_rer)^(1-RW_mumcg)
+(1
-RWEAB_numcg
-RWUS_numcg
)*(EAA_pex*RWEAA_rer)^(1-RW_mumcg);
// Private consumption good (import) inflation
RW_piimcg = RW_pimcg/RW_pimcg(-1)*RW_pic;
// Private consumption good (import)
RW_imig^((RW_mumig-1)/RW_mumig) =
+RWEAB_numig ^(1/RW_mumig)*RWEAB_imig^(1-1/RW_mumig)
+RWUS_numig ^(1/RW_mumig)*RWUS_imig^(1-1/RW_mumig)
+(1
-RWEAB_numig
-RWUS_numig
)^(1/RW_mumig)*RWEAA_imig^(1-1/RW_mumig);
// Demand for bilateral consumption import goods
RWEAB_imig = RWEAB_numig*((EAB_pex*RWEAB_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
RWEAA_imig = (1
-RWEAB_numig
-RWUS_numig
)*((EAA_pex*RWEAA_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Price of the consumption good (import)
RW_pimig^(1-RW_mumig) =
+RWEAB_numig * (EAB_pex*RWEAB_rer)^(1-RW_mumig)
+RWUS_numig * (US_pex*RWUS_rer)^(1-RW_mumig)
+(1
-RWEAB_numig
-RWUS_numig
)*(EAA_pex*RWEAA_rer)^(1-RW_mumig);
// Private consumption good (import) inflation
RW_piimig = RW_pimig/RW_pimig(-1)*RW_pic;
// Private consumption good (import) inflation
RW_piimc4 = RW_pimc/RW_pimc(-4)*RW_pic4;
// Private consumption good (import) inflation
RW_piex4 = RW_pex/RW_pex(-4)*RW_pic4;
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
RW_yst = RW_sh*RW_ht+RW_sx*RW_ex;
// Aggregate demand for bilateral imported intermediate goods
RWEAA_im = 
+RWEAA_imc
+RWEAA_imi
+RWEAA_imcg
+RWEAA_imig
;
RWEAB_im = 
+RWEAB_imc
+RWEAB_imi
+RWEAB_imcg
+RWEAB_imig
;
RWUS_im = 
+RWUS_imc
+RWUS_imi
+RWUS_imcg
+RWUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
RW_ttc^((RW_mutc-1)/RW_mutc) = (RW_nutc)^(1/RW_mutc)*RW_htc^(1-1/RW_mutc)+(1-RW_nutc)^(1/RW_mutc)*RW_imc^(1-1/RW_mutc);
// Private consumption good  (total)
RW_qc^((RW_muc-1)/RW_muc) = (RW_nuc)^(1/RW_muc)*RW_ttc^(1-1/RW_muc)+(1-RW_nuc)^(1/RW_muc)*RW_ntc^(1-1/RW_muc);
// Demand for domestic intermediate goods - NONTRADABLE
RW_ntc = (1-RW_nuc)*(RW_pnt)^(-RW_muc)*RW_qc;
// Price of the consumption good (tradable)  
RW_pttc^(1-RW_mutc) = (RW_nutc)*RW_pht^(1-RW_mutc)+(1-RW_nutc)*RW_pimc^(1-RW_mutc);
// Price of the consumption good 
1^(1-RW_muc) = (RW_nuc)*RW_pttc^(1-RW_muc)+(1-RW_nuc)*RW_pnt^(1-RW_muc);
// Demand for domestic intermediate goods
RW_htc = RW_nutc*(RW_pht/RW_pttc)^(-RW_mutc)*RW_ttc;
RWEAA_gammaimc = 0;
RWEAA_gammaimcdag = 1;
RWEAB_gammaimc = 0;
RWEAB_gammaimcdag = 1;
RWUS_gammaimc = 0;
RWUS_gammaimcdag = 1;
// Private consumption good (tradable)
RW_tti^((RW_muti-1)/RW_muti) = (RW_nuti)^(1/RW_muti)*RW_hti^(1-1/RW_muti)+(1-RW_nuti)^(1/RW_muti)*RW_imi^(1-1/RW_muti);
// Private consumption good  (total)
RW_qi^((RW_mui-1)/RW_mui) = (RW_nui)^(1/RW_mui)*RW_tti^(1-1/RW_mui)+(1-RW_nui)^(1/RW_mui)*RW_nti^(1-1/RW_mui);
// Demand for domestic intermediate goods - NONTRADABLE
RW_nti = (1-RW_nui)*(RW_pnt/RW_pi)^(-RW_mui)*RW_qi;
// Price of the consumption good (tradable)  
RW_ptti^(1-RW_muti) = (RW_nuti)*RW_pht^(1-RW_muti)+(1-RW_nuti)*RW_pimi^(1-RW_muti);
// Price of the consumption good 
RW_pi^(1-RW_mui) = (RW_nui)*RW_ptti^(1-RW_mui)+(1-RW_nui)*RW_pnt^(1-RW_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
RW_pibar = RW_pi;
// Demand for domestic intermediate goods
RW_hti = RW_nuti*(RW_pht/RW_ptti)^(-RW_muti)*RW_tti;
RWEAA_gammaimi = 0;
RWEAA_gammaimidag = 1;
RWEAB_gammaimi = 0;
RWEAB_gammaimidag = 1;
RWUS_gammaimi = 0;
RWUS_gammaimidag = 1;
// Private consumption good (tradable)
RW_ttcg^((RW_mutcg-1)/RW_mutcg) = (RW_nutcg)^(1/RW_mutcg)*RW_htcg^(1-1/RW_mutcg)+(1-RW_nutcg)^(1/RW_mutcg)*RW_imcg^(1-1/RW_mutcg);
// Private consumption good  (total)
RW_qcg^((RW_mucg-1)/RW_mucg) = (RW_nucg)^(1/RW_mucg)*RW_ttcg^(1-1/RW_mucg)+(1-RW_nucg)^(1/RW_mucg)*RW_ntcg^(1-1/RW_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
RW_ntcg = (1-RW_nucg)*(RW_pnt/RW_pcg)^(-RW_mucg)*RW_qcg;
// Price of the consumption good (tradable)  
RW_pttcg^(1-RW_mutcg) = (RW_nutcg)*RW_pht^(1-RW_mutcg)+(1-RW_nutcg)*RW_pimcg^(1-RW_mutcg);
// Price of the consumption good 
RW_pcg^(1-RW_mucg) = (RW_nucg)*RW_pttcg^(1-RW_mucg)+(1-RW_nucg)*RW_pnt^(1-RW_mucg);
// Demand for domestic intermediate goods
RW_htcg = RW_nutcg*(RW_pht/RW_pttcg)^(-RW_mutcg)*RW_ttcg;
RWEAA_gammaimcg = 0;
RWEAA_gammaimcgdag = 1;
RWEAB_gammaimcg = 0;
RWEAB_gammaimcgdag = 1;
RWUS_gammaimcg = 0;
RWUS_gammaimcgdag = 1;
// Private consumption good (tradable)
RW_ttig^((RW_mutig-1)/RW_mutig) = (RW_nutig)^(1/RW_mutig)*RW_htig^(1-1/RW_mutig)+(1-RW_nutig)^(1/RW_mutig)*RW_imig^(1-1/RW_mutig);
// Private consumption good  (total)
RW_qig^((RW_muig-1)/RW_muig) = (RW_nuig)^(1/RW_muig)*RW_ttig^(1-1/RW_muig)+(1-RW_nuig)^(1/RW_muig)*RW_ntig^(1-1/RW_muig);
// Demand for domestic intermediate goods - NONTRADABLE
RW_ntig = (1-RW_nuig)*(RW_pnt/RW_pig)^(-RW_muig)*RW_qig;
// Price of the consumption good (tradable)  
RW_pttig^(1-RW_mutig) = (RW_nutig)*RW_pht^(1-RW_mutig)+(1-RW_nutig)*RW_pimig^(1-RW_mutig);
// Price of the consumption good 
RW_pig^(1-RW_muig) = (RW_nuig)*RW_pttig^(1-RW_muig)+(1-RW_nuig)*RW_pnt^(1-RW_muig);
// Demand for domestic intermediate goods
RW_htig = RW_nutig*(RW_pht/RW_pttig)^(-RW_mutig)*RW_ttig;
RWEAA_gammaimig = 0;
RWEAA_gammaimigdag = 1;
RWEAB_gammaimig = 0;
RWEAB_gammaimigdag = 1;
RWUS_gammaimig = 0;
RWUS_gammaimigdag = 1;
// Trade balance
RW_tb =
+RW_pex*EAA_size/RW_size*EAARW_im
-EAA_pex*RWEAA_rer*RWEAA_im
+RW_pex*EAB_size/RW_size*EABRW_im
-EAB_pex*RWEAB_rer*RWEAB_im
+RW_pex*US_size/RW_size*USRW_im
-US_pex*RWUS_rer*RWUS_im
;
// Aggregate exports (volume)
RW_ex =
+EAA_size/RW_size*EAARW_im
+EAB_size/RW_size*EABRW_im
+US_size/RW_size*USRW_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using RW_pg = RW_pht
// TODO: check the (1-RW_gammab(-1)) adjustment here, which is not in the fiscal extention
	RW_pcg(-1)*RW_cg(-1)+RW_pig(-1)*RW_ig(-1)+RW_tr(-1)
	+RW_b(-1)*RW_pic(-1)^(-1)+RW_m(-2)*RW_pic(-1)^(-1) = RW_tauc(-1)*RW_c(-1)+(RW_taun(-1)+RW_tauwh(-1))*(RW_wi(-1)*RW_ndi(-1)+RW_wj(-1)*RW_ndj(-1))+RW_tauwf(-1)*RW_w(-1)*RW_nd(-1)+RW_tauk(-1)*(RW_rk(-1)*RW_u(-1)-(RW_gammau(-1)+RW_delta)*RW_pi(-1))*RW_k(-1)+RW_taud(-1)*RW_d(-1)+RW_t(-1)+(RW_r(-1))^(-1)*RW_b+RW_m(-1);
// Government spending, using RW_pg = RW_pht
RW_pcg*RW_cg = RW_cgy*RW_pybar*RW_ybar;
RW_pig*RW_ig = RW_igy*RW_pybar*RW_ybar;
RW_t = 0;
RW_b = RW_bytarget*RW_pybar*RW_ybar;
// Auxiliary equation for steady-state output
RW_ybar = RW_y;
// Auxiliary equation for steady-state output
RW_ytbar = RW_yst;
// Auxiliary equation for steady-state output
RW_ynbar = RW_ysn;
// Auxiliary equation for steady-state output deflator
RW_pybar = RW_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
RW_trybar = RW_tr/(RW_pybar*RW_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
RW_ti = RW_upsilont*RW_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
RW_tri = RW_upsilontr*RW_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	RW_r^4-1 = RW_rrstar^4*RW_pi4target-1;
RW_pic4 = RW_pi4target;
RW_rr-1 = RW_r/RW_pi4target^(1/4)-1;
// Equilibrium real interest rate
RW_rrstar-1 = 1/RW_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
RW_c = (1-RW_omega)*RW_ci+RW_omega*RW_cj;
// Aggregate money holdings
RW_m = (1-RW_omega)*RW_mi+RW_omega*RW_mj;
// Aggregate capital stock
RW_k = (1-RW_omega)*RW_ki;
// Aggregate investment
RW_i = (1-RW_omega)*RW_ii;
// Aggregate lump-sum transfers
RW_trj = 
1/RW_omega*RW_tr-(1-RW_omega)/RW_omega*RW_tri
;
// Aggregate lump-sum taxes
RW_tj = 
1/RW_omega*RW_t-(1-RW_omega)/RW_omega*RW_ti
;
// Aggregate transaction costs
RW_gammav = (1-RW_omega)*RW_ci*RW_gammavi+RW_omega*RW_cj*RW_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
RW_ni = RW_si*RW_ndi;
// Wage dispersion
RW_si = (1-RW_xii)*(RW_witilde/RW_wi)^(-RW_etai)+RW_xii*(RW_wi(-1)/RW_wi)^(-RW_etai)*(RW_pic/(RW_pic(-1)^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai)*RW_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
RW_nj = RW_sj*RW_ndj;
// Wage dispersion
RW_sj = (1-RW_xij)*(RW_wjtilde/RW_wj)^(-RW_etaj)+RW_xij*(RW_wj(-1)/RW_wj)^(-RW_etaj)*(RW_pic/(RW_pic(-1)^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj)*RW_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
RW_u*RW_k = RW_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
RW_ysn = RW_snt*RW_nt;
//  nontradables aggregate demand
RW_nt = 
+RW_ntc
+RW_nti
+RW_ntcg
+RW_ntig
;
// Aggregate demand for domestic intermediate goods, using RW_hg = RW_cg
RW_ht =
+RW_htc
+RW_hti
+RW_htcg
+RW_htig
;
// Price dispersion in the domestic markets
RW_sh = (1-RW_xih)*(RW_phttilde/RW_pht)^(-RW_thetat)+RW_xih*(RW_piht/(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_sh(-1);
// Price dispersion in the foreign markets
RW_sx = (1-RW_xix)*(RW_pextilde/RW_pex)^(-RW_thetat)+RW_xix*(RW_piex/(RW_piex(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RW_sx(-1);
// Price dispersion in the domestic markets
RW_snt = (1-RW_xin)*(RW_pnttilde/RW_pnt)^(-RW_thetan)+RW_xin*(RW_pint/(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
RW_qc = RW_c+RW_gammav;
// Aggregate investment and capital utilisation cost
RW_qi = RW_i+RW_k*RW_gammau;
// Aggregate gov demand components added to use the same structure like in private components
RW_qcg = RW_cg;
RW_qig = RW_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
RW_py*RW_y = 
+RW_qc
+RW_pi*RW_qi
+RW_pcg*RW_qcg
+RW_pig*RW_qig
+RW_pex*EAA_size/RW_size*EAARW_im
-(EAA_pex*RWEAA_rer)*RWEAA_imc
-(EAA_pex*RWEAA_rer)*RWEAA_imi
-(EAA_pex*RWEAA_rer)*RWEAA_imcg
-(EAA_pex*RWEAA_rer)*RWEAA_imig
+RW_pex*EAB_size/RW_size*EABRW_im
-(EAB_pex*RWEAB_rer)*RWEAB_imc
-(EAB_pex*RWEAB_rer)*RWEAB_imi
-(EAB_pex*RWEAB_rer)*RWEAB_imcg
-(EAB_pex*RWEAB_rer)*RWEAB_imig
+RW_pex*US_size/RW_size*USRW_im
-(US_pex*RWUS_rer)*RWUS_imc
-(US_pex*RWUS_rer)*RWUS_imi
-(US_pex*RWUS_rer)*RWUS_imcg
-(US_pex*RWUS_rer)*RWUS_imig
;
// Aggregate real demand
RW_y = RW_yst+RW_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(RW_zt) = (1-RW_rhozt)*log(RW_ztbar)+RW_rhozt*log(RW_zt(-1))+RW_epszt;
log(RW_zn) = (1-RW_rhozn)*log(RW_znbar)+RW_rhozn*log(RW_zn(-1))+RW_epszn;
// Government spending shock
RW_cgy = (1-RW_rhocg)*RW_cgybar+RW_rhocg*RW_cgy(-1)+RW_epsgc;
RW_igy = (1-RW_rhoig)*RW_igybar+RW_rhoig*RW_igy(-1)+RW_epsgi;
// Transfer shock
RW_try = (1-RW_rhotr)*RW_trybar+RW_rhotr*RW_try(-1)+RW_epstr;
// Consumption tax shock
RW_tauc = (1-RW_rhotauc)*RW_taucbar+RW_rhotauc*RW_tauc(-1)+RW_epstauc;
// Dividend income tax shock
RW_taud = (1-RW_rhotaud)*RW_taudbar+RW_rhotaud*RW_taud(-1)+RW_epstaud;
// Capital income tax shock
RW_tauk = (1-RW_rhotauk)*RW_taukbar+RW_rhotauk*RW_tauk(-1)+RW_epstauk;
// Labour income tax shock
RW_taun = (1-RW_rhotaun)*RW_taunbar+RW_rhotaun*RW_taun(-1)+RW_epstaun;
// Payroll tax shock: households
RW_tauwh = (1-RW_rhotauwh)*RW_tauwhbar+RW_rhotauwh*RW_tauwh(-1)+RW_epstauwh;
// Payroll tax shock: firms
RW_tauwf = (1-RW_rhotauwf)*RW_tauwfbar+RW_rhotauwf*RW_tauwf(-1)+RW_epstauwf;
// Wage cost push shock
RW_wcst = (1-RW_rhowcst)*RW_wcstbar+RW_rhowcst*RW_wcst(-1)+RW_epswcst;
// Preference shock
log(RW_zcon) = (1-RW_rhozcon)*log(RW_zconbar)+RW_rhozcon*log(RW_zcon(-1))+RW_epszcon;
// Investment specific shock
log(RW_zinv) = (1-RW_rhozinv)*log(RW_zinvbar)+RW_rhozinv*log(RW_zinv(-1))+RW_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
RW_cy = RW_c/(RW_py*RW_y);
// Aggregate nominal investment share
RW_iy = RW_pi*RW_i/(RW_py*RW_y);
// Aggregate nominal import share  
RW_imy = (
+RW_pimc*RW_imc
+RW_pimi*RW_imi
+RW_pimcg*RW_imcg
+RW_pimig*RW_imig
)/(RW_py*RW_y);
// Aggregate nominal import share
RW_imcy = RW_pimc*RW_imc/(RW_py*RW_y);
RW_imiy = RW_pimi*RW_imi/(RW_py*RW_y);
RW_imcgy = RW_pimcg*RW_imcg/(RW_py*RW_y);
RW_imigy = RW_pimig*RW_imig/(RW_py*RW_y);
// Aggregate debt-to-output ratio
RW_by = RW_b/(RW_pybar*RW_ybar);
// Aggregate lump-sum tax-to-output ratio
RW_ty = RW_t/(RW_pybar*RW_ybar);
// Aggregate labour cost share
RW_lcy = ((1+RW_tauwf)*RW_w*RW_nd)/(RW_py*RW_y);
// Aggregate nominal Wage share
RW_wy = (RW_w*RW_nd)/(RW_py*RW_y);
// NT sector nominal Wage share
RW_wnty = (RW_w*RW_ndn)/(RW_pnt*RW_ysn);
// T sector nominal Wage share
RW_whty = (RW_w*RW_ndt)/(RW_pht*RW_yst);
// T sector share
RW_yhty = RW_pht*RW_yst/(RW_py*RW_y);
// NT sector share
RW_ynty = RW_pnt*RW_ysn/(RW_py*RW_y);
// Output gap
RW_ygap = 0;
// Output growth (gross rate)
RW_ygrowth = RW_y/RW_y(-1);
// Output growth (gross rate yoy)
RW_ygrowth4 = RW_y/RW_y(-4);
// Domestic nominal output as a share of world nominal output
RW_yshare  = RW_size*RW_py*RW_y/RW_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
RW_epsilonm = -1/8*1/(RW_r*(RW_gammav2*RW_r+RW_r-1));
// Trade balance-to-GDP ratio
RW_tby = RW_tb/(RW_py*RW_y);
// Bilateral shares
RWEAA_imcy = (EAA_pex*RWEAA_rer)*RWEAA_imc/(RW_py*RW_y);
RWEAA_imiy = (EAA_pex*RWEAA_rer)*RWEAA_imi/(RW_py*RW_y);
RWEAA_imcgy = (EAA_pex*RWEAA_rer)*RWEAA_imcg/(RW_py*RW_y);
RWEAA_imigy = (EAA_pex*RWEAA_rer)*RWEAA_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAA_excy  = EAA_size/RW_size*RW_pex*EAARW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAA_exiy  = EAA_size/RW_size*RW_pex*EAARW_imi/(RW_py*RW_y);
// Bilateral shares
RWEAB_imcy = (EAB_pex*RWEAB_rer)*RWEAB_imc/(RW_py*RW_y);
RWEAB_imiy = (EAB_pex*RWEAB_rer)*RWEAB_imi/(RW_py*RW_y);
RWEAB_imcgy = (EAB_pex*RWEAB_rer)*RWEAB_imcg/(RW_py*RW_y);
RWEAB_imigy = (EAB_pex*RWEAB_rer)*RWEAB_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAB_excy  = EAB_size/RW_size*RW_pex*EABRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAB_exiy  = EAB_size/RW_size*RW_pex*EABRW_imi/(RW_py*RW_y);
// Bilateral shares
RWUS_imcy = (US_pex*RWUS_rer)*RWUS_imc/(RW_py*RW_y);
RWUS_imiy = (US_pex*RWUS_rer)*RWUS_imi/(RW_py*RW_y);
RWUS_imcgy = (US_pex*RWUS_rer)*RWUS_imcg/(RW_py*RW_y);
RWUS_imigy = (US_pex*RWUS_rer)*RWUS_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWUS_excy  = US_size/RW_size*RW_pex*USRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWUS_exiy  = US_size/RW_size*RW_pex*USRW_imi/(RW_py*RW_y);
// Internal real exchange rate
RW_internalrer = RW_pnt/RW_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
//-------------
// Household I
//-------------
US_ccesi^(1-1/US_mucces) = (US_nucces)^(1/US_mucces)*US_ci^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces);
// Utility
US_utili = 
US_zcon*log(US_ccesi-US_kappa*US_ccesi(-1))-1/(1+US_zeta)*(US_ni)^(1+US_zeta)+US_beta*US_utili(+1)
;
// Marginal utility of consumption
US_dcci = ((US_nucces)^(1/US_mucces)*US_ci^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces))^(1/(US_mucces-1))*(US_nucces^(1/US_mucces))*(US_ci^(-1/US_mucces));
US_lambdai*(1+US_tauc+US_gammavi+US_vi*US_gammavider) = US_zcon*(US_ccesi-US_kappa*US_ccesi(-1))^(-US_sigma)*US_dcci;
// Euler equation for government bonds
US_r = US_beta^(-1)*US_lambdai/US_lambdai(+1)*US_pic(+1);
// Euler equation for money
US_vi^(2)*US_gammavider = 1-US_beta*US_lambdai(+1)/(US_lambdai*US_pic(+1));
// Consumption-based velocity
US_vi = US_ci/US_mi;
// Transaction cost
US_gammavi = US_gammav1*US_vi+US_gammav2/US_vi-2*(US_gammav1*US_gammav2)^(1/2);
// Derivative of transaction cost
US_gammavider = US_gammav1-US_gammav2*US_vi^(-2);
US_delta = US_ii/US_ki;
US_gammai = 0;
US_gammaider = 0;
US_gammau = 0;
US_gammauder = ((US_beta^(-1)-1+US_delta)*US_qbar-US_delta*US_taukbar*US_pibar)/((1-US_taukbar)*US_pibar);
US_u = 1;
US_pi = US_q;
// Auxiliary equation for Tobin's Q in steady state
US_qbar = US_q;
// Rate of return on capital
US_q = US_beta*((1-US_tauk)*US_rk+(US_tauk*US_delta)*US_pi+(1-US_delta)*US_q);
// Optimal wage contract (FOC)
US_witilde^(1+US_etai*US_zeta) = US_etai/(US_etai-1)*US_fi/US_gi+US_wcst;
// Definition of fi
US_fi = US_wi^(US_etai*(1+US_zeta))*US_ndi^(1+US_zeta)+US_xii*US_beta*(US_pic(+1)/(US_pic^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai*(1+US_zeta))*US_fi(+1);
// Definition of gi
US_gi = US_lambdai*(1-US_taun-US_tauwh)*US_wi^US_etai*US_ndi+US_xii*US_beta*(US_pic(+1)/(US_pic^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai-1)*US_gi(+1);
// Aggregate wage rate
US_wi^(1-US_etai) = (1-US_xii)*US_witilde^(1-US_etai)+US_xii*US_wi(-1)^(1-US_etai)*(US_pic(-1)^US_chii*US_pi4target^(1/4*(1-US_chii))/US_pic)^(1-US_etai);
//-------------
// Household J
//-------------
US_ccesj^(1-1/US_mucces) = (US_nucces)^(1/US_mucces)*US_cj^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces);
// Utility
US_utilj = 
US_zcon*log(US_ccesj-US_kappa*US_ccesj(-1))-1/(1+US_zeta)*(US_nj)^(1+US_zeta)+US_beta*US_utilj(+1)
;
// Marginal utility of consumption
US_dccj = ((US_nucces)^(1/US_mucces)*US_cj^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces))^(1/(US_mucces-1))*(US_nucces^(1/US_mucces))*(US_cj^(-1/US_mucces));
US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder) = US_zcon*(US_ccesj-US_kappa*US_ccesj(-1))^(-US_sigma)*US_dccj;
// Budget constraint
(1+US_tauc+US_gammavj)*US_cj+US_mj = (1-US_taun-US_tauwh)*US_wj*US_nj+US_trj-US_tj+US_mj(-1)*US_pic^(-1);
// Euler equation for money
US_vj^(2)*US_gammavjder = 1-US_beta*US_lambdaj(+1)/(US_lambdaj*US_pic(+1));
// Consumption-based velocity
US_vj = US_cj/US_mj;
// Transaction technology
US_gammavj = US_gammav1*US_vj+US_gammav2/US_vj-2*(US_gammav1*US_gammav2)^(1/2);
// Derivative of transaction technology
US_gammavjder = US_gammav1-US_gammav2*US_vj^(-2);
// Optimal wage contract (FOC)
US_wjtilde^(1+US_etaj*US_zeta) = US_etaj/(US_etaj-1)*US_fj/US_gj+US_wcst;
// Definition of fj
US_fj = US_wj^(US_etaj*(1+US_zeta))*US_ndj^(1+US_zeta)+US_xij*US_beta*(US_pic(+1)/(US_pic^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj*(1+US_zeta))*US_fj(+1);
// Definition of gj
US_gj = US_lambdaj*(1-US_taun-US_tauwh)*US_wj^US_etaj*US_ndj+US_xij*US_beta*(US_pic(+1)/(US_pic^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj-1)*US_gj(+1);
// Aggregate wage rate
US_wj^(1-US_etaj) = (1-US_xij)*US_wjtilde^(1-US_etaj)+US_xij*US_wj(-1)^(1-US_etaj)*(US_pic(-1)^US_chij*US_pi4target^(1/4*(1-US_chij))/US_pic)^(1-US_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
US_yst = EA_z*US_zt*US_kdt^US_alphat*US_ndt^(1-US_alphat)-US_psitbar;
// Production function nontradable
US_ysn = EA_z*US_zn*US_kdn^US_alphan*US_ndn^(1-US_alphan)-US_psinbar;
// Real marginal cost tradable
US_mct = 1/(EA_z*US_zt*(US_alphat)^(US_alphat)*(1-US_alphat)^(1-US_alphat))*US_rk^(US_alphat)*((1+US_tauwf)*US_w)^(1-US_alphat);
// Real marginal cost nontradable
US_mcn = 1/(EA_z*US_zn*(US_alphan)^(US_alphan)*(1-US_alphan)^(1-US_alphan))*US_rk^(US_alphan)*((1+US_tauwf)*US_w)^(1-US_alphan);
// Wage Inflation (qoq)
US_piw = US_w/US_w(-1)*US_pic;
// Wage Inflation (yoy)
US_piw4 = US_pic4;
// Auxiliary equation for steady-state fixed cost
US_psitbar = US_psit*US_ytbar;
// Auxiliary equation for steady-state fixed cost
US_psinbar = US_psin*US_ynbar;
// Capital input (FOC)
US_rk = US_alphat*(US_yst+US_psitbar)/US_kdt*US_mct;
// Capital input (FOC)
US_rk = US_alphan*(US_ysn+US_psinbar)/US_kdn*US_mcn;
// Total capital demand
US_kd = US_kdt+US_kdn;
// Demand for labour services by household I
US_ndi = 
(1-US_omega)*(US_wi/US_w)^(-US_eta)*US_nd
;
// Demand for labour services by household J
US_ndj = 
US_omega*(US_wj/US_w)^(-US_eta)*US_nd
;
// Aggregate labour demand
US_nd^(1-1/US_eta) = 
(1-US_omega)^(1/US_eta)*US_ndi^(1-1/US_eta)+US_omega^(1/US_eta)*US_ndj^(1-1/US_eta)
;
// Total demand 
US_nd = US_ndt+US_ndn;
// Aggregate dividends
US_d = US_py*US_y-US_rk*US_kd-(1+US_tauwf)*US_w*US_nd;
// Non-tradable sector dividends
US_dn = US_pnt*US_ysn-US_rk*US_kdn-(1+US_tauwf)*US_w*US_ndn;
// Tradable sector dividends
US_dt = US_pht*US_ht
+US_pex*US_ex
-US_rk*US_kdt-(1+US_tauwf)*US_w*US_ndt;
// Optimal price contract set in domestic markets (FOC)
US_phttilde/US_pht = US_thetat/(US_thetat-1)*US_fh/US_gh;
// Definition of fh
US_fh = US_mct*US_ht+US_xih*US_beta*US_lambdai(+1)/US_lambdai*(US_piht(+1)/(US_piht^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_fh(+1);
// Definition of gh
US_gh = US_pht*US_ht+US_xih*US_beta*US_lambdai(+1)/US_lambdai*(US_piht(+1)/(US_piht^US_chih*US_pi4target^(1/4*(1-US_chih))))^(US_thetat-1)*US_gh(+1);
// Aggregate intermediate-good price dynamics
US_pht^(1-US_thetat) = (1-US_xih)*US_phttilde^(1-US_thetat)+US_xih*(US_pht(-1)/US_pic)^(1-US_thetat)*(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation
US_piht = US_pht/US_pht(-1)*US_pic;
// Optimal price contract set in domestic markets (FOC)
US_pnttilde/US_pnt = US_thetan/(US_thetan-1)*US_fn/US_gn;
// Definition of fn
US_fn = US_mcn*US_nt+US_xin*US_beta*US_lambdai(+1)/US_lambdai*(US_pint(+1)/(US_pint^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_fn(+1);
// Definition of gn
US_gn = US_pnt*US_nt+US_xin*US_beta*US_lambdai(+1)/US_lambdai*(US_pint(+1)/(US_pint^US_chin*US_pi4target^(1/4*(1-US_chin))))^(US_thetan-1)*US_gn(+1);
// Aggregate intermediate-good price dynamics
US_pnt^(1-US_thetan) = (1-US_xin)*US_pnttilde^(1-US_thetan)+US_xin*(US_pnt(-1)/US_pic)^(1-US_thetan)*(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin)))^(1-US_thetan);
// Intermediate-good price inflation
US_pint = US_pnt/US_pnt(-1)*US_pic;
// Optimal price contract set in domestic markets (FOC)
US_pextilde/US_pex = US_thetat/(US_thetat-1)*US_fx/US_gx;
// Definition of fh
US_fx = US_mct*US_ex+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(US_piex(+1)/(US_piex^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*US_fx(+1);
// Definition of gh
US_gx = US_pex*US_ex+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(US_piex(+1)/(US_piex^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*US_gx(+1);
// Aggregate intermediate-good price dynamics
US_pex^(1-US_thetat) = (1-US_xix)*US_pextilde^(1-US_thetat)+US_xix*(US_pex(-1)/US_pic)^(1-US_thetat)*(US_piex(-1)^US_chix*US_pi4target^(1/4*(1-US_chix)))^(1-US_thetat);
// Intermediate-good price inflation
US_piex = US_pex/US_pex(-1)*US_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAA_pimtilde
// EAAUS_pimtilde/EAAUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAA_fx/USEAA_gx;
// Definition of fx
// USEAA_fx = EAA_size/US_size*EAAUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAA_fx(+1);
// Definition of gx   
// USEAA_gx = USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAA_pim
// EAAUS_pim^(1-US_thetat) = (1-US_xix)*EAAUS_pimtilde^(1-US_thetat)+US_xix*(EAAUS_pim(-1)/EAA_pic)^(1-US_thetat)*(EAAUS_piim(-1)^US_chix*EAA_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAA_piim
// EAAUS_piim = EAAUS_pim/EAAUS_pim(-1)*EAA_pic;
// Bilateral real exchange rate
USEAA_rer = US_rer/EAA_rer;
// Auxiliary equation for steady-state output
USEAA_rerbar = USEAA_rer;
//Terms of Trade
USEAA_tot = EAA_pex*USEAA_rer/US_pex;
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAB_pimtilde
// EABUS_pimtilde/EABUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAB_fx/USEAB_gx;
// Definition of fx
// USEAB_fx = EAB_size/US_size*EABUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAB_fx(+1);
// Definition of gx   
// USEAB_gx = USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAB_pim
// EABUS_pim^(1-US_thetat) = (1-US_xix)*EABUS_pimtilde^(1-US_thetat)+US_xix*(EABUS_pim(-1)/EAB_pic)^(1-US_thetat)*(EABUS_piim(-1)^US_chix*EAB_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAB_piim
// EABUS_piim = EABUS_pim/EABUS_pim(-1)*EAB_pic;
// Bilateral real exchange rate
USEAB_rer = US_rer/EAB_rer;
// Auxiliary equation for steady-state output
USEAB_rerbar = USEAB_rer;
//Terms of Trade
USEAB_tot = EAB_pex*USEAB_rer/US_pex;
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = RW_pimtilde
// RWUS_pimtilde/RWUS_pim = US_cpim*US_thetat/(US_thetat-1)*USRW_fx/USRW_gx;
// Definition of fx
// USRW_fx = RW_size/US_size*RWUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USRW_fx(+1);
// Definition of gx   
// USRW_gx = USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USRW_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = RW_pim
// RWUS_pim^(1-US_thetat) = (1-US_xix)*RWUS_pimtilde^(1-US_thetat)+US_xix*(RWUS_pim(-1)/RW_pic)^(1-US_thetat)*(RWUS_piim(-1)^US_chix*RW_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = RW_piim
// RWUS_piim = RWUS_pim/RWUS_pim(-1)*RW_pic;
// Bilateral real exchange rate
USRW_rer = US_rer/RW_rer;
// Auxiliary equation for steady-state output
USRW_rerbar = USRW_rer;
//Terms of Trade
USRW_tot = RW_pex*USRW_rer/US_pex;
// Total imports 
US_im = 
+US_imc
+US_imi
+US_imcg
+US_imig
;
// Total import deflator
US_im*US_pim  = 
+US_pimc*US_imc
+US_pimi*US_imi
+US_pimcg*US_imcg
+US_pimig*US_imig
;
// Effective real exchange rate: double weighting (imports)
USEAA_weightim = USEAA_rer*EAA_pex*USEAA_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAA_weightex = EAA_size/US_size*EAAUS_im/US_ex*USEAA_rer*EAA_py*EAA_y/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USRW_rer*RW_pex*EAARW_im
)+
+EAB_size/US_size*EABUS_im/US_ex*USEAA_rer*EAA_pex*EABEAA_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USRW_rer*RW_pex*EABRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAA_rer*EAA_pex*RWEAA_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAA_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAA_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAA_weightex;
// Effective real exchange rate: double weighting (imports)
USEAB_weightim = USEAB_rer*EAB_pex*USEAB_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAB_weightex = EAB_size/US_size*EABUS_im/US_ex*USEAB_rer*EAB_py*EAB_y/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USRW_rer*RW_pex*EABRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAB_rer*EAB_pex*EAAEAB_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USRW_rer*RW_pex*EAARW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAB_rer*EAB_pex*RWEAB_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAB_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAB_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAB_weightex;
// Effective real exchange rate: double weighting (imports)
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USRW_weightex = RW_size/US_size*RWUS_im/US_ex*USRW_rer*RW_py*RW_y/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USRW_rer*RW_pex*EAARW_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USRW_rer*RW_pex*EABRW_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USRW_rer*RW_pex*EABRW_im
)
;
// Effective real exchange rate: double weighting (overall)
USRW_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USRW_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USRW_weightex;
// Effective real exchange rate
US_reer = 1
*USEAA_rer^USEAA_weight
*USEAB_rer^USEAB_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USRW_tot^USRW_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
US_imc^((US_mumc-1)/US_mumc) =
+USEAA_numc ^(1/US_mumc)*USEAA_imc^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*USRW_imc^(1-1/US_mumc)
+(1
-USEAA_numc
-USRW_numc
)^(1/US_mumc)*USEAB_imc^(1-1/US_mumc);
// Demand for bilateral consumption import goods
USRW_imc = USRW_numc*((RW_pex*USRW_rer)/US_pimc)^(-US_mumc)*US_imc;
USEAB_imc = (1
-USEAA_numc
-USRW_numc
)*((EAB_pex*USEAB_rer)/US_pimc)^(-US_mumc)*US_imc;
// Price of the consumption good (import)
US_pimc^(1-US_mumc) =
+USEAA_numc * (EAA_pex*USEAA_rer)^(1-US_mumc)
+USRW_numc * (RW_pex*USRW_rer)^(1-US_mumc)
+(1
-USEAA_numc
-USRW_numc
)*(EAB_pex*USEAB_rer)^(1-US_mumc);
// Private consumption good (import) inflation
US_piimc = US_pimc/US_pimc(-1)*US_pic;
// Private consumption good (import)
US_imi^((US_mumi-1)/US_mumi) =
+USEAA_numi ^(1/US_mumi)*USEAA_imi^(1-1/US_mumi)
+USRW_numi ^(1/US_mumi)*USRW_imi^(1-1/US_mumi)
+(1
-USEAA_numi
-USRW_numi
)^(1/US_mumi)*USEAB_imi^(1-1/US_mumi);
// Demand for bilateral consumption import goods
USRW_imi = USRW_numi*((RW_pex*USRW_rer)/US_pimi)^(-US_mumi)*US_imi;
USEAB_imi = (1
-USEAA_numi
-USRW_numi
)*((EAB_pex*USEAB_rer)/US_pimi)^(-US_mumi)*US_imi;
// Price of the consumption good (import)
US_pimi^(1-US_mumi) =
+USEAA_numi * (EAA_pex*USEAA_rer)^(1-US_mumi)
+USRW_numi * (RW_pex*USRW_rer)^(1-US_mumi)
+(1
-USEAA_numi
-USRW_numi
)*(EAB_pex*USEAB_rer)^(1-US_mumi);
// Private consumption good (import) inflation
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Private consumption good (import)
US_imcg^((US_mumcg-1)/US_mumcg) =
+USEAA_numcg ^(1/US_mumcg)*USEAA_imcg^(1-1/US_mumcg)
+USRW_numcg ^(1/US_mumcg)*USRW_imcg^(1-1/US_mumcg)
+(1
-USEAA_numcg
-USRW_numcg
)^(1/US_mumcg)*USEAB_imcg^(1-1/US_mumcg);
// Demand for bilateral consumption import goods
USRW_imcg = USRW_numcg*((RW_pex*USRW_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
USEAB_imcg = (1
-USEAA_numcg
-USRW_numcg
)*((EAB_pex*USEAB_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Price of the consumption good (import)
US_pimcg^(1-US_mumcg) =
+USEAA_numcg * (EAA_pex*USEAA_rer)^(1-US_mumcg)
+USRW_numcg * (RW_pex*USRW_rer)^(1-US_mumcg)
+(1
-USEAA_numcg
-USRW_numcg
)*(EAB_pex*USEAB_rer)^(1-US_mumcg);
// Private consumption good (import) inflation
US_piimcg = US_pimcg/US_pimcg(-1)*US_pic;
// Private consumption good (import)
US_imig^((US_mumig-1)/US_mumig) =
+USEAA_numig ^(1/US_mumig)*USEAA_imig^(1-1/US_mumig)
+USRW_numig ^(1/US_mumig)*USRW_imig^(1-1/US_mumig)
+(1
-USEAA_numig
-USRW_numig
)^(1/US_mumig)*USEAB_imig^(1-1/US_mumig);
// Demand for bilateral consumption import goods
USRW_imig = USRW_numig*((RW_pex*USRW_rer)/US_pimig)^(-US_mumig)*US_imig;
USEAB_imig = (1
-USEAA_numig
-USRW_numig
)*((EAB_pex*USEAB_rer)/US_pimig)^(-US_mumig)*US_imig;
// Price of the consumption good (import)
US_pimig^(1-US_mumig) =
+USEAA_numig * (EAA_pex*USEAA_rer)^(1-US_mumig)
+USRW_numig * (RW_pex*USRW_rer)^(1-US_mumig)
+(1
-USEAA_numig
-USRW_numig
)*(EAB_pex*USEAB_rer)^(1-US_mumig);
// Private consumption good (import) inflation
US_piimig = US_pimig/US_pimig(-1)*US_pic;
// Private consumption good (import) inflation
US_piimc4 = US_pimc/US_pimc(-4)*US_pic4;
// Private consumption good (import) inflation
US_piex4 = US_pex/US_pex(-4)*US_pic4;
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
US_yst = US_sh*US_ht+US_sx*US_ex;
// Aggregate demand for bilateral imported intermediate goods
USEAA_im = 
+USEAA_imc
+USEAA_imi
+USEAA_imcg
+USEAA_imig
;
USEAB_im = 
+USEAB_imc
+USEAB_imi
+USEAB_imcg
+USEAB_imig
;
USRW_im = 
+USRW_imc
+USRW_imi
+USRW_imcg
+USRW_imig
;
// Private consumption good firm
// Private consumption good (tradable)
US_ttc^((US_mutc-1)/US_mutc) = (US_nutc)^(1/US_mutc)*US_htc^(1-1/US_mutc)+(1-US_nutc)^(1/US_mutc)*US_imc^(1-1/US_mutc);
// Private consumption good  (total)
US_qc^((US_muc-1)/US_muc) = (US_nuc)^(1/US_muc)*US_ttc^(1-1/US_muc)+(1-US_nuc)^(1/US_muc)*US_ntc^(1-1/US_muc);
// Demand for domestic intermediate goods - NONTRADABLE
US_ntc = (1-US_nuc)*(US_pnt)^(-US_muc)*US_qc;
// Price of the consumption good (tradable)  
US_pttc^(1-US_mutc) = (US_nutc)*US_pht^(1-US_mutc)+(1-US_nutc)*US_pimc^(1-US_mutc);
// Price of the consumption good 
1^(1-US_muc) = (US_nuc)*US_pttc^(1-US_muc)+(1-US_nuc)*US_pnt^(1-US_muc);
// Demand for domestic intermediate goods
US_htc = US_nutc*(US_pht/US_pttc)^(-US_mutc)*US_ttc;
USEAA_gammaimc = 0;
USEAA_gammaimcdag = 1;
USEAB_gammaimc = 0;
USEAB_gammaimcdag = 1;
USRW_gammaimc = 0;
USRW_gammaimcdag = 1;
// Private consumption good (tradable)
US_tti^((US_muti-1)/US_muti) = (US_nuti)^(1/US_muti)*US_hti^(1-1/US_muti)+(1-US_nuti)^(1/US_muti)*US_imi^(1-1/US_muti);
// Private consumption good  (total)
US_qi^((US_mui-1)/US_mui) = (US_nui)^(1/US_mui)*US_tti^(1-1/US_mui)+(1-US_nui)^(1/US_mui)*US_nti^(1-1/US_mui);
// Demand for domestic intermediate goods - NONTRADABLE
US_nti = (1-US_nui)*(US_pnt/US_pi)^(-US_mui)*US_qi;
// Price of the consumption good (tradable)  
US_ptti^(1-US_muti) = (US_nuti)*US_pht^(1-US_muti)+(1-US_nuti)*US_pimi^(1-US_muti);
// Price of the consumption good 
US_pi^(1-US_mui) = (US_nui)*US_ptti^(1-US_mui)+(1-US_nui)*US_pnt^(1-US_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
US_pibar = US_pi;
// Demand for domestic intermediate goods
US_hti = US_nuti*(US_pht/US_ptti)^(-US_muti)*US_tti;
USEAA_gammaimi = 0;
USEAA_gammaimidag = 1;
USEAB_gammaimi = 0;
USEAB_gammaimidag = 1;
USRW_gammaimi = 0;
USRW_gammaimidag = 1;
// Private consumption good (tradable)
US_ttcg^((US_mutcg-1)/US_mutcg) = (US_nutcg)^(1/US_mutcg)*US_htcg^(1-1/US_mutcg)+(1-US_nutcg)^(1/US_mutcg)*US_imcg^(1-1/US_mutcg);
// Private consumption good  (total)
US_qcg^((US_mucg-1)/US_mucg) = (US_nucg)^(1/US_mucg)*US_ttcg^(1-1/US_mucg)+(1-US_nucg)^(1/US_mucg)*US_ntcg^(1-1/US_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
US_ntcg = (1-US_nucg)*(US_pnt/US_pcg)^(-US_mucg)*US_qcg;
// Price of the consumption good (tradable)  
US_pttcg^(1-US_mutcg) = (US_nutcg)*US_pht^(1-US_mutcg)+(1-US_nutcg)*US_pimcg^(1-US_mutcg);
// Price of the consumption good 
US_pcg^(1-US_mucg) = (US_nucg)*US_pttcg^(1-US_mucg)+(1-US_nucg)*US_pnt^(1-US_mucg);
// Demand for domestic intermediate goods
US_htcg = US_nutcg*(US_pht/US_pttcg)^(-US_mutcg)*US_ttcg;
USEAA_gammaimcg = 0;
USEAA_gammaimcgdag = 1;
USEAB_gammaimcg = 0;
USEAB_gammaimcgdag = 1;
USRW_gammaimcg = 0;
USRW_gammaimcgdag = 1;
// Private consumption good (tradable)
US_ttig^((US_mutig-1)/US_mutig) = (US_nutig)^(1/US_mutig)*US_htig^(1-1/US_mutig)+(1-US_nutig)^(1/US_mutig)*US_imig^(1-1/US_mutig);
// Private consumption good  (total)
US_qig^((US_muig-1)/US_muig) = (US_nuig)^(1/US_muig)*US_ttig^(1-1/US_muig)+(1-US_nuig)^(1/US_muig)*US_ntig^(1-1/US_muig);
// Demand for domestic intermediate goods - NONTRADABLE
US_ntig = (1-US_nuig)*(US_pnt/US_pig)^(-US_muig)*US_qig;
// Price of the consumption good (tradable)  
US_pttig^(1-US_mutig) = (US_nutig)*US_pht^(1-US_mutig)+(1-US_nutig)*US_pimig^(1-US_mutig);
// Price of the consumption good 
US_pig^(1-US_muig) = (US_nuig)*US_pttig^(1-US_muig)+(1-US_nuig)*US_pnt^(1-US_muig);
// Demand for domestic intermediate goods
US_htig = US_nutig*(US_pht/US_pttig)^(-US_mutig)*US_ttig;
USEAA_gammaimig = 0;
USEAA_gammaimigdag = 1;
USEAB_gammaimig = 0;
USEAB_gammaimigdag = 1;
USRW_gammaimig = 0;
USRW_gammaimigdag = 1;
// Trade balance
US_tb =
+US_pex*EAA_size/US_size*EAAUS_im
-EAA_pex*USEAA_rer*USEAA_im
+US_pex*EAB_size/US_size*EABUS_im
-EAB_pex*USEAB_rer*USEAB_im
+US_pex*RW_size/US_size*RWUS_im
-RW_pex*USRW_rer*USRW_im
;
// Aggregate exports (volume)
US_ex =
+EAA_size/US_size*EAAUS_im
+EAB_size/US_size*EABUS_im
+RW_size/US_size*RWUS_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using US_pg = US_pht
// TODO: check the (1-US_gammab(-1)) adjustment here, which is not in the fiscal extention
	US_pcg(-1)*US_cg(-1)+US_pig(-1)*US_ig(-1)+US_tr(-1)
	+US_b(-1)*US_pic(-1)^(-1)+US_m(-2)*US_pic(-1)^(-1) = US_tauc(-1)*US_c(-1)+(US_taun(-1)+US_tauwh(-1))*(US_wi(-1)*US_ndi(-1)+US_wj(-1)*US_ndj(-1))+US_tauwf(-1)*US_w(-1)*US_nd(-1)+US_tauk(-1)*(US_rk(-1)*US_u(-1)-(US_gammau(-1)+US_delta)*US_pi(-1))*US_k(-1)+US_taud(-1)*US_d(-1)+US_t(-1)+(US_r(-1))^(-1)*US_b+US_m(-1);
// Government spending, using US_pg = US_pht
US_pcg*US_cg = US_cgy*US_pybar*US_ybar;
US_pig*US_ig = US_igy*US_pybar*US_ybar;
US_t = 0;
US_b = US_bytarget*US_pybar*US_ybar;
// Auxiliary equation for steady-state output
US_ybar = US_y;
// Auxiliary equation for steady-state output
US_ytbar = US_yst;
// Auxiliary equation for steady-state output
US_ynbar = US_ysn;
// Auxiliary equation for steady-state output deflator
US_pybar = US_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
US_trybar = US_tr/(US_pybar*US_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
US_ti = US_upsilont*US_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
US_tri = US_upsilontr*US_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	US_r^4-1 = US_rrstar^4*US_pi4target-1;
US_pic4 = US_pi4target;
US_rr-1 = US_r/US_pi4target^(1/4)-1;
// Equilibrium real interest rate
US_rrstar-1 = 1/US_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
US_c = (1-US_omega)*US_ci+US_omega*US_cj;
// Aggregate money holdings
US_m = (1-US_omega)*US_mi+US_omega*US_mj;
// Aggregate capital stock
US_k = (1-US_omega)*US_ki;
// Aggregate investment
US_i = (1-US_omega)*US_ii;
// Aggregate lump-sum transfers
US_trj = 
1/US_omega*US_tr-(1-US_omega)/US_omega*US_tri
;
// Aggregate lump-sum taxes
US_tj = 
1/US_omega*US_t-(1-US_omega)/US_omega*US_ti
;
// Aggregate transaction costs
US_gammav = (1-US_omega)*US_ci*US_gammavi+US_omega*US_cj*US_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
US_ni = US_si*US_ndi;
// Wage dispersion
US_si = (1-US_xii)*(US_witilde/US_wi)^(-US_etai)+US_xii*(US_wi(-1)/US_wi)^(-US_etai)*(US_pic/(US_pic(-1)^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai)*US_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
US_nj = US_sj*US_ndj;
// Wage dispersion
US_sj = (1-US_xij)*(US_wjtilde/US_wj)^(-US_etaj)+US_xij*(US_wj(-1)/US_wj)^(-US_etaj)*(US_pic/(US_pic(-1)^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj)*US_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
US_u*US_k = US_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
US_ysn = US_snt*US_nt;
//  nontradables aggregate demand
US_nt = 
+US_ntc
+US_nti
+US_ntcg
+US_ntig
;
// Aggregate demand for domestic intermediate goods, using US_hg = US_cg
US_ht =
+US_htc
+US_hti
+US_htcg
+US_htig
;
// Price dispersion in the domestic markets
US_sh = (1-US_xih)*(US_phttilde/US_pht)^(-US_thetat)+US_xih*(US_piht/(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_sh(-1);
// Price dispersion in the foreign markets
US_sx = (1-US_xix)*(US_pextilde/US_pex)^(-US_thetat)+US_xix*(US_piex/(US_piex(-1)^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*US_sx(-1);
// Price dispersion in the domestic markets
US_snt = (1-US_xin)*(US_pnttilde/US_pnt)^(-US_thetan)+US_xin*(US_pint/(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
US_qc = US_c+US_gammav;
// Aggregate investment and capital utilisation cost
US_qi = US_i+US_k*US_gammau;
// Aggregate gov demand components added to use the same structure like in private components
US_qcg = US_cg;
US_qig = US_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
US_py*US_y = 
+US_qc
+US_pi*US_qi
+US_pcg*US_qcg
+US_pig*US_qig
+US_pex*EAA_size/US_size*EAAUS_im
-(EAA_pex*USEAA_rer)*USEAA_imc
-(EAA_pex*USEAA_rer)*USEAA_imi
-(EAA_pex*USEAA_rer)*USEAA_imcg
-(EAA_pex*USEAA_rer)*USEAA_imig
+US_pex*EAB_size/US_size*EABUS_im
-(EAB_pex*USEAB_rer)*USEAB_imc
-(EAB_pex*USEAB_rer)*USEAB_imi
-(EAB_pex*USEAB_rer)*USEAB_imcg
-(EAB_pex*USEAB_rer)*USEAB_imig
+US_pex*RW_size/US_size*RWUS_im
-(RW_pex*USRW_rer)*USRW_imc
-(RW_pex*USRW_rer)*USRW_imi
-(RW_pex*USRW_rer)*USRW_imcg
-(RW_pex*USRW_rer)*USRW_imig
;
// Aggregate real demand
US_y = US_yst+US_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(US_zt) = (1-US_rhozt)*log(US_ztbar)+US_rhozt*log(US_zt(-1))+US_epszt;
log(US_zn) = (1-US_rhozn)*log(US_znbar)+US_rhozn*log(US_zn(-1))+US_epszn;
// Government spending shock
US_cgy = (1-US_rhocg)*US_cgybar+US_rhocg*US_cgy(-1)+US_epsgc;
US_igy = (1-US_rhoig)*US_igybar+US_rhoig*US_igy(-1)+US_epsgi;
// Transfer shock
US_try = (1-US_rhotr)*US_trybar+US_rhotr*US_try(-1)+US_epstr;
// Consumption tax shock
US_tauc = (1-US_rhotauc)*US_taucbar+US_rhotauc*US_tauc(-1)+US_epstauc;
// Dividend income tax shock
US_taud = (1-US_rhotaud)*US_taudbar+US_rhotaud*US_taud(-1)+US_epstaud;
// Capital income tax shock
US_tauk = (1-US_rhotauk)*US_taukbar+US_rhotauk*US_tauk(-1)+US_epstauk;
// Labour income tax shock
US_taun = (1-US_rhotaun)*US_taunbar+US_rhotaun*US_taun(-1)+US_epstaun;
// Payroll tax shock: households
US_tauwh = (1-US_rhotauwh)*US_tauwhbar+US_rhotauwh*US_tauwh(-1)+US_epstauwh;
// Payroll tax shock: firms
US_tauwf = (1-US_rhotauwf)*US_tauwfbar+US_rhotauwf*US_tauwf(-1)+US_epstauwf;
// Wage cost push shock
US_wcst = (1-US_rhowcst)*US_wcstbar+US_rhowcst*US_wcst(-1)+US_epswcst;
// Preference shock
log(US_zcon) = (1-US_rhozcon)*log(US_zconbar)+US_rhozcon*log(US_zcon(-1))+US_epszcon;
// Investment specific shock
log(US_zinv) = (1-US_rhozinv)*log(US_zinvbar)+US_rhozinv*log(US_zinv(-1))+US_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
US_cy = US_c/(US_py*US_y);
// Aggregate nominal investment share
US_iy = US_pi*US_i/(US_py*US_y);
// Aggregate nominal import share  
US_imy = (
+US_pimc*US_imc
+US_pimi*US_imi
+US_pimcg*US_imcg
+US_pimig*US_imig
)/(US_py*US_y);
// Aggregate nominal import share
US_imcy = US_pimc*US_imc/(US_py*US_y);
US_imiy = US_pimi*US_imi/(US_py*US_y);
US_imcgy = US_pimcg*US_imcg/(US_py*US_y);
US_imigy = US_pimig*US_imig/(US_py*US_y);
// Aggregate debt-to-output ratio
US_by = US_b/(US_pybar*US_ybar);
// Aggregate lump-sum tax-to-output ratio
US_ty = US_t/(US_pybar*US_ybar);
// Aggregate labour cost share
US_lcy = ((1+US_tauwf)*US_w*US_nd)/(US_py*US_y);
// Aggregate nominal Wage share
US_wy = (US_w*US_nd)/(US_py*US_y);
// NT sector nominal Wage share
US_wnty = (US_w*US_ndn)/(US_pnt*US_ysn);
// T sector nominal Wage share
US_whty = (US_w*US_ndt)/(US_pht*US_yst);
// T sector share
US_yhty = US_pht*US_yst/(US_py*US_y);
// NT sector share
US_ynty = US_pnt*US_ysn/(US_py*US_y);
// Output gap
US_ygap = 0;
// Output growth (gross rate)
US_ygrowth = US_y/US_y(-1);
// Output growth (gross rate yoy)
US_ygrowth4 = US_y/US_y(-4);
// Domestic nominal output as a share of world nominal output
US_yshare  = US_size*US_py*US_y/US_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
US_epsilonm = -1/8*1/(US_r*(US_gammav2*US_r+US_r-1));
// Trade balance-to-GDP ratio
US_tby = US_tb/(US_py*US_y);
// Bilateral shares
USEAA_imcy = (EAA_pex*USEAA_rer)*USEAA_imc/(US_py*US_y);
USEAA_imiy = (EAA_pex*USEAA_rer)*USEAA_imi/(US_py*US_y);
USEAA_imcgy = (EAA_pex*USEAA_rer)*USEAA_imcg/(US_py*US_y);
USEAA_imigy = (EAA_pex*USEAA_rer)*USEAA_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAA_excy  = EAA_size/US_size*US_pex*EAAUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAA_exiy  = EAA_size/US_size*US_pex*EAAUS_imi/(US_py*US_y);
// Bilateral shares
USEAB_imcy = (EAB_pex*USEAB_rer)*USEAB_imc/(US_py*US_y);
USEAB_imiy = (EAB_pex*USEAB_rer)*USEAB_imi/(US_py*US_y);
USEAB_imcgy = (EAB_pex*USEAB_rer)*USEAB_imcg/(US_py*US_y);
USEAB_imigy = (EAB_pex*USEAB_rer)*USEAB_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAB_excy  = EAB_size/US_size*US_pex*EABUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAB_exiy  = EAB_size/US_size*US_pex*EABUS_imi/(US_py*US_y);
// Bilateral shares
USRW_imcy = (RW_pex*USRW_rer)*USRW_imc/(US_py*US_y);
USRW_imiy = (RW_pex*USRW_rer)*USRW_imi/(US_py*US_y);
USRW_imcgy = (RW_pex*USRW_rer)*USRW_imcg/(US_py*US_y);
USRW_imigy = (RW_pex*USRW_rer)*USRW_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USRW_excy  = RW_size/US_size*US_pex*RWUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USRW_exiy  = RW_size/US_size*US_pex*RWUS_imi/(US_py*US_y);
// Internal real exchange rate
US_internalrer = US_pnt/US_pttc;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
EAA_gammab = 0;
// International transaction cost ('risk premium')
EAA_bf = (EAA_bfytarget*EAA_py*EAA_y)/EAA_rer*US_pic;
// Risk premium shock
EAA_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAA_rerdep = EAA_rer/EAA_rer(-1);
// Definition of the terms of trade
EAA_tot = US_pex*EAA_rer/EAA_pex;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
EAB_gammab = 0;
// International transaction cost ('risk premium')
EAB_bf = (EAB_bfytarget*EAB_py*EAB_y)/EAB_rer*US_pic;
// Risk premium shock
EAB_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAB_rerdep = EAB_rer/EAB_rer(-1);
// Definition of the terms of trade
EAB_tot = US_pex*EAB_rer/EAB_pex;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
RW_gammab = 0;
// International transaction cost ('risk premium')
RW_bf = (RW_bfytarget*RW_py*RW_y)/RW_rer*US_pic;
// Risk premium shock
RW_rp = 0;
// Definition of the rate of real exchange-rate depreciation
RW_rerdep = RW_rer/RW_rer(-1);
// Definition of the terms of trade
RW_tot = US_pex*RW_rer/RW_pex;
//-------------
// Closure conditions
//-------------
US_size*US_bf =
-EAA_size*EAA_bf
-EAB_size*EAB_bf
-RW_size*RW_bf
;
// Net foreign asset position
	
		
			EAA_bf/US_r(-1) = -EAA_bh/EAB_r(-1)*EAAEAB_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAB_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1);
		
	
	
			EAB_bf/US_r(-1) = -EAB_bh/EAA_r(-1) / EAB_rer(-1) + EAB_bh(-1) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1);
		
	
		RW_bf/US_r(-1) = RW_bf(-1)+RW_tb(-1)/RW_rer(-1);
	
US_rer = 1;
		EAAEAB_nerdep = EAA_rerdep/EAB_rerdep*EAA_pic/EAB_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAA_gammabh = 0;
			EAA_bh = (EAA_bhytarget*EAA_py*EAA_y)/EAAEAB_rer*EAB_pic;
0 =
	+ EAA_size*EAA_bh
	+ EAB_size*EAB_bh
;
//-------------
// Euroarea-wide variables
//-------------
// GDP
EA_y = 
	(
	EAA_size*EAA_pybar*EAA_y
			+ EAB_size*EAAEAB_rerbar*EAB_pybar *EAB_y	
	)
	/
	(
	+ EAA_size
	+ EAB_size
);
// GDP growth
EA_ygrowth= EA_y/EA_y(-1);
// GDP growth (yoy)
EA_ygrowth4= EA_y/EA_y(-4);
// Money
EA_m = 
	(
	EAA_size*EAA_m
			+ EAB_size*EAAEAB_rerbar*EAB_m	
	)
	/
	(
	+ EAA_size
	+ EAB_size
);
	
EA_bf = 
	(
		+ EAA_size*EAA_bf	
		+ EAB_size*EAB_bf	
	)
	/
	(
	+ EAA_size
	+ EAB_size
);
// Annual inflation
EA_pic4 = 1 
		* EAA_pic4^(EAA_size/(
				+ EAA_size
				+ EAB_size
			)) 
		* EAB_pic4^(EAB_size/(
				+ EAA_size
				+ EAB_size
			)) 
;
// Productivity
log(EA_z) = (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;
// Auxiliary equation for steady-state output
EA_ybar = EA_y;
end;
load_params_and_steady_state('eagle_steady_govCo_stage0.txt');
resid(non_zero);
// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_alphat, 0.3;
EAB_alphat, 0.3;
RW_alphat, 0.3;
US_alphat, 0.3;
end;
steady(homotopy_steps = 5);
save_params_and_steady_state('eagle_steady_govCo.txt');
