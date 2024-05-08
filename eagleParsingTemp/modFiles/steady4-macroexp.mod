//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;
ctryNumberDouble = 6;
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
 EAAEAC_excy
 EAAEAD_excy
 EAARW_excy
 EAAUS_excy
 EAAEAB_exiy
 EAAEAC_exiy
 EAAEAD_exiy
 EAARW_exiy
 EAAUS_exiy
EAA_fx
 EAAEAB_gammaimc
 EAAEAC_gammaimc
 EAAEAD_gammaimc
 EAARW_gammaimc
 EAAUS_gammaimc
 EAAEAB_gammaimcdag
 EAAEAC_gammaimcdag
 EAAEAD_gammaimcdag
 EAARW_gammaimcdag
 EAAUS_gammaimcdag
 EAAEAB_gammaimi
 EAAEAC_gammaimi
 EAAEAD_gammaimi
 EAARW_gammaimi
 EAAUS_gammaimi
 EAAEAB_gammaimidag
 EAAEAC_gammaimidag
 EAAEAD_gammaimidag
 EAARW_gammaimidag
 EAAUS_gammaimidag
 EAAEAB_gammaimcg
 EAAEAC_gammaimcg
 EAAEAD_gammaimcg
 EAARW_gammaimcg
 EAAUS_gammaimcg
 EAAEAB_gammaimcgdag
 EAAEAC_gammaimcgdag
 EAAEAD_gammaimcgdag
 EAARW_gammaimcgdag
 EAAUS_gammaimcgdag
 EAAEAB_gammaimig
 EAAEAC_gammaimig
 EAAEAD_gammaimig
 EAARW_gammaimig
 EAAUS_gammaimig
 EAAEAB_gammaimigdag
 EAAEAC_gammaimigdag
 EAAEAD_gammaimigdag
 EAARW_gammaimigdag
 EAAUS_gammaimigdag
EAA_gx
 EAAEAB_im
 EAAEAC_im
 EAAEAD_im
 EAARW_im
 EAAUS_im
 EAAEAB_imc
 EAAEAC_imc
 EAAEAD_imc
 EAARW_imc
 EAAUS_imc
 EAAEAB_imcy
 EAAEAC_imcy
 EAAEAD_imcy
 EAARW_imcy
 EAAUS_imcy
 EAAEAB_imi
 EAAEAC_imi
 EAAEAD_imi
 EAARW_imi
 EAAUS_imi
 EAAEAB_imiy
 EAAEAC_imiy
 EAAEAD_imiy
 EAARW_imiy
 EAAUS_imiy
 EAAEAB_imcg
 EAAEAC_imcg
 EAAEAD_imcg
 EAARW_imcg
 EAAUS_imcg
 EAAEAB_imcgy
 EAAEAC_imcgy
 EAAEAD_imcgy
 EAARW_imcgy
 EAAUS_imcgy
 EAAEAB_imig
 EAAEAC_imig
 EAAEAD_imig
 EAARW_imig
 EAAUS_imig
 EAAEAB_imigy
 EAAEAC_imigy
 EAAEAD_imigy
 EAARW_imigy
 EAAUS_imigy
EAA_piex
EAA_pextilde
 EAAEAB_rer
 EAAEAC_rer
 EAAEAD_rer
 EAARW_rer
 EAAUS_rer
EAA_sx
 EAAEAB_tot
 EAAEAC_tot
 EAAEAD_tot
 EAARW_tot
 EAAUS_tot
 EAAEAB_weight
 EAAEAC_weight
 EAAEAD_weight
 EAARW_weight
 EAAUS_weight
 EAAEAB_weightex
 EAAEAC_weightex
 EAAEAD_weightex
 EAARW_weightex
 EAAUS_weightex
 EAAEAB_weightim
 EAAEAC_weightim
 EAAEAD_weightim
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
 EAAEAC_rerbar
 EAAEAD_rerbar
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
 EABEAC_excy
 EABEAD_excy
 EABRW_excy
 EABUS_excy
 EABEAA_exiy
 EABEAC_exiy
 EABEAD_exiy
 EABRW_exiy
 EABUS_exiy
EAB_fx
 EABEAA_gammaimc
 EABEAC_gammaimc
 EABEAD_gammaimc
 EABRW_gammaimc
 EABUS_gammaimc
 EABEAA_gammaimcdag
 EABEAC_gammaimcdag
 EABEAD_gammaimcdag
 EABRW_gammaimcdag
 EABUS_gammaimcdag
 EABEAA_gammaimi
 EABEAC_gammaimi
 EABEAD_gammaimi
 EABRW_gammaimi
 EABUS_gammaimi
 EABEAA_gammaimidag
 EABEAC_gammaimidag
 EABEAD_gammaimidag
 EABRW_gammaimidag
 EABUS_gammaimidag
 EABEAA_gammaimcg
 EABEAC_gammaimcg
 EABEAD_gammaimcg
 EABRW_gammaimcg
 EABUS_gammaimcg
 EABEAA_gammaimcgdag
 EABEAC_gammaimcgdag
 EABEAD_gammaimcgdag
 EABRW_gammaimcgdag
 EABUS_gammaimcgdag
 EABEAA_gammaimig
 EABEAC_gammaimig
 EABEAD_gammaimig
 EABRW_gammaimig
 EABUS_gammaimig
 EABEAA_gammaimigdag
 EABEAC_gammaimigdag
 EABEAD_gammaimigdag
 EABRW_gammaimigdag
 EABUS_gammaimigdag
EAB_gx
 EABEAA_im
 EABEAC_im
 EABEAD_im
 EABRW_im
 EABUS_im
 EABEAA_imc
 EABEAC_imc
 EABEAD_imc
 EABRW_imc
 EABUS_imc
 EABEAA_imcy
 EABEAC_imcy
 EABEAD_imcy
 EABRW_imcy
 EABUS_imcy
 EABEAA_imi
 EABEAC_imi
 EABEAD_imi
 EABRW_imi
 EABUS_imi
 EABEAA_imiy
 EABEAC_imiy
 EABEAD_imiy
 EABRW_imiy
 EABUS_imiy
 EABEAA_imcg
 EABEAC_imcg
 EABEAD_imcg
 EABRW_imcg
 EABUS_imcg
 EABEAA_imcgy
 EABEAC_imcgy
 EABEAD_imcgy
 EABRW_imcgy
 EABUS_imcgy
 EABEAA_imig
 EABEAC_imig
 EABEAD_imig
 EABRW_imig
 EABUS_imig
 EABEAA_imigy
 EABEAC_imigy
 EABEAD_imigy
 EABRW_imigy
 EABUS_imigy
EAB_piex
EAB_pextilde
 EABEAA_rer
 EABEAC_rer
 EABEAD_rer
 EABRW_rer
 EABUS_rer
EAB_sx
 EABEAA_tot
 EABEAC_tot
 EABEAD_tot
 EABRW_tot
 EABUS_tot
 EABEAA_weight
 EABEAC_weight
 EABEAD_weight
 EABRW_weight
 EABUS_weight
 EABEAA_weightex
 EABEAC_weightex
 EABEAD_weightex
 EABRW_weightex
 EABUS_weightex
 EABEAA_weightim
 EABEAC_weightim
 EABEAD_weightim
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
 EABEAC_rerbar
 EABEAD_rerbar
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
 EACEAA_excy
 EACEAB_excy
 EACEAD_excy
 EACRW_excy
 EACUS_excy
 EACEAA_exiy
 EACEAB_exiy
 EACEAD_exiy
 EACRW_exiy
 EACUS_exiy
EAC_fx
 EACEAA_gammaimc
 EACEAB_gammaimc
 EACEAD_gammaimc
 EACRW_gammaimc
 EACUS_gammaimc
 EACEAA_gammaimcdag
 EACEAB_gammaimcdag
 EACEAD_gammaimcdag
 EACRW_gammaimcdag
 EACUS_gammaimcdag
 EACEAA_gammaimi
 EACEAB_gammaimi
 EACEAD_gammaimi
 EACRW_gammaimi
 EACUS_gammaimi
 EACEAA_gammaimidag
 EACEAB_gammaimidag
 EACEAD_gammaimidag
 EACRW_gammaimidag
 EACUS_gammaimidag
 EACEAA_gammaimcg
 EACEAB_gammaimcg
 EACEAD_gammaimcg
 EACRW_gammaimcg
 EACUS_gammaimcg
 EACEAA_gammaimcgdag
 EACEAB_gammaimcgdag
 EACEAD_gammaimcgdag
 EACRW_gammaimcgdag
 EACUS_gammaimcgdag
 EACEAA_gammaimig
 EACEAB_gammaimig
 EACEAD_gammaimig
 EACRW_gammaimig
 EACUS_gammaimig
 EACEAA_gammaimigdag
 EACEAB_gammaimigdag
 EACEAD_gammaimigdag
 EACRW_gammaimigdag
 EACUS_gammaimigdag
EAC_gx
 EACEAA_im
 EACEAB_im
 EACEAD_im
 EACRW_im
 EACUS_im
 EACEAA_imc
 EACEAB_imc
 EACEAD_imc
 EACRW_imc
 EACUS_imc
 EACEAA_imcy
 EACEAB_imcy
 EACEAD_imcy
 EACRW_imcy
 EACUS_imcy
 EACEAA_imi
 EACEAB_imi
 EACEAD_imi
 EACRW_imi
 EACUS_imi
 EACEAA_imiy
 EACEAB_imiy
 EACEAD_imiy
 EACRW_imiy
 EACUS_imiy
 EACEAA_imcg
 EACEAB_imcg
 EACEAD_imcg
 EACRW_imcg
 EACUS_imcg
 EACEAA_imcgy
 EACEAB_imcgy
 EACEAD_imcgy
 EACRW_imcgy
 EACUS_imcgy
 EACEAA_imig
 EACEAB_imig
 EACEAD_imig
 EACRW_imig
 EACUS_imig
 EACEAA_imigy
 EACEAB_imigy
 EACEAD_imigy
 EACRW_imigy
 EACUS_imigy
EAC_piex
EAC_pextilde
 EACEAA_rer
 EACEAB_rer
 EACEAD_rer
 EACRW_rer
 EACUS_rer
EAC_sx
 EACEAA_tot
 EACEAB_tot
 EACEAD_tot
 EACRW_tot
 EACUS_tot
 EACEAA_weight
 EACEAB_weight
 EACEAD_weight
 EACRW_weight
 EACUS_weight
 EACEAA_weightex
 EACEAB_weightex
 EACEAD_weightex
 EACRW_weightex
 EACUS_weightex
 EACEAA_weightim
 EACEAB_weightim
 EACEAD_weightim
 EACRW_weightim
 EACUS_weightim
 EAC_b
 EAC_bf
 EAC_by
 EAC_c
 EAC_ci
 EAC_cj
 EAC_cy
 EAC_d
 EAC_dn
 EAC_dt
 EAC_epsilonm
 EAC_etot
 EAC_ex
 EAC_fh
 EAC_fi
 EAC_fj
 EAC_fn
 EAC_cg
 EAC_gammab
 EAC_gammai
 EAC_gammaider
 EAC_gammau
 EAC_gammauder
 EAC_gammav
 EAC_gammavi
 EAC_gammavider
 EAC_gammavj
 EAC_gammavjder
 EAC_gh
 EAC_gi
 EAC_gj
 EAC_gn
 EAC_cgy
 EAC_ht
 EAC_htc
 EAC_hti
 EAC_htcg
 EAC_htig
 EAC_i
 EAC_ig
 EAC_ii
 EAC_im
 EAC_imc
 EAC_imcy
 EAC_imi
 EAC_imiy
 EAC_imcg
 EAC_imcgy
 EAC_imig
 EAC_imigy
 EAC_imy
 EAC_internalrer
 EAC_iy
 EAC_igy
 EAC_k
 EAC_kd
 EAC_kdn
 EAC_kdt
 EAC_ki
 EAC_lambdai
 EAC_lambdaj
 EAC_lcy
 EAC_m
 EAC_mcn
 EAC_mct
 EAC_mi
 EAC_mj
 EAC_nd
 EAC_ndi
 EAC_ndj
 EAC_ndn
 EAC_ndt
 EAC_ni
 EAC_nj
 EAC_nt
 EAC_ntc
 EAC_nti
 EAC_ntcg
 EAC_ntig
 EAC_pex
 EAC_pht
 EAC_phttilde
 EAC_pi
 EAC_pcg
 EAC_pig
 EAC_pic
 EAC_pic4
 EAC_piex4
 EAC_piht
 EAC_piimc
 EAC_piimi
 EAC_piimcg
 EAC_piimig
 EAC_piimc4
 EAC_pim
 EAC_pimc
 EAC_pimi
 EAC_pimcg
 EAC_pimig
 EAC_pint
 EAC_piw
 EAC_piw4
 EAC_pnt
 EAC_pnttilde
 EAC_pttc
 EAC_ptti
 EAC_pttcg
 EAC_pttig
 EAC_py
 EAC_q
 EAC_qc
 EAC_qi
 EAC_qcg
 EAC_qig
 EAC_r
 EAC_reer
 EAC_rer
 EAC_rerdep
 EAC_rk
 EAC_rp
 EAC_rr
 EAC_rrstar
 EAC_sh
 EAC_si
 EAC_sj
 EAC_snt
 EAC_t
 EAC_tauc
 EAC_taud
 EAC_tauk
 EAC_taun
 EAC_tauwf
 EAC_tauwh
 EAC_tb
 EAC_tby
 EAC_ti
 EAC_tj
 EAC_tot
 EAC_tr
 EAC_tri
 EAC_trj
 EAC_try
 EAC_ttc
 EAC_tti
 EAC_ttcg
 EAC_ttig
 EAC_ty
 EAC_u
 EAC_utili
 EAC_utilj
 EAC_vi
 EAC_vj
 EAC_w
 EAC_wcst
 EAC_whty
 EAC_wi
 EAC_witilde
 EAC_wj
 EAC_wjtilde
 EAC_wnty
 EAC_wy
 EAC_y
 EAC_ygap
 EAC_ygrowth
 EAC_ygrowth4
 EAC_yhty
 EAC_ynty
 EAC_yshare
 EAC_ysn
 EAC_yst
 EAC_zcon
 EAC_zinv
 EAC_zn
 EAC_zt
;
// Parameters
parameters
 EAC_alphan
 EAC_alphat
 EAC_beta
 EAC_bfytarget
 EAC_bhytarget
 EAC_bytarget
 EAC_chin
 EAC_chih
 EAC_chii
 EAC_chij
 EAC_chix
 EAC_delta
 EAC_gammab1
 EAC_gammai1
 EAC_gammaimc1
 EAC_gammaimi1
 EAC_gammaimcg1
 EAC_gammaimig1
 EAC_gammau2
 EAC_gammav1
 EAC_gammav2
 EAC_kappa
 EAC_muc
 EAC_mumc
 EAC_mutc
 EAC_nuc
 EAC_nutc
 EAC_mui
 EAC_mumi
 EAC_muti
 EAC_nui
 EAC_nuti
 EAC_mucg
 EAC_mumcg
 EAC_mutcg
 EAC_nucg
 EAC_nutcg
 EAC_muig
 EAC_mumig
 EAC_mutig
 EAC_nuig
 EAC_nutig
 EAC_omega
 EAC_phitb
 EAC_pi4target
 EAC_psin
 EAC_psit
 EAC_rhocg
 EAC_rhoig
 EAC_rhorp
 EAC_rhotauc
 EAC_rhotaud
 EAC_rhotauk
 EAC_rhotaun
 EAC_rhotauwf
 EAC_rhotauwh
 EAC_rhotr
 EAC_rhowcst
 EAC_rhozcon
 EAC_rhozinv
 EAC_rhozn
 EAC_rhozt
 EAC_sigma
 EAC_size
 EAC_xin
 EAC_xih
 EAC_xii
 EAC_xij
 EAC_xix
 EAC_zeta
 EAC_eta
 EAC_etai
 EAC_etaj
 EAC_thetan
 EAC_thetat
 EAC_upsilont
 EAC_upsilontr
 EACEAA_rerbar
 EACEAB_rerbar
 EACEAD_rerbar
 EACRW_rerbar
 EACUS_rerbar
 EAC_pibar
 EAC_psinbar
 EAC_psitbar
 EAC_pybar
 EAC_qbar
 EAC_trybar
 EAC_ybar
 EAC_ynbar
 EAC_ytbar
;
// Exogenous
varexo
 EAC_cgybar
 EAC_igybar
 EAC_taucbar
 EAC_taudbar
 EAC_taukbar
 EAC_taunbar
 EAC_tauwfbar
 EAC_tauwhbar
 EAC_wcstbar
 EAC_zconbar
 EAC_zinvbar
 EAC_znbar
 EAC_ztbar
 EAC_epsgc
 EAC_epsgi
 EAC_epstauc
 EAC_epstaud
 EAC_epstauk
 EAC_epstaun
 EAC_epstauwf
 EAC_epstauwh
 EAC_epstr
 EAC_epswcst
 EAC_epszcon
 EAC_epszinv
 EAC_epszn
 EAC_epszt
;
// Endogenous
var
 EADEAA_excy
 EADEAB_excy
 EADEAC_excy
 EADRW_excy
 EADUS_excy
 EADEAA_exiy
 EADEAB_exiy
 EADEAC_exiy
 EADRW_exiy
 EADUS_exiy
EAD_fx
 EADEAA_gammaimc
 EADEAB_gammaimc
 EADEAC_gammaimc
 EADRW_gammaimc
 EADUS_gammaimc
 EADEAA_gammaimcdag
 EADEAB_gammaimcdag
 EADEAC_gammaimcdag
 EADRW_gammaimcdag
 EADUS_gammaimcdag
 EADEAA_gammaimi
 EADEAB_gammaimi
 EADEAC_gammaimi
 EADRW_gammaimi
 EADUS_gammaimi
 EADEAA_gammaimidag
 EADEAB_gammaimidag
 EADEAC_gammaimidag
 EADRW_gammaimidag
 EADUS_gammaimidag
 EADEAA_gammaimcg
 EADEAB_gammaimcg
 EADEAC_gammaimcg
 EADRW_gammaimcg
 EADUS_gammaimcg
 EADEAA_gammaimcgdag
 EADEAB_gammaimcgdag
 EADEAC_gammaimcgdag
 EADRW_gammaimcgdag
 EADUS_gammaimcgdag
 EADEAA_gammaimig
 EADEAB_gammaimig
 EADEAC_gammaimig
 EADRW_gammaimig
 EADUS_gammaimig
 EADEAA_gammaimigdag
 EADEAB_gammaimigdag
 EADEAC_gammaimigdag
 EADRW_gammaimigdag
 EADUS_gammaimigdag
EAD_gx
 EADEAA_im
 EADEAB_im
 EADEAC_im
 EADRW_im
 EADUS_im
 EADEAA_imc
 EADEAB_imc
 EADEAC_imc
 EADRW_imc
 EADUS_imc
 EADEAA_imcy
 EADEAB_imcy
 EADEAC_imcy
 EADRW_imcy
 EADUS_imcy
 EADEAA_imi
 EADEAB_imi
 EADEAC_imi
 EADRW_imi
 EADUS_imi
 EADEAA_imiy
 EADEAB_imiy
 EADEAC_imiy
 EADRW_imiy
 EADUS_imiy
 EADEAA_imcg
 EADEAB_imcg
 EADEAC_imcg
 EADRW_imcg
 EADUS_imcg
 EADEAA_imcgy
 EADEAB_imcgy
 EADEAC_imcgy
 EADRW_imcgy
 EADUS_imcgy
 EADEAA_imig
 EADEAB_imig
 EADEAC_imig
 EADRW_imig
 EADUS_imig
 EADEAA_imigy
 EADEAB_imigy
 EADEAC_imigy
 EADRW_imigy
 EADUS_imigy
EAD_piex
EAD_pextilde
 EADEAA_rer
 EADEAB_rer
 EADEAC_rer
 EADRW_rer
 EADUS_rer
EAD_sx
 EADEAA_tot
 EADEAB_tot
 EADEAC_tot
 EADRW_tot
 EADUS_tot
 EADEAA_weight
 EADEAB_weight
 EADEAC_weight
 EADRW_weight
 EADUS_weight
 EADEAA_weightex
 EADEAB_weightex
 EADEAC_weightex
 EADRW_weightex
 EADUS_weightex
 EADEAA_weightim
 EADEAB_weightim
 EADEAC_weightim
 EADRW_weightim
 EADUS_weightim
 EAD_b
 EAD_bf
 EAD_by
 EAD_c
 EAD_ci
 EAD_cj
 EAD_cy
 EAD_d
 EAD_dn
 EAD_dt
 EAD_epsilonm
 EAD_etot
 EAD_ex
 EAD_fh
 EAD_fi
 EAD_fj
 EAD_fn
 EAD_cg
 EAD_gammab
 EAD_gammai
 EAD_gammaider
 EAD_gammau
 EAD_gammauder
 EAD_gammav
 EAD_gammavi
 EAD_gammavider
 EAD_gammavj
 EAD_gammavjder
 EAD_gh
 EAD_gi
 EAD_gj
 EAD_gn
 EAD_cgy
 EAD_ht
 EAD_htc
 EAD_hti
 EAD_htcg
 EAD_htig
 EAD_i
 EAD_ig
 EAD_ii
 EAD_im
 EAD_imc
 EAD_imcy
 EAD_imi
 EAD_imiy
 EAD_imcg
 EAD_imcgy
 EAD_imig
 EAD_imigy
 EAD_imy
 EAD_internalrer
 EAD_iy
 EAD_igy
 EAD_k
 EAD_kd
 EAD_kdn
 EAD_kdt
 EAD_ki
 EAD_lambdai
 EAD_lambdaj
 EAD_lcy
 EAD_m
 EAD_mcn
 EAD_mct
 EAD_mi
 EAD_mj
 EAD_nd
 EAD_ndi
 EAD_ndj
 EAD_ndn
 EAD_ndt
 EAD_ni
 EAD_nj
 EAD_nt
 EAD_ntc
 EAD_nti
 EAD_ntcg
 EAD_ntig
 EAD_pex
 EAD_pht
 EAD_phttilde
 EAD_pi
 EAD_pcg
 EAD_pig
 EAD_pic
 EAD_pic4
 EAD_piex4
 EAD_piht
 EAD_piimc
 EAD_piimi
 EAD_piimcg
 EAD_piimig
 EAD_piimc4
 EAD_pim
 EAD_pimc
 EAD_pimi
 EAD_pimcg
 EAD_pimig
 EAD_pint
 EAD_piw
 EAD_piw4
 EAD_pnt
 EAD_pnttilde
 EAD_pttc
 EAD_ptti
 EAD_pttcg
 EAD_pttig
 EAD_py
 EAD_q
 EAD_qc
 EAD_qi
 EAD_qcg
 EAD_qig
 EAD_r
 EAD_reer
 EAD_rer
 EAD_rerdep
 EAD_rk
 EAD_rp
 EAD_rr
 EAD_rrstar
 EAD_sh
 EAD_si
 EAD_sj
 EAD_snt
 EAD_t
 EAD_tauc
 EAD_taud
 EAD_tauk
 EAD_taun
 EAD_tauwf
 EAD_tauwh
 EAD_tb
 EAD_tby
 EAD_ti
 EAD_tj
 EAD_tot
 EAD_tr
 EAD_tri
 EAD_trj
 EAD_try
 EAD_ttc
 EAD_tti
 EAD_ttcg
 EAD_ttig
 EAD_ty
 EAD_u
 EAD_utili
 EAD_utilj
 EAD_vi
 EAD_vj
 EAD_w
 EAD_wcst
 EAD_whty
 EAD_wi
 EAD_witilde
 EAD_wj
 EAD_wjtilde
 EAD_wnty
 EAD_wy
 EAD_y
 EAD_ygap
 EAD_ygrowth
 EAD_ygrowth4
 EAD_yhty
 EAD_ynty
 EAD_yshare
 EAD_ysn
 EAD_yst
 EAD_zcon
 EAD_zinv
 EAD_zn
 EAD_zt
;
// Parameters
parameters
 EAD_alphan
 EAD_alphat
 EAD_beta
 EAD_bfytarget
 EAD_bhytarget
 EAD_bytarget
 EAD_chin
 EAD_chih
 EAD_chii
 EAD_chij
 EAD_chix
 EAD_delta
 EAD_gammab1
 EAD_gammai1
 EAD_gammaimc1
 EAD_gammaimi1
 EAD_gammaimcg1
 EAD_gammaimig1
 EAD_gammau2
 EAD_gammav1
 EAD_gammav2
 EAD_kappa
 EAD_muc
 EAD_mumc
 EAD_mutc
 EAD_nuc
 EAD_nutc
 EAD_mui
 EAD_mumi
 EAD_muti
 EAD_nui
 EAD_nuti
 EAD_mucg
 EAD_mumcg
 EAD_mutcg
 EAD_nucg
 EAD_nutcg
 EAD_muig
 EAD_mumig
 EAD_mutig
 EAD_nuig
 EAD_nutig
 EAD_omega
 EAD_phitb
 EAD_pi4target
 EAD_psin
 EAD_psit
 EAD_rhocg
 EAD_rhoig
 EAD_rhorp
 EAD_rhotauc
 EAD_rhotaud
 EAD_rhotauk
 EAD_rhotaun
 EAD_rhotauwf
 EAD_rhotauwh
 EAD_rhotr
 EAD_rhowcst
 EAD_rhozcon
 EAD_rhozinv
 EAD_rhozn
 EAD_rhozt
 EAD_sigma
 EAD_size
 EAD_xin
 EAD_xih
 EAD_xii
 EAD_xij
 EAD_xix
 EAD_zeta
 EAD_eta
 EAD_etai
 EAD_etaj
 EAD_thetan
 EAD_thetat
 EAD_upsilont
 EAD_upsilontr
 EADEAA_rerbar
 EADEAB_rerbar
 EADEAC_rerbar
 EADRW_rerbar
 EADUS_rerbar
 EAD_pibar
 EAD_psinbar
 EAD_psitbar
 EAD_pybar
 EAD_qbar
 EAD_trybar
 EAD_ybar
 EAD_ynbar
 EAD_ytbar
;
// Exogenous
varexo
 EAD_cgybar
 EAD_igybar
 EAD_taucbar
 EAD_taudbar
 EAD_taukbar
 EAD_taunbar
 EAD_tauwfbar
 EAD_tauwhbar
 EAD_wcstbar
 EAD_zconbar
 EAD_zinvbar
 EAD_znbar
 EAD_ztbar
 EAD_epsgc
 EAD_epsgi
 EAD_epstauc
 EAD_epstaud
 EAD_epstauk
 EAD_epstaun
 EAD_epstauwf
 EAD_epstauwh
 EAD_epstr
 EAD_epswcst
 EAD_epszcon
 EAD_epszinv
 EAD_epszn
 EAD_epszt
;
// Endogenous
var
 RWEAA_excy
 RWEAB_excy
 RWEAC_excy
 RWEAD_excy
 RWUS_excy
 RWEAA_exiy
 RWEAB_exiy
 RWEAC_exiy
 RWEAD_exiy
 RWUS_exiy
RW_fx
 RWEAA_gammaimc
 RWEAB_gammaimc
 RWEAC_gammaimc
 RWEAD_gammaimc
 RWUS_gammaimc
 RWEAA_gammaimcdag
 RWEAB_gammaimcdag
 RWEAC_gammaimcdag
 RWEAD_gammaimcdag
 RWUS_gammaimcdag
 RWEAA_gammaimi
 RWEAB_gammaimi
 RWEAC_gammaimi
 RWEAD_gammaimi
 RWUS_gammaimi
 RWEAA_gammaimidag
 RWEAB_gammaimidag
 RWEAC_gammaimidag
 RWEAD_gammaimidag
 RWUS_gammaimidag
 RWEAA_gammaimcg
 RWEAB_gammaimcg
 RWEAC_gammaimcg
 RWEAD_gammaimcg
 RWUS_gammaimcg
 RWEAA_gammaimcgdag
 RWEAB_gammaimcgdag
 RWEAC_gammaimcgdag
 RWEAD_gammaimcgdag
 RWUS_gammaimcgdag
 RWEAA_gammaimig
 RWEAB_gammaimig
 RWEAC_gammaimig
 RWEAD_gammaimig
 RWUS_gammaimig
 RWEAA_gammaimigdag
 RWEAB_gammaimigdag
 RWEAC_gammaimigdag
 RWEAD_gammaimigdag
 RWUS_gammaimigdag
RW_gx
 RWEAA_im
 RWEAB_im
 RWEAC_im
 RWEAD_im
 RWUS_im
 RWEAA_imc
 RWEAB_imc
 RWEAC_imc
 RWEAD_imc
 RWUS_imc
 RWEAA_imcy
 RWEAB_imcy
 RWEAC_imcy
 RWEAD_imcy
 RWUS_imcy
 RWEAA_imi
 RWEAB_imi
 RWEAC_imi
 RWEAD_imi
 RWUS_imi
 RWEAA_imiy
 RWEAB_imiy
 RWEAC_imiy
 RWEAD_imiy
 RWUS_imiy
 RWEAA_imcg
 RWEAB_imcg
 RWEAC_imcg
 RWEAD_imcg
 RWUS_imcg
 RWEAA_imcgy
 RWEAB_imcgy
 RWEAC_imcgy
 RWEAD_imcgy
 RWUS_imcgy
 RWEAA_imig
 RWEAB_imig
 RWEAC_imig
 RWEAD_imig
 RWUS_imig
 RWEAA_imigy
 RWEAB_imigy
 RWEAC_imigy
 RWEAD_imigy
 RWUS_imigy
RW_piex
RW_pextilde
 RWEAA_rer
 RWEAB_rer
 RWEAC_rer
 RWEAD_rer
 RWUS_rer
RW_sx
 RWEAA_tot
 RWEAB_tot
 RWEAC_tot
 RWEAD_tot
 RWUS_tot
 RWEAA_weight
 RWEAB_weight
 RWEAC_weight
 RWEAD_weight
 RWUS_weight
 RWEAA_weightex
 RWEAB_weightex
 RWEAC_weightex
 RWEAD_weightex
 RWUS_weightex
 RWEAA_weightim
 RWEAB_weightim
 RWEAC_weightim
 RWEAD_weightim
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
 RWEAC_rerbar
 RWEAD_rerbar
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
 USEAC_excy
 USEAD_excy
 USRW_excy
 USEAA_exiy
 USEAB_exiy
 USEAC_exiy
 USEAD_exiy
 USRW_exiy
US_fx
 USEAA_gammaimc
 USEAB_gammaimc
 USEAC_gammaimc
 USEAD_gammaimc
 USRW_gammaimc
 USEAA_gammaimcdag
 USEAB_gammaimcdag
 USEAC_gammaimcdag
 USEAD_gammaimcdag
 USRW_gammaimcdag
 USEAA_gammaimi
 USEAB_gammaimi
 USEAC_gammaimi
 USEAD_gammaimi
 USRW_gammaimi
 USEAA_gammaimidag
 USEAB_gammaimidag
 USEAC_gammaimidag
 USEAD_gammaimidag
 USRW_gammaimidag
 USEAA_gammaimcg
 USEAB_gammaimcg
 USEAC_gammaimcg
 USEAD_gammaimcg
 USRW_gammaimcg
 USEAA_gammaimcgdag
 USEAB_gammaimcgdag
 USEAC_gammaimcgdag
 USEAD_gammaimcgdag
 USRW_gammaimcgdag
 USEAA_gammaimig
 USEAB_gammaimig
 USEAC_gammaimig
 USEAD_gammaimig
 USRW_gammaimig
 USEAA_gammaimigdag
 USEAB_gammaimigdag
 USEAC_gammaimigdag
 USEAD_gammaimigdag
 USRW_gammaimigdag
US_gx
 USEAA_im
 USEAB_im
 USEAC_im
 USEAD_im
 USRW_im
 USEAA_imc
 USEAB_imc
 USEAC_imc
 USEAD_imc
 USRW_imc
 USEAA_imcy
 USEAB_imcy
 USEAC_imcy
 USEAD_imcy
 USRW_imcy
 USEAA_imi
 USEAB_imi
 USEAC_imi
 USEAD_imi
 USRW_imi
 USEAA_imiy
 USEAB_imiy
 USEAC_imiy
 USEAD_imiy
 USRW_imiy
 USEAA_imcg
 USEAB_imcg
 USEAC_imcg
 USEAD_imcg
 USRW_imcg
 USEAA_imcgy
 USEAB_imcgy
 USEAC_imcgy
 USEAD_imcgy
 USRW_imcgy
 USEAA_imig
 USEAB_imig
 USEAC_imig
 USEAD_imig
 USRW_imig
 USEAA_imigy
 USEAB_imigy
 USEAC_imigy
 USEAD_imigy
 USRW_imigy
US_piex
US_pextilde
 USEAA_rer
 USEAB_rer
 USEAC_rer
 USEAD_rer
 USRW_rer
US_sx
 USEAA_tot
 USEAB_tot
 USEAC_tot
 USEAD_tot
 USRW_tot
 USEAA_weight
 USEAB_weight
 USEAC_weight
 USEAD_weight
 USRW_weight
 USEAA_weightex
 USEAB_weightex
 USEAC_weightex
 USEAD_weightex
 USRW_weightex
 USEAA_weightim
 USEAB_weightim
 USEAC_weightim
 USEAD_weightim
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
 USEAC_rerbar
 USEAD_rerbar
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
 EAAEAC_numc
 EAAEAC_numi
 EAAEAC_numcg
 EAAEAC_numig
 EAAEAD_numc
 EAAEAD_numi
 EAAEAD_numcg
 EAAEAD_numig
 EAAUS_numc
 EAAUS_numi
 EAAUS_numcg
 EAAUS_numig
 EABEAA_numc
 EABEAA_numi
 EABEAA_numcg
 EABEAA_numig
 EABEAC_numc
 EABEAC_numi
 EABEAC_numcg
 EABEAC_numig
 EABEAD_numc
 EABEAD_numi
 EABEAD_numcg
 EABEAD_numig
 EABRW_numc
 EABRW_numi
 EABRW_numcg
 EABRW_numig
 EACEAB_numc
 EACEAB_numi
 EACEAB_numcg
 EACEAB_numig
 EACEAD_numc
 EACEAD_numi
 EACEAD_numcg
 EACEAD_numig
 EACRW_numc
 EACRW_numi
 EACRW_numcg
 EACRW_numig
 EACUS_numc
 EACUS_numi
 EACUS_numcg
 EACUS_numig
 EADEAA_numc
 EADEAA_numi
 EADEAA_numcg
 EADEAA_numig
 EADEAC_numc
 EADEAC_numi
 EADEAC_numcg
 EADEAC_numig
 EADRW_numc
 EADRW_numi
 EADRW_numcg
 EADRW_numig
 EADUS_numc
 EADUS_numi
 EADUS_numcg
 EADUS_numig
 RWEAA_numc
 RWEAA_numi
 RWEAA_numcg
 RWEAA_numig
 RWEAB_numc
 RWEAB_numi
 RWEAB_numcg
 RWEAB_numig
 RWEAD_numc
 RWEAD_numi
 RWEAD_numcg
 RWEAD_numig
 RWUS_numc
 RWUS_numi
 RWUS_numcg
 RWUS_numig
 USEAA_numc
 USEAA_numi
 USEAA_numcg
 USEAA_numig
 USEAB_numc
 USEAB_numi
 USEAB_numcg
 USEAB_numig
 USEAC_numc
 USEAC_numi
 USEAC_numcg
 USEAC_numig
 USRW_numc
 USRW_numi
 USRW_numcg
 USRW_numig
;
        var EAAEAD_nerdep;
        var EAA_gammabh;
        var EABEAD_nerdep;
        var EAB_gammabh;
        var EACEAD_nerdep;
        var EAC_gammabh;
var
 EAA_bh
 EAB_bh
 EAC_bh
 EAD_bh
;
// Flip some variables
change_type(var)
 EA_ybar
 EAAEAB_rerbar
 EAAEAC_rerbar
 EAAEAD_rerbar
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
 EABEAC_rerbar
 EABEAD_rerbar
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
 EACEAA_rerbar
 EACEAB_rerbar
 EACEAD_rerbar
 EACRW_rerbar
 EACUS_rerbar
 EAC_pibar
 EAC_psinbar
 EAC_psitbar
 EAC_pybar
 EAC_qbar
 EAC_trybar
 EAC_ybar
 EAC_ynbar
 EAC_ytbar
 EADEAA_rerbar
 EADEAB_rerbar
 EADEAC_rerbar
 EADRW_rerbar
 EADUS_rerbar
 EAD_pibar
 EAD_psinbar
 EAD_psitbar
 EAD_pybar
 EAD_qbar
 EAD_trybar
 EAD_ybar
 EAD_ynbar
 EAD_ytbar
 RWEAA_rerbar
 RWEAB_rerbar
 RWEAC_rerbar
 RWEAD_rerbar
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
 USEAC_rerbar
 USEAD_rerbar
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
        EAC_ccesi EAC_ccesj EAC_dcci EAC_dccj
        EAD_ccesi EAD_ccesj EAD_dcci EAD_dccj
        RW_ccesi RW_ccesj RW_dcci RW_dccj
        US_ccesi US_ccesj US_dcci US_dccj
;
parameters 
        EAA_mucces EAA_nucces
        EAB_mucces EAB_nucces
        EAC_mucces EAC_nucces
        EAD_mucces EAD_nucces
        RW_mucces RW_nucces
        US_mucces US_nucces
;
var 
        EAA_kg
        EAB_kg
        EAC_kg
        EAD_kg
        RW_kg
        US_kg
;
parameters 
        EAA_alphag EAA_deltag
        EAB_alphag EAB_deltag
        EAC_alphag EAC_deltag
        EAD_alphag EAD_deltag
        RW_alphag RW_deltag
        US_alphag US_deltag
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
// Government capital accumulation:
EAA_kg = (1-EAA_deltag)*EAA_kg(-1)+EAA_ig(-1);
// Production function tradable
EAA_yst = EA_z*EAA_zt*EAA_kg^EAA_alphag*EAA_kdt^EAA_alphat*EAA_ndt^(1-EAA_alphat)-EAA_psitbar;
// Production function nontradable
EAA_ysn = EA_z*EAA_zn*EAA_kg^EAA_alphag*EAA_kdn^EAA_alphan*EAA_ndn^(1-EAA_alphan)-EAA_psinbar;
// Real marginal cost tradable
EAA_mct = 1/(EA_z*EAA_zt*EAA_kg^EAA_alphag*(EAA_alphat)^(EAA_alphat)*(1-EAA_alphat)^(1-EAA_alphat))*EAA_rk^(EAA_alphat)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphat);
// Real marginal cost nontradable
EAA_mcn = 1/(EA_z*EAA_zn*EAA_kg^EAA_alphag*(EAA_alphan)^(EAA_alphan)*(1-EAA_alphan)^(1-EAA_alphan))*EAA_rk^(EAA_alphan)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphan);
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
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAC_pimtilde
// EACEAA_pimtilde/EACEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAC_fx/EAAEAC_gx;
// Definition of fx
// EAAEAC_fx = EAC_size/EAA_size*EACEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAC_fx(+1);
// Definition of gx   
// EAAEAC_gx = EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAC_pim
// EACEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EACEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EACEAA_pim(-1)/EAC_pic)^(1-EAA_thetat)*(EACEAA_piim(-1)^EAA_chix*EAC_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAC_piim
// EACEAA_piim = EACEAA_pim/EACEAA_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EAAEAC_rer = EAA_rer/EAC_rer;
// Auxiliary equation for steady-state output
EAAEAC_rerbar = EAAEAC_rer;
//Terms of Trade
EAAEAC_tot = EAC_pex*EAAEAC_rer/EAA_pex;
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAD_pimtilde
// EADEAA_pimtilde/EADEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAD_fx/EAAEAD_gx;
// Definition of fx
// EAAEAD_fx = EAD_size/EAA_size*EADEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EADEAA_piim(+1)/(EADEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAD_fx(+1);
// Definition of gx   
// EAAEAD_gx = EAAEAD_rer*EADEAA_pim*EAD_size/EAA_size*EADEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EADEAA_piim(+1)/(EADEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAD_pim
// EADEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EADEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EADEAA_pim(-1)/EAD_pic)^(1-EAA_thetat)*(EADEAA_piim(-1)^EAA_chix*EAD_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAD_piim
// EADEAA_piim = EADEAA_pim/EADEAA_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EAAEAD_rer = EAA_rer/EAD_rer;
// Auxiliary equation for steady-state output
EAAEAD_rerbar = EAAEAD_rer;
//Terms of Trade
EAAEAD_tot = EAD_pex*EAAEAD_rer/EAA_pex;
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
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)+
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EACEAB_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EADEAB_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*RWEAB_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*USEAB_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAB_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EAAEAC_weightim = EAAEAC_rer*EAC_pex*EAAEAC_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAC_weightex = EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAC_rer*EAC_py*EAC_y/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EABEAC_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EADEAC_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*RWEAC_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*USEAC_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAC_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EAAEAD_weightim = EAAEAD_rer*EAD_pex*EAAEAD_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAD_weightex = EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAD_rer*EAD_py*EAD_y/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EABEAD_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EACEAD_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*RWEAD_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*USEAD_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAD_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAD_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAARW_weightex = RW_size/EAA_size*RWEAA_im/EAA_ex*EAARW_rer*RW_py*RW_y/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAUS_rer*US_pex*RWUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAARW_rer*RW_pex*EABRW_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAARW_rer*RW_pex*EACRW_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAARW_rer*RW_pex*EADRW_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAARW_rer*RW_pex*USRW_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
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
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAARW_rer*RW_pex*USRW_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAUS_rer*US_pex*EABUS_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAUS_rer*US_pex*EACUS_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAUS_rer*US_pex*EADUS_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAUS_rer*US_pex*RWUS_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAUS_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightex;
// Effective real exchange rate
EAA_reer = 1
*EAAEAB_rer^EAAEAB_weight
*EAAEAC_rer^EAAEAC_weight
*EAAEAD_rer^EAAEAD_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAAEAC_tot^EAAEAC_weight
*EAAEAD_tot^EAAEAD_weight
*EAARW_tot^EAARW_weight
*EAAUS_tot^EAAUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAA_imc^((EAA_mumc-1)/EAA_mumc) =
+EAAEAB_numc ^(1/EAA_mumc)*EAAEAB_imc^(1-1/EAA_mumc)
+EAAEAC_numc ^(1/EAA_mumc)*EAAEAC_imc^(1-1/EAA_mumc)
+EAAEAD_numc ^(1/EAA_mumc)*EAAEAD_imc^(1-1/EAA_mumc)
+EAAUS_numc ^(1/EAA_mumc)*EAAUS_imc^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAUS_numc
)^(1/EAA_mumc)*EAARW_imc^(1-1/EAA_mumc);
// Demand for bilateral consumption import goods
EAAEAC_imc = EAAEAC_numc*((EAC_pex*EAAEAC_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAEAD_imc = EAAEAD_numc*((EAD_pex*EAAEAD_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAUS_imc = EAAUS_numc*((US_pex*EAAUS_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAARW_imc = (1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAUS_numc
)*((RW_pex*EAARW_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Price of the consumption good (import)
EAA_pimc^(1-EAA_mumc) =
+EAAEAB_numc * (EAB_pex*EAAEAB_rer)^(1-EAA_mumc)
+EAAEAC_numc * (EAC_pex*EAAEAC_rer)^(1-EAA_mumc)
+EAAEAD_numc * (EAD_pex*EAAEAD_rer)^(1-EAA_mumc)
+EAAUS_numc * (US_pex*EAAUS_rer)^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAUS_numc
)*(RW_pex*EAARW_rer)^(1-EAA_mumc);
// Private consumption good (import) inflation
EAA_piimc = EAA_pimc/EAA_pimc(-1)*EAA_pic;
// Private consumption good (import)
EAA_imi^((EAA_mumi-1)/EAA_mumi) =
+EAAEAB_numi ^(1/EAA_mumi)*EAAEAB_imi^(1-1/EAA_mumi)
+EAAEAC_numi ^(1/EAA_mumi)*EAAEAC_imi^(1-1/EAA_mumi)
+EAAEAD_numi ^(1/EAA_mumi)*EAAEAD_imi^(1-1/EAA_mumi)
+EAAUS_numi ^(1/EAA_mumi)*EAAUS_imi^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAUS_numi
)^(1/EAA_mumi)*EAARW_imi^(1-1/EAA_mumi);
// Demand for bilateral consumption import goods
EAAEAC_imi = EAAEAC_numi*((EAC_pex*EAAEAC_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAEAD_imi = EAAEAD_numi*((EAD_pex*EAAEAD_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAUS_imi = EAAUS_numi*((US_pex*EAAUS_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
EAARW_imi = (1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAUS_numi
)*((RW_pex*EAARW_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Price of the consumption good (import)
EAA_pimi^(1-EAA_mumi) =
+EAAEAB_numi * (EAB_pex*EAAEAB_rer)^(1-EAA_mumi)
+EAAEAC_numi * (EAC_pex*EAAEAC_rer)^(1-EAA_mumi)
+EAAEAD_numi * (EAD_pex*EAAEAD_rer)^(1-EAA_mumi)
+EAAUS_numi * (US_pex*EAAUS_rer)^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAUS_numi
)*(RW_pex*EAARW_rer)^(1-EAA_mumi);
// Private consumption good (import) inflation
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Private consumption good (import)
EAA_imcg^((EAA_mumcg-1)/EAA_mumcg) =
+EAAEAB_numcg ^(1/EAA_mumcg)*EAAEAB_imcg^(1-1/EAA_mumcg)
+EAAEAC_numcg ^(1/EAA_mumcg)*EAAEAC_imcg^(1-1/EAA_mumcg)
+EAAEAD_numcg ^(1/EAA_mumcg)*EAAEAD_imcg^(1-1/EAA_mumcg)
+EAAUS_numcg ^(1/EAA_mumcg)*EAAUS_imcg^(1-1/EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAUS_numcg
)^(1/EAA_mumcg)*EAARW_imcg^(1-1/EAA_mumcg);
// Demand for bilateral consumption import goods
EAAEAC_imcg = EAAEAC_numcg*((EAC_pex*EAAEAC_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAEAD_imcg = EAAEAD_numcg*((EAD_pex*EAAEAD_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAUS_imcg = EAAUS_numcg*((US_pex*EAAUS_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
EAARW_imcg = (1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAUS_numcg
)*((RW_pex*EAARW_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Price of the consumption good (import)
EAA_pimcg^(1-EAA_mumcg) =
+EAAEAB_numcg * (EAB_pex*EAAEAB_rer)^(1-EAA_mumcg)
+EAAEAC_numcg * (EAC_pex*EAAEAC_rer)^(1-EAA_mumcg)
+EAAEAD_numcg * (EAD_pex*EAAEAD_rer)^(1-EAA_mumcg)
+EAAUS_numcg * (US_pex*EAAUS_rer)^(1-EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAUS_numcg
)*(RW_pex*EAARW_rer)^(1-EAA_mumcg);
// Private consumption good (import) inflation
EAA_piimcg = EAA_pimcg/EAA_pimcg(-1)*EAA_pic;
// Private consumption good (import)
EAA_imig^((EAA_mumig-1)/EAA_mumig) =
+EAAEAB_numig ^(1/EAA_mumig)*EAAEAB_imig^(1-1/EAA_mumig)
+EAAEAC_numig ^(1/EAA_mumig)*EAAEAC_imig^(1-1/EAA_mumig)
+EAAEAD_numig ^(1/EAA_mumig)*EAAEAD_imig^(1-1/EAA_mumig)
+EAAUS_numig ^(1/EAA_mumig)*EAAUS_imig^(1-1/EAA_mumig)
+(1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
-EAAUS_numig
)^(1/EAA_mumig)*EAARW_imig^(1-1/EAA_mumig);
// Demand for bilateral consumption import goods
EAAEAC_imig = EAAEAC_numig*((EAC_pex*EAAEAC_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAEAD_imig = EAAEAD_numig*((EAD_pex*EAAEAD_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAUS_imig = EAAUS_numig*((US_pex*EAAUS_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
EAARW_imig = (1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
-EAAUS_numig
)*((RW_pex*EAARW_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Price of the consumption good (import)
EAA_pimig^(1-EAA_mumig) =
+EAAEAB_numig * (EAB_pex*EAAEAB_rer)^(1-EAA_mumig)
+EAAEAC_numig * (EAC_pex*EAAEAC_rer)^(1-EAA_mumig)
+EAAEAD_numig * (EAD_pex*EAAEAD_rer)^(1-EAA_mumig)
+EAAUS_numig * (US_pex*EAAUS_rer)^(1-EAA_mumig)
+(1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
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
EAAEAC_im = 
+EAAEAC_imc
+EAAEAC_imi
+EAAEAC_imcg
+EAAEAC_imig
;
EAAEAD_im = 
+EAAEAD_imc
+EAAEAD_imi
+EAAEAD_imcg
+EAAEAD_imig
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
EAAEAC_gammaimc = 0;
EAAEAC_gammaimcdag = 1;
EAAEAD_gammaimc = 0;
EAAEAD_gammaimcdag = 1;
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
EAAEAC_gammaimi = 0;
EAAEAC_gammaimidag = 1;
EAAEAD_gammaimi = 0;
EAAEAD_gammaimidag = 1;
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
EAAEAC_gammaimcg = 0;
EAAEAC_gammaimcgdag = 1;
EAAEAD_gammaimcg = 0;
EAAEAD_gammaimcgdag = 1;
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
EAAEAC_gammaimig = 0;
EAAEAC_gammaimigdag = 1;
EAAEAD_gammaimig = 0;
EAAEAD_gammaimigdag = 1;
EAARW_gammaimig = 0;
EAARW_gammaimigdag = 1;
EAAUS_gammaimig = 0;
EAAUS_gammaimigdag = 1;
// Trade balance
EAA_tb =
+EAA_pex*EAB_size/EAA_size*EABEAA_im
-EAB_pex*EAAEAB_rer*EAAEAB_im
+EAA_pex*EAC_size/EAA_size*EACEAA_im
-EAC_pex*EAAEAC_rer*EAAEAC_im
+EAA_pex*EAD_size/EAA_size*EADEAA_im
-EAD_pex*EAAEAD_rer*EAAEAD_im
+EAA_pex*RW_size/EAA_size*RWEAA_im
-RW_pex*EAARW_rer*EAARW_im
+EAA_pex*US_size/EAA_size*USEAA_im
-US_pex*EAAUS_rer*EAAUS_im
;
// Aggregate exports (volume)
EAA_ex =
+EAB_size/EAA_size*EABEAA_im
+EAC_size/EAA_size*EACEAA_im
+EAD_size/EAA_size*EADEAA_im
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
	EAA_r = EAD_r;
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
+EAA_pex*EAC_size/EAA_size*EACEAA_im
-(EAC_pex*EAAEAC_rer)*EAAEAC_imc
-(EAC_pex*EAAEAC_rer)*EAAEAC_imi
-(EAC_pex*EAAEAC_rer)*EAAEAC_imcg
-(EAC_pex*EAAEAC_rer)*EAAEAC_imig
+EAA_pex*EAD_size/EAA_size*EADEAA_im
-(EAD_pex*EAAEAD_rer)*EAAEAD_imc
-(EAD_pex*EAAEAD_rer)*EAAEAD_imi
-(EAD_pex*EAAEAD_rer)*EAAEAD_imcg
-(EAD_pex*EAAEAD_rer)*EAAEAD_imig
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
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
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
EAAEAC_imcy = (EAC_pex*EAAEAC_rer)*EAAEAC_imc/(EAA_py*EAA_y);
EAAEAC_imiy = (EAC_pex*EAAEAC_rer)*EAAEAC_imi/(EAA_py*EAA_y);
EAAEAC_imcgy = (EAC_pex*EAAEAC_rer)*EAAEAC_imcg/(EAA_py*EAA_y);
EAAEAC_imigy = (EAC_pex*EAAEAC_rer)*EAAEAC_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAC_excy  = EAC_size/EAA_size*EAA_pex*EACEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAC_exiy  = EAC_size/EAA_size*EAA_pex*EACEAA_imi/(EAA_py*EAA_y);
// Bilateral shares
EAAEAD_imcy = (EAD_pex*EAAEAD_rer)*EAAEAD_imc/(EAA_py*EAA_y);
EAAEAD_imiy = (EAD_pex*EAAEAD_rer)*EAAEAD_imi/(EAA_py*EAA_y);
EAAEAD_imcgy = (EAD_pex*EAAEAD_rer)*EAAEAD_imcg/(EAA_py*EAA_y);
EAAEAD_imigy = (EAD_pex*EAAEAD_rer)*EAAEAD_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAD_excy  = EAD_size/EAA_size*EAA_pex*EADEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAD_exiy  = EAD_size/EAA_size*EAA_pex*EADEAA_imi/(EAA_py*EAA_y);
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
EAB_r                   = EAB_beta^(-1)*EAB_lambdai/EAB_lambdai    *EAB_pic;
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
// Government capital accumulation:
EAB_kg = (1-EAB_deltag)*EAB_kg(-1)+EAB_ig(-1);
// Production function tradable
EAB_yst = EA_z*EAB_zt*EAB_kg^EAB_alphag*EAB_kdt^EAB_alphat*EAB_ndt^(1-EAB_alphat)-EAB_psitbar;
// Production function nontradable
EAB_ysn = EA_z*EAB_zn*EAB_kg^EAB_alphag*EAB_kdn^EAB_alphan*EAB_ndn^(1-EAB_alphan)-EAB_psinbar;
// Real marginal cost tradable
EAB_mct = 1/(EA_z*EAB_zt*EAB_kg^EAB_alphag*(EAB_alphat)^(EAB_alphat)*(1-EAB_alphat)^(1-EAB_alphat))*EAB_rk^(EAB_alphat)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphat);
// Real marginal cost nontradable
EAB_mcn = 1/(EA_z*EAB_zn*EAB_kg^EAB_alphag*(EAB_alphan)^(EAB_alphan)*(1-EAB_alphan)^(1-EAB_alphan))*EAB_rk^(EAB_alphan)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphan);
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
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAC_pimtilde
// EACEAB_pimtilde/EACEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAC_fx/EABEAC_gx;
// Definition of fx
// EABEAC_fx = EAC_size/EAB_size*EACEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAC_fx(+1);
// Definition of gx   
// EABEAC_gx = EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAC_pim
// EACEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EACEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EACEAB_pim(-1)/EAC_pic)^(1-EAB_thetat)*(EACEAB_piim(-1)^EAB_chix*EAC_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAC_piim
// EACEAB_piim = EACEAB_pim/EACEAB_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EABEAC_rer = EAB_rer/EAC_rer;
// Auxiliary equation for steady-state output
EABEAC_rerbar = EABEAC_rer;
//Terms of Trade
EABEAC_tot = EAC_pex*EABEAC_rer/EAB_pex;
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAD_pimtilde
// EADEAB_pimtilde/EADEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAD_fx/EABEAD_gx;
// Definition of fx
// EABEAD_fx = EAD_size/EAB_size*EADEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EADEAB_piim(+1)/(EADEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAD_fx(+1);
// Definition of gx   
// EABEAD_gx = EABEAD_rer*EADEAB_pim*EAD_size/EAB_size*EADEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EADEAB_piim(+1)/(EADEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAD_pim
// EADEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EADEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EADEAB_pim(-1)/EAD_pic)^(1-EAB_thetat)*(EADEAB_piim(-1)^EAB_chix*EAD_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAD_piim
// EADEAB_piim = EADEAB_pim/EADEAB_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EABEAD_rer = EAB_rer/EAD_rer;
// Auxiliary equation for steady-state output
EABEAD_rerbar = EABEAD_rer;
//Terms of Trade
EABEAD_tot = EAD_pex*EABEAD_rer/EAB_pex;
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
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)+
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EACEAA_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EADEAA_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAA_rer*EAA_pex*RWEAA_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAA_rer*EAA_pex*USEAA_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAA_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EABEAC_weightim = EABEAC_rer*EAC_pex*EABEAC_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAC_weightex = EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAC_rer*EAC_py*EAC_y/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAAEAC_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EADEAC_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAC_rer*EAC_pex*RWEAC_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAC_rer*EAC_pex*USEAC_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAC_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EABEAD_weightim = EABEAD_rer*EAD_pex*EABEAD_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAD_weightex = EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAD_rer*EAD_py*EAD_y/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAAEAD_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EACEAD_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAD_rer*EAD_pex*RWEAD_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAD_rer*EAD_pex*USEAD_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAD_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAD_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABRW_weightex = RW_size/EAB_size*RWEAB_im/EAB_ex*EABRW_rer*RW_py*RW_y/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABRW_rer*RW_pex*EAARW_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABRW_rer*RW_pex*EACRW_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABRW_rer*RW_pex*EADRW_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABRW_rer*RW_pex*USRW_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
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
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABUS_rer*US_pex*EAAUS_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABUS_rer*US_pex*EACUS_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABUS_rer*US_pex*EADUS_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABUS_rer*US_pex*RWUS_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EABUS_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightex;
// Effective real exchange rate
EAB_reer = 1
*EABEAA_rer^EABEAA_weight
*EABEAC_rer^EABEAC_weight
*EABEAD_rer^EABEAD_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABEAC_tot^EABEAC_weight
*EABEAD_tot^EABEAD_weight
*EABRW_tot^EABRW_weight
*EABUS_tot^EABUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAB_imc^((EAB_mumc-1)/EAB_mumc) =
+EABEAA_numc ^(1/EAB_mumc)*EABEAA_imc^(1-1/EAB_mumc)
+EABEAC_numc ^(1/EAB_mumc)*EABEAC_imc^(1-1/EAB_mumc)
+EABEAD_numc ^(1/EAB_mumc)*EABEAD_imc^(1-1/EAB_mumc)
+EABRW_numc ^(1/EAB_mumc)*EABRW_imc^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABRW_numc
)^(1/EAB_mumc)*EABUS_imc^(1-1/EAB_mumc);
// Demand for bilateral consumption import goods
EABEAA_imc = EABEAA_numc*((EAA_pex*EABEAA_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABEAD_imc = EABEAD_numc*((EAD_pex*EABEAD_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABRW_imc = EABRW_numc*((RW_pex*EABRW_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABUS_imc = (1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABRW_numc
)*((US_pex*EABUS_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Price of the consumption good (import)
EAB_pimc^(1-EAB_mumc) =
+EABEAA_numc * (EAA_pex*EABEAA_rer)^(1-EAB_mumc)
+EABEAC_numc * (EAC_pex*EABEAC_rer)^(1-EAB_mumc)
+EABEAD_numc * (EAD_pex*EABEAD_rer)^(1-EAB_mumc)
+EABRW_numc * (RW_pex*EABRW_rer)^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABRW_numc
)*(US_pex*EABUS_rer)^(1-EAB_mumc);
// Private consumption good (import) inflation
EAB_piimc = EAB_pimc/EAB_pimc(-1)*EAB_pic;
// Private consumption good (import)
EAB_imi^((EAB_mumi-1)/EAB_mumi) =
+EABEAA_numi ^(1/EAB_mumi)*EABEAA_imi^(1-1/EAB_mumi)
+EABEAC_numi ^(1/EAB_mumi)*EABEAC_imi^(1-1/EAB_mumi)
+EABEAD_numi ^(1/EAB_mumi)*EABEAD_imi^(1-1/EAB_mumi)
+EABRW_numi ^(1/EAB_mumi)*EABRW_imi^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABRW_numi
)^(1/EAB_mumi)*EABUS_imi^(1-1/EAB_mumi);
// Demand for bilateral consumption import goods
EABEAA_imi = EABEAA_numi*((EAA_pex*EABEAA_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABEAD_imi = EABEAD_numi*((EAD_pex*EABEAD_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABRW_imi = EABRW_numi*((RW_pex*EABRW_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
EABUS_imi = (1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABRW_numi
)*((US_pex*EABUS_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Price of the consumption good (import)
EAB_pimi^(1-EAB_mumi) =
+EABEAA_numi * (EAA_pex*EABEAA_rer)^(1-EAB_mumi)
+EABEAC_numi * (EAC_pex*EABEAC_rer)^(1-EAB_mumi)
+EABEAD_numi * (EAD_pex*EABEAD_rer)^(1-EAB_mumi)
+EABRW_numi * (RW_pex*EABRW_rer)^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABRW_numi
)*(US_pex*EABUS_rer)^(1-EAB_mumi);
// Private consumption good (import) inflation
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Private consumption good (import)
EAB_imcg^((EAB_mumcg-1)/EAB_mumcg) =
+EABEAA_numcg ^(1/EAB_mumcg)*EABEAA_imcg^(1-1/EAB_mumcg)
+EABEAC_numcg ^(1/EAB_mumcg)*EABEAC_imcg^(1-1/EAB_mumcg)
+EABEAD_numcg ^(1/EAB_mumcg)*EABEAD_imcg^(1-1/EAB_mumcg)
+EABRW_numcg ^(1/EAB_mumcg)*EABRW_imcg^(1-1/EAB_mumcg)
+(1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABRW_numcg
)^(1/EAB_mumcg)*EABUS_imcg^(1-1/EAB_mumcg);
// Demand for bilateral consumption import goods
EABEAA_imcg = EABEAA_numcg*((EAA_pex*EABEAA_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABEAD_imcg = EABEAD_numcg*((EAD_pex*EABEAD_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABRW_imcg = EABRW_numcg*((RW_pex*EABRW_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
EABUS_imcg = (1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABRW_numcg
)*((US_pex*EABUS_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Price of the consumption good (import)
EAB_pimcg^(1-EAB_mumcg) =
+EABEAA_numcg * (EAA_pex*EABEAA_rer)^(1-EAB_mumcg)
+EABEAC_numcg * (EAC_pex*EABEAC_rer)^(1-EAB_mumcg)
+EABEAD_numcg * (EAD_pex*EABEAD_rer)^(1-EAB_mumcg)
+EABRW_numcg * (RW_pex*EABRW_rer)^(1-EAB_mumcg)
+(1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABRW_numcg
)*(US_pex*EABUS_rer)^(1-EAB_mumcg);
// Private consumption good (import) inflation
EAB_piimcg = EAB_pimcg/EAB_pimcg(-1)*EAB_pic;
// Private consumption good (import)
EAB_imig^((EAB_mumig-1)/EAB_mumig) =
+EABEAA_numig ^(1/EAB_mumig)*EABEAA_imig^(1-1/EAB_mumig)
+EABEAC_numig ^(1/EAB_mumig)*EABEAC_imig^(1-1/EAB_mumig)
+EABEAD_numig ^(1/EAB_mumig)*EABEAD_imig^(1-1/EAB_mumig)
+EABRW_numig ^(1/EAB_mumig)*EABRW_imig^(1-1/EAB_mumig)
+(1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABRW_numig
)^(1/EAB_mumig)*EABUS_imig^(1-1/EAB_mumig);
// Demand for bilateral consumption import goods
EABEAA_imig = EABEAA_numig*((EAA_pex*EABEAA_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABEAD_imig = EABEAD_numig*((EAD_pex*EABEAD_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABRW_imig = EABRW_numig*((RW_pex*EABRW_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
EABUS_imig = (1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABRW_numig
)*((US_pex*EABUS_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Price of the consumption good (import)
EAB_pimig^(1-EAB_mumig) =
+EABEAA_numig * (EAA_pex*EABEAA_rer)^(1-EAB_mumig)
+EABEAC_numig * (EAC_pex*EABEAC_rer)^(1-EAB_mumig)
+EABEAD_numig * (EAD_pex*EABEAD_rer)^(1-EAB_mumig)
+EABRW_numig * (RW_pex*EABRW_rer)^(1-EAB_mumig)
+(1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABRW_numig
)*(US_pex*EABUS_rer)^(1-EAB_mumig);
// Private consumption good (import) inflation
EAB_piimig = EAB_pimig/EAB_pimig(-1)*EAB_pic;
// Private consumption good (import) inflation
EAB_piimc4 = EAB_pimc/EAB_pimc(-4)*EAB_pic4;
// Private consumption good (import) inflation
EAB_piex4 = EAB_pex/EAB_pex(-4)*EAB_pic4;
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
EAB_yst = EAB_sh*EAB_ht+EAB_sx*EAB_ex;
// Aggregate demand for bilateral imported intermediate goods
EABEAA_im = 
+EABEAA_imc
+EABEAA_imi
+EABEAA_imcg
+EABEAA_imig
;
EABEAC_im = 
+EABEAC_imc
+EABEAC_imi
+EABEAC_imcg
+EABEAC_imig
;
EABEAD_im = 
+EABEAD_imc
+EABEAD_imi
+EABEAD_imcg
+EABEAD_imig
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
EABEAC_gammaimc = 0;
EABEAC_gammaimcdag = 1;
EABEAD_gammaimc = 0;
EABEAD_gammaimcdag = 1;
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
EABEAC_gammaimi = 0;
EABEAC_gammaimidag = 1;
EABEAD_gammaimi = 0;
EABEAD_gammaimidag = 1;
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
EABEAC_gammaimcg = 0;
EABEAC_gammaimcgdag = 1;
EABEAD_gammaimcg = 0;
EABEAD_gammaimcgdag = 1;
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
EABEAC_gammaimig = 0;
EABEAC_gammaimigdag = 1;
EABEAD_gammaimig = 0;
EABEAD_gammaimigdag = 1;
EABRW_gammaimig = 0;
EABRW_gammaimigdag = 1;
EABUS_gammaimig = 0;
EABUS_gammaimigdag = 1;
// Trade balance
EAB_tb =
+EAB_pex*EAA_size/EAB_size*EAAEAB_im
-EAA_pex*EABEAA_rer*EABEAA_im
+EAB_pex*EAC_size/EAB_size*EACEAB_im
-EAC_pex*EABEAC_rer*EABEAC_im
+EAB_pex*EAD_size/EAB_size*EADEAB_im
-EAD_pex*EABEAD_rer*EABEAD_im
+EAB_pex*RW_size/EAB_size*RWEAB_im
-RW_pex*EABRW_rer*EABRW_im
+EAB_pex*US_size/EAB_size*USEAB_im
-US_pex*EABUS_rer*EABUS_im
;
// Aggregate exports (volume)
EAB_ex =
+EAA_size/EAB_size*EAAEAB_im
+EAC_size/EAB_size*EACEAB_im
+EAD_size/EAB_size*EADEAB_im
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
	EAB_r = EAD_r;
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
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
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
+EAB_pex*EAC_size/EAB_size*EACEAB_im
-(EAC_pex*EABEAC_rer)*EABEAC_imc
-(EAC_pex*EABEAC_rer)*EABEAC_imi
-(EAC_pex*EABEAC_rer)*EABEAC_imcg
-(EAC_pex*EABEAC_rer)*EABEAC_imig
+EAB_pex*EAD_size/EAB_size*EADEAB_im
-(EAD_pex*EABEAD_rer)*EABEAD_imc
-(EAD_pex*EABEAD_rer)*EABEAD_imi
-(EAD_pex*EABEAD_rer)*EABEAD_imcg
-(EAD_pex*EABEAD_rer)*EABEAD_imig
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
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
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
EABEAC_imcy = (EAC_pex*EABEAC_rer)*EABEAC_imc/(EAB_py*EAB_y);
EABEAC_imiy = (EAC_pex*EABEAC_rer)*EABEAC_imi/(EAB_py*EAB_y);
EABEAC_imcgy = (EAC_pex*EABEAC_rer)*EABEAC_imcg/(EAB_py*EAB_y);
EABEAC_imigy = (EAC_pex*EABEAC_rer)*EABEAC_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAC_excy  = EAC_size/EAB_size*EAB_pex*EACEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAC_exiy  = EAC_size/EAB_size*EAB_pex*EACEAB_imi/(EAB_py*EAB_y);
// Bilateral shares
EABEAD_imcy = (EAD_pex*EABEAD_rer)*EABEAD_imc/(EAB_py*EAB_y);
EABEAD_imiy = (EAD_pex*EABEAD_rer)*EABEAD_imi/(EAB_py*EAB_y);
EABEAD_imcgy = (EAD_pex*EABEAD_rer)*EABEAD_imcg/(EAB_py*EAB_y);
EABEAD_imigy = (EAD_pex*EABEAD_rer)*EABEAD_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAD_excy  = EAD_size/EAB_size*EAB_pex*EADEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAD_exiy  = EAD_size/EAB_size*EAB_pex*EADEAB_imi/(EAB_py*EAB_y);
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
EAC_ccesi^(1-1/EAC_mucces) = (EAC_nucces)^(1/EAC_mucces)*EAC_ci^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces);
// Utility
EAC_utili = 
EAC_zcon*log(EAC_ccesi-EAC_kappa*EAC_ccesi(-1))-1/(1+EAC_zeta)*(EAC_ni)^(1+EAC_zeta)+EAC_beta*EAC_utili(+1)
;
// Marginal utility of consumption
EAC_dcci = ((EAC_nucces)^(1/EAC_mucces)*EAC_ci^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces))^(1/(EAC_mucces-1))*(EAC_nucces^(1/EAC_mucces))*(EAC_ci^(-1/EAC_mucces));
EAC_lambdai*(1+EAC_tauc+EAC_gammavi+EAC_vi*EAC_gammavider) = EAC_zcon*(EAC_ccesi-EAC_kappa*EAC_ccesi(-1))^(-EAC_sigma)*EAC_dcci;
// Euler equation for government bonds
EAC_r                   = EAC_beta^(-1)*EAC_lambdai/EAC_lambdai    *EAC_pic;
// Euler equation for money
EAC_vi^(2)*EAC_gammavider = 1-EAC_beta*EAC_lambdai(+1)/(EAC_lambdai*EAC_pic(+1));
// Consumption-based velocity
EAC_vi = EAC_ci/EAC_mi;
// Transaction cost
EAC_gammavi = EAC_gammav1*EAC_vi+EAC_gammav2/EAC_vi-2*(EAC_gammav1*EAC_gammav2)^(1/2);
// Derivative of transaction cost
EAC_gammavider = EAC_gammav1-EAC_gammav2*EAC_vi^(-2);
EAC_delta = EAC_ii/EAC_ki;
EAC_gammai = 0;
EAC_gammaider = 0;
EAC_gammau = 0;
EAC_gammauder = ((EAC_beta^(-1)-1+EAC_delta)*EAC_qbar-EAC_delta*EAC_taukbar*EAC_pibar)/((1-EAC_taukbar)*EAC_pibar);
EAC_u = 1;
EAC_pi = EAC_q;
// Auxiliary equation for Tobin's Q in steady state
EAC_qbar = EAC_q;
// Rate of return on capital
EAC_q = EAC_beta*((1-EAC_tauk)*EAC_rk+(EAC_tauk*EAC_delta)*EAC_pi+(1-EAC_delta)*EAC_q);
// Optimal wage contract (FOC)
EAC_witilde^(1+EAC_etai*EAC_zeta) = EAC_etai/(EAC_etai-1)*EAC_fi/EAC_gi+EAC_wcst;
// Definition of fi
EAC_fi = EAC_wi^(EAC_etai*(1+EAC_zeta))*EAC_ndi^(1+EAC_zeta)+EAC_xii*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai*(1+EAC_zeta))*EAC_fi(+1);
// Definition of gi
EAC_gi = EAC_lambdai*(1-EAC_taun-EAC_tauwh)*EAC_wi^EAC_etai*EAC_ndi+EAC_xii*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai-1)*EAC_gi(+1);
// Aggregate wage rate
EAC_wi^(1-EAC_etai) = (1-EAC_xii)*EAC_witilde^(1-EAC_etai)+EAC_xii*EAC_wi(-1)^(1-EAC_etai)*(EAC_pic(-1)^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))/EAC_pic)^(1-EAC_etai);
//-------------
// Household J
//-------------
EAC_ccesj^(1-1/EAC_mucces) = (EAC_nucces)^(1/EAC_mucces)*EAC_cj^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces);
// Utility
EAC_utilj = 
EAC_zcon*log(EAC_ccesj-EAC_kappa*EAC_ccesj(-1))-1/(1+EAC_zeta)*(EAC_nj)^(1+EAC_zeta)+EAC_beta*EAC_utilj(+1)
;
// Marginal utility of consumption
EAC_dccj = ((EAC_nucces)^(1/EAC_mucces)*EAC_cj^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces))^(1/(EAC_mucces-1))*(EAC_nucces^(1/EAC_mucces))*(EAC_cj^(-1/EAC_mucces));
EAC_lambdaj*(1+EAC_tauc+EAC_gammavj+EAC_vj*EAC_gammavjder) = EAC_zcon*(EAC_ccesj-EAC_kappa*EAC_ccesj(-1))^(-EAC_sigma)*EAC_dccj;
// Budget constraint
(1+EAC_tauc+EAC_gammavj)*EAC_cj+EAC_mj = (1-EAC_taun-EAC_tauwh)*EAC_wj*EAC_nj+EAC_trj-EAC_tj+EAC_mj(-1)*EAC_pic^(-1);
// Euler equation for money
EAC_vj^(2)*EAC_gammavjder = 1-EAC_beta*EAC_lambdaj(+1)/(EAC_lambdaj*EAC_pic(+1));
// Consumption-based velocity
EAC_vj = EAC_cj/EAC_mj;
// Transaction technology
EAC_gammavj = EAC_gammav1*EAC_vj+EAC_gammav2/EAC_vj-2*(EAC_gammav1*EAC_gammav2)^(1/2);
// Derivative of transaction technology
EAC_gammavjder = EAC_gammav1-EAC_gammav2*EAC_vj^(-2);
// Optimal wage contract (FOC)
EAC_wjtilde^(1+EAC_etaj*EAC_zeta) = EAC_etaj/(EAC_etaj-1)*EAC_fj/EAC_gj+EAC_wcst;
// Definition of fj
EAC_fj = EAC_wj^(EAC_etaj*(1+EAC_zeta))*EAC_ndj^(1+EAC_zeta)+EAC_xij*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj*(1+EAC_zeta))*EAC_fj(+1);
// Definition of gj
EAC_gj = EAC_lambdaj*(1-EAC_taun-EAC_tauwh)*EAC_wj^EAC_etaj*EAC_ndj+EAC_xij*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj-1)*EAC_gj(+1);
// Aggregate wage rate
EAC_wj^(1-EAC_etaj) = (1-EAC_xij)*EAC_wjtilde^(1-EAC_etaj)+EAC_xij*EAC_wj(-1)^(1-EAC_etaj)*(EAC_pic(-1)^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))/EAC_pic)^(1-EAC_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Government capital accumulation:
EAC_kg = (1-EAC_deltag)*EAC_kg(-1)+EAC_ig(-1);
// Production function tradable
EAC_yst = EA_z*EAC_zt*EAC_kg^EAC_alphag*EAC_kdt^EAC_alphat*EAC_ndt^(1-EAC_alphat)-EAC_psitbar;
// Production function nontradable
EAC_ysn = EA_z*EAC_zn*EAC_kg^EAC_alphag*EAC_kdn^EAC_alphan*EAC_ndn^(1-EAC_alphan)-EAC_psinbar;
// Real marginal cost tradable
EAC_mct = 1/(EA_z*EAC_zt*EAC_kg^EAC_alphag*(EAC_alphat)^(EAC_alphat)*(1-EAC_alphat)^(1-EAC_alphat))*EAC_rk^(EAC_alphat)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphat);
// Real marginal cost nontradable
EAC_mcn = 1/(EA_z*EAC_zn*EAC_kg^EAC_alphag*(EAC_alphan)^(EAC_alphan)*(1-EAC_alphan)^(1-EAC_alphan))*EAC_rk^(EAC_alphan)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphan);
// Wage Inflation (qoq)
EAC_piw = EAC_w/EAC_w(-1)*EAC_pic;
// Wage Inflation (yoy)
EAC_piw4 = EAC_pic4;
// Auxiliary equation for steady-state fixed cost
EAC_psitbar = EAC_psit*EAC_ytbar;
// Auxiliary equation for steady-state fixed cost
EAC_psinbar = EAC_psin*EAC_ynbar;
// Capital input (FOC)
EAC_rk = EAC_alphat*(EAC_yst+EAC_psitbar)/EAC_kdt*EAC_mct;
// Capital input (FOC)
EAC_rk = EAC_alphan*(EAC_ysn+EAC_psinbar)/EAC_kdn*EAC_mcn;
// Total capital demand
EAC_kd = EAC_kdt+EAC_kdn;
// Demand for labour services by household I
EAC_ndi = 
(1-EAC_omega)*(EAC_wi/EAC_w)^(-EAC_eta)*EAC_nd
;
// Demand for labour services by household J
EAC_ndj = 
EAC_omega*(EAC_wj/EAC_w)^(-EAC_eta)*EAC_nd
;
// Aggregate labour demand
EAC_nd^(1-1/EAC_eta) = 
(1-EAC_omega)^(1/EAC_eta)*EAC_ndi^(1-1/EAC_eta)+EAC_omega^(1/EAC_eta)*EAC_ndj^(1-1/EAC_eta)
;
// Total demand 
EAC_nd = EAC_ndt+EAC_ndn;
// Aggregate dividends
EAC_d = EAC_py*EAC_y-EAC_rk*EAC_kd-(1+EAC_tauwf)*EAC_w*EAC_nd;
// Non-tradable sector dividends
EAC_dn = EAC_pnt*EAC_ysn-EAC_rk*EAC_kdn-(1+EAC_tauwf)*EAC_w*EAC_ndn;
// Tradable sector dividends
EAC_dt = EAC_pht*EAC_ht
+EAC_pex*EAC_ex
-EAC_rk*EAC_kdt-(1+EAC_tauwf)*EAC_w*EAC_ndt;
// Optimal price contract set in domestic markets (FOC)
EAC_phttilde/EAC_pht = EAC_thetat/(EAC_thetat-1)*EAC_fh/EAC_gh;
// Definition of fh
EAC_fh = EAC_mct*EAC_ht+EAC_xih*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piht(+1)/(EAC_piht^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_fh(+1);
// Definition of gh
EAC_gh = EAC_pht*EAC_ht+EAC_xih*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piht(+1)/(EAC_piht^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^(EAC_thetat-1)*EAC_gh(+1);
// Aggregate intermediate-good price dynamics
EAC_pht^(1-EAC_thetat) = (1-EAC_xih)*EAC_phttilde^(1-EAC_thetat)+EAC_xih*(EAC_pht(-1)/EAC_pic)^(1-EAC_thetat)*(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation
EAC_piht = EAC_pht/EAC_pht(-1)*EAC_pic;
// Optimal price contract set in domestic markets (FOC)
EAC_pnttilde/EAC_pnt = EAC_thetan/(EAC_thetan-1)*EAC_fn/EAC_gn;
// Definition of fn
EAC_fn = EAC_mcn*EAC_nt+EAC_xin*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_pint(+1)/(EAC_pint^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_fn(+1);
// Definition of gn
EAC_gn = EAC_pnt*EAC_nt+EAC_xin*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_pint(+1)/(EAC_pint^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^(EAC_thetan-1)*EAC_gn(+1);
// Aggregate intermediate-good price dynamics
EAC_pnt^(1-EAC_thetan) = (1-EAC_xin)*EAC_pnttilde^(1-EAC_thetan)+EAC_xin*(EAC_pnt(-1)/EAC_pic)^(1-EAC_thetan)*(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin)))^(1-EAC_thetan);
// Intermediate-good price inflation
EAC_pint = EAC_pnt/EAC_pnt(-1)*EAC_pic;
// Optimal price contract set in domestic markets (FOC)
EAC_pextilde/EAC_pex = EAC_thetat/(EAC_thetat-1)*EAC_fx/EAC_gx;
// Definition of fh
EAC_fx = EAC_mct*EAC_ex+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piex(+1)/(EAC_piex^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EAC_fx(+1);
// Definition of gh
EAC_gx = EAC_pex*EAC_ex+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piex(+1)/(EAC_piex^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EAC_gx(+1);
// Aggregate intermediate-good price dynamics
EAC_pex^(1-EAC_thetat) = (1-EAC_xix)*EAC_pextilde^(1-EAC_thetat)+EAC_xix*(EAC_pex(-1)/EAC_pic)^(1-EAC_thetat)*(EAC_piex(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix)))^(1-EAC_thetat);
// Intermediate-good price inflation
EAC_piex = EAC_pex/EAC_pex(-1)*EAC_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAA_pimtilde
// EAAEAC_pimtilde/EAAEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAA_fx/EACEAA_gx;
// Definition of fx
// EACEAA_fx = EAA_size/EAC_size*EAAEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAA_fx(+1);
// Definition of gx   
// EACEAA_gx = EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAA_pim
// EAAEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EAAEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAAEAC_pim(-1)/EAA_pic)^(1-EAC_thetat)*(EAAEAC_piim(-1)^EAC_chix*EAA_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAA_piim
// EAAEAC_piim = EAAEAC_pim/EAAEAC_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EACEAA_rer = EAC_rer/EAA_rer;
// Auxiliary equation for steady-state output
EACEAA_rerbar = EACEAA_rer;
//Terms of Trade
EACEAA_tot = EAA_pex*EACEAA_rer/EAC_pex;
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAB_pimtilde
// EABEAC_pimtilde/EABEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAB_fx/EACEAB_gx;
// Definition of fx
// EACEAB_fx = EAB_size/EAC_size*EABEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAB_fx(+1);
// Definition of gx   
// EACEAB_gx = EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAB_pim
// EABEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EABEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EABEAC_pim(-1)/EAB_pic)^(1-EAC_thetat)*(EABEAC_piim(-1)^EAC_chix*EAB_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAB_piim
// EABEAC_piim = EABEAC_pim/EABEAC_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EACEAB_rer = EAC_rer/EAB_rer;
// Auxiliary equation for steady-state output
EACEAB_rerbar = EACEAB_rer;
//Terms of Trade
EACEAB_tot = EAB_pex*EACEAB_rer/EAC_pex;
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAD_pimtilde
// EADEAC_pimtilde/EADEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAD_fx/EACEAD_gx;
// Definition of fx
// EACEAD_fx = EAD_size/EAC_size*EADEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EADEAC_piim(+1)/(EADEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAD_fx(+1);
// Definition of gx   
// EACEAD_gx = EACEAD_rer*EADEAC_pim*EAD_size/EAC_size*EADEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EADEAC_piim(+1)/(EADEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAD_pim
// EADEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EADEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EADEAC_pim(-1)/EAD_pic)^(1-EAC_thetat)*(EADEAC_piim(-1)^EAC_chix*EAD_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAD_piim
// EADEAC_piim = EADEAC_pim/EADEAC_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EACEAD_rer = EAC_rer/EAD_rer;
// Auxiliary equation for steady-state output
EACEAD_rerbar = EACEAD_rer;
//Terms of Trade
EACEAD_tot = EAD_pex*EACEAD_rer/EAC_pex;
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = RW_pimtilde
// RWEAC_pimtilde/RWEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACRW_fx/EACRW_gx;
// Definition of fx
// EACRW_fx = RW_size/EAC_size*RWEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACRW_fx(+1);
// Definition of gx   
// EACRW_gx = EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = RW_pim
// RWEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*RWEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(RWEAC_pim(-1)/RW_pic)^(1-EAC_thetat)*(RWEAC_piim(-1)^EAC_chix*RW_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = RW_piim
// RWEAC_piim = RWEAC_pim/RWEAC_pim(-1)*RW_pic;
// Bilateral real exchange rate
EACRW_rer = EAC_rer/RW_rer;
// Auxiliary equation for steady-state output
EACRW_rerbar = EACRW_rer;
//Terms of Trade
EACRW_tot = RW_pex*EACRW_rer/EAC_pex;
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = US_pimtilde
// USEAC_pimtilde/USEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACUS_fx/EACUS_gx;
// Definition of fx
// EACUS_fx = US_size/EAC_size*USEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACUS_fx(+1);
// Definition of gx   
// EACUS_gx = EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = US_pim
// USEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*USEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(USEAC_pim(-1)/US_pic)^(1-EAC_thetat)*(USEAC_piim(-1)^EAC_chix*US_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = US_piim
// USEAC_piim = USEAC_pim/USEAC_pim(-1)*US_pic;
// Bilateral real exchange rate
EACUS_rer = EAC_rer/US_rer;
// Auxiliary equation for steady-state output
EACUS_rerbar = EACUS_rer;
//Terms of Trade
EACUS_tot = US_pex*EACUS_rer/EAC_pex;
// Total imports 
EAC_im = 
+EAC_imc
+EAC_imi
+EAC_imcg
+EAC_imig
;
// Total import deflator
EAC_im*EAC_pim  = 
+EAC_pimc*EAC_imc
+EAC_pimi*EAC_imi
+EAC_pimcg*EAC_imcg
+EAC_pimig*EAC_imig
;
// Effective real exchange rate: double weighting (imports)
EACEAA_weightim = EACEAA_rer*EAA_pex*EACEAA_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAA_weightex = EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAA_rer*EAA_py*EAA_y/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EABEAA_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EADEAA_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAA_rer*EAA_pex*RWEAA_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAA_rer*EAA_pex*USEAA_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAA_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAA_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EACEAB_weightim = EACEAB_rer*EAB_pex*EACEAB_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAB_weightex = EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAB_rer*EAB_py*EAB_y/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAAEAB_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EADEAB_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAB_rer*EAB_pex*RWEAB_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAB_rer*EAB_pex*USEAB_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAB_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EACEAD_weightim = EACEAD_rer*EAD_pex*EACEAD_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAD_weightex = EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAD_rer*EAD_py*EAD_y/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAAEAD_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EABEAD_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAD_rer*EAD_pex*RWEAD_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAD_rer*EAD_pex*USEAD_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAD_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAD_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EACRW_weightim = EACRW_rer*RW_pex*EACRW_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACRW_weightex = RW_size/EAC_size*RWEAC_im/EAC_ex*EACRW_rer*RW_py*RW_y/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACRW_rer*RW_pex*EAARW_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACRW_rer*RW_pex*EABRW_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACRW_rer*RW_pex*EADRW_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACRW_rer*RW_pex*USRW_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACRW_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACRW_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACRW_weightex;
// Effective real exchange rate: double weighting (imports)
EACUS_weightim = EACUS_rer*US_pex*EACUS_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACUS_weightex = US_size/EAC_size*USEAC_im/EAC_ex*EACUS_rer*US_py*US_y/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACUS_rer*US_pex*EAAUS_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACUS_rer*US_pex*EABUS_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACUS_rer*US_pex*EADUS_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACUS_rer*US_pex*RWUS_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EACUS_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightex;
// Effective real exchange rate
EAC_reer = 1
*EACEAA_rer^EACEAA_weight
*EACEAB_rer^EACEAB_weight
*EACEAD_rer^EACEAD_weight
*EACRW_rer^EACRW_weight
*EACUS_rer^EACUS_weight
;
// Effective terms of trade
EAC_etot = 1
*EACEAA_tot^EACEAA_weight
*EACEAB_tot^EACEAB_weight
*EACEAD_tot^EACEAD_weight
*EACRW_tot^EACRW_weight
*EACUS_tot^EACUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAC_imc^((EAC_mumc-1)/EAC_mumc) =
+EACEAB_numc ^(1/EAC_mumc)*EACEAB_imc^(1-1/EAC_mumc)
+EACEAD_numc ^(1/EAC_mumc)*EACEAD_imc^(1-1/EAC_mumc)
+EACRW_numc ^(1/EAC_mumc)*EACRW_imc^(1-1/EAC_mumc)
+EACUS_numc ^(1/EAC_mumc)*EACUS_imc^(1-1/EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACRW_numc
-EACUS_numc
)^(1/EAC_mumc)*EACEAA_imc^(1-1/EAC_mumc);
// Demand for bilateral consumption import goods
EACEAB_imc = EACEAB_numc*((EAB_pex*EACEAB_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACRW_imc = EACRW_numc*((RW_pex*EACRW_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACUS_imc = EACUS_numc*((US_pex*EACUS_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAA_imc = (1
-EACEAB_numc
-EACEAD_numc
-EACRW_numc
-EACUS_numc
)*((EAA_pex*EACEAA_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Price of the consumption good (import)
EAC_pimc^(1-EAC_mumc) =
+EACEAB_numc * (EAB_pex*EACEAB_rer)^(1-EAC_mumc)
+EACEAD_numc * (EAD_pex*EACEAD_rer)^(1-EAC_mumc)
+EACRW_numc * (RW_pex*EACRW_rer)^(1-EAC_mumc)
+EACUS_numc * (US_pex*EACUS_rer)^(1-EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACRW_numc
-EACUS_numc
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumc);
// Private consumption good (import) inflation
EAC_piimc = EAC_pimc/EAC_pimc(-1)*EAC_pic;
// Private consumption good (import)
EAC_imi^((EAC_mumi-1)/EAC_mumi) =
+EACEAB_numi ^(1/EAC_mumi)*EACEAB_imi^(1-1/EAC_mumi)
+EACEAD_numi ^(1/EAC_mumi)*EACEAD_imi^(1-1/EAC_mumi)
+EACRW_numi ^(1/EAC_mumi)*EACRW_imi^(1-1/EAC_mumi)
+EACUS_numi ^(1/EAC_mumi)*EACUS_imi^(1-1/EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACRW_numi
-EACUS_numi
)^(1/EAC_mumi)*EACEAA_imi^(1-1/EAC_mumi);
// Demand for bilateral consumption import goods
EACEAB_imi = EACEAB_numi*((EAB_pex*EACEAB_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACRW_imi = EACRW_numi*((RW_pex*EACRW_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACUS_imi = EACUS_numi*((US_pex*EACUS_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
EACEAA_imi = (1
-EACEAB_numi
-EACEAD_numi
-EACRW_numi
-EACUS_numi
)*((EAA_pex*EACEAA_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Price of the consumption good (import)
EAC_pimi^(1-EAC_mumi) =
+EACEAB_numi * (EAB_pex*EACEAB_rer)^(1-EAC_mumi)
+EACEAD_numi * (EAD_pex*EACEAD_rer)^(1-EAC_mumi)
+EACRW_numi * (RW_pex*EACRW_rer)^(1-EAC_mumi)
+EACUS_numi * (US_pex*EACUS_rer)^(1-EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACRW_numi
-EACUS_numi
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumi);
// Private consumption good (import) inflation
EAC_piimi = EAC_pimi/EAC_pimi(-1)*EAC_pic;
// Private consumption good (import)
EAC_imcg^((EAC_mumcg-1)/EAC_mumcg) =
+EACEAB_numcg ^(1/EAC_mumcg)*EACEAB_imcg^(1-1/EAC_mumcg)
+EACEAD_numcg ^(1/EAC_mumcg)*EACEAD_imcg^(1-1/EAC_mumcg)
+EACRW_numcg ^(1/EAC_mumcg)*EACRW_imcg^(1-1/EAC_mumcg)
+EACUS_numcg ^(1/EAC_mumcg)*EACUS_imcg^(1-1/EAC_mumcg)
+(1
-EACEAB_numcg
-EACEAD_numcg
-EACRW_numcg
-EACUS_numcg
)^(1/EAC_mumcg)*EACEAA_imcg^(1-1/EAC_mumcg);
// Demand for bilateral consumption import goods
EACEAB_imcg = EACEAB_numcg*((EAB_pex*EACEAB_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACRW_imcg = EACRW_numcg*((RW_pex*EACRW_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACUS_imcg = EACUS_numcg*((US_pex*EACUS_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
EACEAA_imcg = (1
-EACEAB_numcg
-EACEAD_numcg
-EACRW_numcg
-EACUS_numcg
)*((EAA_pex*EACEAA_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Price of the consumption good (import)
EAC_pimcg^(1-EAC_mumcg) =
+EACEAB_numcg * (EAB_pex*EACEAB_rer)^(1-EAC_mumcg)
+EACEAD_numcg * (EAD_pex*EACEAD_rer)^(1-EAC_mumcg)
+EACRW_numcg * (RW_pex*EACRW_rer)^(1-EAC_mumcg)
+EACUS_numcg * (US_pex*EACUS_rer)^(1-EAC_mumcg)
+(1
-EACEAB_numcg
-EACEAD_numcg
-EACRW_numcg
-EACUS_numcg
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumcg);
// Private consumption good (import) inflation
EAC_piimcg = EAC_pimcg/EAC_pimcg(-1)*EAC_pic;
// Private consumption good (import)
EAC_imig^((EAC_mumig-1)/EAC_mumig) =
+EACEAB_numig ^(1/EAC_mumig)*EACEAB_imig^(1-1/EAC_mumig)
+EACEAD_numig ^(1/EAC_mumig)*EACEAD_imig^(1-1/EAC_mumig)
+EACRW_numig ^(1/EAC_mumig)*EACRW_imig^(1-1/EAC_mumig)
+EACUS_numig ^(1/EAC_mumig)*EACUS_imig^(1-1/EAC_mumig)
+(1
-EACEAB_numig
-EACEAD_numig
-EACRW_numig
-EACUS_numig
)^(1/EAC_mumig)*EACEAA_imig^(1-1/EAC_mumig);
// Demand for bilateral consumption import goods
EACEAB_imig = EACEAB_numig*((EAB_pex*EACEAB_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACRW_imig = EACRW_numig*((RW_pex*EACRW_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACUS_imig = EACUS_numig*((US_pex*EACUS_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
EACEAA_imig = (1
-EACEAB_numig
-EACEAD_numig
-EACRW_numig
-EACUS_numig
)*((EAA_pex*EACEAA_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Price of the consumption good (import)
EAC_pimig^(1-EAC_mumig) =
+EACEAB_numig * (EAB_pex*EACEAB_rer)^(1-EAC_mumig)
+EACEAD_numig * (EAD_pex*EACEAD_rer)^(1-EAC_mumig)
+EACRW_numig * (RW_pex*EACRW_rer)^(1-EAC_mumig)
+EACUS_numig * (US_pex*EACUS_rer)^(1-EAC_mumig)
+(1
-EACEAB_numig
-EACEAD_numig
-EACRW_numig
-EACUS_numig
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumig);
// Private consumption good (import) inflation
EAC_piimig = EAC_pimig/EAC_pimig(-1)*EAC_pic;
// Private consumption good (import) inflation
EAC_piimc4 = EAC_pimc/EAC_pimc(-4)*EAC_pic4;
// Private consumption good (import) inflation
EAC_piex4 = EAC_pex/EAC_pex(-4)*EAC_pic4;
// Wedge between aggregate demand and production, using EAC_x = EAD_size/EAC_size*EAD_im
EAC_yst = EAC_sh*EAC_ht+EAC_sx*EAC_ex;
// Aggregate demand for bilateral imported intermediate goods
EACEAA_im = 
+EACEAA_imc
+EACEAA_imi
+EACEAA_imcg
+EACEAA_imig
;
EACEAB_im = 
+EACEAB_imc
+EACEAB_imi
+EACEAB_imcg
+EACEAB_imig
;
EACEAD_im = 
+EACEAD_imc
+EACEAD_imi
+EACEAD_imcg
+EACEAD_imig
;
EACRW_im = 
+EACRW_imc
+EACRW_imi
+EACRW_imcg
+EACRW_imig
;
EACUS_im = 
+EACUS_imc
+EACUS_imi
+EACUS_imcg
+EACUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
EAC_ttc^((EAC_mutc-1)/EAC_mutc) = (EAC_nutc)^(1/EAC_mutc)*EAC_htc^(1-1/EAC_mutc)+(1-EAC_nutc)^(1/EAC_mutc)*EAC_imc^(1-1/EAC_mutc);
// Private consumption good  (total)
EAC_qc^((EAC_muc-1)/EAC_muc) = (EAC_nuc)^(1/EAC_muc)*EAC_ttc^(1-1/EAC_muc)+(1-EAC_nuc)^(1/EAC_muc)*EAC_ntc^(1-1/EAC_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAC_ntc = (1-EAC_nuc)*(EAC_pnt)^(-EAC_muc)*EAC_qc;
// Price of the consumption good (tradable)  
EAC_pttc^(1-EAC_mutc) = (EAC_nutc)*EAC_pht^(1-EAC_mutc)+(1-EAC_nutc)*EAC_pimc^(1-EAC_mutc);
// Price of the consumption good 
1^(1-EAC_muc) = (EAC_nuc)*EAC_pttc^(1-EAC_muc)+(1-EAC_nuc)*EAC_pnt^(1-EAC_muc);
// Demand for domestic intermediate goods
EAC_htc = EAC_nutc*(EAC_pht/EAC_pttc)^(-EAC_mutc)*EAC_ttc;
EACEAA_gammaimc = 0;
EACEAA_gammaimcdag = 1;
EACEAB_gammaimc = 0;
EACEAB_gammaimcdag = 1;
EACEAD_gammaimc = 0;
EACEAD_gammaimcdag = 1;
EACRW_gammaimc = 0;
EACRW_gammaimcdag = 1;
EACUS_gammaimc = 0;
EACUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAC_tti^((EAC_muti-1)/EAC_muti) = (EAC_nuti)^(1/EAC_muti)*EAC_hti^(1-1/EAC_muti)+(1-EAC_nuti)^(1/EAC_muti)*EAC_imi^(1-1/EAC_muti);
// Private consumption good  (total)
EAC_qi^((EAC_mui-1)/EAC_mui) = (EAC_nui)^(1/EAC_mui)*EAC_tti^(1-1/EAC_mui)+(1-EAC_nui)^(1/EAC_mui)*EAC_nti^(1-1/EAC_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAC_nti = (1-EAC_nui)*(EAC_pnt/EAC_pi)^(-EAC_mui)*EAC_qi;
// Price of the consumption good (tradable)  
EAC_ptti^(1-EAC_muti) = (EAC_nuti)*EAC_pht^(1-EAC_muti)+(1-EAC_nuti)*EAC_pimi^(1-EAC_muti);
// Price of the consumption good 
EAC_pi^(1-EAC_mui) = (EAC_nui)*EAC_ptti^(1-EAC_mui)+(1-EAC_nui)*EAC_pnt^(1-EAC_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
EAC_pibar = EAC_pi;
// Demand for domestic intermediate goods
EAC_hti = EAC_nuti*(EAC_pht/EAC_ptti)^(-EAC_muti)*EAC_tti;
EACEAA_gammaimi = 0;
EACEAA_gammaimidag = 1;
EACEAB_gammaimi = 0;
EACEAB_gammaimidag = 1;
EACEAD_gammaimi = 0;
EACEAD_gammaimidag = 1;
EACRW_gammaimi = 0;
EACRW_gammaimidag = 1;
EACUS_gammaimi = 0;
EACUS_gammaimidag = 1;
// Private consumption good (tradable)
EAC_ttcg^((EAC_mutcg-1)/EAC_mutcg) = (EAC_nutcg)^(1/EAC_mutcg)*EAC_htcg^(1-1/EAC_mutcg)+(1-EAC_nutcg)^(1/EAC_mutcg)*EAC_imcg^(1-1/EAC_mutcg);
// Private consumption good  (total)
EAC_qcg^((EAC_mucg-1)/EAC_mucg) = (EAC_nucg)^(1/EAC_mucg)*EAC_ttcg^(1-1/EAC_mucg)+(1-EAC_nucg)^(1/EAC_mucg)*EAC_ntcg^(1-1/EAC_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAC_ntcg = (1-EAC_nucg)*(EAC_pnt/EAC_pcg)^(-EAC_mucg)*EAC_qcg;
// Price of the consumption good (tradable)  
EAC_pttcg^(1-EAC_mutcg) = (EAC_nutcg)*EAC_pht^(1-EAC_mutcg)+(1-EAC_nutcg)*EAC_pimcg^(1-EAC_mutcg);
// Price of the consumption good 
EAC_pcg^(1-EAC_mucg) = (EAC_nucg)*EAC_pttcg^(1-EAC_mucg)+(1-EAC_nucg)*EAC_pnt^(1-EAC_mucg);
// Demand for domestic intermediate goods
EAC_htcg = EAC_nutcg*(EAC_pht/EAC_pttcg)^(-EAC_mutcg)*EAC_ttcg;
EACEAA_gammaimcg = 0;
EACEAA_gammaimcgdag = 1;
EACEAB_gammaimcg = 0;
EACEAB_gammaimcgdag = 1;
EACEAD_gammaimcg = 0;
EACEAD_gammaimcgdag = 1;
EACRW_gammaimcg = 0;
EACRW_gammaimcgdag = 1;
EACUS_gammaimcg = 0;
EACUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAC_ttig^((EAC_mutig-1)/EAC_mutig) = (EAC_nutig)^(1/EAC_mutig)*EAC_htig^(1-1/EAC_mutig)+(1-EAC_nutig)^(1/EAC_mutig)*EAC_imig^(1-1/EAC_mutig);
// Private consumption good  (total)
EAC_qig^((EAC_muig-1)/EAC_muig) = (EAC_nuig)^(1/EAC_muig)*EAC_ttig^(1-1/EAC_muig)+(1-EAC_nuig)^(1/EAC_muig)*EAC_ntig^(1-1/EAC_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAC_ntig = (1-EAC_nuig)*(EAC_pnt/EAC_pig)^(-EAC_muig)*EAC_qig;
// Price of the consumption good (tradable)  
EAC_pttig^(1-EAC_mutig) = (EAC_nutig)*EAC_pht^(1-EAC_mutig)+(1-EAC_nutig)*EAC_pimig^(1-EAC_mutig);
// Price of the consumption good 
EAC_pig^(1-EAC_muig) = (EAC_nuig)*EAC_pttig^(1-EAC_muig)+(1-EAC_nuig)*EAC_pnt^(1-EAC_muig);
// Demand for domestic intermediate goods
EAC_htig = EAC_nutig*(EAC_pht/EAC_pttig)^(-EAC_mutig)*EAC_ttig;
EACEAA_gammaimig = 0;
EACEAA_gammaimigdag = 1;
EACEAB_gammaimig = 0;
EACEAB_gammaimigdag = 1;
EACEAD_gammaimig = 0;
EACEAD_gammaimigdag = 1;
EACRW_gammaimig = 0;
EACRW_gammaimigdag = 1;
EACUS_gammaimig = 0;
EACUS_gammaimigdag = 1;
// Trade balance
EAC_tb =
+EAC_pex*EAA_size/EAC_size*EAAEAC_im
-EAA_pex*EACEAA_rer*EACEAA_im
+EAC_pex*EAB_size/EAC_size*EABEAC_im
-EAB_pex*EACEAB_rer*EACEAB_im
+EAC_pex*EAD_size/EAC_size*EADEAC_im
-EAD_pex*EACEAD_rer*EACEAD_im
+EAC_pex*RW_size/EAC_size*RWEAC_im
-RW_pex*EACRW_rer*EACRW_im
+EAC_pex*US_size/EAC_size*USEAC_im
-US_pex*EACUS_rer*EACUS_im
;
// Aggregate exports (volume)
EAC_ex =
+EAA_size/EAC_size*EAAEAC_im
+EAB_size/EAC_size*EABEAC_im
+EAD_size/EAC_size*EADEAC_im
+RW_size/EAC_size*RWEAC_im
+US_size/EAC_size*USEAC_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAC_pg = EAC_pht
// TODO: check the (1-EAC_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAC_pcg(-1)*EAC_cg(-1)+EAC_pig(-1)*EAC_ig(-1)+EAC_tr(-1)
	+EAC_b(-1)*EAC_pic(-1)^(-1)+EAC_m(-2)*EAC_pic(-1)^(-1) = EAC_tauc(-1)*EAC_c(-1)+(EAC_taun(-1)+EAC_tauwh(-1))*(EAC_wi(-1)*EAC_ndi(-1)+EAC_wj(-1)*EAC_ndj(-1))+EAC_tauwf(-1)*EAC_w(-1)*EAC_nd(-1)+EAC_tauk(-1)*(EAC_rk(-1)*EAC_u(-1)-(EAC_gammau(-1)+EAC_delta)*EAC_pi(-1))*EAC_k(-1)+EAC_taud(-1)*EAC_d(-1)+EAC_t(-1)+(EAC_r(-1)*(1-EAC_gammab(-1)))^(-1)*EAC_b+EAC_m(-1);
// Government spending, using EAC_pg = EAC_pht
EAC_pcg*EAC_cg = EAC_cgy*EAC_pybar*EAC_ybar;
EAC_pig*EAC_ig = EAC_igy*EAC_pybar*EAC_ybar;
EAC_t = 0;
EAC_b = EAC_bytarget*EAC_pybar*EAC_ybar;
// Auxiliary equation for steady-state output
EAC_ybar = EAC_y;
// Auxiliary equation for steady-state output
EAC_ytbar = EAC_yst;
// Auxiliary equation for steady-state output
EAC_ynbar = EAC_ysn;
// Auxiliary equation for steady-state output deflator
EAC_pybar = EAC_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAC_trybar = EAC_tr/(EAC_pybar*EAC_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAC_ti = EAC_upsilont*EAC_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAC_tri = EAC_upsilontr*EAC_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	EAC_r = EAD_r;
EAC_pic4 = EAC_pi4target;
EAC_rr-1 = EAC_r/EAC_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAC_rrstar-1 = 1/EAC_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAC_c = (1-EAC_omega)*EAC_ci+EAC_omega*EAC_cj;
// Aggregate money holdings
EAC_m = (1-EAC_omega)*EAC_mi+EAC_omega*EAC_mj;
// Aggregate capital stock
EAC_k = (1-EAC_omega)*EAC_ki;
// Aggregate investment
EAC_i = (1-EAC_omega)*EAC_ii;
// Aggregate lump-sum transfers
EAC_trj = 
1/EAC_omega*EAC_tr-(1-EAC_omega)/EAC_omega*EAC_tri
;
// Aggregate lump-sum taxes
EAC_tj = 
1/EAC_omega*EAC_t-(1-EAC_omega)/EAC_omega*EAC_ti
;
// Aggregate transaction costs
EAC_gammav = (1-EAC_omega)*EAC_ci*EAC_gammavi+EAC_omega*EAC_cj*EAC_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAC_ni = EAC_si*EAC_ndi;
// Wage dispersion
EAC_si = (1-EAC_xii)*(EAC_witilde/EAC_wi)^(-EAC_etai)+EAC_xii*(EAC_wi(-1)/EAC_wi)^(-EAC_etai)*(EAC_pic/(EAC_pic(-1)^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai)*EAC_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAC_nj = EAC_sj*EAC_ndj;
// Wage dispersion
EAC_sj = (1-EAC_xij)*(EAC_wjtilde/EAC_wj)^(-EAC_etaj)+EAC_xij*(EAC_wj(-1)/EAC_wj)^(-EAC_etaj)*(EAC_pic/(EAC_pic(-1)^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj)*EAC_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAC_u*EAC_k = EAC_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAC_x = EAD_size/EAC_size*EAD_im
EAC_ysn = EAC_snt*EAC_nt;
//  nontradables aggregate demand
EAC_nt = 
+EAC_ntc
+EAC_nti
+EAC_ntcg
+EAC_ntig
;
// Aggregate demand for domestic intermediate goods, using EAC_hg = EAC_cg
EAC_ht =
+EAC_htc
+EAC_hti
+EAC_htcg
+EAC_htig
;
// Price dispersion in the domestic markets
EAC_sh = (1-EAC_xih)*(EAC_phttilde/EAC_pht)^(-EAC_thetat)+EAC_xih*(EAC_piht/(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_sh(-1);
// Price dispersion in the foreign markets
EAC_sx = (1-EAC_xix)*(EAC_pextilde/EAC_pex)^(-EAC_thetat)+EAC_xix*(EAC_piex/(EAC_piex(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EAC_sx(-1);
// Price dispersion in the domestic markets
EAC_snt = (1-EAC_xin)*(EAC_pnttilde/EAC_pnt)^(-EAC_thetan)+EAC_xin*(EAC_pint/(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAC_qc = EAC_c+EAC_gammav;
// Aggregate investment and capital utilisation cost
EAC_qi = EAC_i+EAC_k*EAC_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAC_qcg = EAC_cg;
EAC_qig = EAC_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAC_py*EAC_y = 
+EAC_qc
+EAC_pi*EAC_qi
+EAC_pcg*EAC_qcg
+EAC_pig*EAC_qig
+EAC_pex*EAA_size/EAC_size*EAAEAC_im
-(EAA_pex*EACEAA_rer)*EACEAA_imc
-(EAA_pex*EACEAA_rer)*EACEAA_imi
-(EAA_pex*EACEAA_rer)*EACEAA_imcg
-(EAA_pex*EACEAA_rer)*EACEAA_imig
+EAC_pex*EAB_size/EAC_size*EABEAC_im
-(EAB_pex*EACEAB_rer)*EACEAB_imc
-(EAB_pex*EACEAB_rer)*EACEAB_imi
-(EAB_pex*EACEAB_rer)*EACEAB_imcg
-(EAB_pex*EACEAB_rer)*EACEAB_imig
+EAC_pex*EAD_size/EAC_size*EADEAC_im
-(EAD_pex*EACEAD_rer)*EACEAD_imc
-(EAD_pex*EACEAD_rer)*EACEAD_imi
-(EAD_pex*EACEAD_rer)*EACEAD_imcg
-(EAD_pex*EACEAD_rer)*EACEAD_imig
+EAC_pex*RW_size/EAC_size*RWEAC_im
-(RW_pex*EACRW_rer)*EACRW_imc
-(RW_pex*EACRW_rer)*EACRW_imi
-(RW_pex*EACRW_rer)*EACRW_imcg
-(RW_pex*EACRW_rer)*EACRW_imig
+EAC_pex*US_size/EAC_size*USEAC_im
-(US_pex*EACUS_rer)*EACUS_imc
-(US_pex*EACUS_rer)*EACUS_imi
-(US_pex*EACUS_rer)*EACUS_imcg
-(US_pex*EACUS_rer)*EACUS_imig
;
// Aggregate real demand
EAC_y = EAC_yst+EAC_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAC_zt) = (1-EAC_rhozt)*log(EAC_ztbar)+EAC_rhozt*log(EAC_zt(-1))+EAC_epszt;
log(EAC_zn) = (1-EAC_rhozn)*log(EAC_znbar)+EAC_rhozn*log(EAC_zn(-1))+EAC_epszn;
// Government spending shock
EAC_cgy = (1-EAC_rhocg)*EAC_cgybar+EAC_rhocg*EAC_cgy(-1)+EAC_epsgc;
EAC_igy = (1-EAC_rhoig)*EAC_igybar+EAC_rhoig*EAC_igy(-1)+EAC_epsgi;
// Transfer shock
EAC_try = (1-EAC_rhotr)*EAC_trybar+EAC_rhotr*EAC_try(-1)+EAC_epstr;
// Consumption tax shock
EAC_tauc = (1-EAC_rhotauc)*EAC_taucbar+EAC_rhotauc*EAC_tauc(-1)+EAC_epstauc;
// Dividend income tax shock
EAC_taud = (1-EAC_rhotaud)*EAC_taudbar+EAC_rhotaud*EAC_taud(-1)+EAC_epstaud;
// Capital income tax shock
EAC_tauk = (1-EAC_rhotauk)*EAC_taukbar+EAC_rhotauk*EAC_tauk(-1)+EAC_epstauk;
// Labour income tax shock
EAC_taun = (1-EAC_rhotaun)*EAC_taunbar+EAC_rhotaun*EAC_taun(-1)+EAC_epstaun;
// Payroll tax shock: households
EAC_tauwh = (1-EAC_rhotauwh)*EAC_tauwhbar+EAC_rhotauwh*EAC_tauwh(-1)+EAC_epstauwh;
// Payroll tax shock: firms
EAC_tauwf = (1-EAC_rhotauwf)*EAC_tauwfbar+EAC_rhotauwf*EAC_tauwf(-1)+EAC_epstauwf;
// Wage cost push shock
EAC_wcst = (1-EAC_rhowcst)*EAC_wcstbar+EAC_rhowcst*EAC_wcst(-1)+EAC_epswcst;
// Preference shock
log(EAC_zcon) = (1-EAC_rhozcon)*log(EAC_zconbar)+EAC_rhozcon*log(EAC_zcon(-1))+EAC_epszcon;
// Investment specific shock
log(EAC_zinv) = (1-EAC_rhozinv)*log(EAC_zinvbar)+EAC_rhozinv*log(EAC_zinv(-1))+EAC_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAC_cy = EAC_c/(EAC_py*EAC_y);
// Aggregate nominal investment share
EAC_iy = EAC_pi*EAC_i/(EAC_py*EAC_y);
// Aggregate nominal import share  
EAC_imy = (
+EAC_pimc*EAC_imc
+EAC_pimi*EAC_imi
+EAC_pimcg*EAC_imcg
+EAC_pimig*EAC_imig
)/(EAC_py*EAC_y);
// Aggregate nominal import share
EAC_imcy = EAC_pimc*EAC_imc/(EAC_py*EAC_y);
EAC_imiy = EAC_pimi*EAC_imi/(EAC_py*EAC_y);
EAC_imcgy = EAC_pimcg*EAC_imcg/(EAC_py*EAC_y);
EAC_imigy = EAC_pimig*EAC_imig/(EAC_py*EAC_y);
// Aggregate debt-to-output ratio
EAC_by = EAC_b/(EAC_pybar*EAC_ybar);
// Aggregate lump-sum tax-to-output ratio
EAC_ty = EAC_t/(EAC_pybar*EAC_ybar);
// Aggregate labour cost share
EAC_lcy = ((1+EAC_tauwf)*EAC_w*EAC_nd)/(EAC_py*EAC_y);
// Aggregate nominal Wage share
EAC_wy = (EAC_w*EAC_nd)/(EAC_py*EAC_y);
// NT sector nominal Wage share
EAC_wnty = (EAC_w*EAC_ndn)/(EAC_pnt*EAC_ysn);
// T sector nominal Wage share
EAC_whty = (EAC_w*EAC_ndt)/(EAC_pht*EAC_yst);
// T sector share
EAC_yhty = EAC_pht*EAC_yst/(EAC_py*EAC_y);
// NT sector share
EAC_ynty = EAC_pnt*EAC_ysn/(EAC_py*EAC_y);
// Output gap
EAC_ygap = 0;
// Output growth (gross rate)
EAC_ygrowth = EAC_y/EAC_y(-1);
// Output growth (gross rate yoy)
EAC_ygrowth4 = EAC_y/EAC_y(-4);
// Domestic nominal output as a share of world nominal output
EAC_yshare  = EAC_size*EAC_py*EAC_y/EAC_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAC_epsilonm = -1/8*1/(EAC_r*(EAC_gammav2*EAC_r+EAC_r-1));
// Trade balance-to-GDP ratio
EAC_tby = EAC_tb/(EAC_py*EAC_y);
// Bilateral shares
EACEAA_imcy = (EAA_pex*EACEAA_rer)*EACEAA_imc/(EAC_py*EAC_y);
EACEAA_imiy = (EAA_pex*EACEAA_rer)*EACEAA_imi/(EAC_py*EAC_y);
EACEAA_imcgy = (EAA_pex*EACEAA_rer)*EACEAA_imcg/(EAC_py*EAC_y);
EACEAA_imigy = (EAA_pex*EACEAA_rer)*EACEAA_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAA_excy  = EAA_size/EAC_size*EAC_pex*EAAEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAA_exiy  = EAA_size/EAC_size*EAC_pex*EAAEAC_imi/(EAC_py*EAC_y);
// Bilateral shares
EACEAB_imcy = (EAB_pex*EACEAB_rer)*EACEAB_imc/(EAC_py*EAC_y);
EACEAB_imiy = (EAB_pex*EACEAB_rer)*EACEAB_imi/(EAC_py*EAC_y);
EACEAB_imcgy = (EAB_pex*EACEAB_rer)*EACEAB_imcg/(EAC_py*EAC_y);
EACEAB_imigy = (EAB_pex*EACEAB_rer)*EACEAB_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAB_excy  = EAB_size/EAC_size*EAC_pex*EABEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAB_exiy  = EAB_size/EAC_size*EAC_pex*EABEAC_imi/(EAC_py*EAC_y);
// Bilateral shares
EACEAD_imcy = (EAD_pex*EACEAD_rer)*EACEAD_imc/(EAC_py*EAC_y);
EACEAD_imiy = (EAD_pex*EACEAD_rer)*EACEAD_imi/(EAC_py*EAC_y);
EACEAD_imcgy = (EAD_pex*EACEAD_rer)*EACEAD_imcg/(EAC_py*EAC_y);
EACEAD_imigy = (EAD_pex*EACEAD_rer)*EACEAD_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAD_excy  = EAD_size/EAC_size*EAC_pex*EADEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAD_exiy  = EAD_size/EAC_size*EAC_pex*EADEAC_imi/(EAC_py*EAC_y);
// Bilateral shares
EACRW_imcy = (RW_pex*EACRW_rer)*EACRW_imc/(EAC_py*EAC_y);
EACRW_imiy = (RW_pex*EACRW_rer)*EACRW_imi/(EAC_py*EAC_y);
EACRW_imcgy = (RW_pex*EACRW_rer)*EACRW_imcg/(EAC_py*EAC_y);
EACRW_imigy = (RW_pex*EACRW_rer)*EACRW_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACRW_excy  = RW_size/EAC_size*EAC_pex*RWEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACRW_exiy  = RW_size/EAC_size*EAC_pex*RWEAC_imi/(EAC_py*EAC_y);
// Bilateral shares
EACUS_imcy = (US_pex*EACUS_rer)*EACUS_imc/(EAC_py*EAC_y);
EACUS_imiy = (US_pex*EACUS_rer)*EACUS_imi/(EAC_py*EAC_y);
EACUS_imcgy = (US_pex*EACUS_rer)*EACUS_imcg/(EAC_py*EAC_y);
EACUS_imigy = (US_pex*EACUS_rer)*EACUS_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACUS_excy  = US_size/EAC_size*EAC_pex*USEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACUS_exiy  = US_size/EAC_size*EAC_pex*USEAC_imi/(EAC_py*EAC_y);
// Internal real exchange rate
EAC_internalrer = EAC_pnt/EAC_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
//-------------
// Household I
//-------------
EAD_ccesi^(1-1/EAD_mucces) = (EAD_nucces)^(1/EAD_mucces)*EAD_ci^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces);
// Utility
EAD_utili = 
EAD_zcon*log(EAD_ccesi-EAD_kappa*EAD_ccesi(-1))-1/(1+EAD_zeta)*(EAD_ni)^(1+EAD_zeta)+EAD_beta*EAD_utili(+1)
;
// Marginal utility of consumption
EAD_dcci = ((EAD_nucces)^(1/EAD_mucces)*EAD_ci^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces))^(1/(EAD_mucces-1))*(EAD_nucces^(1/EAD_mucces))*(EAD_ci^(-1/EAD_mucces));
EAD_lambdai*(1+EAD_tauc+EAD_gammavi+EAD_vi*EAD_gammavider) = EAD_zcon*(EAD_ccesi-EAD_kappa*EAD_ccesi(-1))^(-EAD_sigma)*EAD_dcci;
// Euler equation for government bonds
EAD_r = EAD_beta^(-1)*EAD_lambdai/EAD_lambdai(+1)*EAD_pic(+1);
// Euler equation for money
EAD_vi^(2)*EAD_gammavider = 1-EAD_beta*EAD_lambdai(+1)/(EAD_lambdai*EAD_pic(+1));
// Consumption-based velocity
EAD_vi = EAD_ci/EAD_mi;
// Transaction cost
EAD_gammavi = EAD_gammav1*EAD_vi+EAD_gammav2/EAD_vi-2*(EAD_gammav1*EAD_gammav2)^(1/2);
// Derivative of transaction cost
EAD_gammavider = EAD_gammav1-EAD_gammav2*EAD_vi^(-2);
EAD_delta = EAD_ii/EAD_ki;
EAD_gammai = 0;
EAD_gammaider = 0;
EAD_gammau = 0;
EAD_gammauder = ((EAD_beta^(-1)-1+EAD_delta)*EAD_qbar-EAD_delta*EAD_taukbar*EAD_pibar)/((1-EAD_taukbar)*EAD_pibar);
EAD_u = 1;
EAD_pi = EAD_q;
// Auxiliary equation for Tobin's Q in steady state
EAD_qbar = EAD_q;
// Rate of return on capital
EAD_q = EAD_beta*((1-EAD_tauk)*EAD_rk+(EAD_tauk*EAD_delta)*EAD_pi+(1-EAD_delta)*EAD_q);
// Optimal wage contract (FOC)
EAD_witilde^(1+EAD_etai*EAD_zeta) = EAD_etai/(EAD_etai-1)*EAD_fi/EAD_gi+EAD_wcst;
// Definition of fi
EAD_fi = EAD_wi^(EAD_etai*(1+EAD_zeta))*EAD_ndi^(1+EAD_zeta)+EAD_xii*EAD_beta*(EAD_pic(+1)/(EAD_pic^EAD_chii*EAD_pi4target^(1/4*(1-EAD_chii))))^(EAD_etai*(1+EAD_zeta))*EAD_fi(+1);
// Definition of gi
EAD_gi = EAD_lambdai*(1-EAD_taun-EAD_tauwh)*EAD_wi^EAD_etai*EAD_ndi+EAD_xii*EAD_beta*(EAD_pic(+1)/(EAD_pic^EAD_chii*EAD_pi4target^(1/4*(1-EAD_chii))))^(EAD_etai-1)*EAD_gi(+1);
// Aggregate wage rate
EAD_wi^(1-EAD_etai) = (1-EAD_xii)*EAD_witilde^(1-EAD_etai)+EAD_xii*EAD_wi(-1)^(1-EAD_etai)*(EAD_pic(-1)^EAD_chii*EAD_pi4target^(1/4*(1-EAD_chii))/EAD_pic)^(1-EAD_etai);
//-------------
// Household J
//-------------
EAD_ccesj^(1-1/EAD_mucces) = (EAD_nucces)^(1/EAD_mucces)*EAD_cj^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces);
// Utility
EAD_utilj = 
EAD_zcon*log(EAD_ccesj-EAD_kappa*EAD_ccesj(-1))-1/(1+EAD_zeta)*(EAD_nj)^(1+EAD_zeta)+EAD_beta*EAD_utilj(+1)
;
// Marginal utility of consumption
EAD_dccj = ((EAD_nucces)^(1/EAD_mucces)*EAD_cj^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces))^(1/(EAD_mucces-1))*(EAD_nucces^(1/EAD_mucces))*(EAD_cj^(-1/EAD_mucces));
EAD_lambdaj*(1+EAD_tauc+EAD_gammavj+EAD_vj*EAD_gammavjder) = EAD_zcon*(EAD_ccesj-EAD_kappa*EAD_ccesj(-1))^(-EAD_sigma)*EAD_dccj;
// Budget constraint
(1+EAD_tauc+EAD_gammavj)*EAD_cj+EAD_mj = (1-EAD_taun-EAD_tauwh)*EAD_wj*EAD_nj+EAD_trj-EAD_tj+EAD_mj(-1)*EAD_pic^(-1);
// Euler equation for money
EAD_vj^(2)*EAD_gammavjder = 1-EAD_beta*EAD_lambdaj(+1)/(EAD_lambdaj*EAD_pic(+1));
// Consumption-based velocity
EAD_vj = EAD_cj/EAD_mj;
// Transaction technology
EAD_gammavj = EAD_gammav1*EAD_vj+EAD_gammav2/EAD_vj-2*(EAD_gammav1*EAD_gammav2)^(1/2);
// Derivative of transaction technology
EAD_gammavjder = EAD_gammav1-EAD_gammav2*EAD_vj^(-2);
// Optimal wage contract (FOC)
EAD_wjtilde^(1+EAD_etaj*EAD_zeta) = EAD_etaj/(EAD_etaj-1)*EAD_fj/EAD_gj+EAD_wcst;
// Definition of fj
EAD_fj = EAD_wj^(EAD_etaj*(1+EAD_zeta))*EAD_ndj^(1+EAD_zeta)+EAD_xij*EAD_beta*(EAD_pic(+1)/(EAD_pic^EAD_chij*EAD_pi4target^(1/4*(1-EAD_chij))))^(EAD_etaj*(1+EAD_zeta))*EAD_fj(+1);
// Definition of gj
EAD_gj = EAD_lambdaj*(1-EAD_taun-EAD_tauwh)*EAD_wj^EAD_etaj*EAD_ndj+EAD_xij*EAD_beta*(EAD_pic(+1)/(EAD_pic^EAD_chij*EAD_pi4target^(1/4*(1-EAD_chij))))^(EAD_etaj-1)*EAD_gj(+1);
// Aggregate wage rate
EAD_wj^(1-EAD_etaj) = (1-EAD_xij)*EAD_wjtilde^(1-EAD_etaj)+EAD_xij*EAD_wj(-1)^(1-EAD_etaj)*(EAD_pic(-1)^EAD_chij*EAD_pi4target^(1/4*(1-EAD_chij))/EAD_pic)^(1-EAD_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Government capital accumulation:
EAD_kg = (1-EAD_deltag)*EAD_kg(-1)+EAD_ig(-1);
// Production function tradable
EAD_yst = EA_z*EAD_zt*EAD_kg^EAD_alphag*EAD_kdt^EAD_alphat*EAD_ndt^(1-EAD_alphat)-EAD_psitbar;
// Production function nontradable
EAD_ysn = EA_z*EAD_zn*EAD_kg^EAD_alphag*EAD_kdn^EAD_alphan*EAD_ndn^(1-EAD_alphan)-EAD_psinbar;
// Real marginal cost tradable
EAD_mct = 1/(EA_z*EAD_zt*EAD_kg^EAD_alphag*(EAD_alphat)^(EAD_alphat)*(1-EAD_alphat)^(1-EAD_alphat))*EAD_rk^(EAD_alphat)*((1+EAD_tauwf)*EAD_w)^(1-EAD_alphat);
// Real marginal cost nontradable
EAD_mcn = 1/(EA_z*EAD_zn*EAD_kg^EAD_alphag*(EAD_alphan)^(EAD_alphan)*(1-EAD_alphan)^(1-EAD_alphan))*EAD_rk^(EAD_alphan)*((1+EAD_tauwf)*EAD_w)^(1-EAD_alphan);
// Wage Inflation (qoq)
EAD_piw = EAD_w/EAD_w(-1)*EAD_pic;
// Wage Inflation (yoy)
EAD_piw4 = EAD_pic4;
// Auxiliary equation for steady-state fixed cost
EAD_psitbar = EAD_psit*EAD_ytbar;
// Auxiliary equation for steady-state fixed cost
EAD_psinbar = EAD_psin*EAD_ynbar;
// Capital input (FOC)
EAD_rk = EAD_alphat*(EAD_yst+EAD_psitbar)/EAD_kdt*EAD_mct;
// Capital input (FOC)
EAD_rk = EAD_alphan*(EAD_ysn+EAD_psinbar)/EAD_kdn*EAD_mcn;
// Total capital demand
EAD_kd = EAD_kdt+EAD_kdn;
// Demand for labour services by household I
EAD_ndi = 
(1-EAD_omega)*(EAD_wi/EAD_w)^(-EAD_eta)*EAD_nd
;
// Demand for labour services by household J
EAD_ndj = 
EAD_omega*(EAD_wj/EAD_w)^(-EAD_eta)*EAD_nd
;
// Aggregate labour demand
EAD_nd^(1-1/EAD_eta) = 
(1-EAD_omega)^(1/EAD_eta)*EAD_ndi^(1-1/EAD_eta)+EAD_omega^(1/EAD_eta)*EAD_ndj^(1-1/EAD_eta)
;
// Total demand 
EAD_nd = EAD_ndt+EAD_ndn;
// Aggregate dividends
EAD_d = EAD_py*EAD_y-EAD_rk*EAD_kd-(1+EAD_tauwf)*EAD_w*EAD_nd;
// Non-tradable sector dividends
EAD_dn = EAD_pnt*EAD_ysn-EAD_rk*EAD_kdn-(1+EAD_tauwf)*EAD_w*EAD_ndn;
// Tradable sector dividends
EAD_dt = EAD_pht*EAD_ht
+EAD_pex*EAD_ex
-EAD_rk*EAD_kdt-(1+EAD_tauwf)*EAD_w*EAD_ndt;
// Optimal price contract set in domestic markets (FOC)
EAD_phttilde/EAD_pht = EAD_thetat/(EAD_thetat-1)*EAD_fh/EAD_gh;
// Definition of fh
EAD_fh = EAD_mct*EAD_ht+EAD_xih*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_piht(+1)/(EAD_piht^EAD_chih*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EAD_fh(+1);
// Definition of gh
EAD_gh = EAD_pht*EAD_ht+EAD_xih*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_piht(+1)/(EAD_piht^EAD_chih*EAD_pi4target^(1/4*(1-EAD_chih))))^(EAD_thetat-1)*EAD_gh(+1);
// Aggregate intermediate-good price dynamics
EAD_pht^(1-EAD_thetat) = (1-EAD_xih)*EAD_phttilde^(1-EAD_thetat)+EAD_xih*(EAD_pht(-1)/EAD_pic)^(1-EAD_thetat)*(EAD_piht(-1)^EAD_chih*EAD_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation
EAD_piht = EAD_pht/EAD_pht(-1)*EAD_pic;
// Optimal price contract set in domestic markets (FOC)
EAD_pnttilde/EAD_pnt = EAD_thetan/(EAD_thetan-1)*EAD_fn/EAD_gn;
// Definition of fn
EAD_fn = EAD_mcn*EAD_nt+EAD_xin*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_pint(+1)/(EAD_pint^EAD_chin*EAD_pi4target^(1/4*(1-EAD_chin))))^EAD_thetan*EAD_fn(+1);
// Definition of gn
EAD_gn = EAD_pnt*EAD_nt+EAD_xin*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_pint(+1)/(EAD_pint^EAD_chin*EAD_pi4target^(1/4*(1-EAD_chin))))^(EAD_thetan-1)*EAD_gn(+1);
// Aggregate intermediate-good price dynamics
EAD_pnt^(1-EAD_thetan) = (1-EAD_xin)*EAD_pnttilde^(1-EAD_thetan)+EAD_xin*(EAD_pnt(-1)/EAD_pic)^(1-EAD_thetan)*(EAD_pint(-1)^EAD_chin*EAD_pi4target^(1/4*(1-EAD_chin)))^(1-EAD_thetan);
// Intermediate-good price inflation
EAD_pint = EAD_pnt/EAD_pnt(-1)*EAD_pic;
// Optimal price contract set in domestic markets (FOC)
EAD_pextilde/EAD_pex = EAD_thetat/(EAD_thetat-1)*EAD_fx/EAD_gx;
// Definition of fh
EAD_fx = EAD_mct*EAD_ex+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_piex(+1)/(EAD_piex^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EAD_fx(+1);
// Definition of gh
EAD_gx = EAD_pex*EAD_ex+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAD_piex(+1)/(EAD_piex^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EAD_gx(+1);
// Aggregate intermediate-good price dynamics
EAD_pex^(1-EAD_thetat) = (1-EAD_xix)*EAD_pextilde^(1-EAD_thetat)+EAD_xix*(EAD_pex(-1)/EAD_pic)^(1-EAD_thetat)*(EAD_piex(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix)))^(1-EAD_thetat);
// Intermediate-good price inflation
EAD_piex = EAD_pex/EAD_pex(-1)*EAD_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAA_pimtilde
// EAAEAD_pimtilde/EAAEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAA_fx/EADEAA_gx;
// Definition of fx
// EADEAA_fx = EAA_size/EAD_size*EAAEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAAEAD_piim(+1)/(EAAEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAA_fx(+1);
// Definition of gx   
// EADEAA_gx = EADEAA_rer*EAAEAD_pim*EAA_size/EAD_size*EAAEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAAEAD_piim(+1)/(EAAEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAA_pim
// EAAEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EAAEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EAAEAD_pim(-1)/EAA_pic)^(1-EAD_thetat)*(EAAEAD_piim(-1)^EAD_chix*EAA_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAA_piim
// EAAEAD_piim = EAAEAD_pim/EAAEAD_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EADEAA_rer = EAD_rer/EAA_rer;
// Auxiliary equation for steady-state output
EADEAA_rerbar = EADEAA_rer;
//Terms of Trade
EADEAA_tot = EAA_pex*EADEAA_rer/EAD_pex;
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAB_pimtilde
// EABEAD_pimtilde/EABEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAB_fx/EADEAB_gx;
// Definition of fx
// EADEAB_fx = EAB_size/EAD_size*EABEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EABEAD_piim(+1)/(EABEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAB_fx(+1);
// Definition of gx   
// EADEAB_gx = EADEAB_rer*EABEAD_pim*EAB_size/EAD_size*EABEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EABEAD_piim(+1)/(EABEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAB_pim
// EABEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EABEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EABEAD_pim(-1)/EAB_pic)^(1-EAD_thetat)*(EABEAD_piim(-1)^EAD_chix*EAB_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAB_piim
// EABEAD_piim = EABEAD_pim/EABEAD_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EADEAB_rer = EAD_rer/EAB_rer;
// Auxiliary equation for steady-state output
EADEAB_rerbar = EADEAB_rer;
//Terms of Trade
EADEAB_tot = EAB_pex*EADEAB_rer/EAD_pex;
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAC_pimtilde
// EACEAD_pimtilde/EACEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAC_fx/EADEAC_gx;
// Definition of fx
// EADEAC_fx = EAC_size/EAD_size*EACEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EACEAD_piim(+1)/(EACEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAC_fx(+1);
// Definition of gx   
// EADEAC_gx = EADEAC_rer*EACEAD_pim*EAC_size/EAD_size*EACEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EACEAD_piim(+1)/(EACEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAC_pim
// EACEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EACEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EACEAD_pim(-1)/EAC_pic)^(1-EAD_thetat)*(EACEAD_piim(-1)^EAD_chix*EAC_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAC_piim
// EACEAD_piim = EACEAD_pim/EACEAD_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EADEAC_rer = EAD_rer/EAC_rer;
// Auxiliary equation for steady-state output
EADEAC_rerbar = EADEAC_rer;
//Terms of Trade
EADEAC_tot = EAC_pex*EADEAC_rer/EAD_pex;
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = RW_pimtilde
// RWEAD_pimtilde/RWEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADRW_fx/EADRW_gx;
// Definition of fx
// EADRW_fx = RW_size/EAD_size*RWEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(RWEAD_piim(+1)/(RWEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADRW_fx(+1);
// Definition of gx   
// EADRW_gx = EADRW_rer*RWEAD_pim*RW_size/EAD_size*RWEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(RWEAD_piim(+1)/(RWEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = RW_pim
// RWEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*RWEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(RWEAD_pim(-1)/RW_pic)^(1-EAD_thetat)*(RWEAD_piim(-1)^EAD_chix*RW_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = RW_piim
// RWEAD_piim = RWEAD_pim/RWEAD_pim(-1)*RW_pic;
// Bilateral real exchange rate
EADRW_rer = EAD_rer/RW_rer;
// Auxiliary equation for steady-state output
EADRW_rerbar = EADRW_rer;
//Terms of Trade
EADRW_tot = RW_pex*EADRW_rer/EAD_pex;
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = US_pimtilde
// USEAD_pimtilde/USEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADUS_fx/EADUS_gx;
// Definition of fx
// EADUS_fx = US_size/EAD_size*USEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(USEAD_piim(+1)/(USEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADUS_fx(+1);
// Definition of gx   
// EADUS_gx = EADUS_rer*USEAD_pim*US_size/EAD_size*USEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(USEAD_piim(+1)/(USEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = US_pim
// USEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*USEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(USEAD_pim(-1)/US_pic)^(1-EAD_thetat)*(USEAD_piim(-1)^EAD_chix*US_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = US_piim
// USEAD_piim = USEAD_pim/USEAD_pim(-1)*US_pic;
// Bilateral real exchange rate
EADUS_rer = EAD_rer/US_rer;
// Auxiliary equation for steady-state output
EADUS_rerbar = EADUS_rer;
//Terms of Trade
EADUS_tot = US_pex*EADUS_rer/EAD_pex;
// Total imports 
EAD_im = 
+EAD_imc
+EAD_imi
+EAD_imcg
+EAD_imig
;
// Total import deflator
EAD_im*EAD_pim  = 
+EAD_pimc*EAD_imc
+EAD_pimi*EAD_imi
+EAD_pimcg*EAD_imcg
+EAD_pimig*EAD_imig
;
// Effective real exchange rate: double weighting (imports)
EADEAA_weightim = EADEAA_rer*EAA_pex*EADEAA_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAA_weightex = EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAA_rer*EAA_py*EAA_y/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EABEAA_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EACEAA_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAA_rer*EAA_pex*RWEAA_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAA_rer*EAA_pex*USEAA_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAA_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAA_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EADEAB_weightim = EADEAB_rer*EAB_pex*EADEAB_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAB_weightex = EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAB_rer*EAB_py*EAB_y/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAAEAB_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EACEAB_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAB_rer*EAB_pex*RWEAB_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAB_rer*EAB_pex*USEAB_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAB_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAB_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EADEAC_weightim = EADEAC_rer*EAC_pex*EADEAC_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAC_weightex = EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAC_rer*EAC_py*EAC_y/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAAEAC_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EABEAC_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAC_rer*EAC_pex*RWEAC_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAC_rer*EAC_pex*USEAC_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAC_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAC_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EADRW_weightim = EADRW_rer*RW_pex*EADRW_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADRW_weightex = RW_size/EAD_size*RWEAD_im/EAD_ex*EADRW_rer*RW_py*RW_y/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADRW_rer*RW_pex*EAARW_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADRW_rer*RW_pex*EABRW_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADRW_rer*RW_pex*EACRW_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADRW_rer*RW_pex*USRW_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADRW_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADRW_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADRW_weightex;
// Effective real exchange rate: double weighting (imports)
EADUS_weightim = EADUS_rer*US_pex*EADUS_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADUS_weightex = US_size/EAD_size*USEAD_im/EAD_ex*EADUS_rer*US_py*US_y/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADUS_rer*US_pex*EAAUS_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADUS_rer*US_pex*EABUS_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADUS_rer*US_pex*EACUS_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADUS_rer*US_pex*RWUS_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EADUS_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADUS_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADUS_weightex;
// Effective real exchange rate
EAD_reer = 1
*EADEAA_rer^EADEAA_weight
*EADEAB_rer^EADEAB_weight
*EADEAC_rer^EADEAC_weight
*EADRW_rer^EADRW_weight
*EADUS_rer^EADUS_weight
;
// Effective terms of trade
EAD_etot = 1
*EADEAA_tot^EADEAA_weight
*EADEAB_tot^EADEAB_weight
*EADEAC_tot^EADEAC_weight
*EADRW_tot^EADRW_weight
*EADUS_tot^EADUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAD_imc^((EAD_mumc-1)/EAD_mumc) =
+EADEAA_numc ^(1/EAD_mumc)*EADEAA_imc^(1-1/EAD_mumc)
+EADEAC_numc ^(1/EAD_mumc)*EADEAC_imc^(1-1/EAD_mumc)
+EADRW_numc ^(1/EAD_mumc)*EADRW_imc^(1-1/EAD_mumc)
+EADUS_numc ^(1/EAD_mumc)*EADUS_imc^(1-1/EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADRW_numc
-EADUS_numc
)^(1/EAD_mumc)*EADEAB_imc^(1-1/EAD_mumc);
// Demand for bilateral consumption import goods
EADEAA_imc = EADEAA_numc*((EAA_pex*EADEAA_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADEAC_imc = EADEAC_numc*((EAC_pex*EADEAC_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADUS_imc = EADUS_numc*((US_pex*EADUS_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADEAB_imc = (1
-EADEAA_numc
-EADEAC_numc
-EADRW_numc
-EADUS_numc
)*((EAB_pex*EADEAB_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Price of the consumption good (import)
EAD_pimc^(1-EAD_mumc) =
+EADEAA_numc * (EAA_pex*EADEAA_rer)^(1-EAD_mumc)
+EADEAC_numc * (EAC_pex*EADEAC_rer)^(1-EAD_mumc)
+EADRW_numc * (RW_pex*EADRW_rer)^(1-EAD_mumc)
+EADUS_numc * (US_pex*EADUS_rer)^(1-EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADRW_numc
-EADUS_numc
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumc);
// Private consumption good (import) inflation
EAD_piimc = EAD_pimc/EAD_pimc(-1)*EAD_pic;
// Private consumption good (import)
EAD_imi^((EAD_mumi-1)/EAD_mumi) =
+EADEAA_numi ^(1/EAD_mumi)*EADEAA_imi^(1-1/EAD_mumi)
+EADEAC_numi ^(1/EAD_mumi)*EADEAC_imi^(1-1/EAD_mumi)
+EADRW_numi ^(1/EAD_mumi)*EADRW_imi^(1-1/EAD_mumi)
+EADUS_numi ^(1/EAD_mumi)*EADUS_imi^(1-1/EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADRW_numi
-EADUS_numi
)^(1/EAD_mumi)*EADEAB_imi^(1-1/EAD_mumi);
// Demand for bilateral consumption import goods
EADEAA_imi = EADEAA_numi*((EAA_pex*EADEAA_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADEAC_imi = EADEAC_numi*((EAC_pex*EADEAC_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADUS_imi = EADUS_numi*((US_pex*EADUS_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
EADEAB_imi = (1
-EADEAA_numi
-EADEAC_numi
-EADRW_numi
-EADUS_numi
)*((EAB_pex*EADEAB_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Price of the consumption good (import)
EAD_pimi^(1-EAD_mumi) =
+EADEAA_numi * (EAA_pex*EADEAA_rer)^(1-EAD_mumi)
+EADEAC_numi * (EAC_pex*EADEAC_rer)^(1-EAD_mumi)
+EADRW_numi * (RW_pex*EADRW_rer)^(1-EAD_mumi)
+EADUS_numi * (US_pex*EADUS_rer)^(1-EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADRW_numi
-EADUS_numi
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumi);
// Private consumption good (import) inflation
EAD_piimi = EAD_pimi/EAD_pimi(-1)*EAD_pic;
// Private consumption good (import)
EAD_imcg^((EAD_mumcg-1)/EAD_mumcg) =
+EADEAA_numcg ^(1/EAD_mumcg)*EADEAA_imcg^(1-1/EAD_mumcg)
+EADEAC_numcg ^(1/EAD_mumcg)*EADEAC_imcg^(1-1/EAD_mumcg)
+EADRW_numcg ^(1/EAD_mumcg)*EADRW_imcg^(1-1/EAD_mumcg)
+EADUS_numcg ^(1/EAD_mumcg)*EADUS_imcg^(1-1/EAD_mumcg)
+(1
-EADEAA_numcg
-EADEAC_numcg
-EADRW_numcg
-EADUS_numcg
)^(1/EAD_mumcg)*EADEAB_imcg^(1-1/EAD_mumcg);
// Demand for bilateral consumption import goods
EADEAA_imcg = EADEAA_numcg*((EAA_pex*EADEAA_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADEAC_imcg = EADEAC_numcg*((EAC_pex*EADEAC_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADUS_imcg = EADUS_numcg*((US_pex*EADUS_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
EADEAB_imcg = (1
-EADEAA_numcg
-EADEAC_numcg
-EADRW_numcg
-EADUS_numcg
)*((EAB_pex*EADEAB_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Price of the consumption good (import)
EAD_pimcg^(1-EAD_mumcg) =
+EADEAA_numcg * (EAA_pex*EADEAA_rer)^(1-EAD_mumcg)
+EADEAC_numcg * (EAC_pex*EADEAC_rer)^(1-EAD_mumcg)
+EADRW_numcg * (RW_pex*EADRW_rer)^(1-EAD_mumcg)
+EADUS_numcg * (US_pex*EADUS_rer)^(1-EAD_mumcg)
+(1
-EADEAA_numcg
-EADEAC_numcg
-EADRW_numcg
-EADUS_numcg
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumcg);
// Private consumption good (import) inflation
EAD_piimcg = EAD_pimcg/EAD_pimcg(-1)*EAD_pic;
// Private consumption good (import)
EAD_imig^((EAD_mumig-1)/EAD_mumig) =
+EADEAA_numig ^(1/EAD_mumig)*EADEAA_imig^(1-1/EAD_mumig)
+EADEAC_numig ^(1/EAD_mumig)*EADEAC_imig^(1-1/EAD_mumig)
+EADRW_numig ^(1/EAD_mumig)*EADRW_imig^(1-1/EAD_mumig)
+EADUS_numig ^(1/EAD_mumig)*EADUS_imig^(1-1/EAD_mumig)
+(1
-EADEAA_numig
-EADEAC_numig
-EADRW_numig
-EADUS_numig
)^(1/EAD_mumig)*EADEAB_imig^(1-1/EAD_mumig);
// Demand for bilateral consumption import goods
EADEAA_imig = EADEAA_numig*((EAA_pex*EADEAA_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADEAC_imig = EADEAC_numig*((EAC_pex*EADEAC_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADUS_imig = EADUS_numig*((US_pex*EADUS_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
EADEAB_imig = (1
-EADEAA_numig
-EADEAC_numig
-EADRW_numig
-EADUS_numig
)*((EAB_pex*EADEAB_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Price of the consumption good (import)
EAD_pimig^(1-EAD_mumig) =
+EADEAA_numig * (EAA_pex*EADEAA_rer)^(1-EAD_mumig)
+EADEAC_numig * (EAC_pex*EADEAC_rer)^(1-EAD_mumig)
+EADRW_numig * (RW_pex*EADRW_rer)^(1-EAD_mumig)
+EADUS_numig * (US_pex*EADUS_rer)^(1-EAD_mumig)
+(1
-EADEAA_numig
-EADEAC_numig
-EADRW_numig
-EADUS_numig
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumig);
// Private consumption good (import) inflation
EAD_piimig = EAD_pimig/EAD_pimig(-1)*EAD_pic;
// Private consumption good (import) inflation
EAD_piimc4 = EAD_pimc/EAD_pimc(-4)*EAD_pic4;
// Private consumption good (import) inflation
EAD_piex4 = EAD_pex/EAD_pex(-4)*EAD_pic4;
// Wedge between aggregate demand and production, using EAD_x = RW_size/EAD_size*RW_im
EAD_yst = EAD_sh*EAD_ht+EAD_sx*EAD_ex;
// Aggregate demand for bilateral imported intermediate goods
EADEAA_im = 
+EADEAA_imc
+EADEAA_imi
+EADEAA_imcg
+EADEAA_imig
;
EADEAB_im = 
+EADEAB_imc
+EADEAB_imi
+EADEAB_imcg
+EADEAB_imig
;
EADEAC_im = 
+EADEAC_imc
+EADEAC_imi
+EADEAC_imcg
+EADEAC_imig
;
EADRW_im = 
+EADRW_imc
+EADRW_imi
+EADRW_imcg
+EADRW_imig
;
EADUS_im = 
+EADUS_imc
+EADUS_imi
+EADUS_imcg
+EADUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
EAD_ttc^((EAD_mutc-1)/EAD_mutc) = (EAD_nutc)^(1/EAD_mutc)*EAD_htc^(1-1/EAD_mutc)+(1-EAD_nutc)^(1/EAD_mutc)*EAD_imc^(1-1/EAD_mutc);
// Private consumption good  (total)
EAD_qc^((EAD_muc-1)/EAD_muc) = (EAD_nuc)^(1/EAD_muc)*EAD_ttc^(1-1/EAD_muc)+(1-EAD_nuc)^(1/EAD_muc)*EAD_ntc^(1-1/EAD_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAD_ntc = (1-EAD_nuc)*(EAD_pnt)^(-EAD_muc)*EAD_qc;
// Price of the consumption good (tradable)  
EAD_pttc^(1-EAD_mutc) = (EAD_nutc)*EAD_pht^(1-EAD_mutc)+(1-EAD_nutc)*EAD_pimc^(1-EAD_mutc);
// Price of the consumption good 
1^(1-EAD_muc) = (EAD_nuc)*EAD_pttc^(1-EAD_muc)+(1-EAD_nuc)*EAD_pnt^(1-EAD_muc);
// Demand for domestic intermediate goods
EAD_htc = EAD_nutc*(EAD_pht/EAD_pttc)^(-EAD_mutc)*EAD_ttc;
EADEAA_gammaimc = 0;
EADEAA_gammaimcdag = 1;
EADEAB_gammaimc = 0;
EADEAB_gammaimcdag = 1;
EADEAC_gammaimc = 0;
EADEAC_gammaimcdag = 1;
EADRW_gammaimc = 0;
EADRW_gammaimcdag = 1;
EADUS_gammaimc = 0;
EADUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAD_tti^((EAD_muti-1)/EAD_muti) = (EAD_nuti)^(1/EAD_muti)*EAD_hti^(1-1/EAD_muti)+(1-EAD_nuti)^(1/EAD_muti)*EAD_imi^(1-1/EAD_muti);
// Private consumption good  (total)
EAD_qi^((EAD_mui-1)/EAD_mui) = (EAD_nui)^(1/EAD_mui)*EAD_tti^(1-1/EAD_mui)+(1-EAD_nui)^(1/EAD_mui)*EAD_nti^(1-1/EAD_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAD_nti = (1-EAD_nui)*(EAD_pnt/EAD_pi)^(-EAD_mui)*EAD_qi;
// Price of the consumption good (tradable)  
EAD_ptti^(1-EAD_muti) = (EAD_nuti)*EAD_pht^(1-EAD_muti)+(1-EAD_nuti)*EAD_pimi^(1-EAD_muti);
// Price of the consumption good 
EAD_pi^(1-EAD_mui) = (EAD_nui)*EAD_ptti^(1-EAD_mui)+(1-EAD_nui)*EAD_pnt^(1-EAD_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
EAD_pibar = EAD_pi;
// Demand for domestic intermediate goods
EAD_hti = EAD_nuti*(EAD_pht/EAD_ptti)^(-EAD_muti)*EAD_tti;
EADEAA_gammaimi = 0;
EADEAA_gammaimidag = 1;
EADEAB_gammaimi = 0;
EADEAB_gammaimidag = 1;
EADEAC_gammaimi = 0;
EADEAC_gammaimidag = 1;
EADRW_gammaimi = 0;
EADRW_gammaimidag = 1;
EADUS_gammaimi = 0;
EADUS_gammaimidag = 1;
// Private consumption good (tradable)
EAD_ttcg^((EAD_mutcg-1)/EAD_mutcg) = (EAD_nutcg)^(1/EAD_mutcg)*EAD_htcg^(1-1/EAD_mutcg)+(1-EAD_nutcg)^(1/EAD_mutcg)*EAD_imcg^(1-1/EAD_mutcg);
// Private consumption good  (total)
EAD_qcg^((EAD_mucg-1)/EAD_mucg) = (EAD_nucg)^(1/EAD_mucg)*EAD_ttcg^(1-1/EAD_mucg)+(1-EAD_nucg)^(1/EAD_mucg)*EAD_ntcg^(1-1/EAD_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAD_ntcg = (1-EAD_nucg)*(EAD_pnt/EAD_pcg)^(-EAD_mucg)*EAD_qcg;
// Price of the consumption good (tradable)  
EAD_pttcg^(1-EAD_mutcg) = (EAD_nutcg)*EAD_pht^(1-EAD_mutcg)+(1-EAD_nutcg)*EAD_pimcg^(1-EAD_mutcg);
// Price of the consumption good 
EAD_pcg^(1-EAD_mucg) = (EAD_nucg)*EAD_pttcg^(1-EAD_mucg)+(1-EAD_nucg)*EAD_pnt^(1-EAD_mucg);
// Demand for domestic intermediate goods
EAD_htcg = EAD_nutcg*(EAD_pht/EAD_pttcg)^(-EAD_mutcg)*EAD_ttcg;
EADEAA_gammaimcg = 0;
EADEAA_gammaimcgdag = 1;
EADEAB_gammaimcg = 0;
EADEAB_gammaimcgdag = 1;
EADEAC_gammaimcg = 0;
EADEAC_gammaimcgdag = 1;
EADRW_gammaimcg = 0;
EADRW_gammaimcgdag = 1;
EADUS_gammaimcg = 0;
EADUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAD_ttig^((EAD_mutig-1)/EAD_mutig) = (EAD_nutig)^(1/EAD_mutig)*EAD_htig^(1-1/EAD_mutig)+(1-EAD_nutig)^(1/EAD_mutig)*EAD_imig^(1-1/EAD_mutig);
// Private consumption good  (total)
EAD_qig^((EAD_muig-1)/EAD_muig) = (EAD_nuig)^(1/EAD_muig)*EAD_ttig^(1-1/EAD_muig)+(1-EAD_nuig)^(1/EAD_muig)*EAD_ntig^(1-1/EAD_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAD_ntig = (1-EAD_nuig)*(EAD_pnt/EAD_pig)^(-EAD_muig)*EAD_qig;
// Price of the consumption good (tradable)  
EAD_pttig^(1-EAD_mutig) = (EAD_nutig)*EAD_pht^(1-EAD_mutig)+(1-EAD_nutig)*EAD_pimig^(1-EAD_mutig);
// Price of the consumption good 
EAD_pig^(1-EAD_muig) = (EAD_nuig)*EAD_pttig^(1-EAD_muig)+(1-EAD_nuig)*EAD_pnt^(1-EAD_muig);
// Demand for domestic intermediate goods
EAD_htig = EAD_nutig*(EAD_pht/EAD_pttig)^(-EAD_mutig)*EAD_ttig;
EADEAA_gammaimig = 0;
EADEAA_gammaimigdag = 1;
EADEAB_gammaimig = 0;
EADEAB_gammaimigdag = 1;
EADEAC_gammaimig = 0;
EADEAC_gammaimigdag = 1;
EADRW_gammaimig = 0;
EADRW_gammaimigdag = 1;
EADUS_gammaimig = 0;
EADUS_gammaimigdag = 1;
// Trade balance
EAD_tb =
+EAD_pex*EAA_size/EAD_size*EAAEAD_im
-EAA_pex*EADEAA_rer*EADEAA_im
+EAD_pex*EAB_size/EAD_size*EABEAD_im
-EAB_pex*EADEAB_rer*EADEAB_im
+EAD_pex*EAC_size/EAD_size*EACEAD_im
-EAC_pex*EADEAC_rer*EADEAC_im
+EAD_pex*RW_size/EAD_size*RWEAD_im
-RW_pex*EADRW_rer*EADRW_im
+EAD_pex*US_size/EAD_size*USEAD_im
-US_pex*EADUS_rer*EADUS_im
;
// Aggregate exports (volume)
EAD_ex =
+EAA_size/EAD_size*EAAEAD_im
+EAB_size/EAD_size*EABEAD_im
+EAC_size/EAD_size*EACEAD_im
+RW_size/EAD_size*RWEAD_im
+US_size/EAD_size*USEAD_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAD_pg = EAD_pht
// TODO: check the (1-EAD_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAD_pcg(-1)*EAD_cg(-1)+EAD_pig(-1)*EAD_ig(-1)+EAD_tr(-1)
	+EAD_b(-1)*EAD_pic(-1)^(-1)+EAD_m(-2)*EAD_pic(-1)^(-1) = EAD_tauc(-1)*EAD_c(-1)+(EAD_taun(-1)+EAD_tauwh(-1))*(EAD_wi(-1)*EAD_ndi(-1)+EAD_wj(-1)*EAD_ndj(-1))+EAD_tauwf(-1)*EAD_w(-1)*EAD_nd(-1)+EAD_tauk(-1)*(EAD_rk(-1)*EAD_u(-1)-(EAD_gammau(-1)+EAD_delta)*EAD_pi(-1))*EAD_k(-1)+EAD_taud(-1)*EAD_d(-1)+EAD_t(-1)+(EAD_r(-1)*(1-EAD_gammab(-1)))^(-1)*EAD_b+EAD_m(-1);
// Government spending, using EAD_pg = EAD_pht
EAD_pcg*EAD_cg = EAD_cgy*EAD_pybar*EAD_ybar;
EAD_pig*EAD_ig = EAD_igy*EAD_pybar*EAD_ybar;
EAD_t = 0;
EAD_b = EAD_bytarget*EAD_pybar*EAD_ybar;
// Auxiliary equation for steady-state output
EAD_ybar = EAD_y;
// Auxiliary equation for steady-state output
EAD_ytbar = EAD_yst;
// Auxiliary equation for steady-state output
EAD_ynbar = EAD_ysn;
// Auxiliary equation for steady-state output deflator
EAD_pybar = EAD_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAD_trybar = EAD_tr/(EAD_pybar*EAD_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAD_ti = EAD_upsilont*EAD_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAD_tri = EAD_upsilontr*EAD_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	EAD_r^4-1 = EAD_rrstar^4*EAD_pi4target-1;
EAD_pic4 = EAD_pi4target;
EAD_rr-1 = EAD_r/EAD_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAD_rrstar-1 = 1/EAD_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAD_c = (1-EAD_omega)*EAD_ci+EAD_omega*EAD_cj;
// Aggregate money holdings
EAD_m = (1-EAD_omega)*EAD_mi+EAD_omega*EAD_mj;
// Aggregate capital stock
EAD_k = (1-EAD_omega)*EAD_ki;
// Aggregate investment
EAD_i = (1-EAD_omega)*EAD_ii;
// Aggregate lump-sum transfers
EAD_trj = 
1/EAD_omega*EAD_tr-(1-EAD_omega)/EAD_omega*EAD_tri
;
// Aggregate lump-sum taxes
EAD_tj = 
1/EAD_omega*EAD_t-(1-EAD_omega)/EAD_omega*EAD_ti
;
// Aggregate transaction costs
EAD_gammav = (1-EAD_omega)*EAD_ci*EAD_gammavi+EAD_omega*EAD_cj*EAD_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAD_ni = EAD_si*EAD_ndi;
// Wage dispersion
EAD_si = (1-EAD_xii)*(EAD_witilde/EAD_wi)^(-EAD_etai)+EAD_xii*(EAD_wi(-1)/EAD_wi)^(-EAD_etai)*(EAD_pic/(EAD_pic(-1)^EAD_chii*EAD_pi4target^(1/4*(1-EAD_chii))))^(EAD_etai)*EAD_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAD_nj = EAD_sj*EAD_ndj;
// Wage dispersion
EAD_sj = (1-EAD_xij)*(EAD_wjtilde/EAD_wj)^(-EAD_etaj)+EAD_xij*(EAD_wj(-1)/EAD_wj)^(-EAD_etaj)*(EAD_pic/(EAD_pic(-1)^EAD_chij*EAD_pi4target^(1/4*(1-EAD_chij))))^(EAD_etaj)*EAD_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAD_u*EAD_k = EAD_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAD_x = RW_size/EAD_size*RW_im
EAD_ysn = EAD_snt*EAD_nt;
//  nontradables aggregate demand
EAD_nt = 
+EAD_ntc
+EAD_nti
+EAD_ntcg
+EAD_ntig
;
// Aggregate demand for domestic intermediate goods, using EAD_hg = EAD_cg
EAD_ht =
+EAD_htc
+EAD_hti
+EAD_htcg
+EAD_htig
;
// Price dispersion in the domestic markets
EAD_sh = (1-EAD_xih)*(EAD_phttilde/EAD_pht)^(-EAD_thetat)+EAD_xih*(EAD_piht/(EAD_piht(-1)^EAD_chih*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EAD_sh(-1);
// Price dispersion in the foreign markets
EAD_sx = (1-EAD_xix)*(EAD_pextilde/EAD_pex)^(-EAD_thetat)+EAD_xix*(EAD_piex/(EAD_piex(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EAD_sx(-1);
// Price dispersion in the domestic markets
EAD_snt = (1-EAD_xin)*(EAD_pnttilde/EAD_pnt)^(-EAD_thetan)+EAD_xin*(EAD_pint/(EAD_pint(-1)^EAD_chin*EAD_pi4target^(1/4*(1-EAD_chin))))^EAD_thetan*EAD_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAD_qc = EAD_c+EAD_gammav;
// Aggregate investment and capital utilisation cost
EAD_qi = EAD_i+EAD_k*EAD_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAD_qcg = EAD_cg;
EAD_qig = EAD_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAD_py*EAD_y = 
+EAD_qc
+EAD_pi*EAD_qi
+EAD_pcg*EAD_qcg
+EAD_pig*EAD_qig
+EAD_pex*EAA_size/EAD_size*EAAEAD_im
-(EAA_pex*EADEAA_rer)*EADEAA_imc
-(EAA_pex*EADEAA_rer)*EADEAA_imi
-(EAA_pex*EADEAA_rer)*EADEAA_imcg
-(EAA_pex*EADEAA_rer)*EADEAA_imig
+EAD_pex*EAB_size/EAD_size*EABEAD_im
-(EAB_pex*EADEAB_rer)*EADEAB_imc
-(EAB_pex*EADEAB_rer)*EADEAB_imi
-(EAB_pex*EADEAB_rer)*EADEAB_imcg
-(EAB_pex*EADEAB_rer)*EADEAB_imig
+EAD_pex*EAC_size/EAD_size*EACEAD_im
-(EAC_pex*EADEAC_rer)*EADEAC_imc
-(EAC_pex*EADEAC_rer)*EADEAC_imi
-(EAC_pex*EADEAC_rer)*EADEAC_imcg
-(EAC_pex*EADEAC_rer)*EADEAC_imig
+EAD_pex*RW_size/EAD_size*RWEAD_im
-(RW_pex*EADRW_rer)*EADRW_imc
-(RW_pex*EADRW_rer)*EADRW_imi
-(RW_pex*EADRW_rer)*EADRW_imcg
-(RW_pex*EADRW_rer)*EADRW_imig
+EAD_pex*US_size/EAD_size*USEAD_im
-(US_pex*EADUS_rer)*EADUS_imc
-(US_pex*EADUS_rer)*EADUS_imi
-(US_pex*EADUS_rer)*EADUS_imcg
-(US_pex*EADUS_rer)*EADUS_imig
;
// Aggregate real demand
EAD_y = EAD_yst+EAD_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAD_zt) = (1-EAD_rhozt)*log(EAD_ztbar)+EAD_rhozt*log(EAD_zt(-1))+EAD_epszt;
log(EAD_zn) = (1-EAD_rhozn)*log(EAD_znbar)+EAD_rhozn*log(EAD_zn(-1))+EAD_epszn;
// Government spending shock
EAD_cgy = (1-EAD_rhocg)*EAD_cgybar+EAD_rhocg*EAD_cgy(-1)+EAD_epsgc;
EAD_igy = (1-EAD_rhoig)*EAD_igybar+EAD_rhoig*EAD_igy(-1)+EAD_epsgi;
// Transfer shock
EAD_try = (1-EAD_rhotr)*EAD_trybar+EAD_rhotr*EAD_try(-1)+EAD_epstr;
// Consumption tax shock
EAD_tauc = (1-EAD_rhotauc)*EAD_taucbar+EAD_rhotauc*EAD_tauc(-1)+EAD_epstauc;
// Dividend income tax shock
EAD_taud = (1-EAD_rhotaud)*EAD_taudbar+EAD_rhotaud*EAD_taud(-1)+EAD_epstaud;
// Capital income tax shock
EAD_tauk = (1-EAD_rhotauk)*EAD_taukbar+EAD_rhotauk*EAD_tauk(-1)+EAD_epstauk;
// Labour income tax shock
EAD_taun = (1-EAD_rhotaun)*EAD_taunbar+EAD_rhotaun*EAD_taun(-1)+EAD_epstaun;
// Payroll tax shock: households
EAD_tauwh = (1-EAD_rhotauwh)*EAD_tauwhbar+EAD_rhotauwh*EAD_tauwh(-1)+EAD_epstauwh;
// Payroll tax shock: firms
EAD_tauwf = (1-EAD_rhotauwf)*EAD_tauwfbar+EAD_rhotauwf*EAD_tauwf(-1)+EAD_epstauwf;
// Wage cost push shock
EAD_wcst = (1-EAD_rhowcst)*EAD_wcstbar+EAD_rhowcst*EAD_wcst(-1)+EAD_epswcst;
// Preference shock
log(EAD_zcon) = (1-EAD_rhozcon)*log(EAD_zconbar)+EAD_rhozcon*log(EAD_zcon(-1))+EAD_epszcon;
// Investment specific shock
log(EAD_zinv) = (1-EAD_rhozinv)*log(EAD_zinvbar)+EAD_rhozinv*log(EAD_zinv(-1))+EAD_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAD_cy = EAD_c/(EAD_py*EAD_y);
// Aggregate nominal investment share
EAD_iy = EAD_pi*EAD_i/(EAD_py*EAD_y);
// Aggregate nominal import share  
EAD_imy = (
+EAD_pimc*EAD_imc
+EAD_pimi*EAD_imi
+EAD_pimcg*EAD_imcg
+EAD_pimig*EAD_imig
)/(EAD_py*EAD_y);
// Aggregate nominal import share
EAD_imcy = EAD_pimc*EAD_imc/(EAD_py*EAD_y);
EAD_imiy = EAD_pimi*EAD_imi/(EAD_py*EAD_y);
EAD_imcgy = EAD_pimcg*EAD_imcg/(EAD_py*EAD_y);
EAD_imigy = EAD_pimig*EAD_imig/(EAD_py*EAD_y);
// Aggregate debt-to-output ratio
EAD_by = EAD_b/(EAD_pybar*EAD_ybar);
// Aggregate lump-sum tax-to-output ratio
EAD_ty = EAD_t/(EAD_pybar*EAD_ybar);
// Aggregate labour cost share
EAD_lcy = ((1+EAD_tauwf)*EAD_w*EAD_nd)/(EAD_py*EAD_y);
// Aggregate nominal Wage share
EAD_wy = (EAD_w*EAD_nd)/(EAD_py*EAD_y);
// NT sector nominal Wage share
EAD_wnty = (EAD_w*EAD_ndn)/(EAD_pnt*EAD_ysn);
// T sector nominal Wage share
EAD_whty = (EAD_w*EAD_ndt)/(EAD_pht*EAD_yst);
// T sector share
EAD_yhty = EAD_pht*EAD_yst/(EAD_py*EAD_y);
// NT sector share
EAD_ynty = EAD_pnt*EAD_ysn/(EAD_py*EAD_y);
// Output gap
EAD_ygap = 0;
// Output growth (gross rate)
EAD_ygrowth = EAD_y/EAD_y(-1);
// Output growth (gross rate yoy)
EAD_ygrowth4 = EAD_y/EAD_y(-4);
// Domestic nominal output as a share of world nominal output
EAD_yshare  = EAD_size*EAD_py*EAD_y/EAD_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAD_epsilonm = -1/8*1/(EAD_r*(EAD_gammav2*EAD_r+EAD_r-1));
// Trade balance-to-GDP ratio
EAD_tby = EAD_tb/(EAD_py*EAD_y);
// Bilateral shares
EADEAA_imcy = (EAA_pex*EADEAA_rer)*EADEAA_imc/(EAD_py*EAD_y);
EADEAA_imiy = (EAA_pex*EADEAA_rer)*EADEAA_imi/(EAD_py*EAD_y);
EADEAA_imcgy = (EAA_pex*EADEAA_rer)*EADEAA_imcg/(EAD_py*EAD_y);
EADEAA_imigy = (EAA_pex*EADEAA_rer)*EADEAA_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAA_excy  = EAA_size/EAD_size*EAD_pex*EAAEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAA_exiy  = EAA_size/EAD_size*EAD_pex*EAAEAD_imi/(EAD_py*EAD_y);
// Bilateral shares
EADEAB_imcy = (EAB_pex*EADEAB_rer)*EADEAB_imc/(EAD_py*EAD_y);
EADEAB_imiy = (EAB_pex*EADEAB_rer)*EADEAB_imi/(EAD_py*EAD_y);
EADEAB_imcgy = (EAB_pex*EADEAB_rer)*EADEAB_imcg/(EAD_py*EAD_y);
EADEAB_imigy = (EAB_pex*EADEAB_rer)*EADEAB_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAB_excy  = EAB_size/EAD_size*EAD_pex*EABEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAB_exiy  = EAB_size/EAD_size*EAD_pex*EABEAD_imi/(EAD_py*EAD_y);
// Bilateral shares
EADEAC_imcy = (EAC_pex*EADEAC_rer)*EADEAC_imc/(EAD_py*EAD_y);
EADEAC_imiy = (EAC_pex*EADEAC_rer)*EADEAC_imi/(EAD_py*EAD_y);
EADEAC_imcgy = (EAC_pex*EADEAC_rer)*EADEAC_imcg/(EAD_py*EAD_y);
EADEAC_imigy = (EAC_pex*EADEAC_rer)*EADEAC_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAC_excy  = EAC_size/EAD_size*EAD_pex*EACEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAC_exiy  = EAC_size/EAD_size*EAD_pex*EACEAD_imi/(EAD_py*EAD_y);
// Bilateral shares
EADRW_imcy = (RW_pex*EADRW_rer)*EADRW_imc/(EAD_py*EAD_y);
EADRW_imiy = (RW_pex*EADRW_rer)*EADRW_imi/(EAD_py*EAD_y);
EADRW_imcgy = (RW_pex*EADRW_rer)*EADRW_imcg/(EAD_py*EAD_y);
EADRW_imigy = (RW_pex*EADRW_rer)*EADRW_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADRW_excy  = RW_size/EAD_size*EAD_pex*RWEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADRW_exiy  = RW_size/EAD_size*EAD_pex*RWEAD_imi/(EAD_py*EAD_y);
// Bilateral shares
EADUS_imcy = (US_pex*EADUS_rer)*EADUS_imc/(EAD_py*EAD_y);
EADUS_imiy = (US_pex*EADUS_rer)*EADUS_imi/(EAD_py*EAD_y);
EADUS_imcgy = (US_pex*EADUS_rer)*EADUS_imcg/(EAD_py*EAD_y);
EADUS_imigy = (US_pex*EADUS_rer)*EADUS_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADUS_excy  = US_size/EAD_size*EAD_pex*USEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADUS_exiy  = US_size/EAD_size*EAD_pex*USEAD_imi/(EAD_py*EAD_y);
// Internal real exchange rate
EAD_internalrer = EAD_pnt/EAD_pttc;
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
// Government capital accumulation:
RW_kg = (1-RW_deltag)*RW_kg(-1)+RW_ig(-1);
// Production function tradable
RW_yst = EA_z*RW_zt*RW_kg^RW_alphag*RW_kdt^RW_alphat*RW_ndt^(1-RW_alphat)-RW_psitbar;
// Production function nontradable
RW_ysn = EA_z*RW_zn*RW_kg^RW_alphag*RW_kdn^RW_alphan*RW_ndn^(1-RW_alphan)-RW_psinbar;
// Real marginal cost tradable
RW_mct = 1/(EA_z*RW_zt*RW_kg^RW_alphag*(RW_alphat)^(RW_alphat)*(1-RW_alphat)^(1-RW_alphat))*RW_rk^(RW_alphat)*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
// Real marginal cost nontradable
RW_mcn = 1/(EA_z*RW_zn*RW_kg^RW_alphag*(RW_alphan)^(RW_alphan)*(1-RW_alphan)^(1-RW_alphan))*RW_rk^(RW_alphan)*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
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
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAC_pimtilde
// EACRW_pimtilde/EACRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAC_fx/RWEAC_gx;
// Definition of fx
// RWEAC_fx = EAC_size/RW_size*EACRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAC_fx(+1);
// Definition of gx   
// RWEAC_gx = RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAC_pim
// EACRW_pim^(1-RW_thetat) = (1-RW_xix)*EACRW_pimtilde^(1-RW_thetat)+RW_xix*(EACRW_pim(-1)/EAC_pic)^(1-RW_thetat)*(EACRW_piim(-1)^RW_chix*EAC_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAC_piim
// EACRW_piim = EACRW_pim/EACRW_pim(-1)*EAC_pic;
// Bilateral real exchange rate
RWEAC_rer = RW_rer/EAC_rer;
// Auxiliary equation for steady-state output
RWEAC_rerbar = RWEAC_rer;
//Terms of Trade
RWEAC_tot = EAC_pex*RWEAC_rer/RW_pex;
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAD_pimtilde
// EADRW_pimtilde/EADRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAD_fx/RWEAD_gx;
// Definition of fx
// RWEAD_fx = EAD_size/RW_size*EADRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EADRW_piim(+1)/(EADRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAD_fx(+1);
// Definition of gx   
// RWEAD_gx = RWEAD_rer*EADRW_pim*EAD_size/RW_size*EADRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EADRW_piim(+1)/(EADRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAD_pim
// EADRW_pim^(1-RW_thetat) = (1-RW_xix)*EADRW_pimtilde^(1-RW_thetat)+RW_xix*(EADRW_pim(-1)/EAD_pic)^(1-RW_thetat)*(EADRW_piim(-1)^RW_chix*EAD_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAD_piim
// EADRW_piim = EADRW_pim/EADRW_pim(-1)*EAD_pic;
// Bilateral real exchange rate
RWEAD_rer = RW_rer/EAD_rer;
// Auxiliary equation for steady-state output
RWEAD_rerbar = RWEAD_rer;
//Terms of Trade
RWEAD_tot = EAD_pex*RWEAD_rer/RW_pex;
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
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWUS_rer*US_pex*EAAUS_im
)+
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAA_rer*EAA_pex*EABEAA_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAA_rer*EAA_pex*EACEAA_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAA_rer*EAA_pex*EADEAA_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWUS_rer*US_pex*EADUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAA_rer*EAA_pex*USEAA_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAA_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAB_weightim = RWEAB_rer*EAB_pex*RWEAB_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAB_weightex = EAB_size/RW_size*EABRW_im/RW_ex*RWEAB_rer*EAB_py*EAB_y/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWUS_rer*US_pex*EABUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAB_rer*EAB_pex*EAAEAB_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAB_rer*EAB_pex*EACEAB_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAB_rer*EAB_pex*EADEAB_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWUS_rer*US_pex*EADUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAB_rer*EAB_pex*USEAB_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAB_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAC_weightim = RWEAC_rer*EAC_pex*RWEAC_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAC_weightex = EAC_size/RW_size*EACRW_im/RW_ex*RWEAC_rer*EAC_py*EAC_y/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWUS_rer*US_pex*EACUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAC_rer*EAC_pex*EAAEAC_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAC_rer*EAC_pex*EABEAC_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWUS_rer*US_pex*EABUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAC_rer*EAC_pex*EADEAC_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWUS_rer*US_pex*EADUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAC_rer*EAC_pex*USEAC_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAC_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAD_weightim = RWEAD_rer*EAD_pex*RWEAD_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAD_weightex = EAD_size/RW_size*EADRW_im/RW_ex*RWEAD_rer*EAD_py*EAD_y/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWUS_rer*US_pex*EADUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAD_rer*EAD_pex*EAAEAD_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAD_rer*EAD_pex*EABEAD_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAD_rer*EAD_pex*EACEAD_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWUS_rer*US_pex*EACUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAD_rer*EAD_pex*USEAD_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAD_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAD_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAD_weightex;
// Effective real exchange rate: double weighting (imports)
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWUS_weightex = US_size/RW_size*USRW_im/RW_ex*RWUS_rer*US_py*US_y/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWUS_rer*US_pex*EAAUS_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWUS_rer*US_pex*EABUS_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWUS_rer*US_pex*EACUS_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWUS_rer*US_pex*EADUS_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWUS_rer*US_pex*EADUS_im
)
;
// Effective real exchange rate: double weighting (overall)
RWUS_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightex;
// Effective real exchange rate
RW_reer = 1
*RWEAA_rer^RWEAA_weight
*RWEAB_rer^RWEAB_weight
*RWEAC_rer^RWEAC_weight
*RWEAD_rer^RWEAD_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWEAC_tot^RWEAC_weight
*RWEAD_tot^RWEAD_weight
*RWUS_tot^RWUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
RW_imc^((RW_mumc-1)/RW_mumc) =
+RWEAA_numc ^(1/RW_mumc)*RWEAA_imc^(1-1/RW_mumc)
+RWEAB_numc ^(1/RW_mumc)*RWEAB_imc^(1-1/RW_mumc)
+RWEAD_numc ^(1/RW_mumc)*RWEAD_imc^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*RWUS_imc^(1-1/RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAD_numc
-RWUS_numc
)^(1/RW_mumc)*RWEAC_imc^(1-1/RW_mumc);
// Demand for bilateral consumption import goods
RWEAA_imc = RWEAA_numc*((EAA_pex*RWEAA_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAB_imc = RWEAB_numc*((EAB_pex*RWEAB_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAD_imc = RWEAD_numc*((EAD_pex*RWEAD_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAC_imc = (1
-RWEAA_numc
-RWEAB_numc
-RWEAD_numc
-RWUS_numc
)*((EAC_pex*RWEAC_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Price of the consumption good (import)
RW_pimc^(1-RW_mumc) =
+RWEAA_numc * (EAA_pex*RWEAA_rer)^(1-RW_mumc)
+RWEAB_numc * (EAB_pex*RWEAB_rer)^(1-RW_mumc)
+RWEAD_numc * (EAD_pex*RWEAD_rer)^(1-RW_mumc)
+RWUS_numc * (US_pex*RWUS_rer)^(1-RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAD_numc
-RWUS_numc
)*(EAC_pex*RWEAC_rer)^(1-RW_mumc);
// Private consumption good (import) inflation
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import)
RW_imi^((RW_mumi-1)/RW_mumi) =
+RWEAA_numi ^(1/RW_mumi)*RWEAA_imi^(1-1/RW_mumi)
+RWEAB_numi ^(1/RW_mumi)*RWEAB_imi^(1-1/RW_mumi)
+RWEAD_numi ^(1/RW_mumi)*RWEAD_imi^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*RWUS_imi^(1-1/RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAD_numi
-RWUS_numi
)^(1/RW_mumi)*RWEAC_imi^(1-1/RW_mumi);
// Demand for bilateral consumption import goods
RWEAA_imi = RWEAA_numi*((EAA_pex*RWEAA_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAB_imi = RWEAB_numi*((EAB_pex*RWEAB_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAD_imi = RWEAD_numi*((EAD_pex*RWEAD_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
RWEAC_imi = (1
-RWEAA_numi
-RWEAB_numi
-RWEAD_numi
-RWUS_numi
)*((EAC_pex*RWEAC_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Price of the consumption good (import)
RW_pimi^(1-RW_mumi) =
+RWEAA_numi * (EAA_pex*RWEAA_rer)^(1-RW_mumi)
+RWEAB_numi * (EAB_pex*RWEAB_rer)^(1-RW_mumi)
+RWEAD_numi * (EAD_pex*RWEAD_rer)^(1-RW_mumi)
+RWUS_numi * (US_pex*RWUS_rer)^(1-RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAD_numi
-RWUS_numi
)*(EAC_pex*RWEAC_rer)^(1-RW_mumi);
// Private consumption good (import) inflation
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Private consumption good (import)
RW_imcg^((RW_mumcg-1)/RW_mumcg) =
+RWEAA_numcg ^(1/RW_mumcg)*RWEAA_imcg^(1-1/RW_mumcg)
+RWEAB_numcg ^(1/RW_mumcg)*RWEAB_imcg^(1-1/RW_mumcg)
+RWEAD_numcg ^(1/RW_mumcg)*RWEAD_imcg^(1-1/RW_mumcg)
+RWUS_numcg ^(1/RW_mumcg)*RWUS_imcg^(1-1/RW_mumcg)
+(1
-RWEAA_numcg
-RWEAB_numcg
-RWEAD_numcg
-RWUS_numcg
)^(1/RW_mumcg)*RWEAC_imcg^(1-1/RW_mumcg);
// Demand for bilateral consumption import goods
RWEAA_imcg = RWEAA_numcg*((EAA_pex*RWEAA_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAB_imcg = RWEAB_numcg*((EAB_pex*RWEAB_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAD_imcg = RWEAD_numcg*((EAD_pex*RWEAD_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
RWEAC_imcg = (1
-RWEAA_numcg
-RWEAB_numcg
-RWEAD_numcg
-RWUS_numcg
)*((EAC_pex*RWEAC_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Price of the consumption good (import)
RW_pimcg^(1-RW_mumcg) =
+RWEAA_numcg * (EAA_pex*RWEAA_rer)^(1-RW_mumcg)
+RWEAB_numcg * (EAB_pex*RWEAB_rer)^(1-RW_mumcg)
+RWEAD_numcg * (EAD_pex*RWEAD_rer)^(1-RW_mumcg)
+RWUS_numcg * (US_pex*RWUS_rer)^(1-RW_mumcg)
+(1
-RWEAA_numcg
-RWEAB_numcg
-RWEAD_numcg
-RWUS_numcg
)*(EAC_pex*RWEAC_rer)^(1-RW_mumcg);
// Private consumption good (import) inflation
RW_piimcg = RW_pimcg/RW_pimcg(-1)*RW_pic;
// Private consumption good (import)
RW_imig^((RW_mumig-1)/RW_mumig) =
+RWEAA_numig ^(1/RW_mumig)*RWEAA_imig^(1-1/RW_mumig)
+RWEAB_numig ^(1/RW_mumig)*RWEAB_imig^(1-1/RW_mumig)
+RWEAD_numig ^(1/RW_mumig)*RWEAD_imig^(1-1/RW_mumig)
+RWUS_numig ^(1/RW_mumig)*RWUS_imig^(1-1/RW_mumig)
+(1
-RWEAA_numig
-RWEAB_numig
-RWEAD_numig
-RWUS_numig
)^(1/RW_mumig)*RWEAC_imig^(1-1/RW_mumig);
// Demand for bilateral consumption import goods
RWEAA_imig = RWEAA_numig*((EAA_pex*RWEAA_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAB_imig = RWEAB_numig*((EAB_pex*RWEAB_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAD_imig = RWEAD_numig*((EAD_pex*RWEAD_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
RWEAC_imig = (1
-RWEAA_numig
-RWEAB_numig
-RWEAD_numig
-RWUS_numig
)*((EAC_pex*RWEAC_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Price of the consumption good (import)
RW_pimig^(1-RW_mumig) =
+RWEAA_numig * (EAA_pex*RWEAA_rer)^(1-RW_mumig)
+RWEAB_numig * (EAB_pex*RWEAB_rer)^(1-RW_mumig)
+RWEAD_numig * (EAD_pex*RWEAD_rer)^(1-RW_mumig)
+RWUS_numig * (US_pex*RWUS_rer)^(1-RW_mumig)
+(1
-RWEAA_numig
-RWEAB_numig
-RWEAD_numig
-RWUS_numig
)*(EAC_pex*RWEAC_rer)^(1-RW_mumig);
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
RWEAC_im = 
+RWEAC_imc
+RWEAC_imi
+RWEAC_imcg
+RWEAC_imig
;
RWEAD_im = 
+RWEAD_imc
+RWEAD_imi
+RWEAD_imcg
+RWEAD_imig
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
RWEAC_gammaimc = 0;
RWEAC_gammaimcdag = 1;
RWEAD_gammaimc = 0;
RWEAD_gammaimcdag = 1;
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
RWEAC_gammaimi = 0;
RWEAC_gammaimidag = 1;
RWEAD_gammaimi = 0;
RWEAD_gammaimidag = 1;
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
RWEAC_gammaimcg = 0;
RWEAC_gammaimcgdag = 1;
RWEAD_gammaimcg = 0;
RWEAD_gammaimcgdag = 1;
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
RWEAC_gammaimig = 0;
RWEAC_gammaimigdag = 1;
RWEAD_gammaimig = 0;
RWEAD_gammaimigdag = 1;
RWUS_gammaimig = 0;
RWUS_gammaimigdag = 1;
// Trade balance
RW_tb =
+RW_pex*EAA_size/RW_size*EAARW_im
-EAA_pex*RWEAA_rer*RWEAA_im
+RW_pex*EAB_size/RW_size*EABRW_im
-EAB_pex*RWEAB_rer*RWEAB_im
+RW_pex*EAC_size/RW_size*EACRW_im
-EAC_pex*RWEAC_rer*RWEAC_im
+RW_pex*EAD_size/RW_size*EADRW_im
-EAD_pex*RWEAD_rer*RWEAD_im
+RW_pex*US_size/RW_size*USRW_im
-US_pex*RWUS_rer*RWUS_im
;
// Aggregate exports (volume)
RW_ex =
+EAA_size/RW_size*EAARW_im
+EAB_size/RW_size*EABRW_im
+EAC_size/RW_size*EACRW_im
+EAD_size/RW_size*EADRW_im
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
+RW_pex*EAC_size/RW_size*EACRW_im
-(EAC_pex*RWEAC_rer)*RWEAC_imc
-(EAC_pex*RWEAC_rer)*RWEAC_imi
-(EAC_pex*RWEAC_rer)*RWEAC_imcg
-(EAC_pex*RWEAC_rer)*RWEAC_imig
+RW_pex*EAD_size/RW_size*EADRW_im
-(EAD_pex*RWEAD_rer)*RWEAD_imc
-(EAD_pex*RWEAD_rer)*RWEAD_imi
-(EAD_pex*RWEAD_rer)*RWEAD_imcg
-(EAD_pex*RWEAD_rer)*RWEAD_imig
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
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
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
RWEAC_imcy = (EAC_pex*RWEAC_rer)*RWEAC_imc/(RW_py*RW_y);
RWEAC_imiy = (EAC_pex*RWEAC_rer)*RWEAC_imi/(RW_py*RW_y);
RWEAC_imcgy = (EAC_pex*RWEAC_rer)*RWEAC_imcg/(RW_py*RW_y);
RWEAC_imigy = (EAC_pex*RWEAC_rer)*RWEAC_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAC_excy  = EAC_size/RW_size*RW_pex*EACRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAC_exiy  = EAC_size/RW_size*RW_pex*EACRW_imi/(RW_py*RW_y);
// Bilateral shares
RWEAD_imcy = (EAD_pex*RWEAD_rer)*RWEAD_imc/(RW_py*RW_y);
RWEAD_imiy = (EAD_pex*RWEAD_rer)*RWEAD_imi/(RW_py*RW_y);
RWEAD_imcgy = (EAD_pex*RWEAD_rer)*RWEAD_imcg/(RW_py*RW_y);
RWEAD_imigy = (EAD_pex*RWEAD_rer)*RWEAD_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAD_excy  = EAD_size/RW_size*RW_pex*EADRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAD_exiy  = EAD_size/RW_size*RW_pex*EADRW_imi/(RW_py*RW_y);
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
// Government capital accumulation:
US_kg = (1-US_deltag)*US_kg(-1)+US_ig(-1);
// Production function tradable
US_yst = US_zt*US_kg^US_alphag*US_kdt^US_alphat*US_ndt^(1-US_alphat)-US_psitbar;
// Production function nontradable
US_ysn = US_zn*US_kg^US_alphag*US_kdn^US_alphan*US_ndn^(1-US_alphan)-US_psinbar;
// Real marginal cost tradable
US_mct = 1/(US_zt*US_kg^US_alphag*(US_alphat)^(US_alphat)*(1-US_alphat)^(1-US_alphat))*US_rk^(US_alphat)*((1+US_tauwf)*US_w)^(1-US_alphat);
// Real marginal cost nontradable
US_mcn = 1/(US_zn*US_kg^US_alphag*(US_alphan)^(US_alphan)*(1-US_alphan)^(1-US_alphan))*US_rk^(US_alphan)*((1+US_tauwf)*US_w)^(1-US_alphan);
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
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAC_pimtilde
// EACUS_pimtilde/EACUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAC_fx/USEAC_gx;
// Definition of fx
// USEAC_fx = EAC_size/US_size*EACUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAC_fx(+1);
// Definition of gx   
// USEAC_gx = USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAC_pim
// EACUS_pim^(1-US_thetat) = (1-US_xix)*EACUS_pimtilde^(1-US_thetat)+US_xix*(EACUS_pim(-1)/EAC_pic)^(1-US_thetat)*(EACUS_piim(-1)^US_chix*EAC_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAC_piim
// EACUS_piim = EACUS_pim/EACUS_pim(-1)*EAC_pic;
// Bilateral real exchange rate
USEAC_rer = US_rer/EAC_rer;
// Auxiliary equation for steady-state output
USEAC_rerbar = USEAC_rer;
//Terms of Trade
USEAC_tot = EAC_pex*USEAC_rer/US_pex;
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAD_pimtilde
// EADUS_pimtilde/EADUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAD_fx/USEAD_gx;
// Definition of fx
// USEAD_fx = EAD_size/US_size*EADUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EADUS_piim(+1)/(EADUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAD_fx(+1);
// Definition of gx   
// USEAD_gx = USEAD_rer*EADUS_pim*EAD_size/US_size*EADUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EADUS_piim(+1)/(EADUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAD_pim
// EADUS_pim^(1-US_thetat) = (1-US_xix)*EADUS_pimtilde^(1-US_thetat)+US_xix*(EADUS_pim(-1)/EAD_pic)^(1-US_thetat)*(EADUS_piim(-1)^US_chix*EAD_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAD_piim
// EADUS_piim = EADUS_pim/EADUS_pim(-1)*EAD_pic;
// Bilateral real exchange rate
USEAD_rer = US_rer/EAD_rer;
// Auxiliary equation for steady-state output
USEAD_rerbar = USEAD_rer;
//Terms of Trade
USEAD_tot = EAD_pex*USEAD_rer/US_pex;
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
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USRW_rer*RW_pex*EAARW_im
)+
+EAB_size/US_size*EABUS_im/US_ex*USEAA_rer*EAA_pex*EABEAA_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAA_rer*EAA_pex*EACEAA_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAA_rer*EAA_pex*EADEAA_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USRW_rer*RW_pex*EADRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAA_rer*EAA_pex*RWEAA_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAA_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAA_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAA_weightex;
// Effective real exchange rate: double weighting (imports)
USEAB_weightim = USEAB_rer*EAB_pex*USEAB_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAB_weightex = EAB_size/US_size*EABUS_im/US_ex*USEAB_rer*EAB_py*EAB_y/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USRW_rer*RW_pex*EABRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAB_rer*EAB_pex*EAAEAB_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USRW_rer*RW_pex*EAARW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAB_rer*EAB_pex*EACEAB_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAB_rer*EAB_pex*EADEAB_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USRW_rer*RW_pex*EADRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAB_rer*EAB_pex*RWEAB_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAB_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAB_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAB_weightex;
// Effective real exchange rate: double weighting (imports)
USEAC_weightim = USEAC_rer*EAC_pex*USEAC_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAC_weightex = EAC_size/US_size*EACUS_im/US_ex*USEAC_rer*EAC_py*EAC_y/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USRW_rer*RW_pex*EACRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAC_rer*EAC_pex*EAAEAC_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAC_rer*EAC_pex*EABEAC_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USRW_rer*RW_pex*EABRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAC_rer*EAC_pex*EADEAC_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USRW_rer*RW_pex*EADRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAC_rer*EAC_pex*RWEAC_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAC_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAC_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAC_weightex;
// Effective real exchange rate: double weighting (imports)
USEAD_weightim = USEAD_rer*EAD_pex*USEAD_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAD_weightex = EAD_size/US_size*EADUS_im/US_ex*USEAD_rer*EAD_py*EAD_y/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USRW_rer*RW_pex*EADRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAD_rer*EAD_pex*EAAEAD_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAD_rer*EAD_pex*EABEAD_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAD_rer*EAD_pex*EACEAD_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USRW_rer*RW_pex*EACRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAD_rer*EAD_pex*RWEAD_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAD_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAD_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAD_weightex;
// Effective real exchange rate: double weighting (imports)
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USRW_weightex = RW_size/US_size*RWUS_im/US_ex*USRW_rer*RW_py*RW_y/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USRW_rer*RW_pex*EAARW_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USRW_rer*RW_pex*EABRW_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USRW_rer*RW_pex*EACRW_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USRW_rer*RW_pex*EADRW_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USRW_rer*RW_pex*EADRW_im
)
;
// Effective real exchange rate: double weighting (overall)
USRW_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USRW_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USRW_weightex;
// Effective real exchange rate
US_reer = 1
*USEAA_rer^USEAA_weight
*USEAB_rer^USEAB_weight
*USEAC_rer^USEAC_weight
*USEAD_rer^USEAD_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USEAC_tot^USEAC_weight
*USEAD_tot^USEAD_weight
*USRW_tot^USRW_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
US_imc^((US_mumc-1)/US_mumc) =
+USEAA_numc ^(1/US_mumc)*USEAA_imc^(1-1/US_mumc)
+USEAB_numc ^(1/US_mumc)*USEAB_imc^(1-1/US_mumc)
+USEAC_numc ^(1/US_mumc)*USEAC_imc^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*USRW_imc^(1-1/US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USRW_numc
)^(1/US_mumc)*USEAD_imc^(1-1/US_mumc);
// Demand for bilateral consumption import goods
USEAB_imc = USEAB_numc*((EAB_pex*USEAB_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USEAC_imc = USEAC_numc*((EAC_pex*USEAC_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USRW_imc = USRW_numc*((RW_pex*USRW_rer)/US_pimc)^(-US_mumc)*US_imc;
USEAD_imc = (1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USRW_numc
)*((EAD_pex*USEAD_rer)/US_pimc)^(-US_mumc)*US_imc;
// Price of the consumption good (import)
US_pimc^(1-US_mumc) =
+USEAA_numc * (EAA_pex*USEAA_rer)^(1-US_mumc)
+USEAB_numc * (EAB_pex*USEAB_rer)^(1-US_mumc)
+USEAC_numc * (EAC_pex*USEAC_rer)^(1-US_mumc)
+USRW_numc * (RW_pex*USRW_rer)^(1-US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USRW_numc
)*(EAD_pex*USEAD_rer)^(1-US_mumc);
// Private consumption good (import) inflation
US_piimc = US_pimc/US_pimc(-1)*US_pic;
// Private consumption good (import)
US_imi^((US_mumi-1)/US_mumi) =
+USEAA_numi ^(1/US_mumi)*USEAA_imi^(1-1/US_mumi)
+USEAB_numi ^(1/US_mumi)*USEAB_imi^(1-1/US_mumi)
+USEAC_numi ^(1/US_mumi)*USEAC_imi^(1-1/US_mumi)
+USRW_numi ^(1/US_mumi)*USRW_imi^(1-1/US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USRW_numi
)^(1/US_mumi)*USEAD_imi^(1-1/US_mumi);
// Demand for bilateral consumption import goods
USEAB_imi = USEAB_numi*((EAB_pex*USEAB_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USEAC_imi = USEAC_numi*((EAC_pex*USEAC_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USRW_imi = USRW_numi*((RW_pex*USRW_rer)/US_pimi)^(-US_mumi)*US_imi;
USEAD_imi = (1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USRW_numi
)*((EAD_pex*USEAD_rer)/US_pimi)^(-US_mumi)*US_imi;
// Price of the consumption good (import)
US_pimi^(1-US_mumi) =
+USEAA_numi * (EAA_pex*USEAA_rer)^(1-US_mumi)
+USEAB_numi * (EAB_pex*USEAB_rer)^(1-US_mumi)
+USEAC_numi * (EAC_pex*USEAC_rer)^(1-US_mumi)
+USRW_numi * (RW_pex*USRW_rer)^(1-US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USRW_numi
)*(EAD_pex*USEAD_rer)^(1-US_mumi);
// Private consumption good (import) inflation
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Private consumption good (import)
US_imcg^((US_mumcg-1)/US_mumcg) =
+USEAA_numcg ^(1/US_mumcg)*USEAA_imcg^(1-1/US_mumcg)
+USEAB_numcg ^(1/US_mumcg)*USEAB_imcg^(1-1/US_mumcg)
+USEAC_numcg ^(1/US_mumcg)*USEAC_imcg^(1-1/US_mumcg)
+USRW_numcg ^(1/US_mumcg)*USRW_imcg^(1-1/US_mumcg)
+(1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USRW_numcg
)^(1/US_mumcg)*USEAD_imcg^(1-1/US_mumcg);
// Demand for bilateral consumption import goods
USEAB_imcg = USEAB_numcg*((EAB_pex*USEAB_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USEAC_imcg = USEAC_numcg*((EAC_pex*USEAC_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USRW_imcg = USRW_numcg*((RW_pex*USRW_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
USEAD_imcg = (1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USRW_numcg
)*((EAD_pex*USEAD_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Price of the consumption good (import)
US_pimcg^(1-US_mumcg) =
+USEAA_numcg * (EAA_pex*USEAA_rer)^(1-US_mumcg)
+USEAB_numcg * (EAB_pex*USEAB_rer)^(1-US_mumcg)
+USEAC_numcg * (EAC_pex*USEAC_rer)^(1-US_mumcg)
+USRW_numcg * (RW_pex*USRW_rer)^(1-US_mumcg)
+(1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USRW_numcg
)*(EAD_pex*USEAD_rer)^(1-US_mumcg);
// Private consumption good (import) inflation
US_piimcg = US_pimcg/US_pimcg(-1)*US_pic;
// Private consumption good (import)
US_imig^((US_mumig-1)/US_mumig) =
+USEAA_numig ^(1/US_mumig)*USEAA_imig^(1-1/US_mumig)
+USEAB_numig ^(1/US_mumig)*USEAB_imig^(1-1/US_mumig)
+USEAC_numig ^(1/US_mumig)*USEAC_imig^(1-1/US_mumig)
+USRW_numig ^(1/US_mumig)*USRW_imig^(1-1/US_mumig)
+(1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USRW_numig
)^(1/US_mumig)*USEAD_imig^(1-1/US_mumig);
// Demand for bilateral consumption import goods
USEAB_imig = USEAB_numig*((EAB_pex*USEAB_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USEAC_imig = USEAC_numig*((EAC_pex*USEAC_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USRW_imig = USRW_numig*((RW_pex*USRW_rer)/US_pimig)^(-US_mumig)*US_imig;
USEAD_imig = (1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USRW_numig
)*((EAD_pex*USEAD_rer)/US_pimig)^(-US_mumig)*US_imig;
// Price of the consumption good (import)
US_pimig^(1-US_mumig) =
+USEAA_numig * (EAA_pex*USEAA_rer)^(1-US_mumig)
+USEAB_numig * (EAB_pex*USEAB_rer)^(1-US_mumig)
+USEAC_numig * (EAC_pex*USEAC_rer)^(1-US_mumig)
+USRW_numig * (RW_pex*USRW_rer)^(1-US_mumig)
+(1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USRW_numig
)*(EAD_pex*USEAD_rer)^(1-US_mumig);
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
USEAC_im = 
+USEAC_imc
+USEAC_imi
+USEAC_imcg
+USEAC_imig
;
USEAD_im = 
+USEAD_imc
+USEAD_imi
+USEAD_imcg
+USEAD_imig
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
USEAC_gammaimc = 0;
USEAC_gammaimcdag = 1;
USEAD_gammaimc = 0;
USEAD_gammaimcdag = 1;
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
USEAC_gammaimi = 0;
USEAC_gammaimidag = 1;
USEAD_gammaimi = 0;
USEAD_gammaimidag = 1;
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
USEAC_gammaimcg = 0;
USEAC_gammaimcgdag = 1;
USEAD_gammaimcg = 0;
USEAD_gammaimcgdag = 1;
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
USEAC_gammaimig = 0;
USEAC_gammaimigdag = 1;
USEAD_gammaimig = 0;
USEAD_gammaimigdag = 1;
USRW_gammaimig = 0;
USRW_gammaimigdag = 1;
// Trade balance
US_tb =
+US_pex*EAA_size/US_size*EAAUS_im
-EAA_pex*USEAA_rer*USEAA_im
+US_pex*EAB_size/US_size*EABUS_im
-EAB_pex*USEAB_rer*USEAB_im
+US_pex*EAC_size/US_size*EACUS_im
-EAC_pex*USEAC_rer*USEAC_im
+US_pex*EAD_size/US_size*EADUS_im
-EAD_pex*USEAD_rer*USEAD_im
+US_pex*RW_size/US_size*RWUS_im
-RW_pex*USRW_rer*USRW_im
;
// Aggregate exports (volume)
US_ex =
+EAA_size/US_size*EAAUS_im
+EAB_size/US_size*EABUS_im
+EAC_size/US_size*EACUS_im
+EAD_size/US_size*EADUS_im
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
+US_pex*EAC_size/US_size*EACUS_im
-(EAC_pex*USEAC_rer)*USEAC_imc
-(EAC_pex*USEAC_rer)*USEAC_imi
-(EAC_pex*USEAC_rer)*USEAC_imcg
-(EAC_pex*USEAC_rer)*USEAC_imig
+US_pex*EAD_size/US_size*EADUS_im
-(EAD_pex*USEAD_rer)*USEAD_imc
-(EAD_pex*USEAD_rer)*USEAD_imi
-(EAD_pex*USEAD_rer)*USEAD_imcg
-(EAD_pex*USEAD_rer)*USEAD_imig
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
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
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
USEAC_imcy = (EAC_pex*USEAC_rer)*USEAC_imc/(US_py*US_y);
USEAC_imiy = (EAC_pex*USEAC_rer)*USEAC_imi/(US_py*US_y);
USEAC_imcgy = (EAC_pex*USEAC_rer)*USEAC_imcg/(US_py*US_y);
USEAC_imigy = (EAC_pex*USEAC_rer)*USEAC_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAC_excy  = EAC_size/US_size*US_pex*EACUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAC_exiy  = EAC_size/US_size*US_pex*EACUS_imi/(US_py*US_y);
// Bilateral shares
USEAD_imcy = (EAD_pex*USEAD_rer)*USEAD_imc/(US_py*US_y);
USEAD_imiy = (EAD_pex*USEAD_rer)*USEAD_imi/(US_py*US_y);
USEAD_imcgy = (EAD_pex*USEAD_rer)*USEAD_imcg/(US_py*US_y);
USEAD_imigy = (EAD_pex*USEAD_rer)*USEAD_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAD_excy  = EAD_size/US_size*US_pex*EADUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAD_exiy  = EAD_size/US_size*US_pex*EADUS_imi/(US_py*US_y);
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
EAC_gammab = 0;
// International transaction cost ('risk premium')
EAC_bf = (EAC_bfytarget*EAC_py*EAC_y)/EAC_rer*US_pic;
// Risk premium shock
EAC_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAC_rerdep = EAC_rer/EAC_rer(-1);
// Definition of the terms of trade
EAC_tot = US_pex*EAC_rer/EAC_pex;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
EAD_gammab = 0;
// International transaction cost ('risk premium')
EAD_bf = (EAD_bfytarget*EAD_py*EAD_y)/EAD_rer*US_pic;
// Risk premium shock
EAD_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAD_rerdep = EAD_rer/EAD_rer(-1);
// Definition of the terms of trade
EAD_tot = US_pex*EAD_rer/EAD_pex;
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
-EAC_size*EAC_bf
-EAD_size*EAD_bf
-RW_size*RW_bf
;
// Net foreign asset position
	
		
			EAA_bf/US_r(-1) = -EAA_bh/EAD_r(-1)*EAAEAD_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAD_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1);
		
	
	
		
			EAB_bf/US_r(-1) = -EAB_bh/EAD_r(-1)*EABEAD_rer(-1)/EAB_rer(-1) + EAB_bh(-1)*EABEAD_rer(-2) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1);
		
	
	
		
			EAC_bf/US_r(-1) = -EAC_bh/EAD_r(-1)*EACEAD_rer(-1)/EAC_rer(-1) + EAC_bh(-1)*EACEAD_rer(-2) / EAC_rer(-2) + EAC_bf(-1) + EAC_tb(-1)/EAC_rer(-1);
		
	
	
			EAD_bf/US_r(-1) = -EAD_bh/EAA_r(-1) / EAD_rer(-1) + EAD_bh(-1) / EAD_rer(-2) + EAD_bf(-1) + EAD_tb(-1)/EAD_rer(-1);
		
	
		RW_bf/US_r(-1) = RW_bf(-1)+RW_tb(-1)/RW_rer(-1);
	
US_rer = 1;
		EAAEAD_nerdep = EAA_rerdep/EAD_rerdep*EAA_pic/EAD_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAA_gammabh = 0;
			EAA_bh = (EAA_bhytarget*EAA_py*EAA_y)/EAAEAD_rer*EAD_pic;
		EABEAD_nerdep = EAB_rerdep/EAD_rerdep*EAB_pic/EAD_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAB_gammabh = 0;
			EAB_bh = (EAB_bhytarget*EAB_py*EAB_y)/EABEAD_rer*EAD_pic;
		EACEAD_nerdep = EAC_rerdep/EAD_rerdep*EAC_pic/EAD_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAC_gammabh = 0;
			EAC_bh = (EAC_bhytarget*EAC_py*EAC_y)/EACEAD_rer*EAD_pic;
0 =
	+ EAA_size*EAA_bh
	+ EAB_size*EAB_bh
	+ EAC_size*EAC_bh
	+ EAD_size*EAD_bh
;
//-------------
// Euroarea-wide variables
//-------------
// GDP
EA_y = 
	(
	EAA_size*EAA_pybar*EAA_y
			+ EAB_size*EAAEAB_rerbar*EAB_pybar *EAB_y	
			+ EAC_size*EAAEAC_rerbar*EAC_pybar *EAC_y	
			+ EAD_size*EAAEAD_rerbar*EAD_pybar *EAD_y	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
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
			+ EAC_size*EAAEAC_rerbar*EAC_m	
			+ EAD_size*EAAEAD_rerbar*EAD_m	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
);
	
EA_bf = 
	(
		+ EAA_size*EAA_bf	
		+ EAB_size*EAB_bf	
		+ EAC_size*EAC_bf	
		+ EAD_size*EAD_bf	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
);
// Annual inflation
EA_pic4 = 1 
		* EAA_pic4^(EAA_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
			)) 
		* EAB_pic4^(EAB_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
			)) 
		* EAC_pic4^(EAC_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
			)) 
		* EAD_pic4^(EAD_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
			)) 
;
// Productivity
log(EA_z) = (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;
// Auxiliary equation for steady-state output
EA_ybar = EA_y;
end;
load_params_and_steady_state('eagle_steady_govInv_stage0.txt');
resid(non_zero);
// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_alphat, 0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
EAD_alphat, 0.3;
RW_alphat, 0.3;
US_alphat, 0.3;
end;
steady(homotopy_steps = 5);
// Productivity of public capital
disp('alphag')
homotopy_setup;
EAA_alphag, 0.05;
EAB_alphag, 0.05;
EAC_alphag, 0.05;
EAD_alphag, 0.05;
RW_alphag, 0.05;
US_alphag, 0.05;
end;
steady(homotopy_steps = 5);
save_params_and_steady_state('eagle_steady_govInv.txt');
