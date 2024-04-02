//options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;
//
// Is sigma equal to one for any country ?
// Is omega equal to zero for any country ?
// TODO: fix highlighting for countries5 in Notepad++
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
 EAAEAE_excy
 EAARW_excy
 EAAUS_excy
 EAAEAB_exiy
 EAAEAC_exiy
 EAAEAD_exiy
 EAAEAE_exiy
 EAARW_exiy
 EAAUS_exiy
 EAAEAB_fx
 EAAEAC_fx
 EAAEAD_fx
 EAAEAE_fx
 EAARW_fx
 EAAUS_fx
 EAAEAB_gammaimc
 EAAEAC_gammaimc
 EAAEAD_gammaimc
 EAAEAE_gammaimc
 EAARW_gammaimc
 EAAUS_gammaimc
 EAAEAB_gammaimcdag
 EAAEAC_gammaimcdag
 EAAEAD_gammaimcdag
 EAAEAE_gammaimcdag
 EAARW_gammaimcdag
 EAAUS_gammaimcdag
 EAAEAB_gammaimi
 EAAEAC_gammaimi
 EAAEAD_gammaimi
 EAAEAE_gammaimi
 EAARW_gammaimi
 EAAUS_gammaimi
 EAAEAB_gammaimidag
 EAAEAC_gammaimidag
 EAAEAD_gammaimidag
 EAAEAE_gammaimidag
 EAARW_gammaimidag
 EAAUS_gammaimidag
 EAAEAB_gx
 EAAEAC_gx
 EAAEAD_gx
 EAAEAE_gx
 EAARW_gx
 EAAUS_gx
 EAAEAB_im
 EAAEAC_im
 EAAEAD_im
 EAAEAE_im
 EAARW_im
 EAAUS_im
 EAAEAB_imc
 EAAEAC_imc
 EAAEAD_imc
 EAAEAE_imc
 EAARW_imc
 EAAUS_imc
 EAAEAB_imcy
 EAAEAC_imcy
 EAAEAD_imcy
 EAAEAE_imcy
 EAARW_imcy
 EAAUS_imcy
 EAAEAB_imi
 EAAEAC_imi
 EAAEAD_imi
 EAAEAE_imi
 EAARW_imi
 EAAUS_imi
 EAAEAB_imiy
 EAAEAC_imiy
 EAAEAD_imiy
 EAAEAE_imiy
 EAARW_imiy
 EAAUS_imiy
 EAAEAB_piim
 EAAEAC_piim
 EAAEAD_piim
 EAAEAE_piim
 EAARW_piim
 EAAUS_piim
 EAAEAB_pim
 EAAEAC_pim
 EAAEAD_pim
 EAAEAE_pim
 EAARW_pim
 EAAUS_pim
 EAAEAB_pimtilde
 EAAEAC_pimtilde
 EAAEAD_pimtilde
 EAAEAE_pimtilde
 EAARW_pimtilde
 EAAUS_pimtilde
 EAAEAB_rer
 EAAEAC_rer
 EAAEAD_rer
 EAAEAE_rer
 EAARW_rer
 EAAUS_rer
 EAAEAB_sx
 EAAEAC_sx
 EAAEAD_sx
 EAAEAE_sx
 EAARW_sx
 EAAUS_sx
 EAAEAB_tot
 EAAEAC_tot
 EAAEAD_tot
 EAAEAE_tot
 EAARW_tot
 EAAUS_tot
 EAAEAB_weight
 EAAEAC_weight
 EAAEAD_weight
 EAAEAE_weight
 EAARW_weight
 EAAUS_weight
 EAAEAB_weightex
 EAAEAC_weightex
 EAAEAD_weightex
 EAAEAE_weightex
 EAARW_weightex
 EAAUS_weightex
 EAAEAB_weightim
 EAAEAC_weightim
 EAAEAD_weightim
 EAAEAE_weightim
 EAARW_weightim
 EAAUS_weightim
 EAA_b
 EAA_bf
 EAA_by
 EAA_c
 EAA_ccesi
 EAA_ccesj
 EAA_ci
 EAA_cj
 EAA_cy
 EAA_d
 EAA_dcci
 EAA_dccj
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
 EAA_i
 EAA_ig
 EAA_ii
 EAA_im
 EAA_imc
 EAA_imcy
 EAA_imi
 EAA_imiy
 EAA_imy
 EAA_internalrer
 EAA_iy
 EAA_igy
 EAA_k
 EAA_kd
 EAA_kdn
 EAA_kdt
 EAA_kg
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
 EAA_pex
 EAA_pht
 EAA_phttilde
 EAA_pi
 EAA_pic
 EAA_pic4
 EAA_piex4
 EAA_piht
 EAA_piimc
 EAA_piimc4
 EAA_piimi
 EAA_pim
 EAA_pimc
 EAA_pimi
 EAA_pint
 EAA_piw
 EAA_piw4
 EAA_pnt
 EAA_pnttilde
 EAA_pttc
 EAA_ptti
 EAA_py
 EAA_q
 EAA_qc
 EAA_qi
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
 EAA_alphag
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
 EAA_deltag
 EAA_gammab1
 EAA_gammai1
 EAA_gammaimc1
 EAA_gammaimi1
 EAA_gammau2
 EAA_gammav1
 EAA_gammav2
 EAA_kappa
 EAA_muc
 EAA_mucces
 EAA_mui
 EAA_mumc
 EAA_mumi
 EAA_mutc
 EAA_muti
 EAA_nuc
 EAA_nucces
 EAA_nui
 EAA_nutc
 EAA_nuti
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
 EAAEAE_rerbar
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
 EAA_cpim
// TODO: change below to epsgc 
 EAA_epsg
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
 EABEAE_excy
 EABRW_excy
 EABUS_excy
 EABEAA_exiy
 EABEAC_exiy
 EABEAD_exiy
 EABEAE_exiy
 EABRW_exiy
 EABUS_exiy
 EABEAA_fx
 EABEAC_fx
 EABEAD_fx
 EABEAE_fx
 EABRW_fx
 EABUS_fx
 EABEAA_gammaimc
 EABEAC_gammaimc
 EABEAD_gammaimc
 EABEAE_gammaimc
 EABRW_gammaimc
 EABUS_gammaimc
 EABEAA_gammaimcdag
 EABEAC_gammaimcdag
 EABEAD_gammaimcdag
 EABEAE_gammaimcdag
 EABRW_gammaimcdag
 EABUS_gammaimcdag
 EABEAA_gammaimi
 EABEAC_gammaimi
 EABEAD_gammaimi
 EABEAE_gammaimi
 EABRW_gammaimi
 EABUS_gammaimi
 EABEAA_gammaimidag
 EABEAC_gammaimidag
 EABEAD_gammaimidag
 EABEAE_gammaimidag
 EABRW_gammaimidag
 EABUS_gammaimidag
 EABEAA_gx
 EABEAC_gx
 EABEAD_gx
 EABEAE_gx
 EABRW_gx
 EABUS_gx
 EABEAA_im
 EABEAC_im
 EABEAD_im
 EABEAE_im
 EABRW_im
 EABUS_im
 EABEAA_imc
 EABEAC_imc
 EABEAD_imc
 EABEAE_imc
 EABRW_imc
 EABUS_imc
 EABEAA_imcy
 EABEAC_imcy
 EABEAD_imcy
 EABEAE_imcy
 EABRW_imcy
 EABUS_imcy
 EABEAA_imi
 EABEAC_imi
 EABEAD_imi
 EABEAE_imi
 EABRW_imi
 EABUS_imi
 EABEAA_imiy
 EABEAC_imiy
 EABEAD_imiy
 EABEAE_imiy
 EABRW_imiy
 EABUS_imiy
 EABEAA_piim
 EABEAC_piim
 EABEAD_piim
 EABEAE_piim
 EABRW_piim
 EABUS_piim
 EABEAA_pim
 EABEAC_pim
 EABEAD_pim
 EABEAE_pim
 EABRW_pim
 EABUS_pim
 EABEAA_pimtilde
 EABEAC_pimtilde
 EABEAD_pimtilde
 EABEAE_pimtilde
 EABRW_pimtilde
 EABUS_pimtilde
 EABEAA_rer
 EABEAC_rer
 EABEAD_rer
 EABEAE_rer
 EABRW_rer
 EABUS_rer
 EABEAA_sx
 EABEAC_sx
 EABEAD_sx
 EABEAE_sx
 EABRW_sx
 EABUS_sx
 EABEAA_tot
 EABEAC_tot
 EABEAD_tot
 EABEAE_tot
 EABRW_tot
 EABUS_tot
 EABEAA_weight
 EABEAC_weight
 EABEAD_weight
 EABEAE_weight
 EABRW_weight
 EABUS_weight
 EABEAA_weightex
 EABEAC_weightex
 EABEAD_weightex
 EABEAE_weightex
 EABRW_weightex
 EABUS_weightex
 EABEAA_weightim
 EABEAC_weightim
 EABEAD_weightim
 EABEAE_weightim
 EABRW_weightim
 EABUS_weightim
 EAB_b
 EAB_bf
 EAB_by
 EAB_c
 EAB_ccesi
 EAB_ccesj
 EAB_ci
 EAB_cj
 EAB_cy
 EAB_d
 EAB_dcci
 EAB_dccj
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
 EAB_i
 EAB_ig
 EAB_ii
 EAB_im
 EAB_imc
 EAB_imcy
 EAB_imi
 EAB_imiy
 EAB_imy
 EAB_internalrer
 EAB_iy
 EAB_igy
 EAB_k
 EAB_kd
 EAB_kdn
 EAB_kdt
 EAB_kg
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
 EAB_pex
 EAB_pht
 EAB_phttilde
 EAB_pi
 EAB_pic
 EAB_pic4
 EAB_piex4
 EAB_piht
 EAB_piimc
 EAB_piimc4
 EAB_piimi
 EAB_pim
 EAB_pimc
 EAB_pimi
 EAB_pint
 EAB_piw
 EAB_piw4
 EAB_pnt
 EAB_pnttilde
 EAB_pttc
 EAB_ptti
 EAB_py
 EAB_q
 EAB_qc
 EAB_qi
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
 EAB_alphag
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
 EAB_deltag
 EAB_gammab1
 EAB_gammai1
 EAB_gammaimc1
 EAB_gammaimi1
 EAB_gammau2
 EAB_gammav1
 EAB_gammav2
 EAB_kappa
 EAB_muc
 EAB_mucces
 EAB_mui
 EAB_mumc
 EAB_mumi
 EAB_mutc
 EAB_muti
 EAB_nuc
 EAB_nucces
 EAB_nui
 EAB_nutc
 EAB_nuti
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
 EABEAE_rerbar
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
 EAB_cpim
// TODO: change below to epsgc 
 EAB_epsg
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
 EACEAE_excy
 EACRW_excy
 EACUS_excy
 EACEAA_exiy
 EACEAB_exiy
 EACEAD_exiy
 EACEAE_exiy
 EACRW_exiy
 EACUS_exiy
 EACEAA_fx
 EACEAB_fx
 EACEAD_fx
 EACEAE_fx
 EACRW_fx
 EACUS_fx
 EACEAA_gammaimc
 EACEAB_gammaimc
 EACEAD_gammaimc
 EACEAE_gammaimc
 EACRW_gammaimc
 EACUS_gammaimc
 EACEAA_gammaimcdag
 EACEAB_gammaimcdag
 EACEAD_gammaimcdag
 EACEAE_gammaimcdag
 EACRW_gammaimcdag
 EACUS_gammaimcdag
 EACEAA_gammaimi
 EACEAB_gammaimi
 EACEAD_gammaimi
 EACEAE_gammaimi
 EACRW_gammaimi
 EACUS_gammaimi
 EACEAA_gammaimidag
 EACEAB_gammaimidag
 EACEAD_gammaimidag
 EACEAE_gammaimidag
 EACRW_gammaimidag
 EACUS_gammaimidag
 EACEAA_gx
 EACEAB_gx
 EACEAD_gx
 EACEAE_gx
 EACRW_gx
 EACUS_gx
 EACEAA_im
 EACEAB_im
 EACEAD_im
 EACEAE_im
 EACRW_im
 EACUS_im
 EACEAA_imc
 EACEAB_imc
 EACEAD_imc
 EACEAE_imc
 EACRW_imc
 EACUS_imc
 EACEAA_imcy
 EACEAB_imcy
 EACEAD_imcy
 EACEAE_imcy
 EACRW_imcy
 EACUS_imcy
 EACEAA_imi
 EACEAB_imi
 EACEAD_imi
 EACEAE_imi
 EACRW_imi
 EACUS_imi
 EACEAA_imiy
 EACEAB_imiy
 EACEAD_imiy
 EACEAE_imiy
 EACRW_imiy
 EACUS_imiy
 EACEAA_piim
 EACEAB_piim
 EACEAD_piim
 EACEAE_piim
 EACRW_piim
 EACUS_piim
 EACEAA_pim
 EACEAB_pim
 EACEAD_pim
 EACEAE_pim
 EACRW_pim
 EACUS_pim
 EACEAA_pimtilde
 EACEAB_pimtilde
 EACEAD_pimtilde
 EACEAE_pimtilde
 EACRW_pimtilde
 EACUS_pimtilde
 EACEAA_rer
 EACEAB_rer
 EACEAD_rer
 EACEAE_rer
 EACRW_rer
 EACUS_rer
 EACEAA_sx
 EACEAB_sx
 EACEAD_sx
 EACEAE_sx
 EACRW_sx
 EACUS_sx
 EACEAA_tot
 EACEAB_tot
 EACEAD_tot
 EACEAE_tot
 EACRW_tot
 EACUS_tot
 EACEAA_weight
 EACEAB_weight
 EACEAD_weight
 EACEAE_weight
 EACRW_weight
 EACUS_weight
 EACEAA_weightex
 EACEAB_weightex
 EACEAD_weightex
 EACEAE_weightex
 EACRW_weightex
 EACUS_weightex
 EACEAA_weightim
 EACEAB_weightim
 EACEAD_weightim
 EACEAE_weightim
 EACRW_weightim
 EACUS_weightim
 EAC_b
 EAC_bf
 EAC_by
 EAC_c
 EAC_ccesi
 EAC_ccesj
 EAC_ci
 EAC_cj
 EAC_cy
 EAC_d
 EAC_dcci
 EAC_dccj
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
 EAC_i
 EAC_ig
 EAC_ii
 EAC_im
 EAC_imc
 EAC_imcy
 EAC_imi
 EAC_imiy
 EAC_imy
 EAC_internalrer
 EAC_iy
 EAC_igy
 EAC_k
 EAC_kd
 EAC_kdn
 EAC_kdt
 EAC_kg
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
 EAC_pex
 EAC_pht
 EAC_phttilde
 EAC_pi
 EAC_pic
 EAC_pic4
 EAC_piex4
 EAC_piht
 EAC_piimc
 EAC_piimc4
 EAC_piimi
 EAC_pim
 EAC_pimc
 EAC_pimi
 EAC_pint
 EAC_piw
 EAC_piw4
 EAC_pnt
 EAC_pnttilde
 EAC_pttc
 EAC_ptti
 EAC_py
 EAC_q
 EAC_qc
 EAC_qi
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
 EAC_alphag
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
 EAC_deltag
 EAC_gammab1
 EAC_gammai1
 EAC_gammaimc1
 EAC_gammaimi1
 EAC_gammau2
 EAC_gammav1
 EAC_gammav2
 EAC_kappa
 EAC_muc
 EAC_mucces
 EAC_mui
 EAC_mumc
 EAC_mumi
 EAC_mutc
 EAC_muti
 EAC_nuc
 EAC_nucces
 EAC_nui
 EAC_nutc
 EAC_nuti
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
 EACEAE_rerbar
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
 EAC_cpim
// TODO: change below to epsgc 
 EAC_epsg
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
 EADEAE_excy
 EADRW_excy
 EADUS_excy
 EADEAA_exiy
 EADEAB_exiy
 EADEAC_exiy
 EADEAE_exiy
 EADRW_exiy
 EADUS_exiy
 EADEAA_fx
 EADEAB_fx
 EADEAC_fx
 EADEAE_fx
 EADRW_fx
 EADUS_fx
 EADEAA_gammaimc
 EADEAB_gammaimc
 EADEAC_gammaimc
 EADEAE_gammaimc
 EADRW_gammaimc
 EADUS_gammaimc
 EADEAA_gammaimcdag
 EADEAB_gammaimcdag
 EADEAC_gammaimcdag
 EADEAE_gammaimcdag
 EADRW_gammaimcdag
 EADUS_gammaimcdag
 EADEAA_gammaimi
 EADEAB_gammaimi
 EADEAC_gammaimi
 EADEAE_gammaimi
 EADRW_gammaimi
 EADUS_gammaimi
 EADEAA_gammaimidag
 EADEAB_gammaimidag
 EADEAC_gammaimidag
 EADEAE_gammaimidag
 EADRW_gammaimidag
 EADUS_gammaimidag
 EADEAA_gx
 EADEAB_gx
 EADEAC_gx
 EADEAE_gx
 EADRW_gx
 EADUS_gx
 EADEAA_im
 EADEAB_im
 EADEAC_im
 EADEAE_im
 EADRW_im
 EADUS_im
 EADEAA_imc
 EADEAB_imc
 EADEAC_imc
 EADEAE_imc
 EADRW_imc
 EADUS_imc
 EADEAA_imcy
 EADEAB_imcy
 EADEAC_imcy
 EADEAE_imcy
 EADRW_imcy
 EADUS_imcy
 EADEAA_imi
 EADEAB_imi
 EADEAC_imi
 EADEAE_imi
 EADRW_imi
 EADUS_imi
 EADEAA_imiy
 EADEAB_imiy
 EADEAC_imiy
 EADEAE_imiy
 EADRW_imiy
 EADUS_imiy
 EADEAA_piim
 EADEAB_piim
 EADEAC_piim
 EADEAE_piim
 EADRW_piim
 EADUS_piim
 EADEAA_pim
 EADEAB_pim
 EADEAC_pim
 EADEAE_pim
 EADRW_pim
 EADUS_pim
 EADEAA_pimtilde
 EADEAB_pimtilde
 EADEAC_pimtilde
 EADEAE_pimtilde
 EADRW_pimtilde
 EADUS_pimtilde
 EADEAA_rer
 EADEAB_rer
 EADEAC_rer
 EADEAE_rer
 EADRW_rer
 EADUS_rer
 EADEAA_sx
 EADEAB_sx
 EADEAC_sx
 EADEAE_sx
 EADRW_sx
 EADUS_sx
 EADEAA_tot
 EADEAB_tot
 EADEAC_tot
 EADEAE_tot
 EADRW_tot
 EADUS_tot
 EADEAA_weight
 EADEAB_weight
 EADEAC_weight
 EADEAE_weight
 EADRW_weight
 EADUS_weight
 EADEAA_weightex
 EADEAB_weightex
 EADEAC_weightex
 EADEAE_weightex
 EADRW_weightex
 EADUS_weightex
 EADEAA_weightim
 EADEAB_weightim
 EADEAC_weightim
 EADEAE_weightim
 EADRW_weightim
 EADUS_weightim
 EAD_b
 EAD_bf
 EAD_by
 EAD_c
 EAD_ccesi
 EAD_ccesj
 EAD_ci
 EAD_cj
 EAD_cy
 EAD_d
 EAD_dcci
 EAD_dccj
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
 EAD_i
 EAD_ig
 EAD_ii
 EAD_im
 EAD_imc
 EAD_imcy
 EAD_imi
 EAD_imiy
 EAD_imy
 EAD_internalrer
 EAD_iy
 EAD_igy
 EAD_k
 EAD_kd
 EAD_kdn
 EAD_kdt
 EAD_kg
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
 EAD_pex
 EAD_pht
 EAD_phttilde
 EAD_pi
 EAD_pic
 EAD_pic4
 EAD_piex4
 EAD_piht
 EAD_piimc
 EAD_piimc4
 EAD_piimi
 EAD_pim
 EAD_pimc
 EAD_pimi
 EAD_pint
 EAD_piw
 EAD_piw4
 EAD_pnt
 EAD_pnttilde
 EAD_pttc
 EAD_ptti
 EAD_py
 EAD_q
 EAD_qc
 EAD_qi
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
 EAD_alphag
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
 EAD_deltag
 EAD_gammab1
 EAD_gammai1
 EAD_gammaimc1
 EAD_gammaimi1
 EAD_gammau2
 EAD_gammav1
 EAD_gammav2
 EAD_kappa
 EAD_muc
 EAD_mucces
 EAD_mui
 EAD_mumc
 EAD_mumi
 EAD_mutc
 EAD_muti
 EAD_nuc
 EAD_nucces
 EAD_nui
 EAD_nutc
 EAD_nuti
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
 EADEAE_rerbar
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
 EAD_cpim
// TODO: change below to epsgc 
 EAD_epsg
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
 EAEEAA_excy
 EAEEAB_excy
 EAEEAC_excy
 EAEEAD_excy
 EAERW_excy
 EAEUS_excy
 EAEEAA_exiy
 EAEEAB_exiy
 EAEEAC_exiy
 EAEEAD_exiy
 EAERW_exiy
 EAEUS_exiy
 EAEEAA_fx
 EAEEAB_fx
 EAEEAC_fx
 EAEEAD_fx
 EAERW_fx
 EAEUS_fx
 EAEEAA_gammaimc
 EAEEAB_gammaimc
 EAEEAC_gammaimc
 EAEEAD_gammaimc
 EAERW_gammaimc
 EAEUS_gammaimc
 EAEEAA_gammaimcdag
 EAEEAB_gammaimcdag
 EAEEAC_gammaimcdag
 EAEEAD_gammaimcdag
 EAERW_gammaimcdag
 EAEUS_gammaimcdag
 EAEEAA_gammaimi
 EAEEAB_gammaimi
 EAEEAC_gammaimi
 EAEEAD_gammaimi
 EAERW_gammaimi
 EAEUS_gammaimi
 EAEEAA_gammaimidag
 EAEEAB_gammaimidag
 EAEEAC_gammaimidag
 EAEEAD_gammaimidag
 EAERW_gammaimidag
 EAEUS_gammaimidag
 EAEEAA_gx
 EAEEAB_gx
 EAEEAC_gx
 EAEEAD_gx
 EAERW_gx
 EAEUS_gx
 EAEEAA_im
 EAEEAB_im
 EAEEAC_im
 EAEEAD_im
 EAERW_im
 EAEUS_im
 EAEEAA_imc
 EAEEAB_imc
 EAEEAC_imc
 EAEEAD_imc
 EAERW_imc
 EAEUS_imc
 EAEEAA_imcy
 EAEEAB_imcy
 EAEEAC_imcy
 EAEEAD_imcy
 EAERW_imcy
 EAEUS_imcy
 EAEEAA_imi
 EAEEAB_imi
 EAEEAC_imi
 EAEEAD_imi
 EAERW_imi
 EAEUS_imi
 EAEEAA_imiy
 EAEEAB_imiy
 EAEEAC_imiy
 EAEEAD_imiy
 EAERW_imiy
 EAEUS_imiy
 EAEEAA_piim
 EAEEAB_piim
 EAEEAC_piim
 EAEEAD_piim
 EAERW_piim
 EAEUS_piim
 EAEEAA_pim
 EAEEAB_pim
 EAEEAC_pim
 EAEEAD_pim
 EAERW_pim
 EAEUS_pim
 EAEEAA_pimtilde
 EAEEAB_pimtilde
 EAEEAC_pimtilde
 EAEEAD_pimtilde
 EAERW_pimtilde
 EAEUS_pimtilde
 EAEEAA_rer
 EAEEAB_rer
 EAEEAC_rer
 EAEEAD_rer
 EAERW_rer
 EAEUS_rer
 EAEEAA_sx
 EAEEAB_sx
 EAEEAC_sx
 EAEEAD_sx
 EAERW_sx
 EAEUS_sx
 EAEEAA_tot
 EAEEAB_tot
 EAEEAC_tot
 EAEEAD_tot
 EAERW_tot
 EAEUS_tot
 EAEEAA_weight
 EAEEAB_weight
 EAEEAC_weight
 EAEEAD_weight
 EAERW_weight
 EAEUS_weight
 EAEEAA_weightex
 EAEEAB_weightex
 EAEEAC_weightex
 EAEEAD_weightex
 EAERW_weightex
 EAEUS_weightex
 EAEEAA_weightim
 EAEEAB_weightim
 EAEEAC_weightim
 EAEEAD_weightim
 EAERW_weightim
 EAEUS_weightim
 EAE_b
 EAE_bf
 EAE_by
 EAE_c
 EAE_ccesi
 EAE_ccesj
 EAE_ci
 EAE_cj
 EAE_cy
 EAE_d
 EAE_dcci
 EAE_dccj
 EAE_dn
 EAE_dt
 EAE_epsilonm
 EAE_etot
 EAE_ex
 EAE_fh
 EAE_fi
 EAE_fj
 EAE_fn
 EAE_cg
 EAE_gammab
 EAE_gammai
 EAE_gammaider
 EAE_gammau
 EAE_gammauder
 EAE_gammav
 EAE_gammavi
 EAE_gammavider
 EAE_gammavj
 EAE_gammavjder
 EAE_gh
 EAE_gi
 EAE_gj
 EAE_gn
 EAE_cgy
 EAE_ht
 EAE_htc
 EAE_hti
 EAE_i
 EAE_ig
 EAE_ii
 EAE_im
 EAE_imc
 EAE_imcy
 EAE_imi
 EAE_imiy
 EAE_imy
 EAE_internalrer
 EAE_iy
 EAE_igy
 EAE_k
 EAE_kd
 EAE_kdn
 EAE_kdt
 EAE_kg
 EAE_ki
 EAE_lambdai
 EAE_lambdaj
 EAE_lcy
 EAE_m
 EAE_mcn
 EAE_mct
 EAE_mi
 EAE_mj
 EAE_nd
 EAE_ndi
 EAE_ndj
 EAE_ndn
 EAE_ndt
 EAE_ni
 EAE_nj
 EAE_nt
 EAE_ntc
 EAE_nti
 EAE_pex
 EAE_pht
 EAE_phttilde
 EAE_pi
 EAE_pic
 EAE_pic4
 EAE_piex4
 EAE_piht
 EAE_piimc
 EAE_piimc4
 EAE_piimi
 EAE_pim
 EAE_pimc
 EAE_pimi
 EAE_pint
 EAE_piw
 EAE_piw4
 EAE_pnt
 EAE_pnttilde
 EAE_pttc
 EAE_ptti
 EAE_py
 EAE_q
 EAE_qc
 EAE_qi
 EAE_r
 EAE_reer
 EAE_rer
 EAE_rerdep
 EAE_rk
 EAE_rp
 EAE_rr
 EAE_rrstar
 EAE_sh
 EAE_si
 EAE_sj
 EAE_snt
 EAE_t
 EAE_tauc
 EAE_taud
 EAE_tauk
 EAE_taun
 EAE_tauwf
 EAE_tauwh
 EAE_tb
 EAE_tby
 EAE_ti
 EAE_tj
 EAE_tot
 EAE_tr
 EAE_tri
 EAE_trj
 EAE_try
 EAE_ttc
 EAE_tti
 EAE_ty
 EAE_u
 EAE_utili
 EAE_utilj
 EAE_vi
 EAE_vj
 EAE_w
 EAE_wcst
 EAE_whty
 EAE_wi
 EAE_witilde
 EAE_wj
 EAE_wjtilde
 EAE_wnty
 EAE_wy
 EAE_y
 EAE_ygap
 EAE_ygrowth
 EAE_ygrowth4
 EAE_yhty
 EAE_ynty
 EAE_yshare
 EAE_ysn
 EAE_yst
 EAE_zcon
 EAE_zinv
 EAE_zn
 EAE_zt
;
// Parameters
parameters
 EAE_alphag
 EAE_alphan
 EAE_alphat
 EAE_beta
 EAE_bfytarget
 EAE_bhytarget
 EAE_bytarget
 EAE_chin
 EAE_chih
 EAE_chii
 EAE_chij
 EAE_chix
 EAE_delta
 EAE_deltag
 EAE_gammab1
 EAE_gammai1
 EAE_gammaimc1
 EAE_gammaimi1
 EAE_gammau2
 EAE_gammav1
 EAE_gammav2
 EAE_kappa
 EAE_muc
 EAE_mucces
 EAE_mui
 EAE_mumc
 EAE_mumi
 EAE_mutc
 EAE_muti
 EAE_nuc
 EAE_nucces
 EAE_nui
 EAE_nutc
 EAE_nuti
 EAE_omega
 EAE_phitb
 EAE_pi4target
 EAE_psin
 EAE_psit
 EAE_rhocg
 EAE_rhoig
 EAE_rhorp
 EAE_rhotauc
 EAE_rhotaud
 EAE_rhotauk
 EAE_rhotaun
 EAE_rhotauwf
 EAE_rhotauwh
 EAE_rhotr
 EAE_rhowcst
 EAE_rhozcon
 EAE_rhozinv
 EAE_rhozn
 EAE_rhozt
 EAE_sigma
 EAE_size
 EAE_xin
 EAE_xih
 EAE_xii
 EAE_xij
 EAE_xix
 EAE_zeta
 EAE_eta
 EAE_etai
 EAE_etaj
 EAE_thetan
 EAE_thetat
 EAE_upsilont
 EAE_upsilontr
 EAEEAA_rerbar
 EAEEAB_rerbar
 EAEEAC_rerbar
 EAEEAD_rerbar
 EAERW_rerbar
 EAEUS_rerbar
 EAE_pibar
 EAE_psinbar
 EAE_psitbar
 EAE_pybar
 EAE_qbar
 EAE_trybar
 EAE_ybar
 EAE_ynbar
 EAE_ytbar
;
// Exogenous
varexo
 EAE_cgybar
 EAE_igybar
 EAE_taucbar
 EAE_taudbar
 EAE_taukbar
 EAE_taunbar
 EAE_tauwfbar
 EAE_tauwhbar
 EAE_wcstbar
 EAE_zconbar
 EAE_zinvbar
 EAE_znbar
 EAE_ztbar
 EAE_cpim
// TODO: change below to epsgc 
 EAE_epsg
 EAE_epsgi
 EAE_epstauc
 EAE_epstaud
 EAE_epstauk
 EAE_epstaun
 EAE_epstauwf
 EAE_epstauwh
 EAE_epstr
 EAE_epswcst
 EAE_epszcon
 EAE_epszinv
 EAE_epszn
 EAE_epszt
;
// Endogenous
var
 RWEAA_excy
 RWEAB_excy
 RWEAC_excy
 RWEAD_excy
 RWEAE_excy
 RWUS_excy
 RWEAA_exiy
 RWEAB_exiy
 RWEAC_exiy
 RWEAD_exiy
 RWEAE_exiy
 RWUS_exiy
 RWEAA_fx
 RWEAB_fx
 RWEAC_fx
 RWEAD_fx
 RWEAE_fx
 RWUS_fx
 RWEAA_gammaimc
 RWEAB_gammaimc
 RWEAC_gammaimc
 RWEAD_gammaimc
 RWEAE_gammaimc
 RWUS_gammaimc
 RWEAA_gammaimcdag
 RWEAB_gammaimcdag
 RWEAC_gammaimcdag
 RWEAD_gammaimcdag
 RWEAE_gammaimcdag
 RWUS_gammaimcdag
 RWEAA_gammaimi
 RWEAB_gammaimi
 RWEAC_gammaimi
 RWEAD_gammaimi
 RWEAE_gammaimi
 RWUS_gammaimi
 RWEAA_gammaimidag
 RWEAB_gammaimidag
 RWEAC_gammaimidag
 RWEAD_gammaimidag
 RWEAE_gammaimidag
 RWUS_gammaimidag
 RWEAA_gx
 RWEAB_gx
 RWEAC_gx
 RWEAD_gx
 RWEAE_gx
 RWUS_gx
 RWEAA_im
 RWEAB_im
 RWEAC_im
 RWEAD_im
 RWEAE_im
 RWUS_im
 RWEAA_imc
 RWEAB_imc
 RWEAC_imc
 RWEAD_imc
 RWEAE_imc
 RWUS_imc
 RWEAA_imcy
 RWEAB_imcy
 RWEAC_imcy
 RWEAD_imcy
 RWEAE_imcy
 RWUS_imcy
 RWEAA_imi
 RWEAB_imi
 RWEAC_imi
 RWEAD_imi
 RWEAE_imi
 RWUS_imi
 RWEAA_imiy
 RWEAB_imiy
 RWEAC_imiy
 RWEAD_imiy
 RWEAE_imiy
 RWUS_imiy
 RWEAA_piim
 RWEAB_piim
 RWEAC_piim
 RWEAD_piim
 RWEAE_piim
 RWUS_piim
 RWEAA_pim
 RWEAB_pim
 RWEAC_pim
 RWEAD_pim
 RWEAE_pim
 RWUS_pim
 RWEAA_pimtilde
 RWEAB_pimtilde
 RWEAC_pimtilde
 RWEAD_pimtilde
 RWEAE_pimtilde
 RWUS_pimtilde
 RWEAA_rer
 RWEAB_rer
 RWEAC_rer
 RWEAD_rer
 RWEAE_rer
 RWUS_rer
 RWEAA_sx
 RWEAB_sx
 RWEAC_sx
 RWEAD_sx
 RWEAE_sx
 RWUS_sx
 RWEAA_tot
 RWEAB_tot
 RWEAC_tot
 RWEAD_tot
 RWEAE_tot
 RWUS_tot
 RWEAA_weight
 RWEAB_weight
 RWEAC_weight
 RWEAD_weight
 RWEAE_weight
 RWUS_weight
 RWEAA_weightex
 RWEAB_weightex
 RWEAC_weightex
 RWEAD_weightex
 RWEAE_weightex
 RWUS_weightex
 RWEAA_weightim
 RWEAB_weightim
 RWEAC_weightim
 RWEAD_weightim
 RWEAE_weightim
 RWUS_weightim
 RW_b
 RW_bf
 RW_by
 RW_c
 RW_ccesi
 RW_ccesj
 RW_ci
 RW_cj
 RW_cy
 RW_d
 RW_dcci
 RW_dccj
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
 RW_i
 RW_ig
 RW_ii
 RW_im
 RW_imc
 RW_imcy
 RW_imi
 RW_imiy
 RW_imy
 RW_internalrer
 RW_iy
 RW_igy
 RW_k
 RW_kd
 RW_kdn
 RW_kdt
 RW_kg
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
 RW_pex
 RW_pht
 RW_phttilde
 RW_pi
 RW_pic
 RW_pic4
 RW_piex4
 RW_piht
 RW_piimc
 RW_piimc4
 RW_piimi
 RW_pim
 RW_pimc
 RW_pimi
 RW_pint
 RW_piw
 RW_piw4
 RW_pnt
 RW_pnttilde
 RW_pttc
 RW_ptti
 RW_py
 RW_q
 RW_qc
 RW_qi
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
 RW_alphag
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
 RW_deltag
 RW_gammab1
 RW_gammai1
 RW_gammaimc1
 RW_gammaimi1
 RW_gammau2
 RW_gammav1
 RW_gammav2
 RW_kappa
 RW_muc
 RW_mucces
 RW_mui
 RW_mumc
 RW_mumi
 RW_mutc
 RW_muti
 RW_nuc
 RW_nucces
 RW_nui
 RW_nutc
 RW_nuti
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
 RWEAE_rerbar
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
 RW_cpim
// TODO: change below to epsgc 
 RW_epsg
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
 USEAE_excy
 USRW_excy
 USEAA_exiy
 USEAB_exiy
 USEAC_exiy
 USEAD_exiy
 USEAE_exiy
 USRW_exiy
 USEAA_fx
 USEAB_fx
 USEAC_fx
 USEAD_fx
 USEAE_fx
 USRW_fx
 USEAA_gammaimc
 USEAB_gammaimc
 USEAC_gammaimc
 USEAD_gammaimc
 USEAE_gammaimc
 USRW_gammaimc
 USEAA_gammaimcdag
 USEAB_gammaimcdag
 USEAC_gammaimcdag
 USEAD_gammaimcdag
 USEAE_gammaimcdag
 USRW_gammaimcdag
 USEAA_gammaimi
 USEAB_gammaimi
 USEAC_gammaimi
 USEAD_gammaimi
 USEAE_gammaimi
 USRW_gammaimi
 USEAA_gammaimidag
 USEAB_gammaimidag
 USEAC_gammaimidag
 USEAD_gammaimidag
 USEAE_gammaimidag
 USRW_gammaimidag
 USEAA_gx
 USEAB_gx
 USEAC_gx
 USEAD_gx
 USEAE_gx
 USRW_gx
 USEAA_im
 USEAB_im
 USEAC_im
 USEAD_im
 USEAE_im
 USRW_im
 USEAA_imc
 USEAB_imc
 USEAC_imc
 USEAD_imc
 USEAE_imc
 USRW_imc
 USEAA_imcy
 USEAB_imcy
 USEAC_imcy
 USEAD_imcy
 USEAE_imcy
 USRW_imcy
 USEAA_imi
 USEAB_imi
 USEAC_imi
 USEAD_imi
 USEAE_imi
 USRW_imi
 USEAA_imiy
 USEAB_imiy
 USEAC_imiy
 USEAD_imiy
 USEAE_imiy
 USRW_imiy
 USEAA_piim
 USEAB_piim
 USEAC_piim
 USEAD_piim
 USEAE_piim
 USRW_piim
 USEAA_pim
 USEAB_pim
 USEAC_pim
 USEAD_pim
 USEAE_pim
 USRW_pim
 USEAA_pimtilde
 USEAB_pimtilde
 USEAC_pimtilde
 USEAD_pimtilde
 USEAE_pimtilde
 USRW_pimtilde
 USEAA_rer
 USEAB_rer
 USEAC_rer
 USEAD_rer
 USEAE_rer
 USRW_rer
 USEAA_sx
 USEAB_sx
 USEAC_sx
 USEAD_sx
 USEAE_sx
 USRW_sx
 USEAA_tot
 USEAB_tot
 USEAC_tot
 USEAD_tot
 USEAE_tot
 USRW_tot
 USEAA_weight
 USEAB_weight
 USEAC_weight
 USEAD_weight
 USEAE_weight
 USRW_weight
 USEAA_weightex
 USEAB_weightex
 USEAC_weightex
 USEAD_weightex
 USEAE_weightex
 USRW_weightex
 USEAA_weightim
 USEAB_weightim
 USEAC_weightim
 USEAD_weightim
 USEAE_weightim
 USRW_weightim
 US_b
 US_bf
 US_by
 US_c
 US_ccesi
 US_ccesj
 US_ci
 US_cj
 US_cy
 US_d
 US_dcci
 US_dccj
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
 US_i
 US_ig
 US_ii
 US_im
 US_imc
 US_imcy
 US_imi
 US_imiy
 US_imy
 US_internalrer
 US_iy
 US_igy
 US_k
 US_kd
 US_kdn
 US_kdt
 US_kg
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
 US_pex
 US_pht
 US_phttilde
 US_pi
 US_pic
 US_pic4
 US_piex4
 US_piht
 US_piimc
 US_piimc4
 US_piimi
 US_pim
 US_pimc
 US_pimi
 US_pint
 US_piw
 US_piw4
 US_pnt
 US_pnttilde
 US_pttc
 US_ptti
 US_py
 US_q
 US_qc
 US_qi
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
 US_alphag
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
 US_deltag
 US_gammai1
 US_gammaimc1
 US_gammaimi1
 US_gammau2
 US_gammav1
 US_gammav2
 US_kappa
 US_muc
 US_mucces
 US_mui
 US_mumc
 US_mumi
 US_mutc
 US_muti
 US_nuc
 US_nucces
 US_nui
 US_nutc
 US_nuti
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
 USEAE_rerbar
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
 US_cpim
// TODO: change below to epsgc 
 US_epsg
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
 EAAEAC_numc
 EAAEAC_numi
 EAAEAD_numc
 EAAEAD_numi
 EAAEAE_numc
 EAAEAE_numi
 EAAUS_numc
 EAAUS_numi
 EABEAA_numc
 EABEAA_numi
 EABEAC_numc
 EABEAC_numi
 EABEAD_numc
 EABEAD_numi
 EABEAE_numc
 EABEAE_numi
 EABRW_numc
 EABRW_numi
 EACEAB_numc
 EACEAB_numi
 EACEAD_numc
 EACEAD_numi
 EACEAE_numc
 EACEAE_numi
 EACRW_numc
 EACRW_numi
 EACUS_numc
 EACUS_numi
 EADEAA_numc
 EADEAA_numi
 EADEAC_numc
 EADEAC_numi
 EADEAE_numc
 EADEAE_numi
 EADRW_numc
 EADRW_numi
 EADUS_numc
 EADUS_numi
 EAEEAA_numc
 EAEEAA_numi
 EAEEAB_numc
 EAEEAB_numi
 EAEEAD_numc
 EAEEAD_numi
 EAERW_numc
 EAERW_numi
 EAEUS_numc
 EAEUS_numi
 RWEAA_numc
 RWEAA_numi
 RWEAB_numc
 RWEAB_numi
 RWEAC_numc
 RWEAC_numi
 RWEAE_numc
 RWEAE_numi
 RWUS_numc
 RWUS_numi
 USEAA_numc
 USEAA_numi
 USEAB_numc
 USEAB_numi
 USEAC_numc
 USEAC_numi
 USEAD_numc
 USEAD_numi
 USRW_numc
 USRW_numi
;
var EAAEAE_nerdep;
var EABEAE_nerdep;
var EACEAE_nerdep;
var EADEAE_nerdep;
var EAA_gammabh;
var EAB_gammabh;
var EAC_gammabh;
var EAD_gammabh;
var
 EAA_bh
 EAB_bh
 EAC_bh
 EAD_bh
 EAE_bh
;
// Flip some variables
change_type(var)
 EA_ybar
 EAAEAB_rerbar
 EAAEAC_rerbar
 EAAEAD_rerbar
 EAAEAE_rerbar
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
 EABEAE_rerbar
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
 EACEAE_rerbar
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
 EADEAE_rerbar
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
 EAEEAA_rerbar
 EAEEAB_rerbar
 EAEEAC_rerbar
 EAEEAD_rerbar
 EAERW_rerbar
 EAEUS_rerbar
 EAE_pibar
 EAE_psinbar
 EAE_psitbar
 EAE_pybar
 EAE_qbar
 EAE_trybar
 EAE_ybar
 EAE_ynbar
 EAE_ytbar
 RWEAA_rerbar
 RWEAB_rerbar
 RWEAC_rerbar
 RWEAD_rerbar
 RWEAE_rerbar
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
 USEAE_rerbar
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
model(block, bytecode, cutoff = 0);
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    EAA_ccesi^(1-1/EAA_mucces) = (EAA_nucces)^(1/EAA_mucces)*EAA_ci^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces);
    EAA_ccesj^(1-1/EAA_mucces) = (EAA_nucces)^(1/EAA_mucces)*EAA_cj^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces);
//-------------
// Household I
//-------------
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
// Utility
EAA_utilj = 
EAA_zcon*log(EAA_ccesj-EAA_kappa*EAA_ccesj(-1))-1/(1+EAA_zeta)*(EAA_nj)^(1+EAA_zeta)+EAA_beta*EAA_utilj(+1)
;
// Budget constraint
(1+EAA_tauc+EAA_gammavj)*EAA_cj+EAA_mj = (1-EAA_taun-EAA_tauwh)*EAA_wj*EAA_nj+EAA_trj-EAA_tj+EAA_mj(-1)*EAA_pic^(-1);
// Marginal utility of consumption
EAA_dccj = ((EAA_nucces)^(1/EAA_mucces)*EAA_cj^(1-1/EAA_mucces)+(1-EAA_nucces)^(1/EAA_mucces)*EAA_cg^(1-1/EAA_mucces))^(1/(EAA_mucces-1))*(EAA_nucces^(1/EAA_mucces))*(EAA_cj^(-1/EAA_mucces));
EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder) = EAA_zcon*(EAA_ccesj-EAA_kappa*EAA_ccesj(-1))^(-EAA_sigma)*EAA_dccj;
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
+EABEAA_pim*EAAEAB_rer*(EABEAA_imc+EABEAA_imi)*EAB_size/EAA_size
+EACEAA_pim*EAAEAC_rer*(EACEAA_imc+EACEAA_imi)*EAC_size/EAA_size
+EADEAA_pim*EAAEAD_rer*(EADEAA_imc+EADEAA_imi)*EAD_size/EAA_size
+EAEEAA_pim*EAAEAE_rer*(EAEEAA_imc+EAEEAA_imi)*EAE_size/EAA_size
+RWEAA_pim*EAARW_rer*(RWEAA_imc+RWEAA_imi)*RW_size/EAA_size
+USEAA_pim*EAAUS_rer*(USEAA_imc+USEAA_imi)*US_size/EAA_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAB_pimtilde
EABEAA_pimtilde/EABEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAB_fx/EAAEAB_gx;
// Definition of fx
EAAEAB_fx = EAB_size/EAA_size*EABEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAB_fx(+1);
// Definition of gx   
EAAEAB_gx = EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAB_pim
EABEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EABEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EABEAA_pim(-1)/EAB_pic)^(1-EAA_thetat)*(EABEAA_piim(-1)^EAA_chix*EAB_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAB_piim
EABEAA_piim = EABEAA_pim/EABEAA_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EAAEAB_rer = EAA_rer/EAB_rer;
// Auxiliary equation for steady-state output
EAAEAB_rerbar = EAAEAB_rer;
//Terms of Trade
EAAEAB_tot = EAAEAB_pim/(EAAEAB_rer*EABEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAC_pimtilde
EACEAA_pimtilde/EACEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAC_fx/EAAEAC_gx;
// Definition of fx
EAAEAC_fx = EAC_size/EAA_size*EACEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAC_fx(+1);
// Definition of gx   
EAAEAC_gx = EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAC_pim
EACEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EACEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EACEAA_pim(-1)/EAC_pic)^(1-EAA_thetat)*(EACEAA_piim(-1)^EAA_chix*EAC_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAC_piim
EACEAA_piim = EACEAA_pim/EACEAA_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EAAEAC_rer = EAA_rer/EAC_rer;
// Auxiliary equation for steady-state output
EAAEAC_rerbar = EAAEAC_rer;
//Terms of Trade
EAAEAC_tot = EAAEAC_pim/(EAAEAC_rer*EACEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAD_pimtilde
EADEAA_pimtilde/EADEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAD_fx/EAAEAD_gx;
// Definition of fx
EAAEAD_fx = EAD_size/EAA_size*EADEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EADEAA_piim(+1)/(EADEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAD_fx(+1);
// Definition of gx   
EAAEAD_gx = EAAEAD_rer*EADEAA_pim*EAD_size/EAA_size*EADEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EADEAA_piim(+1)/(EADEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAD_pim
EADEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EADEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EADEAA_pim(-1)/EAD_pic)^(1-EAA_thetat)*(EADEAA_piim(-1)^EAA_chix*EAD_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAD_piim
EADEAA_piim = EADEAA_pim/EADEAA_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EAAEAD_rer = EAA_rer/EAD_rer;
// Auxiliary equation for steady-state output
EAAEAD_rerbar = EAAEAD_rer;
//Terms of Trade
EAAEAD_tot = EAAEAD_pim/(EAAEAD_rer*EADEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAE_pimtilde
EAEEAA_pimtilde/EAEEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAE_fx/EAAEAE_gx;
// Definition of fx
EAAEAE_fx = EAE_size/EAA_size*EAEEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAEEAA_piim(+1)/(EAEEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAE_fx(+1);
// Definition of gx   
EAAEAE_gx = EAAEAE_rer*EAEEAA_pim*EAE_size/EAA_size*EAEEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAEEAA_piim(+1)/(EAEEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAE_pim
EAEEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EAEEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EAEEAA_pim(-1)/EAE_pic)^(1-EAA_thetat)*(EAEEAA_piim(-1)^EAA_chix*EAE_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAE_piim
EAEEAA_piim = EAEEAA_pim/EAEEAA_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EAAEAE_rer = EAA_rer/EAE_rer;
// Auxiliary equation for steady-state output
EAAEAE_rerbar = EAAEAE_rer;
//Terms of Trade
EAAEAE_tot = EAAEAE_pim/(EAAEAE_rer*EAEEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = RW_pimtilde
RWEAA_pimtilde/RWEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAARW_fx/EAARW_gx;
// Definition of fx
EAARW_fx = RW_size/EAA_size*RWEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAARW_fx(+1);
// Definition of gx   
EAARW_gx = EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAARW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = RW_pim
RWEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*RWEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(RWEAA_pim(-1)/RW_pic)^(1-EAA_thetat)*(RWEAA_piim(-1)^EAA_chix*RW_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = RW_piim
RWEAA_piim = RWEAA_pim/RWEAA_pim(-1)*RW_pic;
// Bilateral real exchange rate
EAARW_rer = EAA_rer/RW_rer;
// Auxiliary equation for steady-state output
EAARW_rerbar = EAARW_rer;
//Terms of Trade
EAARW_tot = EAARW_pim/(EAARW_rer*RWEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = US_pimtilde
USEAA_pimtilde/USEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAUS_fx/EAAUS_gx;
// Definition of fx
EAAUS_fx = US_size/EAA_size*USEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAUS_fx(+1);
// Definition of gx   
EAAUS_gx = EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = US_pim
USEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*USEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(USEAA_pim(-1)/US_pic)^(1-EAA_thetat)*(USEAA_piim(-1)^EAA_chix*US_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = US_piim
USEAA_piim = USEAA_pim/USEAA_pim(-1)*US_pic;
// Bilateral real exchange rate
EAAUS_rer = EAA_rer/US_rer;
// Auxiliary equation for steady-state output
EAAUS_rerbar = EAAUS_rer;
//Terms of Trade
EAAUS_tot = EAAUS_pim/(EAAUS_rer*USEAA_pim);
// Total imports 
EAA_im = EAA_imc+EAA_imi;
// Total import deflator
EAA_im*EAA_pim  = EAA_pimc*EAA_imc+EAA_pimi*EAA_imi;
// Total Export deflator 
EAA_ex*EAA_pex  =
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im
+EAAEAD_rer*EADEAA_pim*EAD_size/EAA_size*EADEAA_im
+EAAEAE_rer*EAEEAA_pim*EAE_size/EAA_size*EAEEAA_im
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
;
// Effective real exchange rate: double weighting (imports)
EAAEAB_weightim = EAAEAB_rer*EAB_pex*EAAEAB_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAB_weightex = EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAB_rer*EAB_py*EAB_y/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)+
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EACEAB_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EADEAB_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EAEEAB_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*RWEAB_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*USEAB_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
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
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EABEAC_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EADEAC_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EAEEAC_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*RWEAC_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*USEAC_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
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
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EABEAD_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EACEAD_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EAEEAD_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*RWEAD_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*USEAD_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAD_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAD_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EAAEAE_weightim = EAAEAE_rer*EAE_pex*EAAEAE_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAE_weightex = EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAE_rer*EAE_py*EAE_y/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EABEAE_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EACEAE_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EADEAE_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*RWEAE_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*USEAE_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAE_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAE_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAARW_weightex = RW_size/EAA_size*RWEAA_im/EAA_ex*EAARW_rer*RW_py*RW_y/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAUS_rer*US_pex*RWUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAARW_rer*RW_pex*EABRW_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAARW_rer*RW_pex*EACRW_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAARW_rer*RW_pex*EADRW_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAARW_rer*RW_pex*EAERW_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAARW_rer*RW_pex*USRW_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
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
+EAAEAE_rer*EAE_pex*USEAE_im
+EAARW_rer*RW_pex*USRW_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAUS_rer*US_pex*EABUS_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAUS_rer*US_pex*EACUS_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAUS_rer*US_pex*EADUS_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAUS_rer*US_pex*EAEUS_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAUS_rer*US_pex*RWUS_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
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
*EAAEAE_rer^EAAEAE_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAAEAC_tot^EAAEAC_weight
*EAAEAD_tot^EAAEAD_weight
*EAAEAE_tot^EAAEAE_weight
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
+EAAEAE_numc ^(1/EAA_mumc)*EAAEAE_imc^(1-1/EAA_mumc)
+EAAUS_numc ^(1/EAA_mumc)*EAAUS_imc^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAUS_numc
)^(1/EAA_mumc)*EAARW_imc^(1-1/EAA_mumc);
// Demand for bilateral consumption import goods
EAAEAE_imc = EAAEAE_numc*(EAAEAE_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAAEAC_imc = EAAEAC_numc*(EAAEAC_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAAEAD_imc = EAAEAD_numc*(EAAEAD_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAAUS_imc = EAAUS_numc*(EAAUS_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAARW_imc = (1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAUS_numc
)*(EAARW_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Price of the consumption good (import)
EAA_pimc^(1-EAA_mumc) =
+EAAEAB_numc * EAAEAB_pim^(1-EAA_mumc)
+EAAEAC_numc * EAAEAC_pim^(1-EAA_mumc)
+EAAEAD_numc * EAAEAD_pim^(1-EAA_mumc)
+EAAEAE_numc * EAAEAE_pim^(1-EAA_mumc)
+EAAUS_numc * EAAUS_pim^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAUS_numc
)*EAARW_pim^(1-EAA_mumc);
// Private consumption good (import) inflation
EAA_piimc = EAA_pimc/EAA_pimc(-1)*EAA_pic;
// Private consumption good (import) inflation
EAA_piimc4 = EAA_pimc/EAA_pimc(-4)*EAA_pic4;
// Private consumption good (import) inflation
EAA_piex4 = EAA_pex/EAA_pex(-4)*EAA_pic4;
// Private investment good (import)
EAA_imi^((EAA_mumi-1)/EAA_mumi) =
+EAAEAB_numi ^(1/EAA_mumi)*EAAEAB_imi^(1-1/EAA_mumi)
+EAAEAC_numi ^(1/EAA_mumi)*EAAEAC_imi^(1-1/EAA_mumi)
+EAAEAD_numi ^(1/EAA_mumi)*EAAEAD_imi^(1-1/EAA_mumi)
+EAAEAE_numi ^(1/EAA_mumi)*EAAEAE_imi^(1-1/EAA_mumi)
+EAAUS_numi ^(1/EAA_mumi)*EAAUS_imi^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAUS_numi
)^(1/EAA_mumi)*EAARW_imi^(1-1/EAA_mumi);
// Demand for bilateral investment import goods
EAAEAE_imi = EAAEAE_numi*(EAAEAE_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral investment import goods
EAAEAC_imi = EAAEAC_numi*(EAAEAC_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral investment import goods
EAAEAD_imi = EAAEAD_numi*(EAAEAD_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral investment import goods
EAAUS_imi = EAAUS_numi*(EAAUS_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
EAARW_imi = (1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAUS_numi
)*(EAARW_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Price of the investment good (import)
EAA_pimi^(1-EAA_mumi) =
+EAAEAB_numi * EAAEAB_pim^(1-EAA_mumi)
+EAAEAC_numi * EAAEAC_pim^(1-EAA_mumi)
+EAAEAD_numi * EAAEAD_pim^(1-EAA_mumi)
+EAAEAE_numi * EAAEAE_pim^(1-EAA_mumi)
+EAAUS_numi * EAAUS_pim^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAUS_numi
)*EAARW_pim^(1-EAA_mumi);
// Private investment good (import) inflation
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
EAA_yst = EAA_sh*EAA_ht
+EAAEAB_sx*EAB_size/EAA_size*EABEAA_im
+EAAEAC_sx*EAC_size/EAA_size*EACEAA_im
+EAAEAD_sx*EAD_size/EAA_size*EADEAA_im
+EAAEAE_sx*EAE_size/EAA_size*EAEEAA_im
+EAARW_sx*RW_size/EAA_size*RWEAA_im
+EAAUS_sx*US_size/EAA_size*USEAA_im
;
// Aggregate demand for bilateral imported intermediate goods
EAAEAB_im = EAAEAB_imi+EAAEAB_imc;
EAAEAC_im = EAAEAC_imi+EAAEAC_imc;
EAAEAD_im = EAAEAD_imi+EAAEAD_imc;
EAAEAE_im = EAAEAE_imi+EAAEAE_imc;
EAARW_im = EAARW_imi+EAARW_imc;
EAAUS_im = EAAUS_imi+EAAUS_imc;
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
EAAEAE_gammaimc = 0;
EAAEAE_gammaimcdag = 1;
EAARW_gammaimc = 0;
EAARW_gammaimcdag = 1;
EAAUS_gammaimc = 0;
EAAUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
EAA_tti^((EAA_muti-1)/EAA_muti) = (EAA_nuti)^(1/EAA_muti)*EAA_hti^(1-1/EAA_muti)+(1-EAA_nuti)^(1/EAA_muti)*EAA_imi^(1-1/EAA_muti);
// Private investment good
EAA_qi^((EAA_mui-1)/EAA_mui) = (EAA_nui)^(1/EAA_mui)*EAA_tti^(1-1/EAA_mui)+(1-EAA_nui)^(1/EAA_mui)*EAA_nti^(1-1/EAA_mui);
// Demand for domestic intermediate goods
EAA_nti = (1-EAA_nui)*(EAA_pnt/EAA_pi)^(-EAA_mui)*EAA_qi;
// Price of the investment good (TRADABLE)  
EAA_ptti^(1-EAA_muti) = (EAA_nuti)*EAA_pht^(1-EAA_muti)+(1-EAA_nuti)*EAA_pimi^(1-EAA_muti);
// Price of the investment good
EAA_pi^(1-EAA_mui) = (EAA_nui)*EAA_ptti^(1-EAA_mui)+(1-EAA_nui)*(EAA_pnt)^(1-EAA_mui);
// Auxiliary equation for the price of the investment good in steady state
EAA_pibar = EAA_pi;
// Demand for domestic intermediate goods
EAA_hti = EAA_nuti*(EAA_pht/EAA_ptti)^(-EAA_muti)*EAA_tti;
EAAEAB_gammaimi = 0;
EAAEAB_gammaimidag = 1;
EAAEAC_gammaimi = 0;
EAAEAC_gammaimidag = 1;
EAAEAD_gammaimi = 0;
EAAEAD_gammaimidag = 1;
EAAEAE_gammaimi = 0;
EAAEAE_gammaimidag = 1;
EAARW_gammaimi = 0;
EAARW_gammaimidag = 1;
EAAUS_gammaimi = 0;
EAAUS_gammaimidag = 1;
// Trade balance
EAA_tb =
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im
-EAAEAB_pim*EAAEAB_im
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im
-EAAEAC_pim*EAAEAC_im
+EAAEAD_rer*EADEAA_pim*EAD_size/EAA_size*EADEAA_im
-EAAEAD_pim*EAAEAD_im
+EAAEAE_rer*EAEEAA_pim*EAE_size/EAA_size*EAEEAA_im
-EAAEAE_pim*EAAEAE_im
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
-EAARW_pim*EAARW_im
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
-EAAUS_pim*EAAUS_im
;
// Aggregate exports (volume)
EAA_ex =
+EAB_size/EAA_size*EABEAA_im
+EAC_size/EAA_size*EACEAA_im
+EAD_size/EAA_size*EADEAA_im
+EAE_size/EAA_size*EAEEAA_im
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
	EAA_pnt(-1)*EAA_cg(-1)+EAA_pnt(-1)*EAA_ig(-1)+EAA_tr(-1)
	+EAA_b(-1)*EAA_pic(-1)^(-1)+EAA_m(-2)*EAA_pic(-1)^(-1) = EAA_tauc(-1)*EAA_c(-1)+(EAA_taun(-1)+EAA_tauwh(-1))*(EAA_wi(-1)*EAA_ndi(-1)+EAA_wj(-1)*EAA_ndj(-1))+EAA_tauwf(-1)*EAA_w(-1)*EAA_nd(-1)+EAA_tauk(-1)*(EAA_rk(-1)*EAA_u(-1)-(EAA_gammau(-1)+EAA_delta)*EAA_pi(-1))*EAA_k(-1)+EAA_taud(-1)*EAA_d(-1)+EAA_t(-1)+(EAA_r(-1)*(1-EAA_gammab(-1)))^(-1)*EAA_b+EAA_m(-1);
// Government spending, using EAA_pg = EAA_pht
EAA_pnt*EAA_cg = EAA_cgy*EAA_pybar*EAA_ybar;
EAA_pnt*EAA_ig = EAA_igy*EAA_pybar*EAA_ybar;
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
	
			EAA_r = EAE_r;
		
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
EAA_nt =  EAA_nti+EAA_ntc+EAA_cg+EAA_ig;
// Aggregate demand for domestic intermediate goods, using EAA_hg = EAA_cg
EAA_ht = EAA_htc+EAA_hti;
// Price dispersion in the domestic markets
EAA_sh = (1-EAA_xih)*(EAA_phttilde/EAA_pht)^(-EAA_thetat)+EAA_xih*(EAA_piht/(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_sh(-1);
// Price dispersion in the foreign markets
EAAEAB_sx = (1-EAA_xix)*(EABEAA_pimtilde/EABEAA_pim)^(-EAA_thetat)+EAA_xix*(EABEAA_piim/(EABEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAB_sx(-1);
EAAEAC_sx = (1-EAA_xix)*(EACEAA_pimtilde/EACEAA_pim)^(-EAA_thetat)+EAA_xix*(EACEAA_piim/(EACEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAC_sx(-1);
EAAEAD_sx = (1-EAA_xix)*(EADEAA_pimtilde/EADEAA_pim)^(-EAA_thetat)+EAA_xix*(EADEAA_piim/(EADEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAD_sx(-1);
EAAEAE_sx = (1-EAA_xix)*(EAEEAA_pimtilde/EAEEAA_pim)^(-EAA_thetat)+EAA_xix*(EAEEAA_piim/(EAEEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAE_sx(-1);
EAARW_sx = (1-EAA_xix)*(RWEAA_pimtilde/RWEAA_pim)^(-EAA_thetat)+EAA_xix*(RWEAA_piim/(RWEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAARW_sx(-1);
EAAUS_sx = (1-EAA_xix)*(USEAA_pimtilde/USEAA_pim)^(-EAA_thetat)+EAA_xix*(USEAA_piim/(USEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAUS_sx(-1);
// Price dispersion in the domestic markets
EAA_snt = (1-EAA_xin)*(EAA_pnttilde/EAA_pnt)^(-EAA_thetan)+EAA_xin*(EAA_pint/(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_snt(-1);
// Government capital accumulation:
EAA_kg = (1-EAA_deltag)*EAA_kg(-1)+EAA_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAA_qc = EAA_c+EAA_gammav;
// Aggregate investment and capital utilisation cost
EAA_qi = EAA_i+EAA_k*EAA_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAA_pg = EAA_pht and EAA_qg = EAA_cg   
EAA_py*EAA_y = EAA_qc+EAA_pi*EAA_qi+EAA_pnt*EAA_cg+EAA_pnt*EAA_ig
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im
-EAAEAB_pim*EAAEAB_imc
-EAAEAB_pim*EAAEAB_imi
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im
-EAAEAC_pim*EAAEAC_imc
-EAAEAC_pim*EAAEAC_imi
+EAAEAD_rer*EADEAA_pim*EAD_size/EAA_size*EADEAA_im
-EAAEAD_pim*EAAEAD_imc
-EAAEAD_pim*EAAEAD_imi
+EAAEAE_rer*EAEEAA_pim*EAE_size/EAA_size*EAEEAA_im
-EAAEAE_pim*EAAEAE_imc
-EAAEAE_pim*EAAEAE_imi
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
-EAARW_pim*EAARW_imc
-EAARW_pim*EAARW_imi
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
-EAAUS_pim*EAAUS_imc
-EAAUS_pim*EAAUS_imi
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
EAA_cgy = (1-EAA_rhocg)*EAA_cgybar+EAA_rhocg*EAA_cgy(-1)+EAA_epsg;
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
EAA_imy = (EAA_pimc*EAA_imc+EAA_pimi*EAA_imi)/(EAA_py*EAA_y);
// Aggregate nominal import share for consumption goods 
EAA_imcy = EAA_pimc*EAA_imc/(EAA_py*EAA_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
EAA_imiy = EAA_pimi*EAA_imi/(EAA_py*EAA_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAA_epsilonm = -1/8*1/(EAA_r*(EAA_gammav2*EAA_r+EAA_r-1));
// Trade balance-to-GDP ratio
EAA_tby = EAA_tb/(EAA_py*EAA_y);
// Imports of consumption goods 
EAAEAB_imcy  = EAAEAB_pim*EAAEAB_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAAEAB_imiy = EAAEAB_pim*EAAEAB_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAB_excy  = EAB_size/EAA_size*EAAEAB_rer*EABEAA_pim*EABEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAB_exiy  = EAB_size/EAA_size*EAAEAB_rer*EABEAA_pim*EABEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods 
EAAEAC_imcy  = EAAEAC_pim*EAAEAC_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAAEAC_imiy = EAAEAC_pim*EAAEAC_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAC_excy  = EAC_size/EAA_size*EAAEAC_rer*EACEAA_pim*EACEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAC_exiy  = EAC_size/EAA_size*EAAEAC_rer*EACEAA_pim*EACEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods 
EAAEAD_imcy  = EAAEAD_pim*EAAEAD_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAAEAD_imiy = EAAEAD_pim*EAAEAD_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAD_excy  = EAD_size/EAA_size*EAAEAD_rer*EADEAA_pim*EADEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAD_exiy  = EAD_size/EAA_size*EAAEAD_rer*EADEAA_pim*EADEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods 
EAAEAE_imcy  = EAAEAE_pim*EAAEAE_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAAEAE_imiy = EAAEAE_pim*EAAEAE_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAE_excy  = EAE_size/EAA_size*EAAEAE_rer*EAEEAA_pim*EAEEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAE_exiy  = EAE_size/EAA_size*EAAEAE_rer*EAEEAA_pim*EAEEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods 
EAARW_imcy  = EAARW_pim*EAARW_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAARW_imiy = EAARW_pim*EAARW_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAARW_excy  = RW_size/EAA_size*EAARW_rer*RWEAA_pim*RWEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAARW_exiy  = RW_size/EAA_size*EAARW_rer*RWEAA_pim*RWEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods 
EAAUS_imcy  = EAAUS_pim*EAAUS_imc/(EAA_py*EAA_y);
// Imports of investment goods
EAAUS_imiy = EAAUS_pim*EAAUS_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAUS_excy  = US_size/EAA_size*EAAUS_rer*USEAA_pim*USEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAUS_exiy  = US_size/EAA_size*EAAUS_rer*USEAA_pim*USEAA_imi/(EAA_py*EAA_y);
// Internal real exchange rate
EAA_internalrer = EAA_pnt/EAA_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    EAB_ccesi^(1-1/EAB_mucces) = (EAB_nucces)^(1/EAB_mucces)*EAB_ci^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces);
    EAB_ccesj^(1-1/EAB_mucces) = (EAB_nucces)^(1/EAB_mucces)*EAB_cj^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces);
//-------------
// Household I
//-------------
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
// Utility
EAB_utilj = 
EAB_zcon*log(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))-1/(1+EAB_zeta)*(EAB_nj)^(1+EAB_zeta)+EAB_beta*EAB_utilj(+1)
;
// Budget constraint
(1+EAB_tauc+EAB_gammavj)*EAB_cj+EAB_mj = (1-EAB_taun-EAB_tauwh)*EAB_wj*EAB_nj+EAB_trj-EAB_tj+EAB_mj(-1)*EAB_pic^(-1);
// Marginal utility of consumption
EAB_dccj = ((EAB_nucces)^(1/EAB_mucces)*EAB_cj^(1-1/EAB_mucces)+(1-EAB_nucces)^(1/EAB_mucces)*EAB_cg^(1-1/EAB_mucces))^(1/(EAB_mucces-1))*(EAB_nucces^(1/EAB_mucces))*(EAB_cj^(-1/EAB_mucces));
EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder) = EAB_zcon*(EAB_ccesj-EAB_kappa*EAB_ccesj(-1))^(-EAB_sigma)*EAB_dccj;
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
+EAAEAB_pim*EABEAA_rer*(EAAEAB_imc+EAAEAB_imi)*EAA_size/EAB_size
+EACEAB_pim*EABEAC_rer*(EACEAB_imc+EACEAB_imi)*EAC_size/EAB_size
+EADEAB_pim*EABEAD_rer*(EADEAB_imc+EADEAB_imi)*EAD_size/EAB_size
+EAEEAB_pim*EABEAE_rer*(EAEEAB_imc+EAEEAB_imi)*EAE_size/EAB_size
+RWEAB_pim*EABRW_rer*(RWEAB_imc+RWEAB_imi)*RW_size/EAB_size
+USEAB_pim*EABUS_rer*(USEAB_imc+USEAB_imi)*US_size/EAB_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAA_pimtilde
EAAEAB_pimtilde/EAAEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAA_fx/EABEAA_gx;
// Definition of fx
EABEAA_fx = EAA_size/EAB_size*EAAEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAA_fx(+1);
// Definition of gx   
EABEAA_gx = EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAA_pim
EAAEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EAAEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAAEAB_pim(-1)/EAA_pic)^(1-EAB_thetat)*(EAAEAB_piim(-1)^EAB_chix*EAA_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAA_piim
EAAEAB_piim = EAAEAB_pim/EAAEAB_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EABEAA_rer = EAB_rer/EAA_rer;
// Auxiliary equation for steady-state output
EABEAA_rerbar = EABEAA_rer;
//Terms of Trade
EABEAA_tot = EABEAA_pim/(EABEAA_rer*EAAEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAC_pimtilde
EACEAB_pimtilde/EACEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAC_fx/EABEAC_gx;
// Definition of fx
EABEAC_fx = EAC_size/EAB_size*EACEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAC_fx(+1);
// Definition of gx   
EABEAC_gx = EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAC_pim
EACEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EACEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EACEAB_pim(-1)/EAC_pic)^(1-EAB_thetat)*(EACEAB_piim(-1)^EAB_chix*EAC_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAC_piim
EACEAB_piim = EACEAB_pim/EACEAB_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EABEAC_rer = EAB_rer/EAC_rer;
// Auxiliary equation for steady-state output
EABEAC_rerbar = EABEAC_rer;
//Terms of Trade
EABEAC_tot = EABEAC_pim/(EABEAC_rer*EACEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAD_pimtilde
EADEAB_pimtilde/EADEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAD_fx/EABEAD_gx;
// Definition of fx
EABEAD_fx = EAD_size/EAB_size*EADEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EADEAB_piim(+1)/(EADEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAD_fx(+1);
// Definition of gx   
EABEAD_gx = EABEAD_rer*EADEAB_pim*EAD_size/EAB_size*EADEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EADEAB_piim(+1)/(EADEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAD_pim
EADEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EADEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EADEAB_pim(-1)/EAD_pic)^(1-EAB_thetat)*(EADEAB_piim(-1)^EAB_chix*EAD_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAD_piim
EADEAB_piim = EADEAB_pim/EADEAB_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EABEAD_rer = EAB_rer/EAD_rer;
// Auxiliary equation for steady-state output
EABEAD_rerbar = EABEAD_rer;
//Terms of Trade
EABEAD_tot = EABEAD_pim/(EABEAD_rer*EADEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAE_pimtilde
EAEEAB_pimtilde/EAEEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAE_fx/EABEAE_gx;
// Definition of fx
EABEAE_fx = EAE_size/EAB_size*EAEEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAEEAB_piim(+1)/(EAEEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAE_fx(+1);
// Definition of gx   
EABEAE_gx = EABEAE_rer*EAEEAB_pim*EAE_size/EAB_size*EAEEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAEEAB_piim(+1)/(EAEEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAE_pim
EAEEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EAEEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAEEAB_pim(-1)/EAE_pic)^(1-EAB_thetat)*(EAEEAB_piim(-1)^EAB_chix*EAE_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAE_piim
EAEEAB_piim = EAEEAB_pim/EAEEAB_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EABEAE_rer = EAB_rer/EAE_rer;
// Auxiliary equation for steady-state output
EABEAE_rerbar = EABEAE_rer;
//Terms of Trade
EABEAE_tot = EABEAE_pim/(EABEAE_rer*EAEEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = RW_pimtilde
RWEAB_pimtilde/RWEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABRW_fx/EABRW_gx;
// Definition of fx
EABRW_fx = RW_size/EAB_size*RWEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABRW_fx(+1);
// Definition of gx   
EABRW_gx = EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = RW_pim
RWEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*RWEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(RWEAB_pim(-1)/RW_pic)^(1-EAB_thetat)*(RWEAB_piim(-1)^EAB_chix*RW_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = RW_piim
RWEAB_piim = RWEAB_pim/RWEAB_pim(-1)*RW_pic;
// Bilateral real exchange rate
EABRW_rer = EAB_rer/RW_rer;
// Auxiliary equation for steady-state output
EABRW_rerbar = EABRW_rer;
//Terms of Trade
EABRW_tot = EABRW_pim/(EABRW_rer*RWEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = US_pimtilde
USEAB_pimtilde/USEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABUS_fx/EABUS_gx;
// Definition of fx
EABUS_fx = US_size/EAB_size*USEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABUS_fx(+1);
// Definition of gx   
EABUS_gx = EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = US_pim
USEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*USEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(USEAB_pim(-1)/US_pic)^(1-EAB_thetat)*(USEAB_piim(-1)^EAB_chix*US_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = US_piim
USEAB_piim = USEAB_pim/USEAB_pim(-1)*US_pic;
// Bilateral real exchange rate
EABUS_rer = EAB_rer/US_rer;
// Auxiliary equation for steady-state output
EABUS_rerbar = EABUS_rer;
//Terms of Trade
EABUS_tot = EABUS_pim/(EABUS_rer*USEAB_pim);
// Total imports 
EAB_im = EAB_imc+EAB_imi;
// Total import deflator
EAB_im*EAB_pim  = EAB_pimc*EAB_imc+EAB_pimi*EAB_imi;
// Total Export deflator 
EAB_ex*EAB_pex  =
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im
+EABEAD_rer*EADEAB_pim*EAD_size/EAB_size*EADEAB_im
+EABEAE_rer*EAEEAB_pim*EAE_size/EAB_size*EAEEAB_im
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
;
// Effective real exchange rate: double weighting (imports)
EABEAA_weightim = EABEAA_rer*EAA_pex*EABEAA_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAA_weightex = EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAA_rer*EAA_py*EAA_y/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)+
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EACEAA_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EADEAA_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EAEEAA_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAA_rer*EAA_pex*RWEAA_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAA_rer*EAA_pex*USEAA_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
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
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAAEAC_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EADEAC_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAEEAC_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAC_rer*EAC_pex*RWEAC_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAC_rer*EAC_pex*USEAC_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
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
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAAEAD_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EACEAD_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAEEAD_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAD_rer*EAD_pex*RWEAD_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAD_rer*EAD_pex*USEAD_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAD_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAD_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EABEAE_weightim = EABEAE_rer*EAE_pex*EABEAE_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAE_weightex = EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAE_rer*EAE_py*EAE_y/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EAAEAE_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EACEAE_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EADEAE_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAE_rer*EAE_pex*RWEAE_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAE_rer*EAE_pex*USEAE_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAE_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAE_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABRW_weightex = RW_size/EAB_size*RWEAB_im/EAB_ex*EABRW_rer*RW_py*RW_y/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABRW_rer*RW_pex*EAARW_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABRW_rer*RW_pex*EACRW_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABRW_rer*RW_pex*EADRW_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABRW_rer*RW_pex*EAERW_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABRW_rer*RW_pex*USRW_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
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
+EABEAE_rer*EAE_pex*USEAE_im
+EABRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABUS_rer*US_pex*EAAUS_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABUS_rer*US_pex*EACUS_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABUS_rer*US_pex*EADUS_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABUS_rer*US_pex*EAEUS_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABUS_rer*US_pex*RWUS_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
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
*EABEAE_rer^EABEAE_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABEAC_tot^EABEAC_weight
*EABEAD_tot^EABEAD_weight
*EABEAE_tot^EABEAE_weight
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
+EABEAE_numc ^(1/EAB_mumc)*EABEAE_imc^(1-1/EAB_mumc)
+EABRW_numc ^(1/EAB_mumc)*EABRW_imc^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABRW_numc
)^(1/EAB_mumc)*EABUS_imc^(1-1/EAB_mumc);
// Demand for bilateral consumption import goods
EABRW_imc = EABRW_numc*(EABRW_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABEAD_imc = EABEAD_numc*(EABEAD_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABEAE_imc = EABEAE_numc*(EABEAE_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABEAA_imc = EABEAA_numc*(EABEAA_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABUS_imc = (1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABRW_numc
)*(EABUS_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Price of the consumption good (import)
EAB_pimc^(1-EAB_mumc) =
+EABEAA_numc * EABEAA_pim^(1-EAB_mumc)
+EABEAC_numc * EABEAC_pim^(1-EAB_mumc)
+EABEAD_numc * EABEAD_pim^(1-EAB_mumc)
+EABEAE_numc * EABEAE_pim^(1-EAB_mumc)
+EABRW_numc * EABRW_pim^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABRW_numc
)*EABUS_pim^(1-EAB_mumc);
// Private consumption good (import) inflation
EAB_piimc = EAB_pimc/EAB_pimc(-1)*EAB_pic;
// Private consumption good (import) inflation
EAB_piimc4 = EAB_pimc/EAB_pimc(-4)*EAB_pic4;
// Private consumption good (import) inflation
EAB_piex4 = EAB_pex/EAB_pex(-4)*EAB_pic4;
// Private investment good (import)
EAB_imi^((EAB_mumi-1)/EAB_mumi) =
+EABEAA_numi ^(1/EAB_mumi)*EABEAA_imi^(1-1/EAB_mumi)
+EABEAC_numi ^(1/EAB_mumi)*EABEAC_imi^(1-1/EAB_mumi)
+EABEAD_numi ^(1/EAB_mumi)*EABEAD_imi^(1-1/EAB_mumi)
+EABEAE_numi ^(1/EAB_mumi)*EABEAE_imi^(1-1/EAB_mumi)
+EABRW_numi ^(1/EAB_mumi)*EABRW_imi^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABRW_numi
)^(1/EAB_mumi)*EABUS_imi^(1-1/EAB_mumi);
// Demand for bilateral investment import goods
EABRW_imi = EABRW_numi*(EABRW_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral investment import goods
EABEAD_imi = EABEAD_numi*(EABEAD_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral investment import goods
EABEAE_imi = EABEAE_numi*(EABEAE_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral investment import goods
EABEAA_imi = EABEAA_numi*(EABEAA_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
EABUS_imi = (1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABRW_numi
)*(EABUS_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Price of the investment good (import)
EAB_pimi^(1-EAB_mumi) =
+EABEAA_numi * EABEAA_pim^(1-EAB_mumi)
+EABEAC_numi * EABEAC_pim^(1-EAB_mumi)
+EABEAD_numi * EABEAD_pim^(1-EAB_mumi)
+EABEAE_numi * EABEAE_pim^(1-EAB_mumi)
+EABRW_numi * EABRW_pim^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABRW_numi
)*EABUS_pim^(1-EAB_mumi);
// Private investment good (import) inflation
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
EAB_yst = EAB_sh*EAB_ht
+EABEAA_sx*EAA_size/EAB_size*EAAEAB_im
+EABEAC_sx*EAC_size/EAB_size*EACEAB_im
+EABEAD_sx*EAD_size/EAB_size*EADEAB_im
+EABEAE_sx*EAE_size/EAB_size*EAEEAB_im
+EABRW_sx*RW_size/EAB_size*RWEAB_im
+EABUS_sx*US_size/EAB_size*USEAB_im
;
// Aggregate demand for bilateral imported intermediate goods
EABEAA_im = EABEAA_imi+EABEAA_imc;
EABEAC_im = EABEAC_imi+EABEAC_imc;
EABEAD_im = EABEAD_imi+EABEAD_imc;
EABEAE_im = EABEAE_imi+EABEAE_imc;
EABRW_im = EABRW_imi+EABRW_imc;
EABUS_im = EABUS_imi+EABUS_imc;
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
EABEAE_gammaimc = 0;
EABEAE_gammaimcdag = 1;
EABRW_gammaimc = 0;
EABRW_gammaimcdag = 1;
EABUS_gammaimc = 0;
EABUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
EAB_tti^((EAB_muti-1)/EAB_muti) = (EAB_nuti)^(1/EAB_muti)*EAB_hti^(1-1/EAB_muti)+(1-EAB_nuti)^(1/EAB_muti)*EAB_imi^(1-1/EAB_muti);
// Private investment good
EAB_qi^((EAB_mui-1)/EAB_mui) = (EAB_nui)^(1/EAB_mui)*EAB_tti^(1-1/EAB_mui)+(1-EAB_nui)^(1/EAB_mui)*EAB_nti^(1-1/EAB_mui);
// Demand for domestic intermediate goods
EAB_nti = (1-EAB_nui)*(EAB_pnt/EAB_pi)^(-EAB_mui)*EAB_qi;
// Price of the investment good (TRADABLE)  
EAB_ptti^(1-EAB_muti) = (EAB_nuti)*EAB_pht^(1-EAB_muti)+(1-EAB_nuti)*EAB_pimi^(1-EAB_muti);
// Price of the investment good
EAB_pi^(1-EAB_mui) = (EAB_nui)*EAB_ptti^(1-EAB_mui)+(1-EAB_nui)*(EAB_pnt)^(1-EAB_mui);
// Auxiliary equation for the price of the investment good in steady state
EAB_pibar = EAB_pi;
// Demand for domestic intermediate goods
EAB_hti = EAB_nuti*(EAB_pht/EAB_ptti)^(-EAB_muti)*EAB_tti;
EABEAA_gammaimi = 0;
EABEAA_gammaimidag = 1;
EABEAC_gammaimi = 0;
EABEAC_gammaimidag = 1;
EABEAD_gammaimi = 0;
EABEAD_gammaimidag = 1;
EABEAE_gammaimi = 0;
EABEAE_gammaimidag = 1;
EABRW_gammaimi = 0;
EABRW_gammaimidag = 1;
EABUS_gammaimi = 0;
EABUS_gammaimidag = 1;
// Trade balance
EAB_tb =
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im
-EABEAA_pim*EABEAA_im
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im
-EABEAC_pim*EABEAC_im
+EABEAD_rer*EADEAB_pim*EAD_size/EAB_size*EADEAB_im
-EABEAD_pim*EABEAD_im
+EABEAE_rer*EAEEAB_pim*EAE_size/EAB_size*EAEEAB_im
-EABEAE_pim*EABEAE_im
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
-EABRW_pim*EABRW_im
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
-EABUS_pim*EABUS_im
;
// Aggregate exports (volume)
EAB_ex =
+EAA_size/EAB_size*EAAEAB_im
+EAC_size/EAB_size*EACEAB_im
+EAD_size/EAB_size*EADEAB_im
+EAE_size/EAB_size*EAEEAB_im
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
	EAB_pnt(-1)*EAB_cg(-1)+EAB_pnt(-1)*EAB_ig(-1)+EAB_tr(-1)
	+EAB_b(-1)*EAB_pic(-1)^(-1)+EAB_m(-2)*EAB_pic(-1)^(-1) = EAB_tauc(-1)*EAB_c(-1)+(EAB_taun(-1)+EAB_tauwh(-1))*(EAB_wi(-1)*EAB_ndi(-1)+EAB_wj(-1)*EAB_ndj(-1))+EAB_tauwf(-1)*EAB_w(-1)*EAB_nd(-1)+EAB_tauk(-1)*(EAB_rk(-1)*EAB_u(-1)-(EAB_gammau(-1)+EAB_delta)*EAB_pi(-1))*EAB_k(-1)+EAB_taud(-1)*EAB_d(-1)+EAB_t(-1)+(EAB_r(-1)*(1-EAB_gammab(-1)))^(-1)*EAB_b+EAB_m(-1);
// Government spending, using EAB_pg = EAB_pht
EAB_pnt*EAB_cg = EAB_cgy*EAB_pybar*EAB_ybar;
EAB_pnt*EAB_ig = EAB_igy*EAB_pybar*EAB_ybar;
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
	
		
				EAB_r = EAE_r;
			
		
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
EAB_nt =  EAB_nti+EAB_ntc+EAB_cg+EAB_ig;
// Aggregate demand for domestic intermediate goods, using EAB_hg = EAB_cg
EAB_ht = EAB_htc+EAB_hti;
// Price dispersion in the domestic markets
EAB_sh = (1-EAB_xih)*(EAB_phttilde/EAB_pht)^(-EAB_thetat)+EAB_xih*(EAB_piht/(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_sh(-1);
// Price dispersion in the foreign markets
EABEAA_sx = (1-EAB_xix)*(EAAEAB_pimtilde/EAAEAB_pim)^(-EAB_thetat)+EAB_xix*(EAAEAB_piim/(EAAEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAA_sx(-1);
EABEAC_sx = (1-EAB_xix)*(EACEAB_pimtilde/EACEAB_pim)^(-EAB_thetat)+EAB_xix*(EACEAB_piim/(EACEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAC_sx(-1);
EABEAD_sx = (1-EAB_xix)*(EADEAB_pimtilde/EADEAB_pim)^(-EAB_thetat)+EAB_xix*(EADEAB_piim/(EADEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAD_sx(-1);
EABEAE_sx = (1-EAB_xix)*(EAEEAB_pimtilde/EAEEAB_pim)^(-EAB_thetat)+EAB_xix*(EAEEAB_piim/(EAEEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAE_sx(-1);
EABRW_sx = (1-EAB_xix)*(RWEAB_pimtilde/RWEAB_pim)^(-EAB_thetat)+EAB_xix*(RWEAB_piim/(RWEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABRW_sx(-1);
EABUS_sx = (1-EAB_xix)*(USEAB_pimtilde/USEAB_pim)^(-EAB_thetat)+EAB_xix*(USEAB_piim/(USEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABUS_sx(-1);
// Price dispersion in the domestic markets
EAB_snt = (1-EAB_xin)*(EAB_pnttilde/EAB_pnt)^(-EAB_thetan)+EAB_xin*(EAB_pint/(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_snt(-1);
// Government capital accumulation:
EAB_kg = (1-EAB_deltag)*EAB_kg(-1)+EAB_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAB_qc = EAB_c+EAB_gammav;
// Aggregate investment and capital utilisation cost
EAB_qi = EAB_i+EAB_k*EAB_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAB_pg = EAB_pht and EAB_qg = EAB_cg   
EAB_py*EAB_y = EAB_qc+EAB_pi*EAB_qi+EAB_pnt*EAB_cg+EAB_pnt*EAB_ig
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im
-EABEAA_pim*EABEAA_imc
-EABEAA_pim*EABEAA_imi
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im
-EABEAC_pim*EABEAC_imc
-EABEAC_pim*EABEAC_imi
+EABEAD_rer*EADEAB_pim*EAD_size/EAB_size*EADEAB_im
-EABEAD_pim*EABEAD_imc
-EABEAD_pim*EABEAD_imi
+EABEAE_rer*EAEEAB_pim*EAE_size/EAB_size*EAEEAB_im
-EABEAE_pim*EABEAE_imc
-EABEAE_pim*EABEAE_imi
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
-EABRW_pim*EABRW_imc
-EABRW_pim*EABRW_imi
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
-EABUS_pim*EABUS_imc
-EABUS_pim*EABUS_imi
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
EAB_cgy = (1-EAB_rhocg)*EAB_cgybar+EAB_rhocg*EAB_cgy(-1)+EAB_epsg;
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
EAB_imy = (EAB_pimc*EAB_imc+EAB_pimi*EAB_imi)/(EAB_py*EAB_y);
// Aggregate nominal import share for consumption goods 
EAB_imcy = EAB_pimc*EAB_imc/(EAB_py*EAB_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
EAB_imiy = EAB_pimi*EAB_imi/(EAB_py*EAB_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAB_epsilonm = -1/8*1/(EAB_r*(EAB_gammav2*EAB_r+EAB_r-1));
// Trade balance-to-GDP ratio
EAB_tby = EAB_tb/(EAB_py*EAB_y);
// Imports of consumption goods 
EABEAA_imcy  = EABEAA_pim*EABEAA_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABEAA_imiy = EABEAA_pim*EABEAA_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAA_excy  = EAA_size/EAB_size*EABEAA_rer*EAAEAB_pim*EAAEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAA_exiy  = EAA_size/EAB_size*EABEAA_rer*EAAEAB_pim*EAAEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods 
EABEAC_imcy  = EABEAC_pim*EABEAC_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABEAC_imiy = EABEAC_pim*EABEAC_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAC_excy  = EAC_size/EAB_size*EABEAC_rer*EACEAB_pim*EACEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAC_exiy  = EAC_size/EAB_size*EABEAC_rer*EACEAB_pim*EACEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods 
EABEAD_imcy  = EABEAD_pim*EABEAD_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABEAD_imiy = EABEAD_pim*EABEAD_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAD_excy  = EAD_size/EAB_size*EABEAD_rer*EADEAB_pim*EADEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAD_exiy  = EAD_size/EAB_size*EABEAD_rer*EADEAB_pim*EADEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods 
EABEAE_imcy  = EABEAE_pim*EABEAE_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABEAE_imiy = EABEAE_pim*EABEAE_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAE_excy  = EAE_size/EAB_size*EABEAE_rer*EAEEAB_pim*EAEEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAE_exiy  = EAE_size/EAB_size*EABEAE_rer*EAEEAB_pim*EAEEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods 
EABRW_imcy  = EABRW_pim*EABRW_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABRW_imiy = EABRW_pim*EABRW_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABRW_excy  = RW_size/EAB_size*EABRW_rer*RWEAB_pim*RWEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABRW_exiy  = RW_size/EAB_size*EABRW_rer*RWEAB_pim*RWEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods 
EABUS_imcy  = EABUS_pim*EABUS_imc/(EAB_py*EAB_y);
// Imports of investment goods
EABUS_imiy = EABUS_pim*EABUS_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABUS_excy  = US_size/EAB_size*EABUS_rer*USEAB_pim*USEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABUS_exiy  = US_size/EAB_size*EABUS_rer*USEAB_pim*USEAB_imi/(EAB_py*EAB_y);
// Internal real exchange rate
EAB_internalrer = EAB_pnt/EAB_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    EAC_ccesi^(1-1/EAC_mucces) = (EAC_nucces)^(1/EAC_mucces)*EAC_ci^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces);
    EAC_ccesj^(1-1/EAC_mucces) = (EAC_nucces)^(1/EAC_mucces)*EAC_cj^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces);
//-------------
// Household I
//-------------
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
// Utility
EAC_utilj = 
EAC_zcon*log(EAC_ccesj-EAC_kappa*EAC_ccesj(-1))-1/(1+EAC_zeta)*(EAC_nj)^(1+EAC_zeta)+EAC_beta*EAC_utilj(+1)
;
// Budget constraint
(1+EAC_tauc+EAC_gammavj)*EAC_cj+EAC_mj = (1-EAC_taun-EAC_tauwh)*EAC_wj*EAC_nj+EAC_trj-EAC_tj+EAC_mj(-1)*EAC_pic^(-1);
// Marginal utility of consumption
EAC_dccj = ((EAC_nucces)^(1/EAC_mucces)*EAC_cj^(1-1/EAC_mucces)+(1-EAC_nucces)^(1/EAC_mucces)*EAC_cg^(1-1/EAC_mucces))^(1/(EAC_mucces-1))*(EAC_nucces^(1/EAC_mucces))*(EAC_cj^(-1/EAC_mucces));
EAC_lambdaj*(1+EAC_tauc+EAC_gammavj+EAC_vj*EAC_gammavjder) = EAC_zcon*(EAC_ccesj-EAC_kappa*EAC_ccesj(-1))^(-EAC_sigma)*EAC_dccj;
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
+EAAEAC_pim*EACEAA_rer*(EAAEAC_imc+EAAEAC_imi)*EAA_size/EAC_size
+EABEAC_pim*EACEAB_rer*(EABEAC_imc+EABEAC_imi)*EAB_size/EAC_size
+EADEAC_pim*EACEAD_rer*(EADEAC_imc+EADEAC_imi)*EAD_size/EAC_size
+EAEEAC_pim*EACEAE_rer*(EAEEAC_imc+EAEEAC_imi)*EAE_size/EAC_size
+RWEAC_pim*EACRW_rer*(RWEAC_imc+RWEAC_imi)*RW_size/EAC_size
+USEAC_pim*EACUS_rer*(USEAC_imc+USEAC_imi)*US_size/EAC_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAA_pimtilde
EAAEAC_pimtilde/EAAEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAA_fx/EACEAA_gx;
// Definition of fx
EACEAA_fx = EAA_size/EAC_size*EAAEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAA_fx(+1);
// Definition of gx   
EACEAA_gx = EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAA_pim
EAAEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EAAEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAAEAC_pim(-1)/EAA_pic)^(1-EAC_thetat)*(EAAEAC_piim(-1)^EAC_chix*EAA_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAA_piim
EAAEAC_piim = EAAEAC_pim/EAAEAC_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EACEAA_rer = EAC_rer/EAA_rer;
// Auxiliary equation for steady-state output
EACEAA_rerbar = EACEAA_rer;
//Terms of Trade
EACEAA_tot = EACEAA_pim/(EACEAA_rer*EAAEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAB_pimtilde
EABEAC_pimtilde/EABEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAB_fx/EACEAB_gx;
// Definition of fx
EACEAB_fx = EAB_size/EAC_size*EABEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAB_fx(+1);
// Definition of gx   
EACEAB_gx = EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAB_pim
EABEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EABEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EABEAC_pim(-1)/EAB_pic)^(1-EAC_thetat)*(EABEAC_piim(-1)^EAC_chix*EAB_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAB_piim
EABEAC_piim = EABEAC_pim/EABEAC_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EACEAB_rer = EAC_rer/EAB_rer;
// Auxiliary equation for steady-state output
EACEAB_rerbar = EACEAB_rer;
//Terms of Trade
EACEAB_tot = EACEAB_pim/(EACEAB_rer*EABEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAD_pimtilde
EADEAC_pimtilde/EADEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAD_fx/EACEAD_gx;
// Definition of fx
EACEAD_fx = EAD_size/EAC_size*EADEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EADEAC_piim(+1)/(EADEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAD_fx(+1);
// Definition of gx   
EACEAD_gx = EACEAD_rer*EADEAC_pim*EAD_size/EAC_size*EADEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EADEAC_piim(+1)/(EADEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAD_pim
EADEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EADEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EADEAC_pim(-1)/EAD_pic)^(1-EAC_thetat)*(EADEAC_piim(-1)^EAC_chix*EAD_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAD_piim
EADEAC_piim = EADEAC_pim/EADEAC_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EACEAD_rer = EAC_rer/EAD_rer;
// Auxiliary equation for steady-state output
EACEAD_rerbar = EACEAD_rer;
//Terms of Trade
EACEAD_tot = EACEAD_pim/(EACEAD_rer*EADEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAE_pimtilde
EAEEAC_pimtilde/EAEEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAE_fx/EACEAE_gx;
// Definition of fx
EACEAE_fx = EAE_size/EAC_size*EAEEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAEEAC_piim(+1)/(EAEEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAE_fx(+1);
// Definition of gx   
EACEAE_gx = EACEAE_rer*EAEEAC_pim*EAE_size/EAC_size*EAEEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAEEAC_piim(+1)/(EAEEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAE_pim
EAEEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EAEEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAEEAC_pim(-1)/EAE_pic)^(1-EAC_thetat)*(EAEEAC_piim(-1)^EAC_chix*EAE_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAE_piim
EAEEAC_piim = EAEEAC_pim/EAEEAC_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EACEAE_rer = EAC_rer/EAE_rer;
// Auxiliary equation for steady-state output
EACEAE_rerbar = EACEAE_rer;
//Terms of Trade
EACEAE_tot = EACEAE_pim/(EACEAE_rer*EAEEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = RW_pimtilde
RWEAC_pimtilde/RWEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACRW_fx/EACRW_gx;
// Definition of fx
EACRW_fx = RW_size/EAC_size*RWEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACRW_fx(+1);
// Definition of gx   
EACRW_gx = EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = RW_pim
RWEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*RWEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(RWEAC_pim(-1)/RW_pic)^(1-EAC_thetat)*(RWEAC_piim(-1)^EAC_chix*RW_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = RW_piim
RWEAC_piim = RWEAC_pim/RWEAC_pim(-1)*RW_pic;
// Bilateral real exchange rate
EACRW_rer = EAC_rer/RW_rer;
// Auxiliary equation for steady-state output
EACRW_rerbar = EACRW_rer;
//Terms of Trade
EACRW_tot = EACRW_pim/(EACRW_rer*RWEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = US_pimtilde
USEAC_pimtilde/USEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACUS_fx/EACUS_gx;
// Definition of fx
EACUS_fx = US_size/EAC_size*USEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACUS_fx(+1);
// Definition of gx   
EACUS_gx = EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = US_pim
USEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*USEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(USEAC_pim(-1)/US_pic)^(1-EAC_thetat)*(USEAC_piim(-1)^EAC_chix*US_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = US_piim
USEAC_piim = USEAC_pim/USEAC_pim(-1)*US_pic;
// Bilateral real exchange rate
EACUS_rer = EAC_rer/US_rer;
// Auxiliary equation for steady-state output
EACUS_rerbar = EACUS_rer;
//Terms of Trade
EACUS_tot = EACUS_pim/(EACUS_rer*USEAC_pim);
// Total imports 
EAC_im = EAC_imc+EAC_imi;
// Total import deflator
EAC_im*EAC_pim  = EAC_pimc*EAC_imc+EAC_pimi*EAC_imi;
// Total Export deflator 
EAC_ex*EAC_pex  =
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im
+EACEAD_rer*EADEAC_pim*EAD_size/EAC_size*EADEAC_im
+EACEAE_rer*EAEEAC_pim*EAE_size/EAC_size*EAEEAC_im
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
;
// Effective real exchange rate: double weighting (imports)
EACEAA_weightim = EACEAA_rer*EAA_pex*EACEAA_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAA_weightex = EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAA_rer*EAA_py*EAA_y/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EABEAA_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EADEAA_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EAEEAA_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAA_rer*EAA_pex*RWEAA_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAA_rer*EAA_pex*USEAA_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
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
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAAEAB_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EADEAB_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAEEAB_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAB_rer*EAB_pex*RWEAB_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAB_rer*EAB_pex*USEAB_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
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
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAAEAD_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EABEAD_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAEEAD_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAD_rer*EAD_pex*RWEAD_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAD_rer*EAD_pex*USEAD_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAD_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAD_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EACEAE_weightim = EACEAE_rer*EAE_pex*EACEAE_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAE_weightex = EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAE_rer*EAE_py*EAE_y/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EAAEAE_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EABEAE_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EADEAE_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAE_rer*EAE_pex*RWEAE_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAE_rer*EAE_pex*USEAE_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAE_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAE_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EACRW_weightim = EACRW_rer*RW_pex*EACRW_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACRW_weightex = RW_size/EAC_size*RWEAC_im/EAC_ex*EACRW_rer*RW_py*RW_y/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACRW_rer*RW_pex*EAARW_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACRW_rer*RW_pex*EABRW_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACRW_rer*RW_pex*EADRW_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACRW_rer*RW_pex*EAERW_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACRW_rer*RW_pex*USRW_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
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
+EACEAE_rer*EAE_pex*USEAE_im
+EACRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACUS_rer*US_pex*EAAUS_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACUS_rer*US_pex*EABUS_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACUS_rer*US_pex*EADUS_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACUS_rer*US_pex*EAEUS_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACUS_rer*US_pex*RWUS_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
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
*EACEAE_rer^EACEAE_weight
*EACRW_rer^EACRW_weight
*EACUS_rer^EACUS_weight
;
// Effective terms of trade
EAC_etot = 1
*EACEAA_tot^EACEAA_weight
*EACEAB_tot^EACEAB_weight
*EACEAD_tot^EACEAD_weight
*EACEAE_tot^EACEAE_weight
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
+EACEAE_numc ^(1/EAC_mumc)*EACEAE_imc^(1-1/EAC_mumc)
+EACRW_numc ^(1/EAC_mumc)*EACRW_imc^(1-1/EAC_mumc)
+EACUS_numc ^(1/EAC_mumc)*EACUS_imc^(1-1/EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACRW_numc
-EACUS_numc
)^(1/EAC_mumc)*EACEAA_imc^(1-1/EAC_mumc);
// Demand for bilateral consumption import goods
EACUS_imc = EACUS_numc*(EACUS_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAE_imc = EACEAE_numc*(EACEAE_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACRW_imc = EACRW_numc*(EACRW_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAB_imc = EACEAB_numc*(EACEAB_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAA_imc = (1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACRW_numc
-EACUS_numc
)*(EACEAA_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Price of the consumption good (import)
EAC_pimc^(1-EAC_mumc) =
+EACEAB_numc * EACEAB_pim^(1-EAC_mumc)
+EACEAD_numc * EACEAD_pim^(1-EAC_mumc)
+EACEAE_numc * EACEAE_pim^(1-EAC_mumc)
+EACRW_numc * EACRW_pim^(1-EAC_mumc)
+EACUS_numc * EACUS_pim^(1-EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACRW_numc
-EACUS_numc
)*EACEAA_pim^(1-EAC_mumc);
// Private consumption good (import) inflation
EAC_piimc = EAC_pimc/EAC_pimc(-1)*EAC_pic;
// Private consumption good (import) inflation
EAC_piimc4 = EAC_pimc/EAC_pimc(-4)*EAC_pic4;
// Private consumption good (import) inflation
EAC_piex4 = EAC_pex/EAC_pex(-4)*EAC_pic4;
// Private investment good (import)
EAC_imi^((EAC_mumi-1)/EAC_mumi) =
+EACEAB_numi ^(1/EAC_mumi)*EACEAB_imi^(1-1/EAC_mumi)
+EACEAD_numi ^(1/EAC_mumi)*EACEAD_imi^(1-1/EAC_mumi)
+EACEAE_numi ^(1/EAC_mumi)*EACEAE_imi^(1-1/EAC_mumi)
+EACRW_numi ^(1/EAC_mumi)*EACRW_imi^(1-1/EAC_mumi)
+EACUS_numi ^(1/EAC_mumi)*EACUS_imi^(1-1/EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACRW_numi
-EACUS_numi
)^(1/EAC_mumi)*EACEAA_imi^(1-1/EAC_mumi);
// Demand for bilateral investment import goods
EACUS_imi = EACUS_numi*(EACUS_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral investment import goods
EACEAE_imi = EACEAE_numi*(EACEAE_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral investment import goods
EACRW_imi = EACRW_numi*(EACRW_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral investment import goods
EACEAB_imi = EACEAB_numi*(EACEAB_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
EACEAA_imi = (1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACRW_numi
-EACUS_numi
)*(EACEAA_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Price of the investment good (import)
EAC_pimi^(1-EAC_mumi) =
+EACEAB_numi * EACEAB_pim^(1-EAC_mumi)
+EACEAD_numi * EACEAD_pim^(1-EAC_mumi)
+EACEAE_numi * EACEAE_pim^(1-EAC_mumi)
+EACRW_numi * EACRW_pim^(1-EAC_mumi)
+EACUS_numi * EACUS_pim^(1-EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACRW_numi
-EACUS_numi
)*EACEAA_pim^(1-EAC_mumi);
// Private investment good (import) inflation
EAC_piimi = EAC_pimi/EAC_pimi(-1)*EAC_pic;
// Wedge between aggregate demand and production, using EAC_x = EAD_size/EAC_size*EAD_im
EAC_yst = EAC_sh*EAC_ht
+EACEAA_sx*EAA_size/EAC_size*EAAEAC_im
+EACEAB_sx*EAB_size/EAC_size*EABEAC_im
+EACEAD_sx*EAD_size/EAC_size*EADEAC_im
+EACEAE_sx*EAE_size/EAC_size*EAEEAC_im
+EACRW_sx*RW_size/EAC_size*RWEAC_im
+EACUS_sx*US_size/EAC_size*USEAC_im
;
// Aggregate demand for bilateral imported intermediate goods
EACEAA_im = EACEAA_imi+EACEAA_imc;
EACEAB_im = EACEAB_imi+EACEAB_imc;
EACEAD_im = EACEAD_imi+EACEAD_imc;
EACEAE_im = EACEAE_imi+EACEAE_imc;
EACRW_im = EACRW_imi+EACRW_imc;
EACUS_im = EACUS_imi+EACUS_imc;
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
EACEAE_gammaimc = 0;
EACEAE_gammaimcdag = 1;
EACRW_gammaimc = 0;
EACRW_gammaimcdag = 1;
EACUS_gammaimc = 0;
EACUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
EAC_tti^((EAC_muti-1)/EAC_muti) = (EAC_nuti)^(1/EAC_muti)*EAC_hti^(1-1/EAC_muti)+(1-EAC_nuti)^(1/EAC_muti)*EAC_imi^(1-1/EAC_muti);
// Private investment good
EAC_qi^((EAC_mui-1)/EAC_mui) = (EAC_nui)^(1/EAC_mui)*EAC_tti^(1-1/EAC_mui)+(1-EAC_nui)^(1/EAC_mui)*EAC_nti^(1-1/EAC_mui);
// Demand for domestic intermediate goods
EAC_nti = (1-EAC_nui)*(EAC_pnt/EAC_pi)^(-EAC_mui)*EAC_qi;
// Price of the investment good (TRADABLE)  
EAC_ptti^(1-EAC_muti) = (EAC_nuti)*EAC_pht^(1-EAC_muti)+(1-EAC_nuti)*EAC_pimi^(1-EAC_muti);
// Price of the investment good
EAC_pi^(1-EAC_mui) = (EAC_nui)*EAC_ptti^(1-EAC_mui)+(1-EAC_nui)*(EAC_pnt)^(1-EAC_mui);
// Auxiliary equation for the price of the investment good in steady state
EAC_pibar = EAC_pi;
// Demand for domestic intermediate goods
EAC_hti = EAC_nuti*(EAC_pht/EAC_ptti)^(-EAC_muti)*EAC_tti;
EACEAA_gammaimi = 0;
EACEAA_gammaimidag = 1;
EACEAB_gammaimi = 0;
EACEAB_gammaimidag = 1;
EACEAD_gammaimi = 0;
EACEAD_gammaimidag = 1;
EACEAE_gammaimi = 0;
EACEAE_gammaimidag = 1;
EACRW_gammaimi = 0;
EACRW_gammaimidag = 1;
EACUS_gammaimi = 0;
EACUS_gammaimidag = 1;
// Trade balance
EAC_tb =
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im
-EACEAA_pim*EACEAA_im
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im
-EACEAB_pim*EACEAB_im
+EACEAD_rer*EADEAC_pim*EAD_size/EAC_size*EADEAC_im
-EACEAD_pim*EACEAD_im
+EACEAE_rer*EAEEAC_pim*EAE_size/EAC_size*EAEEAC_im
-EACEAE_pim*EACEAE_im
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
-EACRW_pim*EACRW_im
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
-EACUS_pim*EACUS_im
;
// Aggregate exports (volume)
EAC_ex =
+EAA_size/EAC_size*EAAEAC_im
+EAB_size/EAC_size*EABEAC_im
+EAD_size/EAC_size*EADEAC_im
+EAE_size/EAC_size*EAEEAC_im
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
	EAC_pnt(-1)*EAC_cg(-1)+EAC_pnt(-1)*EAC_ig(-1)+EAC_tr(-1)
	+EAC_b(-1)*EAC_pic(-1)^(-1)+EAC_m(-2)*EAC_pic(-1)^(-1) = EAC_tauc(-1)*EAC_c(-1)+(EAC_taun(-1)+EAC_tauwh(-1))*(EAC_wi(-1)*EAC_ndi(-1)+EAC_wj(-1)*EAC_ndj(-1))+EAC_tauwf(-1)*EAC_w(-1)*EAC_nd(-1)+EAC_tauk(-1)*(EAC_rk(-1)*EAC_u(-1)-(EAC_gammau(-1)+EAC_delta)*EAC_pi(-1))*EAC_k(-1)+EAC_taud(-1)*EAC_d(-1)+EAC_t(-1)+(EAC_r(-1)*(1-EAC_gammab(-1)))^(-1)*EAC_b+EAC_m(-1);
// Government spending, using EAC_pg = EAC_pht
EAC_pnt*EAC_cg = EAC_cgy*EAC_pybar*EAC_ybar;
EAC_pnt*EAC_ig = EAC_igy*EAC_pybar*EAC_ybar;
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
	
		
			
					EAC_r = EAE_r;
				
				
			
		
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
EAC_nt =  EAC_nti+EAC_ntc+EAC_cg+EAC_ig;
// Aggregate demand for domestic intermediate goods, using EAC_hg = EAC_cg
EAC_ht = EAC_htc+EAC_hti;
// Price dispersion in the domestic markets
EAC_sh = (1-EAC_xih)*(EAC_phttilde/EAC_pht)^(-EAC_thetat)+EAC_xih*(EAC_piht/(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_sh(-1);
// Price dispersion in the foreign markets
EACEAA_sx = (1-EAC_xix)*(EAAEAC_pimtilde/EAAEAC_pim)^(-EAC_thetat)+EAC_xix*(EAAEAC_piim/(EAAEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAA_sx(-1);
EACEAB_sx = (1-EAC_xix)*(EABEAC_pimtilde/EABEAC_pim)^(-EAC_thetat)+EAC_xix*(EABEAC_piim/(EABEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAB_sx(-1);
EACEAD_sx = (1-EAC_xix)*(EADEAC_pimtilde/EADEAC_pim)^(-EAC_thetat)+EAC_xix*(EADEAC_piim/(EADEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAD_sx(-1);
EACEAE_sx = (1-EAC_xix)*(EAEEAC_pimtilde/EAEEAC_pim)^(-EAC_thetat)+EAC_xix*(EAEEAC_piim/(EAEEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAE_sx(-1);
EACRW_sx = (1-EAC_xix)*(RWEAC_pimtilde/RWEAC_pim)^(-EAC_thetat)+EAC_xix*(RWEAC_piim/(RWEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACRW_sx(-1);
EACUS_sx = (1-EAC_xix)*(USEAC_pimtilde/USEAC_pim)^(-EAC_thetat)+EAC_xix*(USEAC_piim/(USEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACUS_sx(-1);
// Price dispersion in the domestic markets
EAC_snt = (1-EAC_xin)*(EAC_pnttilde/EAC_pnt)^(-EAC_thetan)+EAC_xin*(EAC_pint/(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_snt(-1);
// Government capital accumulation:
EAC_kg = (1-EAC_deltag)*EAC_kg(-1)+EAC_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAC_qc = EAC_c+EAC_gammav;
// Aggregate investment and capital utilisation cost
EAC_qi = EAC_i+EAC_k*EAC_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAC_pg = EAC_pht and EAC_qg = EAC_cg   
EAC_py*EAC_y = EAC_qc+EAC_pi*EAC_qi+EAC_pnt*EAC_cg+EAC_pnt*EAC_ig
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im
-EACEAA_pim*EACEAA_imc
-EACEAA_pim*EACEAA_imi
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im
-EACEAB_pim*EACEAB_imc
-EACEAB_pim*EACEAB_imi
+EACEAD_rer*EADEAC_pim*EAD_size/EAC_size*EADEAC_im
-EACEAD_pim*EACEAD_imc
-EACEAD_pim*EACEAD_imi
+EACEAE_rer*EAEEAC_pim*EAE_size/EAC_size*EAEEAC_im
-EACEAE_pim*EACEAE_imc
-EACEAE_pim*EACEAE_imi
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
-EACRW_pim*EACRW_imc
-EACRW_pim*EACRW_imi
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
-EACUS_pim*EACUS_imc
-EACUS_pim*EACUS_imi
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
EAC_cgy = (1-EAC_rhocg)*EAC_cgybar+EAC_rhocg*EAC_cgy(-1)+EAC_epsg;
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
EAC_imy = (EAC_pimc*EAC_imc+EAC_pimi*EAC_imi)/(EAC_py*EAC_y);
// Aggregate nominal import share for consumption goods 
EAC_imcy = EAC_pimc*EAC_imc/(EAC_py*EAC_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
EAC_imiy = EAC_pimi*EAC_imi/(EAC_py*EAC_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAC_epsilonm = -1/8*1/(EAC_r*(EAC_gammav2*EAC_r+EAC_r-1));
// Trade balance-to-GDP ratio
EAC_tby = EAC_tb/(EAC_py*EAC_y);
// Imports of consumption goods 
EACEAA_imcy  = EACEAA_pim*EACEAA_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACEAA_imiy = EACEAA_pim*EACEAA_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAA_excy  = EAA_size/EAC_size*EACEAA_rer*EAAEAC_pim*EAAEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAA_exiy  = EAA_size/EAC_size*EACEAA_rer*EAAEAC_pim*EAAEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods 
EACEAB_imcy  = EACEAB_pim*EACEAB_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACEAB_imiy = EACEAB_pim*EACEAB_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAB_excy  = EAB_size/EAC_size*EACEAB_rer*EABEAC_pim*EABEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAB_exiy  = EAB_size/EAC_size*EACEAB_rer*EABEAC_pim*EABEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods 
EACEAD_imcy  = EACEAD_pim*EACEAD_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACEAD_imiy = EACEAD_pim*EACEAD_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAD_excy  = EAD_size/EAC_size*EACEAD_rer*EADEAC_pim*EADEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAD_exiy  = EAD_size/EAC_size*EACEAD_rer*EADEAC_pim*EADEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods 
EACEAE_imcy  = EACEAE_pim*EACEAE_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACEAE_imiy = EACEAE_pim*EACEAE_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAE_excy  = EAE_size/EAC_size*EACEAE_rer*EAEEAC_pim*EAEEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAE_exiy  = EAE_size/EAC_size*EACEAE_rer*EAEEAC_pim*EAEEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods 
EACRW_imcy  = EACRW_pim*EACRW_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACRW_imiy = EACRW_pim*EACRW_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACRW_excy  = RW_size/EAC_size*EACRW_rer*RWEAC_pim*RWEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACRW_exiy  = RW_size/EAC_size*EACRW_rer*RWEAC_pim*RWEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods 
EACUS_imcy  = EACUS_pim*EACUS_imc/(EAC_py*EAC_y);
// Imports of investment goods
EACUS_imiy = EACUS_pim*EACUS_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACUS_excy  = US_size/EAC_size*EACUS_rer*USEAC_pim*USEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACUS_exiy  = US_size/EAC_size*EACUS_rer*USEAC_pim*USEAC_imi/(EAC_py*EAC_y);
// Internal real exchange rate
EAC_internalrer = EAC_pnt/EAC_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    EAD_ccesi^(1-1/EAD_mucces) = (EAD_nucces)^(1/EAD_mucces)*EAD_ci^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces);
    EAD_ccesj^(1-1/EAD_mucces) = (EAD_nucces)^(1/EAD_mucces)*EAD_cj^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces);
//-------------
// Household I
//-------------
// Utility
EAD_utili = 
EAD_zcon*log(EAD_ccesi-EAD_kappa*EAD_ccesi(-1))-1/(1+EAD_zeta)*(EAD_ni)^(1+EAD_zeta)+EAD_beta*EAD_utili(+1)
;
// Marginal utility of consumption
EAD_dcci = ((EAD_nucces)^(1/EAD_mucces)*EAD_ci^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces))^(1/(EAD_mucces-1))*(EAD_nucces^(1/EAD_mucces))*(EAD_ci^(-1/EAD_mucces));
EAD_lambdai*(1+EAD_tauc+EAD_gammavi+EAD_vi*EAD_gammavider) = EAD_zcon*(EAD_ccesi-EAD_kappa*EAD_ccesi(-1))^(-EAD_sigma)*EAD_dcci;
// Euler equation for government bonds
EAD_r                   = EAD_beta^(-1)*EAD_lambdai/EAD_lambdai    *EAD_pic;
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
// Utility
EAD_utilj = 
EAD_zcon*log(EAD_ccesj-EAD_kappa*EAD_ccesj(-1))-1/(1+EAD_zeta)*(EAD_nj)^(1+EAD_zeta)+EAD_beta*EAD_utilj(+1)
;
// Budget constraint
(1+EAD_tauc+EAD_gammavj)*EAD_cj+EAD_mj = (1-EAD_taun-EAD_tauwh)*EAD_wj*EAD_nj+EAD_trj-EAD_tj+EAD_mj(-1)*EAD_pic^(-1);
// Marginal utility of consumption
EAD_dccj = ((EAD_nucces)^(1/EAD_mucces)*EAD_cj^(1-1/EAD_mucces)+(1-EAD_nucces)^(1/EAD_mucces)*EAD_cg^(1-1/EAD_mucces))^(1/(EAD_mucces-1))*(EAD_nucces^(1/EAD_mucces))*(EAD_cj^(-1/EAD_mucces));
EAD_lambdaj*(1+EAD_tauc+EAD_gammavj+EAD_vj*EAD_gammavjder) = EAD_zcon*(EAD_ccesj-EAD_kappa*EAD_ccesj(-1))^(-EAD_sigma)*EAD_dccj;
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
+EAAEAD_pim*EADEAA_rer*(EAAEAD_imc+EAAEAD_imi)*EAA_size/EAD_size
+EABEAD_pim*EADEAB_rer*(EABEAD_imc+EABEAD_imi)*EAB_size/EAD_size
+EACEAD_pim*EADEAC_rer*(EACEAD_imc+EACEAD_imi)*EAC_size/EAD_size
+EAEEAD_pim*EADEAE_rer*(EAEEAD_imc+EAEEAD_imi)*EAE_size/EAD_size
+RWEAD_pim*EADRW_rer*(RWEAD_imc+RWEAD_imi)*RW_size/EAD_size
+USEAD_pim*EADUS_rer*(USEAD_imc+USEAD_imi)*US_size/EAD_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAA_pimtilde
EAAEAD_pimtilde/EAAEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAA_fx/EADEAA_gx;
// Definition of fx
EADEAA_fx = EAA_size/EAD_size*EAAEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAAEAD_piim(+1)/(EAAEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAA_fx(+1);
// Definition of gx   
EADEAA_gx = EADEAA_rer*EAAEAD_pim*EAA_size/EAD_size*EAAEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAAEAD_piim(+1)/(EAAEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAA_pim
EAAEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EAAEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EAAEAD_pim(-1)/EAA_pic)^(1-EAD_thetat)*(EAAEAD_piim(-1)^EAD_chix*EAA_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAA_piim
EAAEAD_piim = EAAEAD_pim/EAAEAD_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EADEAA_rer = EAD_rer/EAA_rer;
// Auxiliary equation for steady-state output
EADEAA_rerbar = EADEAA_rer;
//Terms of Trade
EADEAA_tot = EADEAA_pim/(EADEAA_rer*EAAEAD_pim);
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAB_pimtilde
EABEAD_pimtilde/EABEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAB_fx/EADEAB_gx;
// Definition of fx
EADEAB_fx = EAB_size/EAD_size*EABEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EABEAD_piim(+1)/(EABEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAB_fx(+1);
// Definition of gx   
EADEAB_gx = EADEAB_rer*EABEAD_pim*EAB_size/EAD_size*EABEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EABEAD_piim(+1)/(EABEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAB_pim
EABEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EABEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EABEAD_pim(-1)/EAB_pic)^(1-EAD_thetat)*(EABEAD_piim(-1)^EAD_chix*EAB_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAB_piim
EABEAD_piim = EABEAD_pim/EABEAD_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EADEAB_rer = EAD_rer/EAB_rer;
// Auxiliary equation for steady-state output
EADEAB_rerbar = EADEAB_rer;
//Terms of Trade
EADEAB_tot = EADEAB_pim/(EADEAB_rer*EABEAD_pim);
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAC_pimtilde
EACEAD_pimtilde/EACEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAC_fx/EADEAC_gx;
// Definition of fx
EADEAC_fx = EAC_size/EAD_size*EACEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EACEAD_piim(+1)/(EACEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAC_fx(+1);
// Definition of gx   
EADEAC_gx = EADEAC_rer*EACEAD_pim*EAC_size/EAD_size*EACEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EACEAD_piim(+1)/(EACEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAC_pim
EACEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EACEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EACEAD_pim(-1)/EAC_pic)^(1-EAD_thetat)*(EACEAD_piim(-1)^EAD_chix*EAC_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAC_piim
EACEAD_piim = EACEAD_pim/EACEAD_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EADEAC_rer = EAD_rer/EAC_rer;
// Auxiliary equation for steady-state output
EADEAC_rerbar = EADEAC_rer;
//Terms of Trade
EADEAC_tot = EADEAC_pim/(EADEAC_rer*EACEAD_pim);
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAE_pimtilde
EAEEAD_pimtilde/EAEEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAE_fx/EADEAE_gx;
// Definition of fx
EADEAE_fx = EAE_size/EAD_size*EAEEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAEEAD_piim(+1)/(EAEEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAE_fx(+1);
// Definition of gx   
EADEAE_gx = EADEAE_rer*EAEEAD_pim*EAE_size/EAD_size*EAEEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAEEAD_piim(+1)/(EAEEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAE_pim
EAEEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EAEEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EAEEAD_pim(-1)/EAE_pic)^(1-EAD_thetat)*(EAEEAD_piim(-1)^EAD_chix*EAE_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAE_piim
EAEEAD_piim = EAEEAD_pim/EAEEAD_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EADEAE_rer = EAD_rer/EAE_rer;
// Auxiliary equation for steady-state output
EADEAE_rerbar = EADEAE_rer;
//Terms of Trade
EADEAE_tot = EADEAE_pim/(EADEAE_rer*EAEEAD_pim);
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = RW_pimtilde
RWEAD_pimtilde/RWEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADRW_fx/EADRW_gx;
// Definition of fx
EADRW_fx = RW_size/EAD_size*RWEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(RWEAD_piim(+1)/(RWEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADRW_fx(+1);
// Definition of gx   
EADRW_gx = EADRW_rer*RWEAD_pim*RW_size/EAD_size*RWEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(RWEAD_piim(+1)/(RWEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = RW_pim
RWEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*RWEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(RWEAD_pim(-1)/RW_pic)^(1-EAD_thetat)*(RWEAD_piim(-1)^EAD_chix*RW_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = RW_piim
RWEAD_piim = RWEAD_pim/RWEAD_pim(-1)*RW_pic;
// Bilateral real exchange rate
EADRW_rer = EAD_rer/RW_rer;
// Auxiliary equation for steady-state output
EADRW_rerbar = EADRW_rer;
//Terms of Trade
EADRW_tot = EADRW_pim/(EADRW_rer*RWEAD_pim);
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = US_pimtilde
USEAD_pimtilde/USEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADUS_fx/EADUS_gx;
// Definition of fx
EADUS_fx = US_size/EAD_size*USEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(USEAD_piim(+1)/(USEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADUS_fx(+1);
// Definition of gx   
EADUS_gx = EADUS_rer*USEAD_pim*US_size/EAD_size*USEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(USEAD_piim(+1)/(USEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = US_pim
USEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*USEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(USEAD_pim(-1)/US_pic)^(1-EAD_thetat)*(USEAD_piim(-1)^EAD_chix*US_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = US_piim
USEAD_piim = USEAD_pim/USEAD_pim(-1)*US_pic;
// Bilateral real exchange rate
EADUS_rer = EAD_rer/US_rer;
// Auxiliary equation for steady-state output
EADUS_rerbar = EADUS_rer;
//Terms of Trade
EADUS_tot = EADUS_pim/(EADUS_rer*USEAD_pim);
// Total imports 
EAD_im = EAD_imc+EAD_imi;
// Total import deflator
EAD_im*EAD_pim  = EAD_pimc*EAD_imc+EAD_pimi*EAD_imi;
// Total Export deflator 
EAD_ex*EAD_pex  =
+EADEAA_rer*EAAEAD_pim*EAA_size/EAD_size*EAAEAD_im
+EADEAB_rer*EABEAD_pim*EAB_size/EAD_size*EABEAD_im
+EADEAC_rer*EACEAD_pim*EAC_size/EAD_size*EACEAD_im
+EADEAE_rer*EAEEAD_pim*EAE_size/EAD_size*EAEEAD_im
+EADRW_rer*RWEAD_pim*RW_size/EAD_size*RWEAD_im
+EADUS_rer*USEAD_pim*US_size/EAD_size*USEAD_im
;
// Effective real exchange rate: double weighting (imports)
EADEAA_weightim = EADEAA_rer*EAA_pex*EADEAA_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAA_weightex = EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAA_rer*EAA_py*EAA_y/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EABEAA_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EACEAA_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EAEEAA_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAA_rer*EAA_pex*RWEAA_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAA_rer*EAA_pex*USEAA_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
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
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAAEAB_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EACEAB_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAEEAB_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAB_rer*EAB_pex*RWEAB_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAB_rer*EAB_pex*USEAB_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
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
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAAEAC_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EABEAC_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAEEAC_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAC_rer*EAC_pex*RWEAC_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAC_rer*EAC_pex*USEAC_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAC_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAC_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EADEAE_weightim = EADEAE_rer*EAE_pex*EADEAE_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAE_weightex = EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAE_rer*EAE_py*EAE_y/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EAAEAE_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EABEAE_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EACEAE_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAE_rer*EAE_pex*RWEAE_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAE_rer*EAE_pex*USEAE_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAE_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAE_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EADRW_weightim = EADRW_rer*RW_pex*EADRW_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADRW_weightex = RW_size/EAD_size*RWEAD_im/EAD_ex*EADRW_rer*RW_py*RW_y/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADRW_rer*RW_pex*EAARW_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADRW_rer*RW_pex*EABRW_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADRW_rer*RW_pex*EACRW_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADRW_rer*RW_pex*EAERW_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADRW_rer*RW_pex*USRW_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
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
+EADEAE_rer*EAE_pex*USEAE_im
+EADRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADUS_rer*US_pex*EAAUS_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADUS_rer*US_pex*EABUS_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADUS_rer*US_pex*EACUS_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADUS_rer*US_pex*EAEUS_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADUS_rer*US_pex*RWUS_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
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
*EADEAE_rer^EADEAE_weight
*EADRW_rer^EADRW_weight
*EADUS_rer^EADUS_weight
;
// Effective terms of trade
EAD_etot = 1
*EADEAA_tot^EADEAA_weight
*EADEAB_tot^EADEAB_weight
*EADEAC_tot^EADEAC_weight
*EADEAE_tot^EADEAE_weight
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
+EADEAE_numc ^(1/EAD_mumc)*EADEAE_imc^(1-1/EAD_mumc)
+EADRW_numc ^(1/EAD_mumc)*EADRW_imc^(1-1/EAD_mumc)
+EADUS_numc ^(1/EAD_mumc)*EADUS_imc^(1-1/EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADRW_numc
-EADUS_numc
)^(1/EAD_mumc)*EADEAB_imc^(1-1/EAD_mumc);
// Demand for bilateral consumption import goods
EADEAA_imc = EADEAA_numc*(EADEAA_pim/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADRW_imc = EADRW_numc*(EADRW_pim/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADUS_imc = EADUS_numc*(EADUS_pim/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADEAC_imc = EADEAC_numc*(EADEAC_pim/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADEAB_imc = (1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADRW_numc
-EADUS_numc
)*(EADEAB_pim/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Price of the consumption good (import)
EAD_pimc^(1-EAD_mumc) =
+EADEAA_numc * EADEAA_pim^(1-EAD_mumc)
+EADEAC_numc * EADEAC_pim^(1-EAD_mumc)
+EADEAE_numc * EADEAE_pim^(1-EAD_mumc)
+EADRW_numc * EADRW_pim^(1-EAD_mumc)
+EADUS_numc * EADUS_pim^(1-EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADRW_numc
-EADUS_numc
)*EADEAB_pim^(1-EAD_mumc);
// Private consumption good (import) inflation
EAD_piimc = EAD_pimc/EAD_pimc(-1)*EAD_pic;
// Private consumption good (import) inflation
EAD_piimc4 = EAD_pimc/EAD_pimc(-4)*EAD_pic4;
// Private consumption good (import) inflation
EAD_piex4 = EAD_pex/EAD_pex(-4)*EAD_pic4;
// Private investment good (import)
EAD_imi^((EAD_mumi-1)/EAD_mumi) =
+EADEAA_numi ^(1/EAD_mumi)*EADEAA_imi^(1-1/EAD_mumi)
+EADEAC_numi ^(1/EAD_mumi)*EADEAC_imi^(1-1/EAD_mumi)
+EADEAE_numi ^(1/EAD_mumi)*EADEAE_imi^(1-1/EAD_mumi)
+EADRW_numi ^(1/EAD_mumi)*EADRW_imi^(1-1/EAD_mumi)
+EADUS_numi ^(1/EAD_mumi)*EADUS_imi^(1-1/EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADRW_numi
-EADUS_numi
)^(1/EAD_mumi)*EADEAB_imi^(1-1/EAD_mumi);
// Demand for bilateral investment import goods
EADEAA_imi = EADEAA_numi*(EADEAA_pim/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral investment import goods
EADRW_imi = EADRW_numi*(EADRW_pim/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral investment import goods
EADUS_imi = EADUS_numi*(EADUS_pim/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral investment import goods
EADEAC_imi = EADEAC_numi*(EADEAC_pim/EAD_pimi)^(-EAD_mumi)*EAD_imi;
EADEAB_imi = (1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADRW_numi
-EADUS_numi
)*(EADEAB_pim/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Price of the investment good (import)
EAD_pimi^(1-EAD_mumi) =
+EADEAA_numi * EADEAA_pim^(1-EAD_mumi)
+EADEAC_numi * EADEAC_pim^(1-EAD_mumi)
+EADEAE_numi * EADEAE_pim^(1-EAD_mumi)
+EADRW_numi * EADRW_pim^(1-EAD_mumi)
+EADUS_numi * EADUS_pim^(1-EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADRW_numi
-EADUS_numi
)*EADEAB_pim^(1-EAD_mumi);
// Private investment good (import) inflation
EAD_piimi = EAD_pimi/EAD_pimi(-1)*EAD_pic;
// Wedge between aggregate demand and production, using EAD_x = EAE_size/EAD_size*EAE_im
EAD_yst = EAD_sh*EAD_ht
+EADEAA_sx*EAA_size/EAD_size*EAAEAD_im
+EADEAB_sx*EAB_size/EAD_size*EABEAD_im
+EADEAC_sx*EAC_size/EAD_size*EACEAD_im
+EADEAE_sx*EAE_size/EAD_size*EAEEAD_im
+EADRW_sx*RW_size/EAD_size*RWEAD_im
+EADUS_sx*US_size/EAD_size*USEAD_im
;
// Aggregate demand for bilateral imported intermediate goods
EADEAA_im = EADEAA_imi+EADEAA_imc;
EADEAB_im = EADEAB_imi+EADEAB_imc;
EADEAC_im = EADEAC_imi+EADEAC_imc;
EADEAE_im = EADEAE_imi+EADEAE_imc;
EADRW_im = EADRW_imi+EADRW_imc;
EADUS_im = EADUS_imi+EADUS_imc;
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
EADEAE_gammaimc = 0;
EADEAE_gammaimcdag = 1;
EADRW_gammaimc = 0;
EADRW_gammaimcdag = 1;
EADUS_gammaimc = 0;
EADUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
EAD_tti^((EAD_muti-1)/EAD_muti) = (EAD_nuti)^(1/EAD_muti)*EAD_hti^(1-1/EAD_muti)+(1-EAD_nuti)^(1/EAD_muti)*EAD_imi^(1-1/EAD_muti);
// Private investment good
EAD_qi^((EAD_mui-1)/EAD_mui) = (EAD_nui)^(1/EAD_mui)*EAD_tti^(1-1/EAD_mui)+(1-EAD_nui)^(1/EAD_mui)*EAD_nti^(1-1/EAD_mui);
// Demand for domestic intermediate goods
EAD_nti = (1-EAD_nui)*(EAD_pnt/EAD_pi)^(-EAD_mui)*EAD_qi;
// Price of the investment good (TRADABLE)  
EAD_ptti^(1-EAD_muti) = (EAD_nuti)*EAD_pht^(1-EAD_muti)+(1-EAD_nuti)*EAD_pimi^(1-EAD_muti);
// Price of the investment good
EAD_pi^(1-EAD_mui) = (EAD_nui)*EAD_ptti^(1-EAD_mui)+(1-EAD_nui)*(EAD_pnt)^(1-EAD_mui);
// Auxiliary equation for the price of the investment good in steady state
EAD_pibar = EAD_pi;
// Demand for domestic intermediate goods
EAD_hti = EAD_nuti*(EAD_pht/EAD_ptti)^(-EAD_muti)*EAD_tti;
EADEAA_gammaimi = 0;
EADEAA_gammaimidag = 1;
EADEAB_gammaimi = 0;
EADEAB_gammaimidag = 1;
EADEAC_gammaimi = 0;
EADEAC_gammaimidag = 1;
EADEAE_gammaimi = 0;
EADEAE_gammaimidag = 1;
EADRW_gammaimi = 0;
EADRW_gammaimidag = 1;
EADUS_gammaimi = 0;
EADUS_gammaimidag = 1;
// Trade balance
EAD_tb =
+EADEAA_rer*EAAEAD_pim*EAA_size/EAD_size*EAAEAD_im
-EADEAA_pim*EADEAA_im
+EADEAB_rer*EABEAD_pim*EAB_size/EAD_size*EABEAD_im
-EADEAB_pim*EADEAB_im
+EADEAC_rer*EACEAD_pim*EAC_size/EAD_size*EACEAD_im
-EADEAC_pim*EADEAC_im
+EADEAE_rer*EAEEAD_pim*EAE_size/EAD_size*EAEEAD_im
-EADEAE_pim*EADEAE_im
+EADRW_rer*RWEAD_pim*RW_size/EAD_size*RWEAD_im
-EADRW_pim*EADRW_im
+EADUS_rer*USEAD_pim*US_size/EAD_size*USEAD_im
-EADUS_pim*EADUS_im
;
// Aggregate exports (volume)
EAD_ex =
+EAA_size/EAD_size*EAAEAD_im
+EAB_size/EAD_size*EABEAD_im
+EAC_size/EAD_size*EACEAD_im
+EAE_size/EAD_size*EAEEAD_im
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
	EAD_pnt(-1)*EAD_cg(-1)+EAD_pnt(-1)*EAD_ig(-1)+EAD_tr(-1)
	+EAD_b(-1)*EAD_pic(-1)^(-1)+EAD_m(-2)*EAD_pic(-1)^(-1) = EAD_tauc(-1)*EAD_c(-1)+(EAD_taun(-1)+EAD_tauwh(-1))*(EAD_wi(-1)*EAD_ndi(-1)+EAD_wj(-1)*EAD_ndj(-1))+EAD_tauwf(-1)*EAD_w(-1)*EAD_nd(-1)+EAD_tauk(-1)*(EAD_rk(-1)*EAD_u(-1)-(EAD_gammau(-1)+EAD_delta)*EAD_pi(-1))*EAD_k(-1)+EAD_taud(-1)*EAD_d(-1)+EAD_t(-1)+(EAD_r(-1)*(1-EAD_gammab(-1)))^(-1)*EAD_b+EAD_m(-1);
// Government spending, using EAD_pg = EAD_pht
EAD_pnt*EAD_cg = EAD_cgy*EAD_pybar*EAD_ybar;
EAD_pnt*EAD_ig = EAD_igy*EAD_pybar*EAD_ybar;
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
	
		
			
					EAD_r = EAE_r;
				
				
			
		
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
// Wedge between aggregate demand and production, using EAD_x = EAE_size/EAD_size*EAE_im
EAD_ysn = EAD_snt*EAD_nt;
//  nontradables aggregate demand
EAD_nt =  EAD_nti+EAD_ntc+EAD_cg+EAD_ig;
// Aggregate demand for domestic intermediate goods, using EAD_hg = EAD_cg
EAD_ht = EAD_htc+EAD_hti;
// Price dispersion in the domestic markets
EAD_sh = (1-EAD_xih)*(EAD_phttilde/EAD_pht)^(-EAD_thetat)+EAD_xih*(EAD_piht/(EAD_piht(-1)^EAD_chih*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EAD_sh(-1);
// Price dispersion in the foreign markets
EADEAA_sx = (1-EAD_xix)*(EAAEAD_pimtilde/EAAEAD_pim)^(-EAD_thetat)+EAD_xix*(EAAEAD_piim/(EAAEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADEAA_sx(-1);
EADEAB_sx = (1-EAD_xix)*(EABEAD_pimtilde/EABEAD_pim)^(-EAD_thetat)+EAD_xix*(EABEAD_piim/(EABEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADEAB_sx(-1);
EADEAC_sx = (1-EAD_xix)*(EACEAD_pimtilde/EACEAD_pim)^(-EAD_thetat)+EAD_xix*(EACEAD_piim/(EACEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADEAC_sx(-1);
EADEAE_sx = (1-EAD_xix)*(EAEEAD_pimtilde/EAEEAD_pim)^(-EAD_thetat)+EAD_xix*(EAEEAD_piim/(EAEEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADEAE_sx(-1);
EADRW_sx = (1-EAD_xix)*(RWEAD_pimtilde/RWEAD_pim)^(-EAD_thetat)+EAD_xix*(RWEAD_piim/(RWEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADRW_sx(-1);
EADUS_sx = (1-EAD_xix)*(USEAD_pimtilde/USEAD_pim)^(-EAD_thetat)+EAD_xix*(USEAD_piim/(USEAD_piim(-1)^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chih))))^EAD_thetat*EADUS_sx(-1);
// Price dispersion in the domestic markets
EAD_snt = (1-EAD_xin)*(EAD_pnttilde/EAD_pnt)^(-EAD_thetan)+EAD_xin*(EAD_pint/(EAD_pint(-1)^EAD_chin*EAD_pi4target^(1/4*(1-EAD_chin))))^EAD_thetan*EAD_snt(-1);
// Government capital accumulation:
EAD_kg = (1-EAD_deltag)*EAD_kg(-1)+EAD_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAD_qc = EAD_c+EAD_gammav;
// Aggregate investment and capital utilisation cost
EAD_qi = EAD_i+EAD_k*EAD_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAD_pg = EAD_pht and EAD_qg = EAD_cg   
EAD_py*EAD_y = EAD_qc+EAD_pi*EAD_qi+EAD_pnt*EAD_cg+EAD_pnt*EAD_ig
+EADEAA_rer*EAAEAD_pim*EAA_size/EAD_size*EAAEAD_im
-EADEAA_pim*EADEAA_imc
-EADEAA_pim*EADEAA_imi
+EADEAB_rer*EABEAD_pim*EAB_size/EAD_size*EABEAD_im
-EADEAB_pim*EADEAB_imc
-EADEAB_pim*EADEAB_imi
+EADEAC_rer*EACEAD_pim*EAC_size/EAD_size*EACEAD_im
-EADEAC_pim*EADEAC_imc
-EADEAC_pim*EADEAC_imi
+EADEAE_rer*EAEEAD_pim*EAE_size/EAD_size*EAEEAD_im
-EADEAE_pim*EADEAE_imc
-EADEAE_pim*EADEAE_imi
+EADRW_rer*RWEAD_pim*RW_size/EAD_size*RWEAD_im
-EADRW_pim*EADRW_imc
-EADRW_pim*EADRW_imi
+EADUS_rer*USEAD_pim*US_size/EAD_size*USEAD_im
-EADUS_pim*EADUS_imc
-EADUS_pim*EADUS_imi
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
EAD_cgy = (1-EAD_rhocg)*EAD_cgybar+EAD_rhocg*EAD_cgy(-1)+EAD_epsg;
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
EAD_imy = (EAD_pimc*EAD_imc+EAD_pimi*EAD_imi)/(EAD_py*EAD_y);
// Aggregate nominal import share for consumption goods 
EAD_imcy = EAD_pimc*EAD_imc/(EAD_py*EAD_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
EAD_imiy = EAD_pimi*EAD_imi/(EAD_py*EAD_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAD_epsilonm = -1/8*1/(EAD_r*(EAD_gammav2*EAD_r+EAD_r-1));
// Trade balance-to-GDP ratio
EAD_tby = EAD_tb/(EAD_py*EAD_y);
// Imports of consumption goods 
EADEAA_imcy  = EADEAA_pim*EADEAA_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADEAA_imiy = EADEAA_pim*EADEAA_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAA_excy  = EAA_size/EAD_size*EADEAA_rer*EAAEAD_pim*EAAEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAA_exiy  = EAA_size/EAD_size*EADEAA_rer*EAAEAD_pim*EAAEAD_imi/(EAD_py*EAD_y);
// Imports of consumption goods 
EADEAB_imcy  = EADEAB_pim*EADEAB_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADEAB_imiy = EADEAB_pim*EADEAB_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAB_excy  = EAB_size/EAD_size*EADEAB_rer*EABEAD_pim*EABEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAB_exiy  = EAB_size/EAD_size*EADEAB_rer*EABEAD_pim*EABEAD_imi/(EAD_py*EAD_y);
// Imports of consumption goods 
EADEAC_imcy  = EADEAC_pim*EADEAC_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADEAC_imiy = EADEAC_pim*EADEAC_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAC_excy  = EAC_size/EAD_size*EADEAC_rer*EACEAD_pim*EACEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAC_exiy  = EAC_size/EAD_size*EADEAC_rer*EACEAD_pim*EACEAD_imi/(EAD_py*EAD_y);
// Imports of consumption goods 
EADEAE_imcy  = EADEAE_pim*EADEAE_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADEAE_imiy = EADEAE_pim*EADEAE_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAE_excy  = EAE_size/EAD_size*EADEAE_rer*EAEEAD_pim*EAEEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAE_exiy  = EAE_size/EAD_size*EADEAE_rer*EAEEAD_pim*EAEEAD_imi/(EAD_py*EAD_y);
// Imports of consumption goods 
EADRW_imcy  = EADRW_pim*EADRW_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADRW_imiy = EADRW_pim*EADRW_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADRW_excy  = RW_size/EAD_size*EADRW_rer*RWEAD_pim*RWEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADRW_exiy  = RW_size/EAD_size*EADRW_rer*RWEAD_pim*RWEAD_imi/(EAD_py*EAD_y);
// Imports of consumption goods 
EADUS_imcy  = EADUS_pim*EADUS_imc/(EAD_py*EAD_y);
// Imports of investment goods
EADUS_imiy = EADUS_pim*EADUS_imi/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADUS_excy  = US_size/EAD_size*EADUS_rer*USEAD_pim*USEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADUS_exiy  = US_size/EAD_size*EADUS_rer*USEAD_pim*USEAD_imi/(EAD_py*EAD_y);
// Internal real exchange rate
EAD_internalrer = EAD_pnt/EAD_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    EAE_ccesi^(1-1/EAE_mucces) = (EAE_nucces)^(1/EAE_mucces)*EAE_ci^(1-1/EAE_mucces)+(1-EAE_nucces)^(1/EAE_mucces)*EAE_cg^(1-1/EAE_mucces);
    EAE_ccesj^(1-1/EAE_mucces) = (EAE_nucces)^(1/EAE_mucces)*EAE_cj^(1-1/EAE_mucces)+(1-EAE_nucces)^(1/EAE_mucces)*EAE_cg^(1-1/EAE_mucces);
//-------------
// Household I
//-------------
// Utility
EAE_utili = 
EAE_zcon*log(EAE_ccesi-EAE_kappa*EAE_ccesi(-1))-1/(1+EAE_zeta)*(EAE_ni)^(1+EAE_zeta)+EAE_beta*EAE_utili(+1)
;
// Marginal utility of consumption
EAE_dcci = ((EAE_nucces)^(1/EAE_mucces)*EAE_ci^(1-1/EAE_mucces)+(1-EAE_nucces)^(1/EAE_mucces)*EAE_cg^(1-1/EAE_mucces))^(1/(EAE_mucces-1))*(EAE_nucces^(1/EAE_mucces))*(EAE_ci^(-1/EAE_mucces));
EAE_lambdai*(1+EAE_tauc+EAE_gammavi+EAE_vi*EAE_gammavider) = EAE_zcon*(EAE_ccesi-EAE_kappa*EAE_ccesi(-1))^(-EAE_sigma)*EAE_dcci;
// Euler equation for government bonds
EAE_r = EAE_beta^(-1)*EAE_lambdai/EAE_lambdai(+1)*EAE_pic(+1);
// Euler equation for money
EAE_vi^(2)*EAE_gammavider = 1-EAE_beta*EAE_lambdai(+1)/(EAE_lambdai*EAE_pic(+1));
// Consumption-based velocity
EAE_vi = EAE_ci/EAE_mi;
// Transaction cost
EAE_gammavi = EAE_gammav1*EAE_vi+EAE_gammav2/EAE_vi-2*(EAE_gammav1*EAE_gammav2)^(1/2);
// Derivative of transaction cost
EAE_gammavider = EAE_gammav1-EAE_gammav2*EAE_vi^(-2);
EAE_delta = EAE_ii/EAE_ki;
EAE_gammai = 0;
EAE_gammaider = 0;
EAE_gammau = 0;
EAE_gammauder = ((EAE_beta^(-1)-1+EAE_delta)*EAE_qbar-EAE_delta*EAE_taukbar*EAE_pibar)/((1-EAE_taukbar)*EAE_pibar);
EAE_u = 1;
EAE_pi = EAE_q;
// Auxiliary equation for Tobin's Q in steady state
EAE_qbar = EAE_q;
// Rate of return on capital
EAE_q = EAE_beta*((1-EAE_tauk)*EAE_rk+(EAE_tauk*EAE_delta)*EAE_pi+(1-EAE_delta)*EAE_q);
// Optimal wage contract (FOC)
EAE_witilde^(1+EAE_etai*EAE_zeta) = EAE_etai/(EAE_etai-1)*EAE_fi/EAE_gi+EAE_wcst;
// Definition of fi
EAE_fi = EAE_wi^(EAE_etai*(1+EAE_zeta))*EAE_ndi^(1+EAE_zeta)+EAE_xii*EAE_beta*(EAE_pic(+1)/(EAE_pic^EAE_chii*EAE_pi4target^(1/4*(1-EAE_chii))))^(EAE_etai*(1+EAE_zeta))*EAE_fi(+1);
// Definition of gi
EAE_gi = EAE_lambdai*(1-EAE_taun-EAE_tauwh)*EAE_wi^EAE_etai*EAE_ndi+EAE_xii*EAE_beta*(EAE_pic(+1)/(EAE_pic^EAE_chii*EAE_pi4target^(1/4*(1-EAE_chii))))^(EAE_etai-1)*EAE_gi(+1);
// Aggregate wage rate
EAE_wi^(1-EAE_etai) = (1-EAE_xii)*EAE_witilde^(1-EAE_etai)+EAE_xii*EAE_wi(-1)^(1-EAE_etai)*(EAE_pic(-1)^EAE_chii*EAE_pi4target^(1/4*(1-EAE_chii))/EAE_pic)^(1-EAE_etai);
//-------------
// Household J
//-------------
// Utility
EAE_utilj = 
EAE_zcon*log(EAE_ccesj-EAE_kappa*EAE_ccesj(-1))-1/(1+EAE_zeta)*(EAE_nj)^(1+EAE_zeta)+EAE_beta*EAE_utilj(+1)
;
// Budget constraint
(1+EAE_tauc+EAE_gammavj)*EAE_cj+EAE_mj = (1-EAE_taun-EAE_tauwh)*EAE_wj*EAE_nj+EAE_trj-EAE_tj+EAE_mj(-1)*EAE_pic^(-1);
// Marginal utility of consumption
EAE_dccj = ((EAE_nucces)^(1/EAE_mucces)*EAE_cj^(1-1/EAE_mucces)+(1-EAE_nucces)^(1/EAE_mucces)*EAE_cg^(1-1/EAE_mucces))^(1/(EAE_mucces-1))*(EAE_nucces^(1/EAE_mucces))*(EAE_cj^(-1/EAE_mucces));
EAE_lambdaj*(1+EAE_tauc+EAE_gammavj+EAE_vj*EAE_gammavjder) = EAE_zcon*(EAE_ccesj-EAE_kappa*EAE_ccesj(-1))^(-EAE_sigma)*EAE_dccj;
// Euler equation for money
EAE_vj^(2)*EAE_gammavjder = 1-EAE_beta*EAE_lambdaj(+1)/(EAE_lambdaj*EAE_pic(+1));
// Consumption-based velocity
EAE_vj = EAE_cj/EAE_mj;
// Transaction technology
EAE_gammavj = EAE_gammav1*EAE_vj+EAE_gammav2/EAE_vj-2*(EAE_gammav1*EAE_gammav2)^(1/2);
// Derivative of transaction technology
EAE_gammavjder = EAE_gammav1-EAE_gammav2*EAE_vj^(-2);
// Optimal wage contract (FOC)
EAE_wjtilde^(1+EAE_etaj*EAE_zeta) = EAE_etaj/(EAE_etaj-1)*EAE_fj/EAE_gj+EAE_wcst;
// Definition of fj
EAE_fj = EAE_wj^(EAE_etaj*(1+EAE_zeta))*EAE_ndj^(1+EAE_zeta)+EAE_xij*EAE_beta*(EAE_pic(+1)/(EAE_pic^EAE_chij*EAE_pi4target^(1/4*(1-EAE_chij))))^(EAE_etaj*(1+EAE_zeta))*EAE_fj(+1);
// Definition of gj
EAE_gj = EAE_lambdaj*(1-EAE_taun-EAE_tauwh)*EAE_wj^EAE_etaj*EAE_ndj+EAE_xij*EAE_beta*(EAE_pic(+1)/(EAE_pic^EAE_chij*EAE_pi4target^(1/4*(1-EAE_chij))))^(EAE_etaj-1)*EAE_gj(+1);
// Aggregate wage rate
EAE_wj^(1-EAE_etaj) = (1-EAE_xij)*EAE_wjtilde^(1-EAE_etaj)+EAE_xij*EAE_wj(-1)^(1-EAE_etaj)*(EAE_pic(-1)^EAE_chij*EAE_pi4target^(1/4*(1-EAE_chij))/EAE_pic)^(1-EAE_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
EAE_yst = EA_z*EAE_zt*EAE_kg^EAE_alphag*EAE_kdt^EAE_alphat*EAE_ndt^(1-EAE_alphat)-EAE_psitbar;
// Production function nontradable
EAE_ysn = EA_z*EAE_zn*EAE_kg^EAE_alphag*EAE_kdn^EAE_alphan*EAE_ndn^(1-EAE_alphan)-EAE_psinbar;
// Real marginal cost tradable
EAE_mct = 1/(EA_z*EAE_zt*EAE_kg^EAE_alphag*(EAE_alphat)^(EAE_alphat)*(1-EAE_alphat)^(1-EAE_alphat))*EAE_rk^(EAE_alphat)*((1+EAE_tauwf)*EAE_w)^(1-EAE_alphat);
// Real marginal cost nontradable
EAE_mcn = 1/(EA_z*EAE_zn*EAE_kg^EAE_alphag*(EAE_alphan)^(EAE_alphan)*(1-EAE_alphan)^(1-EAE_alphan))*EAE_rk^(EAE_alphan)*((1+EAE_tauwf)*EAE_w)^(1-EAE_alphan);
// Wage Inflation (qoq)
EAE_piw = EAE_w/EAE_w(-1)*EAE_pic;
// Wage Inflation (yoy)
EAE_piw4 = EAE_pic4;
// Auxiliary equation for steady-state fixed cost
EAE_psitbar = EAE_psit*EAE_ytbar;
// Auxiliary equation for steady-state fixed cost
EAE_psinbar = EAE_psin*EAE_ynbar;
// Capital input (FOC)
EAE_rk = EAE_alphat*(EAE_yst+EAE_psitbar)/EAE_kdt*EAE_mct;
// Capital input (FOC)
EAE_rk = EAE_alphan*(EAE_ysn+EAE_psinbar)/EAE_kdn*EAE_mcn;
// Total capital demand
EAE_kd = EAE_kdt+EAE_kdn;
// Demand for labour services by household I
EAE_ndi = 
(1-EAE_omega)*(EAE_wi/EAE_w)^(-EAE_eta)*EAE_nd
;
// Demand for labour services by household J
EAE_ndj = 
EAE_omega*(EAE_wj/EAE_w)^(-EAE_eta)*EAE_nd
;
// Aggregate labour demand
EAE_nd^(1-1/EAE_eta) = 
(1-EAE_omega)^(1/EAE_eta)*EAE_ndi^(1-1/EAE_eta)+EAE_omega^(1/EAE_eta)*EAE_ndj^(1-1/EAE_eta)
;
// Total demand 
EAE_nd = EAE_ndt+EAE_ndn;
// Aggregate dividends
EAE_d = EAE_py*EAE_y-EAE_rk*EAE_kd-(1+EAE_tauwf)*EAE_w*EAE_nd;
// Non-tradable sector dividends
EAE_dn = EAE_pnt*EAE_ysn-EAE_rk*EAE_kdn-(1+EAE_tauwf)*EAE_w*EAE_ndn;
// Tradable sector dividends
EAE_dt = EAE_pht*EAE_ht
+EAAEAE_pim*EAEEAA_rer*(EAAEAE_imc+EAAEAE_imi)*EAA_size/EAE_size
+EABEAE_pim*EAEEAB_rer*(EABEAE_imc+EABEAE_imi)*EAB_size/EAE_size
+EACEAE_pim*EAEEAC_rer*(EACEAE_imc+EACEAE_imi)*EAC_size/EAE_size
+EADEAE_pim*EAEEAD_rer*(EADEAE_imc+EADEAE_imi)*EAD_size/EAE_size
+RWEAE_pim*EAERW_rer*(RWEAE_imc+RWEAE_imi)*RW_size/EAE_size
+USEAE_pim*EAEUS_rer*(USEAE_imc+USEAE_imi)*US_size/EAE_size
-EAE_rk*EAE_kdt-(1+EAE_tauwf)*EAE_w*EAE_ndt;
// Optimal price contract set in domestic markets (FOC)
EAE_phttilde/EAE_pht = EAE_thetat/(EAE_thetat-1)*EAE_fh/EAE_gh;
// Definition of fh
EAE_fh = EAE_mct*EAE_ht+EAE_xih*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_piht(+1)/(EAE_piht^EAE_chih*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAE_fh(+1);
// Definition of gh
EAE_gh = EAE_pht*EAE_ht+EAE_xih*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_piht(+1)/(EAE_piht^EAE_chih*EAE_pi4target^(1/4*(1-EAE_chih))))^(EAE_thetat-1)*EAE_gh(+1);
// Aggregate intermediate-good price dynamics
EAE_pht^(1-EAE_thetat) = (1-EAE_xih)*EAE_phttilde^(1-EAE_thetat)+EAE_xih*(EAE_pht(-1)/EAE_pic)^(1-EAE_thetat)*(EAE_piht(-1)^EAE_chih*EAE_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation
EAE_piht = EAE_pht/EAE_pht(-1)*EAE_pic;
// Optimal price contract set in domestic markets (FOC)
EAE_pnttilde/EAE_pnt = EAE_thetan/(EAE_thetan-1)*EAE_fn/EAE_gn;
// Definition of fn
EAE_fn = EAE_mcn*EAE_nt+EAE_xin*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_pint(+1)/(EAE_pint^EAE_chin*EAE_pi4target^(1/4*(1-EAE_chin))))^EAE_thetan*EAE_fn(+1);
// Definition of gn
EAE_gn = EAE_pnt*EAE_nt+EAE_xin*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_pint(+1)/(EAE_pint^EAE_chin*EAE_pi4target^(1/4*(1-EAE_chin))))^(EAE_thetan-1)*EAE_gn(+1);
// Aggregate intermediate-good price dynamics
EAE_pnt^(1-EAE_thetan) = (1-EAE_xin)*EAE_pnttilde^(1-EAE_thetan)+EAE_xin*(EAE_pnt(-1)/EAE_pic)^(1-EAE_thetan)*(EAE_pint(-1)^EAE_chin*EAE_pi4target^(1/4*(1-EAE_chin)))^(1-EAE_thetan);
// Intermediate-good price inflation
EAE_pint = EAE_pnt/EAE_pnt(-1)*EAE_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAA_pimtilde
EAAEAE_pimtilde/EAAEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAA_fx/EAEEAA_gx;
// Definition of fx
EAEEAA_fx = EAA_size/EAE_size*EAAEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAAEAE_piim(+1)/(EAAEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAA_fx(+1);
// Definition of gx   
EAEEAA_gx = EAEEAA_rer*EAAEAE_pim*EAA_size/EAE_size*EAAEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAAEAE_piim(+1)/(EAAEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAA_pim
EAAEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EAAEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EAAEAE_pim(-1)/EAA_pic)^(1-EAE_thetat)*(EAAEAE_piim(-1)^EAE_chix*EAA_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAA_piim
EAAEAE_piim = EAAEAE_pim/EAAEAE_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EAEEAA_rer = EAE_rer/EAA_rer;
// Auxiliary equation for steady-state output
EAEEAA_rerbar = EAEEAA_rer;
//Terms of Trade
EAEEAA_tot = EAEEAA_pim/(EAEEAA_rer*EAAEAE_pim);
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAB_pimtilde
EABEAE_pimtilde/EABEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAB_fx/EAEEAB_gx;
// Definition of fx
EAEEAB_fx = EAB_size/EAE_size*EABEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EABEAE_piim(+1)/(EABEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAB_fx(+1);
// Definition of gx   
EAEEAB_gx = EAEEAB_rer*EABEAE_pim*EAB_size/EAE_size*EABEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EABEAE_piim(+1)/(EABEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAB_pim
EABEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EABEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EABEAE_pim(-1)/EAB_pic)^(1-EAE_thetat)*(EABEAE_piim(-1)^EAE_chix*EAB_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAB_piim
EABEAE_piim = EABEAE_pim/EABEAE_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EAEEAB_rer = EAE_rer/EAB_rer;
// Auxiliary equation for steady-state output
EAEEAB_rerbar = EAEEAB_rer;
//Terms of Trade
EAEEAB_tot = EAEEAB_pim/(EAEEAB_rer*EABEAE_pim);
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAC_pimtilde
EACEAE_pimtilde/EACEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAC_fx/EAEEAC_gx;
// Definition of fx
EAEEAC_fx = EAC_size/EAE_size*EACEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EACEAE_piim(+1)/(EACEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAC_fx(+1);
// Definition of gx   
EAEEAC_gx = EAEEAC_rer*EACEAE_pim*EAC_size/EAE_size*EACEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EACEAE_piim(+1)/(EACEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAC_pim
EACEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EACEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EACEAE_pim(-1)/EAC_pic)^(1-EAE_thetat)*(EACEAE_piim(-1)^EAE_chix*EAC_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAC_piim
EACEAE_piim = EACEAE_pim/EACEAE_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EAEEAC_rer = EAE_rer/EAC_rer;
// Auxiliary equation for steady-state output
EAEEAC_rerbar = EAEEAC_rer;
//Terms of Trade
EAEEAC_tot = EAEEAC_pim/(EAEEAC_rer*EACEAE_pim);
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAD_pimtilde
EADEAE_pimtilde/EADEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAD_fx/EAEEAD_gx;
// Definition of fx
EAEEAD_fx = EAD_size/EAE_size*EADEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EADEAE_piim(+1)/(EADEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAD_fx(+1);
// Definition of gx   
EAEEAD_gx = EAEEAD_rer*EADEAE_pim*EAD_size/EAE_size*EADEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EADEAE_piim(+1)/(EADEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAD_pim
EADEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EADEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EADEAE_pim(-1)/EAD_pic)^(1-EAE_thetat)*(EADEAE_piim(-1)^EAE_chix*EAD_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAD_piim
EADEAE_piim = EADEAE_pim/EADEAE_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EAEEAD_rer = EAE_rer/EAD_rer;
// Auxiliary equation for steady-state output
EAEEAD_rerbar = EAEEAD_rer;
//Terms of Trade
EAEEAD_tot = EAEEAD_pim/(EAEEAD_rer*EADEAE_pim);
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = RW_pimtilde
RWEAE_pimtilde/RWEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAERW_fx/EAERW_gx;
// Definition of fx
EAERW_fx = RW_size/EAE_size*RWEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(RWEAE_piim(+1)/(RWEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAERW_fx(+1);
// Definition of gx   
EAERW_gx = EAERW_rer*RWEAE_pim*RW_size/EAE_size*RWEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(RWEAE_piim(+1)/(RWEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAERW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = RW_pim
RWEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*RWEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(RWEAE_pim(-1)/RW_pic)^(1-EAE_thetat)*(RWEAE_piim(-1)^EAE_chix*RW_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = RW_piim
RWEAE_piim = RWEAE_pim/RWEAE_pim(-1)*RW_pic;
// Bilateral real exchange rate
EAERW_rer = EAE_rer/RW_rer;
// Auxiliary equation for steady-state output
EAERW_rerbar = EAERW_rer;
//Terms of Trade
EAERW_tot = EAERW_pim/(EAERW_rer*RWEAE_pim);
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = US_pimtilde
USEAE_pimtilde/USEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEUS_fx/EAEUS_gx;
// Definition of fx
EAEUS_fx = US_size/EAE_size*USEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(USEAE_piim(+1)/(USEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEUS_fx(+1);
// Definition of gx   
EAEUS_gx = EAEUS_rer*USEAE_pim*US_size/EAE_size*USEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(USEAE_piim(+1)/(USEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = US_pim
USEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*USEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(USEAE_pim(-1)/US_pic)^(1-EAE_thetat)*(USEAE_piim(-1)^EAE_chix*US_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = US_piim
USEAE_piim = USEAE_pim/USEAE_pim(-1)*US_pic;
// Bilateral real exchange rate
EAEUS_rer = EAE_rer/US_rer;
// Auxiliary equation for steady-state output
EAEUS_rerbar = EAEUS_rer;
//Terms of Trade
EAEUS_tot = EAEUS_pim/(EAEUS_rer*USEAE_pim);
// Total imports 
EAE_im = EAE_imc+EAE_imi;
// Total import deflator
EAE_im*EAE_pim  = EAE_pimc*EAE_imc+EAE_pimi*EAE_imi;
// Total Export deflator 
EAE_ex*EAE_pex  =
+EAEEAA_rer*EAAEAE_pim*EAA_size/EAE_size*EAAEAE_im
+EAEEAB_rer*EABEAE_pim*EAB_size/EAE_size*EABEAE_im
+EAEEAC_rer*EACEAE_pim*EAC_size/EAE_size*EACEAE_im
+EAEEAD_rer*EADEAE_pim*EAD_size/EAE_size*EADEAE_im
+EAERW_rer*RWEAE_pim*RW_size/EAE_size*RWEAE_im
+EAEUS_rer*USEAE_pim*US_size/EAE_size*USEAE_im
;
// Effective real exchange rate: double weighting (imports)
EAEEAA_weightim = EAEEAA_rer*EAA_pex*EAEEAA_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAA_weightex = EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAA_rer*EAA_py*EAA_y/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EABEAA_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EACEAA_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EADEAA_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*RWEAA_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*USEAA_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAA_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAA_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EAEEAB_weightim = EAEEAB_rer*EAB_pex*EAEEAB_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAB_weightex = EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAB_rer*EAB_py*EAB_y/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EAAEAB_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EACEAB_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EADEAB_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*RWEAB_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*USEAB_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAB_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAB_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EAEEAC_weightim = EAEEAC_rer*EAC_pex*EAEEAC_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAC_weightex = EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAC_rer*EAC_py*EAC_y/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EAAEAC_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EABEAC_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EADEAC_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*RWEAC_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*USEAC_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAC_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAC_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EAEEAD_weightim = EAEEAD_rer*EAD_pex*EAEEAD_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAD_weightex = EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAD_rer*EAD_py*EAD_y/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EAAEAD_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EABEAD_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EACEAD_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*RWEAD_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*USEAD_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAD_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAD_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EAERW_weightim = EAERW_rer*RW_pex*EAERW_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAERW_weightex = RW_size/EAE_size*RWEAE_im/EAE_ex*EAERW_rer*RW_py*RW_y/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAERW_rer*RW_pex*EAARW_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAERW_rer*RW_pex*EABRW_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAERW_rer*RW_pex*EACRW_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAERW_rer*RW_pex*EADRW_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAERW_rer*RW_pex*USRW_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAERW_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAERW_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAERW_weightex;
// Effective real exchange rate: double weighting (imports)
EAEUS_weightim = EAEUS_rer*US_pex*EAEUS_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEUS_weightex = US_size/EAE_size*USEAE_im/EAE_ex*EAEUS_rer*US_py*US_y/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAERW_rer*RW_pex*USRW_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEUS_rer*US_pex*EAAUS_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEUS_rer*US_pex*EABUS_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEUS_rer*US_pex*EACUS_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEUS_rer*US_pex*EADUS_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEUS_rer*US_pex*RWUS_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEUS_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEUS_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEUS_weightex;
// Effective real exchange rate
EAE_reer = 1
*EAEEAA_rer^EAEEAA_weight
*EAEEAB_rer^EAEEAB_weight
*EAEEAC_rer^EAEEAC_weight
*EAEEAD_rer^EAEEAD_weight
*EAERW_rer^EAERW_weight
*EAEUS_rer^EAEUS_weight
;
// Effective terms of trade
EAE_etot = 1
*EAEEAA_tot^EAEEAA_weight
*EAEEAB_tot^EAEEAB_weight
*EAEEAC_tot^EAEEAC_weight
*EAEEAD_tot^EAEEAD_weight
*EAERW_tot^EAERW_weight
*EAEUS_tot^EAEUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAE_imc^((EAE_mumc-1)/EAE_mumc) =
+EAEEAA_numc ^(1/EAE_mumc)*EAEEAA_imc^(1-1/EAE_mumc)
+EAEEAB_numc ^(1/EAE_mumc)*EAEEAB_imc^(1-1/EAE_mumc)
+EAEEAD_numc ^(1/EAE_mumc)*EAEEAD_imc^(1-1/EAE_mumc)
+EAERW_numc ^(1/EAE_mumc)*EAERW_imc^(1-1/EAE_mumc)
+EAEUS_numc ^(1/EAE_mumc)*EAEUS_imc^(1-1/EAE_mumc)
+(1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAERW_numc
-EAEUS_numc
)^(1/EAE_mumc)*EAEEAC_imc^(1-1/EAE_mumc);
// Demand for bilateral consumption import goods
EAEEAB_imc = EAEEAB_numc*(EAEEAB_pim/EAE_pimc)^(-EAE_mumc)*EAE_imc;
EAEUS_imc = EAEUS_numc*(EAEUS_pim/EAE_pimc)^(-EAE_mumc)*EAE_imc;
EAEEAA_imc = EAEEAA_numc*(EAEEAA_pim/EAE_pimc)^(-EAE_mumc)*EAE_imc;
EAEEAD_imc = EAEEAD_numc*(EAEEAD_pim/EAE_pimc)^(-EAE_mumc)*EAE_imc;
EAEEAC_imc = (1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAERW_numc
-EAEUS_numc
)*(EAEEAC_pim/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Price of the consumption good (import)
EAE_pimc^(1-EAE_mumc) =
+EAEEAA_numc * EAEEAA_pim^(1-EAE_mumc)
+EAEEAB_numc * EAEEAB_pim^(1-EAE_mumc)
+EAEEAD_numc * EAEEAD_pim^(1-EAE_mumc)
+EAERW_numc * EAERW_pim^(1-EAE_mumc)
+EAEUS_numc * EAEUS_pim^(1-EAE_mumc)
+(1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAERW_numc
-EAEUS_numc
)*EAEEAC_pim^(1-EAE_mumc);
// Private consumption good (import) inflation
EAE_piimc = EAE_pimc/EAE_pimc(-1)*EAE_pic;
// Private consumption good (import) inflation
EAE_piimc4 = EAE_pimc/EAE_pimc(-4)*EAE_pic4;
// Private consumption good (import) inflation
EAE_piex4 = EAE_pex/EAE_pex(-4)*EAE_pic4;
// Private investment good (import)
EAE_imi^((EAE_mumi-1)/EAE_mumi) =
+EAEEAA_numi ^(1/EAE_mumi)*EAEEAA_imi^(1-1/EAE_mumi)
+EAEEAB_numi ^(1/EAE_mumi)*EAEEAB_imi^(1-1/EAE_mumi)
+EAEEAD_numi ^(1/EAE_mumi)*EAEEAD_imi^(1-1/EAE_mumi)
+EAERW_numi ^(1/EAE_mumi)*EAERW_imi^(1-1/EAE_mumi)
+EAEUS_numi ^(1/EAE_mumi)*EAEUS_imi^(1-1/EAE_mumi)
+(1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAERW_numi
-EAEUS_numi
)^(1/EAE_mumi)*EAEEAC_imi^(1-1/EAE_mumi);
// Demand for bilateral investment import goods
EAEEAB_imi = EAEEAB_numi*(EAEEAB_pim/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral investment import goods
EAEUS_imi = EAEUS_numi*(EAEUS_pim/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral investment import goods
EAEEAA_imi = EAEEAA_numi*(EAEEAA_pim/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral investment import goods
EAEEAD_imi = EAEEAD_numi*(EAEEAD_pim/EAE_pimi)^(-EAE_mumi)*EAE_imi;
EAEEAC_imi = (1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAERW_numi
-EAEUS_numi
)*(EAEEAC_pim/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Price of the investment good (import)
EAE_pimi^(1-EAE_mumi) =
+EAEEAA_numi * EAEEAA_pim^(1-EAE_mumi)
+EAEEAB_numi * EAEEAB_pim^(1-EAE_mumi)
+EAEEAD_numi * EAEEAD_pim^(1-EAE_mumi)
+EAERW_numi * EAERW_pim^(1-EAE_mumi)
+EAEUS_numi * EAEUS_pim^(1-EAE_mumi)
+(1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAERW_numi
-EAEUS_numi
)*EAEEAC_pim^(1-EAE_mumi);
// Private investment good (import) inflation
EAE_piimi = EAE_pimi/EAE_pimi(-1)*EAE_pic;
// Wedge between aggregate demand and production, using EAE_x = RW_size/EAE_size*RW_im
EAE_yst = EAE_sh*EAE_ht
+EAEEAA_sx*EAA_size/EAE_size*EAAEAE_im
+EAEEAB_sx*EAB_size/EAE_size*EABEAE_im
+EAEEAC_sx*EAC_size/EAE_size*EACEAE_im
+EAEEAD_sx*EAD_size/EAE_size*EADEAE_im
+EAERW_sx*RW_size/EAE_size*RWEAE_im
+EAEUS_sx*US_size/EAE_size*USEAE_im
;
// Aggregate demand for bilateral imported intermediate goods
EAEEAA_im = EAEEAA_imi+EAEEAA_imc;
EAEEAB_im = EAEEAB_imi+EAEEAB_imc;
EAEEAC_im = EAEEAC_imi+EAEEAC_imc;
EAEEAD_im = EAEEAD_imi+EAEEAD_imc;
EAERW_im = EAERW_imi+EAERW_imc;
EAEUS_im = EAEUS_imi+EAEUS_imc;
// Private consumption good firm
// Private consumption good (tradable)
EAE_ttc^((EAE_mutc-1)/EAE_mutc) = (EAE_nutc)^(1/EAE_mutc)*EAE_htc^(1-1/EAE_mutc)+(1-EAE_nutc)^(1/EAE_mutc)*EAE_imc^(1-1/EAE_mutc);
// Private consumption good  (total)
EAE_qc^((EAE_muc-1)/EAE_muc) = (EAE_nuc)^(1/EAE_muc)*EAE_ttc^(1-1/EAE_muc)+(1-EAE_nuc)^(1/EAE_muc)*EAE_ntc^(1-1/EAE_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAE_ntc = (1-EAE_nuc)*(EAE_pnt)^(-EAE_muc)*EAE_qc;
// Price of the consumption good (tradable)  
EAE_pttc^(1-EAE_mutc) = (EAE_nutc)*EAE_pht^(1-EAE_mutc)+(1-EAE_nutc)*EAE_pimc^(1-EAE_mutc);
// Price of the consumption good 
1^(1-EAE_muc) = (EAE_nuc)*EAE_pttc^(1-EAE_muc)+(1-EAE_nuc)*EAE_pnt^(1-EAE_muc);
// Demand for domestic intermediate goods
EAE_htc = EAE_nutc*(EAE_pht/EAE_pttc)^(-EAE_mutc)*EAE_ttc;
EAEEAA_gammaimc = 0;
EAEEAA_gammaimcdag = 1;
EAEEAB_gammaimc = 0;
EAEEAB_gammaimcdag = 1;
EAEEAC_gammaimc = 0;
EAEEAC_gammaimcdag = 1;
EAEEAD_gammaimc = 0;
EAEEAD_gammaimcdag = 1;
EAERW_gammaimc = 0;
EAERW_gammaimcdag = 1;
EAEUS_gammaimc = 0;
EAEUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
EAE_tti^((EAE_muti-1)/EAE_muti) = (EAE_nuti)^(1/EAE_muti)*EAE_hti^(1-1/EAE_muti)+(1-EAE_nuti)^(1/EAE_muti)*EAE_imi^(1-1/EAE_muti);
// Private investment good
EAE_qi^((EAE_mui-1)/EAE_mui) = (EAE_nui)^(1/EAE_mui)*EAE_tti^(1-1/EAE_mui)+(1-EAE_nui)^(1/EAE_mui)*EAE_nti^(1-1/EAE_mui);
// Demand for domestic intermediate goods
EAE_nti = (1-EAE_nui)*(EAE_pnt/EAE_pi)^(-EAE_mui)*EAE_qi;
// Price of the investment good (TRADABLE)  
EAE_ptti^(1-EAE_muti) = (EAE_nuti)*EAE_pht^(1-EAE_muti)+(1-EAE_nuti)*EAE_pimi^(1-EAE_muti);
// Price of the investment good
EAE_pi^(1-EAE_mui) = (EAE_nui)*EAE_ptti^(1-EAE_mui)+(1-EAE_nui)*(EAE_pnt)^(1-EAE_mui);
// Auxiliary equation for the price of the investment good in steady state
EAE_pibar = EAE_pi;
// Demand for domestic intermediate goods
EAE_hti = EAE_nuti*(EAE_pht/EAE_ptti)^(-EAE_muti)*EAE_tti;
EAEEAA_gammaimi = 0;
EAEEAA_gammaimidag = 1;
EAEEAB_gammaimi = 0;
EAEEAB_gammaimidag = 1;
EAEEAC_gammaimi = 0;
EAEEAC_gammaimidag = 1;
EAEEAD_gammaimi = 0;
EAEEAD_gammaimidag = 1;
EAERW_gammaimi = 0;
EAERW_gammaimidag = 1;
EAEUS_gammaimi = 0;
EAEUS_gammaimidag = 1;
// Trade balance
EAE_tb =
+EAEEAA_rer*EAAEAE_pim*EAA_size/EAE_size*EAAEAE_im
-EAEEAA_pim*EAEEAA_im
+EAEEAB_rer*EABEAE_pim*EAB_size/EAE_size*EABEAE_im
-EAEEAB_pim*EAEEAB_im
+EAEEAC_rer*EACEAE_pim*EAC_size/EAE_size*EACEAE_im
-EAEEAC_pim*EAEEAC_im
+EAEEAD_rer*EADEAE_pim*EAD_size/EAE_size*EADEAE_im
-EAEEAD_pim*EAEEAD_im
+EAERW_rer*RWEAE_pim*RW_size/EAE_size*RWEAE_im
-EAERW_pim*EAERW_im
+EAEUS_rer*USEAE_pim*US_size/EAE_size*USEAE_im
-EAEUS_pim*EAEUS_im
;
// Aggregate exports (volume)
EAE_ex =
+EAA_size/EAE_size*EAAEAE_im
+EAB_size/EAE_size*EABEAE_im
+EAC_size/EAE_size*EACEAE_im
+EAD_size/EAE_size*EADEAE_im
+RW_size/EAE_size*RWEAE_im
+US_size/EAE_size*USEAE_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAE_pg = EAE_pht
	EAE_pnt(-1)*EAE_cg(-1)+EAE_pnt(-1)*EAE_ig(-1)+EAE_tr(-1)
	+EAE_b(-1)*EAE_pic(-1)^(-1)+EAE_m(-2)*EAE_pic(-1)^(-1) = EAE_tauc(-1)*EAE_c(-1)+(EAE_taun(-1)+EAE_tauwh(-1))*(EAE_wi(-1)*EAE_ndi(-1)+EAE_wj(-1)*EAE_ndj(-1))+EAE_tauwf(-1)*EAE_w(-1)*EAE_nd(-1)+EAE_tauk(-1)*(EAE_rk(-1)*EAE_u(-1)-(EAE_gammau(-1)+EAE_delta)*EAE_pi(-1))*EAE_k(-1)+EAE_taud(-1)*EAE_d(-1)+EAE_t(-1)+(EAE_r(-1)*(1-EAE_gammab(-1)))^(-1)*EAE_b+EAE_m(-1);
// Government spending, using EAE_pg = EAE_pht
EAE_pnt*EAE_cg = EAE_cgy*EAE_pybar*EAE_ybar;
EAE_pnt*EAE_ig = EAE_igy*EAE_pybar*EAE_ybar;
EAE_t = 0;
EAE_b = EAE_bytarget*EAE_pybar*EAE_ybar;
// Auxiliary equation for steady-state output
EAE_ybar = EAE_y;
// Auxiliary equation for steady-state output
EAE_ytbar = EAE_yst;
// Auxiliary equation for steady-state output
EAE_ynbar = EAE_ysn;
// Auxiliary equation for steady-state output deflator
EAE_pybar = EAE_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAE_trybar = EAE_tr/(EAE_pybar*EAE_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAE_ti = EAE_upsilont*EAE_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAE_tri = EAE_upsilontr*EAE_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	
		EAE_r^4-1 = EAE_rrstar^4*EAE_pi4target-1;
	
	EAE_pic4 = EAE_pi4target;
	EAE_rr-1 = EAE_r/EAE_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAE_rrstar-1 = 1/EAE_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAE_c = (1-EAE_omega)*EAE_ci+EAE_omega*EAE_cj;
// Aggregate money holdings
EAE_m = (1-EAE_omega)*EAE_mi+EAE_omega*EAE_mj;
// Aggregate capital stock
EAE_k = (1-EAE_omega)*EAE_ki;
// Aggregate investment
EAE_i = (1-EAE_omega)*EAE_ii;
// Aggregate lump-sum transfers
EAE_trj = 
1/EAE_omega*EAE_tr-(1-EAE_omega)/EAE_omega*EAE_tri
;
// Aggregate lump-sum taxes
EAE_tj = 
1/EAE_omega*EAE_t-(1-EAE_omega)/EAE_omega*EAE_ti
;
// Aggregate transaction costs
EAE_gammav = (1-EAE_omega)*EAE_ci*EAE_gammavi+EAE_omega*EAE_cj*EAE_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAE_ni = EAE_si*EAE_ndi;
// Wage dispersion
EAE_si = (1-EAE_xii)*(EAE_witilde/EAE_wi)^(-EAE_etai)+EAE_xii*(EAE_wi(-1)/EAE_wi)^(-EAE_etai)*(EAE_pic/(EAE_pic(-1)^EAE_chii*EAE_pi4target^(1/4*(1-EAE_chii))))^(EAE_etai)*EAE_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAE_nj = EAE_sj*EAE_ndj;
// Wage dispersion
EAE_sj = (1-EAE_xij)*(EAE_wjtilde/EAE_wj)^(-EAE_etaj)+EAE_xij*(EAE_wj(-1)/EAE_wj)^(-EAE_etaj)*(EAE_pic/(EAE_pic(-1)^EAE_chij*EAE_pi4target^(1/4*(1-EAE_chij))))^(EAE_etaj)*EAE_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAE_u*EAE_k = EAE_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAE_x = RW_size/EAE_size*RW_im
EAE_ysn = EAE_snt*EAE_nt;
//  nontradables aggregate demand
EAE_nt =  EAE_nti+EAE_ntc+EAE_cg+EAE_ig;
// Aggregate demand for domestic intermediate goods, using EAE_hg = EAE_cg
EAE_ht = EAE_htc+EAE_hti;
// Price dispersion in the domestic markets
EAE_sh = (1-EAE_xih)*(EAE_phttilde/EAE_pht)^(-EAE_thetat)+EAE_xih*(EAE_piht/(EAE_piht(-1)^EAE_chih*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAE_sh(-1);
// Price dispersion in the foreign markets
EAEEAA_sx = (1-EAE_xix)*(EAAEAE_pimtilde/EAAEAE_pim)^(-EAE_thetat)+EAE_xix*(EAAEAE_piim/(EAAEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAEEAA_sx(-1);
EAEEAB_sx = (1-EAE_xix)*(EABEAE_pimtilde/EABEAE_pim)^(-EAE_thetat)+EAE_xix*(EABEAE_piim/(EABEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAEEAB_sx(-1);
EAEEAC_sx = (1-EAE_xix)*(EACEAE_pimtilde/EACEAE_pim)^(-EAE_thetat)+EAE_xix*(EACEAE_piim/(EACEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAEEAC_sx(-1);
EAEEAD_sx = (1-EAE_xix)*(EADEAE_pimtilde/EADEAE_pim)^(-EAE_thetat)+EAE_xix*(EADEAE_piim/(EADEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAEEAD_sx(-1);
EAERW_sx = (1-EAE_xix)*(RWEAE_pimtilde/RWEAE_pim)^(-EAE_thetat)+EAE_xix*(RWEAE_piim/(RWEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAERW_sx(-1);
EAEUS_sx = (1-EAE_xix)*(USEAE_pimtilde/USEAE_pim)^(-EAE_thetat)+EAE_xix*(USEAE_piim/(USEAE_piim(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAEUS_sx(-1);
// Price dispersion in the domestic markets
EAE_snt = (1-EAE_xin)*(EAE_pnttilde/EAE_pnt)^(-EAE_thetan)+EAE_xin*(EAE_pint/(EAE_pint(-1)^EAE_chin*EAE_pi4target^(1/4*(1-EAE_chin))))^EAE_thetan*EAE_snt(-1);
// Government capital accumulation:
EAE_kg = (1-EAE_deltag)*EAE_kg(-1)+EAE_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAE_qc = EAE_c+EAE_gammav;
// Aggregate investment and capital utilisation cost
EAE_qi = EAE_i+EAE_k*EAE_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAE_pg = EAE_pht and EAE_qg = EAE_cg   
EAE_py*EAE_y = EAE_qc+EAE_pi*EAE_qi+EAE_pnt*EAE_cg+EAE_pnt*EAE_ig
+EAEEAA_rer*EAAEAE_pim*EAA_size/EAE_size*EAAEAE_im
-EAEEAA_pim*EAEEAA_imc
-EAEEAA_pim*EAEEAA_imi
+EAEEAB_rer*EABEAE_pim*EAB_size/EAE_size*EABEAE_im
-EAEEAB_pim*EAEEAB_imc
-EAEEAB_pim*EAEEAB_imi
+EAEEAC_rer*EACEAE_pim*EAC_size/EAE_size*EACEAE_im
-EAEEAC_pim*EAEEAC_imc
-EAEEAC_pim*EAEEAC_imi
+EAEEAD_rer*EADEAE_pim*EAD_size/EAE_size*EADEAE_im
-EAEEAD_pim*EAEEAD_imc
-EAEEAD_pim*EAEEAD_imi
+EAERW_rer*RWEAE_pim*RW_size/EAE_size*RWEAE_im
-EAERW_pim*EAERW_imc
-EAERW_pim*EAERW_imi
+EAEUS_rer*USEAE_pim*US_size/EAE_size*USEAE_im
-EAEUS_pim*EAEUS_imc
-EAEUS_pim*EAEUS_imi
;
// Aggregate real demand
EAE_y = EAE_yst+EAE_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAE_zt) = (1-EAE_rhozt)*log(EAE_ztbar)+EAE_rhozt*log(EAE_zt(-1))+EAE_epszt;
log(EAE_zn) = (1-EAE_rhozn)*log(EAE_znbar)+EAE_rhozn*log(EAE_zn(-1))+EAE_epszn;
// Government spending shock
EAE_cgy = (1-EAE_rhocg)*EAE_cgybar+EAE_rhocg*EAE_cgy(-1)+EAE_epsg;
EAE_igy = (1-EAE_rhoig)*EAE_igybar+EAE_rhoig*EAE_igy(-1)+EAE_epsgi;
// Transfer shock
EAE_try = (1-EAE_rhotr)*EAE_trybar+EAE_rhotr*EAE_try(-1)+EAE_epstr;
// Consumption tax shock
EAE_tauc = (1-EAE_rhotauc)*EAE_taucbar+EAE_rhotauc*EAE_tauc(-1)+EAE_epstauc;
// Dividend income tax shock
EAE_taud = (1-EAE_rhotaud)*EAE_taudbar+EAE_rhotaud*EAE_taud(-1)+EAE_epstaud;
// Capital income tax shock
EAE_tauk = (1-EAE_rhotauk)*EAE_taukbar+EAE_rhotauk*EAE_tauk(-1)+EAE_epstauk;
// Labour income tax shock
EAE_taun = (1-EAE_rhotaun)*EAE_taunbar+EAE_rhotaun*EAE_taun(-1)+EAE_epstaun;
// Payroll tax shock: households
EAE_tauwh = (1-EAE_rhotauwh)*EAE_tauwhbar+EAE_rhotauwh*EAE_tauwh(-1)+EAE_epstauwh;
// Payroll tax shock: firms
EAE_tauwf = (1-EAE_rhotauwf)*EAE_tauwfbar+EAE_rhotauwf*EAE_tauwf(-1)+EAE_epstauwf;
// Wage cost push shock
EAE_wcst = (1-EAE_rhowcst)*EAE_wcstbar+EAE_rhowcst*EAE_wcst(-1)+EAE_epswcst;
// Preference shock
log(EAE_zcon) = (1-EAE_rhozcon)*log(EAE_zconbar)+EAE_rhozcon*log(EAE_zcon(-1))+EAE_epszcon;
// Investment specific shock
log(EAE_zinv) = (1-EAE_rhozinv)*log(EAE_zinvbar)+EAE_rhozinv*log(EAE_zinv(-1))+EAE_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAE_cy = EAE_c/(EAE_py*EAE_y);
// Aggregate nominal investment share
EAE_iy = EAE_pi*EAE_i/(EAE_py*EAE_y);
// Aggregate nominal import share  
EAE_imy = (EAE_pimc*EAE_imc+EAE_pimi*EAE_imi)/(EAE_py*EAE_y);
// Aggregate nominal import share for consumption goods 
EAE_imcy = EAE_pimc*EAE_imc/(EAE_py*EAE_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
EAE_imiy = EAE_pimi*EAE_imi/(EAE_py*EAE_y);
// Aggregate debt-to-output ratio
EAE_by = EAE_b/(EAE_pybar*EAE_ybar);
// Aggregate lump-sum tax-to-output ratio
EAE_ty = EAE_t/(EAE_pybar*EAE_ybar);
// Aggregate labour cost share
EAE_lcy = ((1+EAE_tauwf)*EAE_w*EAE_nd)/(EAE_py*EAE_y);
// Aggregate nominal Wage share
EAE_wy = (EAE_w*EAE_nd)/(EAE_py*EAE_y);
// NT sector nominal Wage share
EAE_wnty = (EAE_w*EAE_ndn)/(EAE_pnt*EAE_ysn);
// T sector nominal Wage share
EAE_whty = (EAE_w*EAE_ndt)/(EAE_pht*EAE_yst);
// T sector share
EAE_yhty = EAE_pht*EAE_yst/(EAE_py*EAE_y);
// NT sector share
EAE_ynty = EAE_pnt*EAE_ysn/(EAE_py*EAE_y);
// Output gap
EAE_ygap = 0;
// Output growth (gross rate)
EAE_ygrowth = EAE_y/EAE_y(-1);
// Output growth (gross rate yoy)
EAE_ygrowth4 = EAE_y/EAE_y(-4);
// Domestic nominal output as a share of world nominal output
EAE_yshare  = EAE_size*EAE_py*EAE_y/EAE_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAE_epsilonm = -1/8*1/(EAE_r*(EAE_gammav2*EAE_r+EAE_r-1));
// Trade balance-to-GDP ratio
EAE_tby = EAE_tb/(EAE_py*EAE_y);
// Imports of consumption goods 
EAEEAA_imcy  = EAEEAA_pim*EAEEAA_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAEEAA_imiy = EAEEAA_pim*EAEEAA_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAA_excy  = EAA_size/EAE_size*EAEEAA_rer*EAAEAE_pim*EAAEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAA_exiy  = EAA_size/EAE_size*EAEEAA_rer*EAAEAE_pim*EAAEAE_imi/(EAE_py*EAE_y);
// Imports of consumption goods 
EAEEAB_imcy  = EAEEAB_pim*EAEEAB_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAEEAB_imiy = EAEEAB_pim*EAEEAB_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAB_excy  = EAB_size/EAE_size*EAEEAB_rer*EABEAE_pim*EABEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAB_exiy  = EAB_size/EAE_size*EAEEAB_rer*EABEAE_pim*EABEAE_imi/(EAE_py*EAE_y);
// Imports of consumption goods 
EAEEAC_imcy  = EAEEAC_pim*EAEEAC_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAEEAC_imiy = EAEEAC_pim*EAEEAC_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAC_excy  = EAC_size/EAE_size*EAEEAC_rer*EACEAE_pim*EACEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAC_exiy  = EAC_size/EAE_size*EAEEAC_rer*EACEAE_pim*EACEAE_imi/(EAE_py*EAE_y);
// Imports of consumption goods 
EAEEAD_imcy  = EAEEAD_pim*EAEEAD_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAEEAD_imiy = EAEEAD_pim*EAEEAD_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAD_excy  = EAD_size/EAE_size*EAEEAD_rer*EADEAE_pim*EADEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAD_exiy  = EAD_size/EAE_size*EAEEAD_rer*EADEAE_pim*EADEAE_imi/(EAE_py*EAE_y);
// Imports of consumption goods 
EAERW_imcy  = EAERW_pim*EAERW_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAERW_imiy = EAERW_pim*EAERW_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAERW_excy  = RW_size/EAE_size*EAERW_rer*RWEAE_pim*RWEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAERW_exiy  = RW_size/EAE_size*EAERW_rer*RWEAE_pim*RWEAE_imi/(EAE_py*EAE_y);
// Imports of consumption goods 
EAEUS_imcy  = EAEUS_pim*EAEUS_imc/(EAE_py*EAE_y);
// Imports of investment goods
EAEUS_imiy = EAEUS_pim*EAEUS_imi/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEUS_excy  = US_size/EAE_size*EAEUS_rer*USEAE_pim*USEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEUS_exiy  = US_size/EAE_size*EAEUS_rer*USEAE_pim*USEAE_imi/(EAE_py*EAE_y);
// Internal real exchange rate
EAE_internalrer = EAE_pnt/EAE_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    RW_ccesi^(1-1/RW_mucces) = (RW_nucces)^(1/RW_mucces)*RW_ci^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces);
    RW_ccesj^(1-1/RW_mucces) = (RW_nucces)^(1/RW_mucces)*RW_cj^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces);
//-------------
// Household I
//-------------
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
// Utility
RW_utilj = 
RW_zcon*log(RW_ccesj-RW_kappa*RW_ccesj(-1))-1/(1+RW_zeta)*(RW_nj)^(1+RW_zeta)+RW_beta*RW_utilj(+1)
;
// Budget constraint
(1+RW_tauc+RW_gammavj)*RW_cj+RW_mj = (1-RW_taun-RW_tauwh)*RW_wj*RW_nj+RW_trj-RW_tj+RW_mj(-1)*RW_pic^(-1);
// Marginal utility of consumption
RW_dccj = ((RW_nucces)^(1/RW_mucces)*RW_cj^(1-1/RW_mucces)+(1-RW_nucces)^(1/RW_mucces)*RW_cg^(1-1/RW_mucces))^(1/(RW_mucces-1))*(RW_nucces^(1/RW_mucces))*(RW_cj^(-1/RW_mucces));
RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder) = RW_zcon*(RW_ccesj-RW_kappa*RW_ccesj(-1))^(-RW_sigma)*RW_dccj;
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
RW_yst = RW_zt*RW_kg^RW_alphag*RW_kdt^RW_alphat*RW_ndt^(1-RW_alphat)-RW_psitbar;
// Production function nontradable
RW_ysn = RW_zn*RW_kg^RW_alphag*RW_kdn^RW_alphan*RW_ndn^(1-RW_alphan)-RW_psinbar;
// Real marginal cost tradable
RW_mct = 1/(RW_zt*RW_kg^RW_alphag*(RW_alphat)^(RW_alphat)*(1-RW_alphat)^(1-RW_alphat))*RW_rk^(RW_alphat)*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
// Real marginal cost nontradable
RW_mcn = 1/(RW_zn*RW_kg^RW_alphag*(RW_alphan)^(RW_alphan)*(1-RW_alphan)^(1-RW_alphan))*RW_rk^(RW_alphan)*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
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
+EAARW_pim*RWEAA_rer*(EAARW_imc+EAARW_imi)*EAA_size/RW_size
+EABRW_pim*RWEAB_rer*(EABRW_imc+EABRW_imi)*EAB_size/RW_size
+EACRW_pim*RWEAC_rer*(EACRW_imc+EACRW_imi)*EAC_size/RW_size
+EADRW_pim*RWEAD_rer*(EADRW_imc+EADRW_imi)*EAD_size/RW_size
+EAERW_pim*RWEAE_rer*(EAERW_imc+EAERW_imi)*EAE_size/RW_size
+USRW_pim*RWUS_rer*(USRW_imc+USRW_imi)*US_size/RW_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAA_pimtilde
EAARW_pimtilde/EAARW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAA_fx/RWEAA_gx;
// Definition of fx
RWEAA_fx = EAA_size/RW_size*EAARW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAA_fx(+1);
// Definition of gx   
RWEAA_gx = RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAA_pim
EAARW_pim^(1-RW_thetat) = (1-RW_xix)*EAARW_pimtilde^(1-RW_thetat)+RW_xix*(EAARW_pim(-1)/EAA_pic)^(1-RW_thetat)*(EAARW_piim(-1)^RW_chix*EAA_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAA_piim
EAARW_piim = EAARW_pim/EAARW_pim(-1)*EAA_pic;
// Bilateral real exchange rate
RWEAA_rer = RW_rer/EAA_rer;
// Auxiliary equation for steady-state output
RWEAA_rerbar = RWEAA_rer;
//Terms of Trade
RWEAA_tot = RWEAA_pim/(RWEAA_rer*EAARW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAB_pimtilde
EABRW_pimtilde/EABRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAB_fx/RWEAB_gx;
// Definition of fx
RWEAB_fx = EAB_size/RW_size*EABRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAB_fx(+1);
// Definition of gx   
RWEAB_gx = RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAB_pim
EABRW_pim^(1-RW_thetat) = (1-RW_xix)*EABRW_pimtilde^(1-RW_thetat)+RW_xix*(EABRW_pim(-1)/EAB_pic)^(1-RW_thetat)*(EABRW_piim(-1)^RW_chix*EAB_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAB_piim
EABRW_piim = EABRW_pim/EABRW_pim(-1)*EAB_pic;
// Bilateral real exchange rate
RWEAB_rer = RW_rer/EAB_rer;
// Auxiliary equation for steady-state output
RWEAB_rerbar = RWEAB_rer;
//Terms of Trade
RWEAB_tot = RWEAB_pim/(RWEAB_rer*EABRW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAC_pimtilde
EACRW_pimtilde/EACRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAC_fx/RWEAC_gx;
// Definition of fx
RWEAC_fx = EAC_size/RW_size*EACRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAC_fx(+1);
// Definition of gx   
RWEAC_gx = RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAC_pim
EACRW_pim^(1-RW_thetat) = (1-RW_xix)*EACRW_pimtilde^(1-RW_thetat)+RW_xix*(EACRW_pim(-1)/EAC_pic)^(1-RW_thetat)*(EACRW_piim(-1)^RW_chix*EAC_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAC_piim
EACRW_piim = EACRW_pim/EACRW_pim(-1)*EAC_pic;
// Bilateral real exchange rate
RWEAC_rer = RW_rer/EAC_rer;
// Auxiliary equation for steady-state output
RWEAC_rerbar = RWEAC_rer;
//Terms of Trade
RWEAC_tot = RWEAC_pim/(RWEAC_rer*EACRW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAD_pimtilde
EADRW_pimtilde/EADRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAD_fx/RWEAD_gx;
// Definition of fx
RWEAD_fx = EAD_size/RW_size*EADRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EADRW_piim(+1)/(EADRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAD_fx(+1);
// Definition of gx   
RWEAD_gx = RWEAD_rer*EADRW_pim*EAD_size/RW_size*EADRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EADRW_piim(+1)/(EADRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAD_pim
EADRW_pim^(1-RW_thetat) = (1-RW_xix)*EADRW_pimtilde^(1-RW_thetat)+RW_xix*(EADRW_pim(-1)/EAD_pic)^(1-RW_thetat)*(EADRW_piim(-1)^RW_chix*EAD_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAD_piim
EADRW_piim = EADRW_pim/EADRW_pim(-1)*EAD_pic;
// Bilateral real exchange rate
RWEAD_rer = RW_rer/EAD_rer;
// Auxiliary equation for steady-state output
RWEAD_rerbar = RWEAD_rer;
//Terms of Trade
RWEAD_tot = RWEAD_pim/(RWEAD_rer*EADRW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAE_pimtilde
EAERW_pimtilde/EAERW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAE_fx/RWEAE_gx;
// Definition of fx
RWEAE_fx = EAE_size/RW_size*EAERW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAERW_piim(+1)/(EAERW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAE_fx(+1);
// Definition of gx   
RWEAE_gx = RWEAE_rer*EAERW_pim*EAE_size/RW_size*EAERW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAERW_piim(+1)/(EAERW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAE_pim
EAERW_pim^(1-RW_thetat) = (1-RW_xix)*EAERW_pimtilde^(1-RW_thetat)+RW_xix*(EAERW_pim(-1)/EAE_pic)^(1-RW_thetat)*(EAERW_piim(-1)^RW_chix*EAE_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAE_piim
EAERW_piim = EAERW_pim/EAERW_pim(-1)*EAE_pic;
// Bilateral real exchange rate
RWEAE_rer = RW_rer/EAE_rer;
// Auxiliary equation for steady-state output
RWEAE_rerbar = RWEAE_rer;
//Terms of Trade
RWEAE_tot = RWEAE_pim/(RWEAE_rer*EAERW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = US_pimtilde
USRW_pimtilde/USRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWUS_fx/RWUS_gx;
// Definition of fx
RWUS_fx = US_size/RW_size*USRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWUS_fx(+1);
// Definition of gx   
RWUS_gx = RWUS_rer*USRW_pim*US_size/RW_size*USRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWUS_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = US_pim
USRW_pim^(1-RW_thetat) = (1-RW_xix)*USRW_pimtilde^(1-RW_thetat)+RW_xix*(USRW_pim(-1)/US_pic)^(1-RW_thetat)*(USRW_piim(-1)^RW_chix*US_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = US_piim
USRW_piim = USRW_pim/USRW_pim(-1)*US_pic;
// Bilateral real exchange rate
RWUS_rer = RW_rer/US_rer;
// Auxiliary equation for steady-state output
RWUS_rerbar = RWUS_rer;
//Terms of Trade
RWUS_tot = RWUS_pim/(RWUS_rer*USRW_pim);
// Total imports 
RW_im = RW_imc+RW_imi;
// Total import deflator
RW_im*RW_pim  = RW_pimc*RW_imc+RW_pimi*RW_imi;
// Total Export deflator 
RW_ex*RW_pex  =
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im
+RWEAD_rer*EADRW_pim*EAD_size/RW_size*EADRW_im
+RWEAE_rer*EAERW_pim*EAE_size/RW_size*EAERW_im
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
;
// Effective real exchange rate: double weighting (imports)
RWEAA_weightim = RWEAA_rer*EAA_pex*RWEAA_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAA_weightex = EAA_size/RW_size*EAARW_im/RW_ex*RWEAA_rer*EAA_py*EAA_y/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)+
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAA_rer*EAA_pex*EABEAA_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAA_rer*EAA_pex*EACEAA_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAA_rer*EAA_pex*EADEAA_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAA_rer*EAA_pex*EAEEAA_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAA_rer*EAA_pex*USEAA_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
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
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAB_rer*EAB_pex*EAAEAB_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAB_rer*EAB_pex*EACEAB_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAB_rer*EAB_pex*EADEAB_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAB_rer*EAB_pex*EAEEAB_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAB_rer*EAB_pex*USEAB_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
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
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAC_rer*EAC_pex*EAAEAC_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAC_rer*EAC_pex*EABEAC_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAC_rer*EAC_pex*EADEAC_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAC_rer*EAC_pex*EAEEAC_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAC_rer*EAC_pex*USEAC_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
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
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAD_rer*EAD_pex*EAAEAD_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAD_rer*EAD_pex*EABEAD_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAD_rer*EAD_pex*EACEAD_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAD_rer*EAD_pex*EAEEAD_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAD_rer*EAD_pex*USEAD_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAD_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAD_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAD_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAE_weightim = RWEAE_rer*EAE_pex*RWEAE_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAE_weightex = EAE_size/RW_size*EAERW_im/RW_ex*RWEAE_rer*EAE_py*EAE_y/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAE_rer*EAE_pex*EAAEAE_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAE_rer*EAE_pex*EABEAE_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAE_rer*EAE_pex*EACEAE_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAE_rer*EAE_pex*EADEAE_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAE_rer*EAE_pex*USEAE_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAE_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAE_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAE_weightex;
// Effective real exchange rate: double weighting (imports)
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWUS_weightex = US_size/RW_size*USRW_im/RW_ex*RWUS_rer*US_py*US_y/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWUS_rer*US_pex*EAAUS_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWUS_rer*US_pex*EABUS_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWUS_rer*US_pex*EACUS_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWUS_rer*US_pex*EADUS_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWUS_rer*US_pex*EAEUS_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWUS_rer*US_pex*EAEUS_im
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
*RWEAE_rer^RWEAE_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWEAC_tot^RWEAC_weight
*RWEAD_tot^RWEAD_weight
*RWEAE_tot^RWEAE_weight
*RWUS_tot^RWUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
RW_imc^((RW_mumc-1)/RW_mumc) =
+RWEAA_numc ^(1/RW_mumc)*RWEAA_imc^(1-1/RW_mumc)
+RWEAB_numc ^(1/RW_mumc)*RWEAB_imc^(1-1/RW_mumc)
+RWEAC_numc ^(1/RW_mumc)*RWEAC_imc^(1-1/RW_mumc)
+RWEAE_numc ^(1/RW_mumc)*RWEAE_imc^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*RWUS_imc^(1-1/RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAE_numc
-RWUS_numc
)^(1/RW_mumc)*RWEAD_imc^(1-1/RW_mumc);
// Demand for bilateral consumption import goods
RWEAC_imc = RWEAC_numc*(RWEAC_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAA_imc = RWEAA_numc*(RWEAA_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAB_imc = RWEAB_numc*(RWEAB_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAE_imc = RWEAE_numc*(RWEAE_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAD_imc = (1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAE_numc
-RWUS_numc
)*(RWEAD_pim/RW_pimc)^(-RW_mumc)*RW_imc;
// Price of the consumption good (import)
RW_pimc^(1-RW_mumc) =
+RWEAA_numc * RWEAA_pim^(1-RW_mumc)
+RWEAB_numc * RWEAB_pim^(1-RW_mumc)
+RWEAC_numc * RWEAC_pim^(1-RW_mumc)
+RWEAE_numc * RWEAE_pim^(1-RW_mumc)
+RWUS_numc * RWUS_pim^(1-RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAE_numc
-RWUS_numc
)*RWEAD_pim^(1-RW_mumc);
// Private consumption good (import) inflation
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import) inflation
RW_piimc4 = RW_pimc/RW_pimc(-4)*RW_pic4;
// Private consumption good (import) inflation
RW_piex4 = RW_pex/RW_pex(-4)*RW_pic4;
// Private investment good (import)
RW_imi^((RW_mumi-1)/RW_mumi) =
+RWEAA_numi ^(1/RW_mumi)*RWEAA_imi^(1-1/RW_mumi)
+RWEAB_numi ^(1/RW_mumi)*RWEAB_imi^(1-1/RW_mumi)
+RWEAC_numi ^(1/RW_mumi)*RWEAC_imi^(1-1/RW_mumi)
+RWEAE_numi ^(1/RW_mumi)*RWEAE_imi^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*RWUS_imi^(1-1/RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAE_numi
-RWUS_numi
)^(1/RW_mumi)*RWEAD_imi^(1-1/RW_mumi);
// Demand for bilateral investment import goods
RWEAC_imi = RWEAC_numi*(RWEAC_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral investment import goods
RWEAA_imi = RWEAA_numi*(RWEAA_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral investment import goods
RWEAB_imi = RWEAB_numi*(RWEAB_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral investment import goods
RWEAE_imi = RWEAE_numi*(RWEAE_pim/RW_pimi)^(-RW_mumi)*RW_imi;
RWEAD_imi = (1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAE_numi
-RWUS_numi
)*(RWEAD_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Price of the investment good (import)
RW_pimi^(1-RW_mumi) =
+RWEAA_numi * RWEAA_pim^(1-RW_mumi)
+RWEAB_numi * RWEAB_pim^(1-RW_mumi)
+RWEAC_numi * RWEAC_pim^(1-RW_mumi)
+RWEAE_numi * RWEAE_pim^(1-RW_mumi)
+RWUS_numi * RWUS_pim^(1-RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAE_numi
-RWUS_numi
)*RWEAD_pim^(1-RW_mumi);
// Private investment good (import) inflation
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
RW_yst = RW_sh*RW_ht
+RWEAA_sx*EAA_size/RW_size*EAARW_im
+RWEAB_sx*EAB_size/RW_size*EABRW_im
+RWEAC_sx*EAC_size/RW_size*EACRW_im
+RWEAD_sx*EAD_size/RW_size*EADRW_im
+RWEAE_sx*EAE_size/RW_size*EAERW_im
+RWUS_sx*US_size/RW_size*USRW_im
;
// Aggregate demand for bilateral imported intermediate goods
RWEAA_im = RWEAA_imi+RWEAA_imc;
RWEAB_im = RWEAB_imi+RWEAB_imc;
RWEAC_im = RWEAC_imi+RWEAC_imc;
RWEAD_im = RWEAD_imi+RWEAD_imc;
RWEAE_im = RWEAE_imi+RWEAE_imc;
RWUS_im = RWUS_imi+RWUS_imc;
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
RWEAE_gammaimc = 0;
RWEAE_gammaimcdag = 1;
RWUS_gammaimc = 0;
RWUS_gammaimcdag = 1;
// Private investment good firm
// Private investment good
RW_tti^((RW_muti-1)/RW_muti) = (RW_nuti)^(1/RW_muti)*RW_hti^(1-1/RW_muti)+(1-RW_nuti)^(1/RW_muti)*RW_imi^(1-1/RW_muti);
// Private investment good
RW_qi^((RW_mui-1)/RW_mui) = (RW_nui)^(1/RW_mui)*RW_tti^(1-1/RW_mui)+(1-RW_nui)^(1/RW_mui)*RW_nti^(1-1/RW_mui);
// Demand for domestic intermediate goods
RW_nti = (1-RW_nui)*(RW_pnt/RW_pi)^(-RW_mui)*RW_qi;
// Price of the investment good (TRADABLE)  
RW_ptti^(1-RW_muti) = (RW_nuti)*RW_pht^(1-RW_muti)+(1-RW_nuti)*RW_pimi^(1-RW_muti);
// Price of the investment good
RW_pi^(1-RW_mui) = (RW_nui)*RW_ptti^(1-RW_mui)+(1-RW_nui)*(RW_pnt)^(1-RW_mui);
// Auxiliary equation for the price of the investment good in steady state
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
RWEAE_gammaimi = 0;
RWEAE_gammaimidag = 1;
RWUS_gammaimi = 0;
RWUS_gammaimidag = 1;
// Trade balance
RW_tb =
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im
-RWEAA_pim*RWEAA_im
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im
-RWEAB_pim*RWEAB_im
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im
-RWEAC_pim*RWEAC_im
+RWEAD_rer*EADRW_pim*EAD_size/RW_size*EADRW_im
-RWEAD_pim*RWEAD_im
+RWEAE_rer*EAERW_pim*EAE_size/RW_size*EAERW_im
-RWEAE_pim*RWEAE_im
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
-RWUS_pim*RWUS_im
;
// Aggregate exports (volume)
RW_ex =
+EAA_size/RW_size*EAARW_im
+EAB_size/RW_size*EABRW_im
+EAC_size/RW_size*EACRW_im
+EAD_size/RW_size*EADRW_im
+EAE_size/RW_size*EAERW_im
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
	RW_pnt(-1)*RW_cg(-1)+RW_pnt(-1)*RW_ig(-1)+RW_tr(-1)
	+RW_b(-1)*RW_pic(-1)^(-1)+RW_m(-2)*RW_pic(-1)^(-1) = RW_tauc(-1)*RW_c(-1)+(RW_taun(-1)+RW_tauwh(-1))*(RW_wi(-1)*RW_ndi(-1)+RW_wj(-1)*RW_ndj(-1))+RW_tauwf(-1)*RW_w(-1)*RW_nd(-1)+RW_tauk(-1)*(RW_rk(-1)*RW_u(-1)-(RW_gammau(-1)+RW_delta)*RW_pi(-1))*RW_k(-1)+RW_taud(-1)*RW_d(-1)+RW_t(-1)+(RW_r(-1))^(-1)*RW_b+RW_m(-1);
// Government spending, using RW_pg = RW_pht
RW_pnt*RW_cg = RW_cgy*RW_pybar*RW_ybar;
RW_pnt*RW_ig = RW_igy*RW_pybar*RW_ybar;
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
RW_nt =  RW_nti+RW_ntc+RW_cg+RW_ig;
// Aggregate demand for domestic intermediate goods, using RW_hg = RW_cg
RW_ht = RW_htc+RW_hti;
// Price dispersion in the domestic markets
RW_sh = (1-RW_xih)*(RW_phttilde/RW_pht)^(-RW_thetat)+RW_xih*(RW_piht/(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_sh(-1);
// Price dispersion in the foreign markets
RWEAA_sx = (1-RW_xix)*(EAARW_pimtilde/EAARW_pim)^(-RW_thetat)+RW_xix*(EAARW_piim/(EAARW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAA_sx(-1);
RWEAB_sx = (1-RW_xix)*(EABRW_pimtilde/EABRW_pim)^(-RW_thetat)+RW_xix*(EABRW_piim/(EABRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAB_sx(-1);
RWEAC_sx = (1-RW_xix)*(EACRW_pimtilde/EACRW_pim)^(-RW_thetat)+RW_xix*(EACRW_piim/(EACRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAC_sx(-1);
RWEAD_sx = (1-RW_xix)*(EADRW_pimtilde/EADRW_pim)^(-RW_thetat)+RW_xix*(EADRW_piim/(EADRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAD_sx(-1);
RWEAE_sx = (1-RW_xix)*(EAERW_pimtilde/EAERW_pim)^(-RW_thetat)+RW_xix*(EAERW_piim/(EAERW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAE_sx(-1);
RWUS_sx = (1-RW_xix)*(USRW_pimtilde/USRW_pim)^(-RW_thetat)+RW_xix*(USRW_piim/(USRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWUS_sx(-1);
// Price dispersion in the domestic markets
RW_snt = (1-RW_xin)*(RW_pnttilde/RW_pnt)^(-RW_thetan)+RW_xin*(RW_pint/(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_snt(-1);
// Government capital accumulation:
RW_kg = (1-RW_deltag)*RW_kg(-1)+RW_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
RW_qc = RW_c+RW_gammav;
// Aggregate investment and capital utilisation cost
RW_qi = RW_i+RW_k*RW_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using RW_pg = RW_pht and RW_qg = RW_cg   
RW_py*RW_y = RW_qc+RW_pi*RW_qi+RW_pnt*RW_cg+RW_pnt*RW_ig
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im
-RWEAA_pim*RWEAA_imc
-RWEAA_pim*RWEAA_imi
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im
-RWEAB_pim*RWEAB_imc
-RWEAB_pim*RWEAB_imi
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im
-RWEAC_pim*RWEAC_imc
-RWEAC_pim*RWEAC_imi
+RWEAD_rer*EADRW_pim*EAD_size/RW_size*EADRW_im
-RWEAD_pim*RWEAD_imc
-RWEAD_pim*RWEAD_imi
+RWEAE_rer*EAERW_pim*EAE_size/RW_size*EAERW_im
-RWEAE_pim*RWEAE_imc
-RWEAE_pim*RWEAE_imi
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
-RWUS_pim*RWUS_imc
-RWUS_pim*RWUS_imi
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
RW_cgy = (1-RW_rhocg)*RW_cgybar+RW_rhocg*RW_cgy(-1)+RW_epsg;
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
RW_imy = (RW_pimc*RW_imc+RW_pimi*RW_imi)/(RW_py*RW_y);
// Aggregate nominal import share for consumption goods 
RW_imcy = RW_pimc*RW_imc/(RW_py*RW_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
RW_imiy = RW_pimi*RW_imi/(RW_py*RW_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
RW_epsilonm = -1/8*1/(RW_r*(RW_gammav2*RW_r+RW_r-1));
// Trade balance-to-GDP ratio
RW_tby = RW_tb/(RW_py*RW_y);
// Imports of consumption goods 
RWEAA_imcy  = RWEAA_pim*RWEAA_imc/(RW_py*RW_y);
// Imports of investment goods
RWEAA_imiy = RWEAA_pim*RWEAA_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAA_excy  = EAA_size/RW_size*RWEAA_rer*EAARW_pim*EAARW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAA_exiy  = EAA_size/RW_size*RWEAA_rer*EAARW_pim*EAARW_imi/(RW_py*RW_y);
// Imports of consumption goods 
RWEAB_imcy  = RWEAB_pim*RWEAB_imc/(RW_py*RW_y);
// Imports of investment goods
RWEAB_imiy = RWEAB_pim*RWEAB_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAB_excy  = EAB_size/RW_size*RWEAB_rer*EABRW_pim*EABRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAB_exiy  = EAB_size/RW_size*RWEAB_rer*EABRW_pim*EABRW_imi/(RW_py*RW_y);
// Imports of consumption goods 
RWEAC_imcy  = RWEAC_pim*RWEAC_imc/(RW_py*RW_y);
// Imports of investment goods
RWEAC_imiy = RWEAC_pim*RWEAC_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAC_excy  = EAC_size/RW_size*RWEAC_rer*EACRW_pim*EACRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAC_exiy  = EAC_size/RW_size*RWEAC_rer*EACRW_pim*EACRW_imi/(RW_py*RW_y);
// Imports of consumption goods 
RWEAD_imcy  = RWEAD_pim*RWEAD_imc/(RW_py*RW_y);
// Imports of investment goods
RWEAD_imiy = RWEAD_pim*RWEAD_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAD_excy  = EAD_size/RW_size*RWEAD_rer*EADRW_pim*EADRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAD_exiy  = EAD_size/RW_size*RWEAD_rer*EADRW_pim*EADRW_imi/(RW_py*RW_y);
// Imports of consumption goods 
RWEAE_imcy  = RWEAE_pim*RWEAE_imc/(RW_py*RW_y);
// Imports of investment goods
RWEAE_imiy = RWEAE_pim*RWEAE_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAE_excy  = EAE_size/RW_size*RWEAE_rer*EAERW_pim*EAERW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAE_exiy  = EAE_size/RW_size*RWEAE_rer*EAERW_pim*EAERW_imi/(RW_py*RW_y);
// Imports of consumption goods 
RWUS_imcy  = RWUS_pim*RWUS_imc/(RW_py*RW_y);
// Imports of investment goods
RWUS_imiy = RWUS_pim*RWUS_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWUS_excy  = US_size/RW_size*RWUS_rer*USRW_pim*USRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWUS_exiy  = US_size/RW_size*RWUS_rer*USRW_pim*USRW_imi/(RW_py*RW_y);
// Internal real exchange rate
RW_internalrer = RW_pnt/RW_pttc;
// Core model begins
//-------------
//-------------
// Households
//-------------
//-------------
// CES consumption bundle for each type of household:
    US_ccesi^(1-1/US_mucces) = (US_nucces)^(1/US_mucces)*US_ci^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces);
    US_ccesj^(1-1/US_mucces) = (US_nucces)^(1/US_mucces)*US_cj^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces);
//-------------
// Household I
//-------------
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
// Utility
US_utilj = 
US_zcon*log(US_ccesj-US_kappa*US_ccesj(-1))-1/(1+US_zeta)*(US_nj)^(1+US_zeta)+US_beta*US_utilj(+1)
;
// Budget constraint
(1+US_tauc+US_gammavj)*US_cj+US_mj = (1-US_taun-US_tauwh)*US_wj*US_nj+US_trj-US_tj+US_mj(-1)*US_pic^(-1);
// Marginal utility of consumption
US_dccj = ((US_nucces)^(1/US_mucces)*US_cj^(1-1/US_mucces)+(1-US_nucces)^(1/US_mucces)*US_cg^(1-1/US_mucces))^(1/(US_mucces-1))*(US_nucces^(1/US_mucces))*(US_cj^(-1/US_mucces));
US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder) = US_zcon*(US_ccesj-US_kappa*US_ccesj(-1))^(-US_sigma)*US_dccj;
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
+EAAUS_pim*USEAA_rer*(EAAUS_imc+EAAUS_imi)*EAA_size/US_size
+EABUS_pim*USEAB_rer*(EABUS_imc+EABUS_imi)*EAB_size/US_size
+EACUS_pim*USEAC_rer*(EACUS_imc+EACUS_imi)*EAC_size/US_size
+EADUS_pim*USEAD_rer*(EADUS_imc+EADUS_imi)*EAD_size/US_size
+EAEUS_pim*USEAE_rer*(EAEUS_imc+EAEUS_imi)*EAE_size/US_size
+RWUS_pim*USRW_rer*(RWUS_imc+RWUS_imi)*RW_size/US_size
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
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAA_pimtilde
EAAUS_pimtilde/EAAUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAA_fx/USEAA_gx;
// Definition of fx
USEAA_fx = EAA_size/US_size*EAAUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAA_fx(+1);
// Definition of gx   
USEAA_gx = USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAA_pim
EAAUS_pim^(1-US_thetat) = (1-US_xix)*EAAUS_pimtilde^(1-US_thetat)+US_xix*(EAAUS_pim(-1)/EAA_pic)^(1-US_thetat)*(EAAUS_piim(-1)^US_chix*EAA_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAA_piim
EAAUS_piim = EAAUS_pim/EAAUS_pim(-1)*EAA_pic;
// Bilateral real exchange rate
USEAA_rer = US_rer/EAA_rer;
// Auxiliary equation for steady-state output
USEAA_rerbar = USEAA_rer;
//Terms of Trade
USEAA_tot = USEAA_pim/(USEAA_rer*EAAUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAB_pimtilde
EABUS_pimtilde/EABUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAB_fx/USEAB_gx;
// Definition of fx
USEAB_fx = EAB_size/US_size*EABUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAB_fx(+1);
// Definition of gx   
USEAB_gx = USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAB_pim
EABUS_pim^(1-US_thetat) = (1-US_xix)*EABUS_pimtilde^(1-US_thetat)+US_xix*(EABUS_pim(-1)/EAB_pic)^(1-US_thetat)*(EABUS_piim(-1)^US_chix*EAB_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAB_piim
EABUS_piim = EABUS_pim/EABUS_pim(-1)*EAB_pic;
// Bilateral real exchange rate
USEAB_rer = US_rer/EAB_rer;
// Auxiliary equation for steady-state output
USEAB_rerbar = USEAB_rer;
//Terms of Trade
USEAB_tot = USEAB_pim/(USEAB_rer*EABUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAC_pimtilde
EACUS_pimtilde/EACUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAC_fx/USEAC_gx;
// Definition of fx
USEAC_fx = EAC_size/US_size*EACUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAC_fx(+1);
// Definition of gx   
USEAC_gx = USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAC_pim
EACUS_pim^(1-US_thetat) = (1-US_xix)*EACUS_pimtilde^(1-US_thetat)+US_xix*(EACUS_pim(-1)/EAC_pic)^(1-US_thetat)*(EACUS_piim(-1)^US_chix*EAC_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAC_piim
EACUS_piim = EACUS_pim/EACUS_pim(-1)*EAC_pic;
// Bilateral real exchange rate
USEAC_rer = US_rer/EAC_rer;
// Auxiliary equation for steady-state output
USEAC_rerbar = USEAC_rer;
//Terms of Trade
USEAC_tot = USEAC_pim/(USEAC_rer*EACUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAD_pimtilde
EADUS_pimtilde/EADUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAD_fx/USEAD_gx;
// Definition of fx
USEAD_fx = EAD_size/US_size*EADUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EADUS_piim(+1)/(EADUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAD_fx(+1);
// Definition of gx   
USEAD_gx = USEAD_rer*EADUS_pim*EAD_size/US_size*EADUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EADUS_piim(+1)/(EADUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAD_pim
EADUS_pim^(1-US_thetat) = (1-US_xix)*EADUS_pimtilde^(1-US_thetat)+US_xix*(EADUS_pim(-1)/EAD_pic)^(1-US_thetat)*(EADUS_piim(-1)^US_chix*EAD_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAD_piim
EADUS_piim = EADUS_pim/EADUS_pim(-1)*EAD_pic;
// Bilateral real exchange rate
USEAD_rer = US_rer/EAD_rer;
// Auxiliary equation for steady-state output
USEAD_rerbar = USEAD_rer;
//Terms of Trade
USEAD_tot = USEAD_pim/(USEAD_rer*EADUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAE_pimtilde
EAEUS_pimtilde/EAEUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAE_fx/USEAE_gx;
// Definition of fx
USEAE_fx = EAE_size/US_size*EAEUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAEUS_piim(+1)/(EAEUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAE_fx(+1);
// Definition of gx   
USEAE_gx = USEAE_rer*EAEUS_pim*EAE_size/US_size*EAEUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAEUS_piim(+1)/(EAEUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAE_pim
EAEUS_pim^(1-US_thetat) = (1-US_xix)*EAEUS_pimtilde^(1-US_thetat)+US_xix*(EAEUS_pim(-1)/EAE_pic)^(1-US_thetat)*(EAEUS_piim(-1)^US_chix*EAE_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAE_piim
EAEUS_piim = EAEUS_pim/EAEUS_pim(-1)*EAE_pic;
// Bilateral real exchange rate
USEAE_rer = US_rer/EAE_rer;
// Auxiliary equation for steady-state output
USEAE_rerbar = USEAE_rer;
//Terms of Trade
USEAE_tot = USEAE_pim/(USEAE_rer*EAEUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = RW_pimtilde
RWUS_pimtilde/RWUS_pim = US_cpim*US_thetat/(US_thetat-1)*USRW_fx/USRW_gx;
// Definition of fx
USRW_fx = RW_size/US_size*RWUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USRW_fx(+1);
// Definition of gx   
USRW_gx = USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USRW_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = RW_pim
RWUS_pim^(1-US_thetat) = (1-US_xix)*RWUS_pimtilde^(1-US_thetat)+US_xix*(RWUS_pim(-1)/RW_pic)^(1-US_thetat)*(RWUS_piim(-1)^US_chix*RW_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = RW_piim
RWUS_piim = RWUS_pim/RWUS_pim(-1)*RW_pic;
// Bilateral real exchange rate
USRW_rer = US_rer/RW_rer;
// Auxiliary equation for steady-state output
USRW_rerbar = USRW_rer;
//Terms of Trade
USRW_tot = USRW_pim/(USRW_rer*RWUS_pim);
// Total imports 
US_im = US_imc+US_imi;
// Total import deflator
US_im*US_pim  = US_pimc*US_imc+US_pimi*US_imi;
// Total Export deflator 
US_ex*US_pex  =
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im
+USEAD_rer*EADUS_pim*EAD_size/US_size*EADUS_im
+USEAE_rer*EAEUS_pim*EAE_size/US_size*EAEUS_im
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
;
// Effective real exchange rate: double weighting (imports)
USEAA_weightim = USEAA_rer*EAA_pex*USEAA_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAA_weightex = EAA_size/US_size*EAAUS_im/US_ex*USEAA_rer*EAA_py*EAA_y/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)+
+EAB_size/US_size*EABUS_im/US_ex*USEAA_rer*EAA_pex*EABEAA_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAA_rer*EAA_pex*EACEAA_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAA_rer*EAA_pex*EADEAA_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAA_rer*EAA_pex*EAEEAA_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAA_rer*EAA_pex*RWEAA_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
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
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAB_rer*EAB_pex*EAAEAB_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAB_rer*EAB_pex*EACEAB_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAB_rer*EAB_pex*EADEAB_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAB_rer*EAB_pex*EAEEAB_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAB_rer*EAB_pex*RWEAB_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
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
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAC_rer*EAC_pex*EAAEAC_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAC_rer*EAC_pex*EABEAC_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAC_rer*EAC_pex*EADEAC_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAC_rer*EAC_pex*EAEEAC_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAC_rer*EAC_pex*RWEAC_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
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
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAD_rer*EAD_pex*EAAEAD_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAD_rer*EAD_pex*EABEAD_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAD_rer*EAD_pex*EACEAD_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAD_rer*EAD_pex*EAEEAD_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAD_rer*EAD_pex*RWEAD_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAD_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAD_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAD_weightex;
// Effective real exchange rate: double weighting (imports)
USEAE_weightim = USEAE_rer*EAE_pex*USEAE_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAE_weightex = EAE_size/US_size*EAEUS_im/US_ex*USEAE_rer*EAE_py*EAE_y/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAE_rer*EAE_pex*EAAEAE_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAE_rer*EAE_pex*EABEAE_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAE_rer*EAE_pex*EACEAE_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAE_rer*EAE_pex*EADEAE_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAE_rer*EAE_pex*RWEAE_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAE_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAE_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAE_weightex;
// Effective real exchange rate: double weighting (imports)
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USRW_weightex = RW_size/US_size*RWUS_im/US_ex*USRW_rer*RW_py*RW_y/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USRW_rer*RW_pex*EAARW_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USRW_rer*RW_pex*EABRW_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USRW_rer*RW_pex*EACRW_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USRW_rer*RW_pex*EADRW_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USRW_rer*RW_pex*EAERW_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USRW_rer*RW_pex*EAERW_im
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
*USEAE_rer^USEAE_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USEAC_tot^USEAC_weight
*USEAD_tot^USEAD_weight
*USEAE_tot^USEAE_weight
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
+USEAD_numc ^(1/US_mumc)*USEAD_imc^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*USRW_imc^(1-1/US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USRW_numc
)^(1/US_mumc)*USEAE_imc^(1-1/US_mumc);
// Demand for bilateral consumption import goods
USEAD_imc = USEAD_numc*(USEAD_pim/US_pimc)^(-US_mumc)*US_imc;
USEAB_imc = USEAB_numc*(USEAB_pim/US_pimc)^(-US_mumc)*US_imc;
USEAC_imc = USEAC_numc*(USEAC_pim/US_pimc)^(-US_mumc)*US_imc;
USRW_imc = USRW_numc*(USRW_pim/US_pimc)^(-US_mumc)*US_imc;
USEAE_imc = (1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USRW_numc
)*(USEAE_pim/US_pimc)^(-US_mumc)*US_imc;
// Price of the consumption good (import)
US_pimc^(1-US_mumc) =
+USEAA_numc * USEAA_pim^(1-US_mumc)
+USEAB_numc * USEAB_pim^(1-US_mumc)
+USEAC_numc * USEAC_pim^(1-US_mumc)
+USEAD_numc * USEAD_pim^(1-US_mumc)
+USRW_numc * USRW_pim^(1-US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USRW_numc
)*USEAE_pim^(1-US_mumc);
// Private consumption good (import) inflation
US_piimc = US_pimc/US_pimc(-1)*US_pic;
// Private consumption good (import) inflation
US_piimc4 = US_pimc/US_pimc(-4)*US_pic4;
// Private consumption good (import) inflation
US_piex4 = US_pex/US_pex(-4)*US_pic4;
// Private investment good (import)
US_imi^((US_mumi-1)/US_mumi) =
+USEAA_numi ^(1/US_mumi)*USEAA_imi^(1-1/US_mumi)
+USEAB_numi ^(1/US_mumi)*USEAB_imi^(1-1/US_mumi)
+USEAC_numi ^(1/US_mumi)*USEAC_imi^(1-1/US_mumi)
+USEAD_numi ^(1/US_mumi)*USEAD_imi^(1-1/US_mumi)
+USRW_numi ^(1/US_mumi)*USRW_imi^(1-1/US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USRW_numi
)^(1/US_mumi)*USEAE_imi^(1-1/US_mumi);
// Demand for bilateral investment import goods
USEAD_imi = USEAD_numi*(USEAD_pim/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral investment import goods
USEAB_imi = USEAB_numi*(USEAB_pim/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral investment import goods
USEAC_imi = USEAC_numi*(USEAC_pim/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral investment import goods
USRW_imi = USRW_numi*(USRW_pim/US_pimi)^(-US_mumi)*US_imi;
USEAE_imi = (1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USRW_numi
)*(USEAE_pim/US_pimi)^(-US_mumi)*US_imi;
// Price of the investment good (import)
US_pimi^(1-US_mumi) =
+USEAA_numi * USEAA_pim^(1-US_mumi)
+USEAB_numi * USEAB_pim^(1-US_mumi)
+USEAC_numi * USEAC_pim^(1-US_mumi)
+USEAD_numi * USEAD_pim^(1-US_mumi)
+USRW_numi * USRW_pim^(1-US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USRW_numi
)*USEAE_pim^(1-US_mumi);
// Private investment good (import) inflation
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
US_yst = US_sh*US_ht
+USEAA_sx*EAA_size/US_size*EAAUS_im
+USEAB_sx*EAB_size/US_size*EABUS_im
+USEAC_sx*EAC_size/US_size*EACUS_im
+USEAD_sx*EAD_size/US_size*EADUS_im
+USEAE_sx*EAE_size/US_size*EAEUS_im
+USRW_sx*RW_size/US_size*RWUS_im
;
// Aggregate demand for bilateral imported intermediate goods
USEAA_im = USEAA_imi+USEAA_imc;
USEAB_im = USEAB_imi+USEAB_imc;
USEAC_im = USEAC_imi+USEAC_imc;
USEAD_im = USEAD_imi+USEAD_imc;
USEAE_im = USEAE_imi+USEAE_imc;
USRW_im = USRW_imi+USRW_imc;
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
USEAE_gammaimc = 0;
USEAE_gammaimcdag = 1;
USRW_gammaimc = 0;
USRW_gammaimcdag = 1;
// Private investment good firm
// Private investment good
US_tti^((US_muti-1)/US_muti) = (US_nuti)^(1/US_muti)*US_hti^(1-1/US_muti)+(1-US_nuti)^(1/US_muti)*US_imi^(1-1/US_muti);
// Private investment good
US_qi^((US_mui-1)/US_mui) = (US_nui)^(1/US_mui)*US_tti^(1-1/US_mui)+(1-US_nui)^(1/US_mui)*US_nti^(1-1/US_mui);
// Demand for domestic intermediate goods
US_nti = (1-US_nui)*(US_pnt/US_pi)^(-US_mui)*US_qi;
// Price of the investment good (TRADABLE)  
US_ptti^(1-US_muti) = (US_nuti)*US_pht^(1-US_muti)+(1-US_nuti)*US_pimi^(1-US_muti);
// Price of the investment good
US_pi^(1-US_mui) = (US_nui)*US_ptti^(1-US_mui)+(1-US_nui)*(US_pnt)^(1-US_mui);
// Auxiliary equation for the price of the investment good in steady state
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
USEAE_gammaimi = 0;
USEAE_gammaimidag = 1;
USRW_gammaimi = 0;
USRW_gammaimidag = 1;
// Trade balance
US_tb =
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im
-USEAA_pim*USEAA_im
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im
-USEAB_pim*USEAB_im
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im
-USEAC_pim*USEAC_im
+USEAD_rer*EADUS_pim*EAD_size/US_size*EADUS_im
-USEAD_pim*USEAD_im
+USEAE_rer*EAEUS_pim*EAE_size/US_size*EAEUS_im
-USEAE_pim*USEAE_im
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
-USRW_pim*USRW_im
;
// Aggregate exports (volume)
US_ex =
+EAA_size/US_size*EAAUS_im
+EAB_size/US_size*EABUS_im
+EAC_size/US_size*EACUS_im
+EAD_size/US_size*EADUS_im
+EAE_size/US_size*EAEUS_im
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
	US_pnt(-1)*US_cg(-1)+US_pnt(-1)*US_ig(-1)+US_tr(-1)
	+US_b(-1)*US_pic(-1)^(-1)+US_m(-2)*US_pic(-1)^(-1) = US_tauc(-1)*US_c(-1)+(US_taun(-1)+US_tauwh(-1))*(US_wi(-1)*US_ndi(-1)+US_wj(-1)*US_ndj(-1))+US_tauwf(-1)*US_w(-1)*US_nd(-1)+US_tauk(-1)*(US_rk(-1)*US_u(-1)-(US_gammau(-1)+US_delta)*US_pi(-1))*US_k(-1)+US_taud(-1)*US_d(-1)+US_t(-1)+(US_r(-1))^(-1)*US_b+US_m(-1);
// Government spending, using US_pg = US_pht
US_pnt*US_cg = US_cgy*US_pybar*US_ybar;
US_pnt*US_ig = US_igy*US_pybar*US_ybar;
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
US_nt =  US_nti+US_ntc+US_cg+US_ig;
// Aggregate demand for domestic intermediate goods, using US_hg = US_cg
US_ht = US_htc+US_hti;
// Price dispersion in the domestic markets
US_sh = (1-US_xih)*(US_phttilde/US_pht)^(-US_thetat)+US_xih*(US_piht/(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_sh(-1);
// Price dispersion in the foreign markets
USEAA_sx = (1-US_xix)*(EAAUS_pimtilde/EAAUS_pim)^(-US_thetat)+US_xix*(EAAUS_piim/(EAAUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAA_sx(-1);
USEAB_sx = (1-US_xix)*(EABUS_pimtilde/EABUS_pim)^(-US_thetat)+US_xix*(EABUS_piim/(EABUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAB_sx(-1);
USEAC_sx = (1-US_xix)*(EACUS_pimtilde/EACUS_pim)^(-US_thetat)+US_xix*(EACUS_piim/(EACUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAC_sx(-1);
USEAD_sx = (1-US_xix)*(EADUS_pimtilde/EADUS_pim)^(-US_thetat)+US_xix*(EADUS_piim/(EADUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAD_sx(-1);
USEAE_sx = (1-US_xix)*(EAEUS_pimtilde/EAEUS_pim)^(-US_thetat)+US_xix*(EAEUS_piim/(EAEUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAE_sx(-1);
USRW_sx = (1-US_xix)*(RWUS_pimtilde/RWUS_pim)^(-US_thetat)+US_xix*(RWUS_piim/(RWUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USRW_sx(-1);
// Price dispersion in the domestic markets
US_snt = (1-US_xin)*(US_pnttilde/US_pnt)^(-US_thetan)+US_xin*(US_pint/(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_snt(-1);
// Government capital accumulation:
US_kg = (1-US_deltag)*US_kg(-1)+US_ig(-1);
// Final-good markets
// Aggregate consumption and transaction cost
US_qc = US_c+US_gammav;
// Aggregate investment and capital utilisation cost
US_qi = US_i+US_k*US_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using US_pg = US_pht and US_qg = US_cg   
US_py*US_y = US_qc+US_pi*US_qi+US_pnt*US_cg+US_pnt*US_ig
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im
-USEAA_pim*USEAA_imc
-USEAA_pim*USEAA_imi
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im
-USEAB_pim*USEAB_imc
-USEAB_pim*USEAB_imi
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im
-USEAC_pim*USEAC_imc
-USEAC_pim*USEAC_imi
+USEAD_rer*EADUS_pim*EAD_size/US_size*EADUS_im
-USEAD_pim*USEAD_imc
-USEAD_pim*USEAD_imi
+USEAE_rer*EAEUS_pim*EAE_size/US_size*EAEUS_im
-USEAE_pim*USEAE_imc
-USEAE_pim*USEAE_imi
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
-USRW_pim*USRW_imc
-USRW_pim*USRW_imi
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
US_cgy = (1-US_rhocg)*US_cgybar+US_rhocg*US_cgy(-1)+US_epsg;
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
US_imy = (US_pimc*US_imc+US_pimi*US_imi)/(US_py*US_y);
// Aggregate nominal import share for consumption goods 
US_imcy = US_pimc*US_imc/(US_py*US_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
US_imiy = US_pimi*US_imi/(US_py*US_y);
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
US_epsilonm = -1/8*1/(US_r*(US_gammav2*US_r+US_r-1));
// Trade balance-to-GDP ratio
US_tby = US_tb/(US_py*US_y);
// Imports of consumption goods 
USEAA_imcy  = USEAA_pim*USEAA_imc/(US_py*US_y);
// Imports of investment goods
USEAA_imiy = USEAA_pim*USEAA_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USEAA_excy  = EAA_size/US_size*USEAA_rer*EAAUS_pim*EAAUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAA_exiy  = EAA_size/US_size*USEAA_rer*EAAUS_pim*EAAUS_imi/(US_py*US_y);
// Imports of consumption goods 
USEAB_imcy  = USEAB_pim*USEAB_imc/(US_py*US_y);
// Imports of investment goods
USEAB_imiy = USEAB_pim*USEAB_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USEAB_excy  = EAB_size/US_size*USEAB_rer*EABUS_pim*EABUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAB_exiy  = EAB_size/US_size*USEAB_rer*EABUS_pim*EABUS_imi/(US_py*US_y);
// Imports of consumption goods 
USEAC_imcy  = USEAC_pim*USEAC_imc/(US_py*US_y);
// Imports of investment goods
USEAC_imiy = USEAC_pim*USEAC_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USEAC_excy  = EAC_size/US_size*USEAC_rer*EACUS_pim*EACUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAC_exiy  = EAC_size/US_size*USEAC_rer*EACUS_pim*EACUS_imi/(US_py*US_y);
// Imports of consumption goods 
USEAD_imcy  = USEAD_pim*USEAD_imc/(US_py*US_y);
// Imports of investment goods
USEAD_imiy = USEAD_pim*USEAD_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USEAD_excy  = EAD_size/US_size*USEAD_rer*EADUS_pim*EADUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAD_exiy  = EAD_size/US_size*USEAD_rer*EADUS_pim*EADUS_imi/(US_py*US_y);
// Imports of consumption goods 
USEAE_imcy  = USEAE_pim*USEAE_imc/(US_py*US_y);
// Imports of investment goods
USEAE_imiy = USEAE_pim*USEAE_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USEAE_excy  = EAE_size/US_size*USEAE_rer*EAEUS_pim*EAEUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAE_exiy  = EAE_size/US_size*USEAE_rer*EAEUS_pim*EAEUS_imi/(US_py*US_y);
// Imports of consumption goods 
USRW_imcy  = USRW_pim*USRW_imc/(US_py*US_y);
// Imports of investment goods
USRW_imiy = USRW_pim*USRW_imi/(US_py*US_y);
// Exports of consumption goods to gdp
USRW_excy  = RW_size/US_size*USRW_rer*RWUS_pim*RWUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USRW_exiy  = RW_size/US_size*USRW_rer*RWUS_pim*RWUS_imi/(US_py*US_y);
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
EAA_tot = EAAUS_pim/(EAA_rer*USEAA_pim);
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
EAB_tot = EABUS_pim/(EAB_rer*USEAB_pim);
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
EAC_tot = EACUS_pim/(EAC_rer*USEAC_pim);
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
EAD_tot = EADUS_pim/(EAD_rer*USEAD_pim);
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
EAE_gammab = 0;
// International transaction cost ('risk premium')
EAE_bf = (EAE_bfytarget*EAE_py*EAE_y)/EAE_rer*US_pic;
// Risk premium shock
EAE_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAE_rerdep = EAE_rer/EAE_rer(-1);
// Definition of the terms of trade
EAE_tot = EAEUS_pim/(EAE_rer*USEAE_pim);
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
RW_tot = RWUS_pim/(RW_rer*USRW_pim);
//-------------
// Closure conditions
//-------------
US_size*US_bf =
-EAA_size*EAA_bf
-EAB_size*EAB_bf
-EAC_size*EAC_bf
-EAD_size*EAD_bf
;
// Net foreign asset position
	
		
			EAA_bf/US_r(-1) = -EAA_bh/EAE_r(-1)*EAAEAE_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAE_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1);
		
	
	
		
			EAB_bf/US_r(-1) = -EAB_bh/EAE_r(-1)*EABEAE_rer(-1)/EAB_rer(-1) + EAB_bh(-1)*EABEAE_rer(-2) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1);
		
	
	
		
			EAC_bf/US_r(-1) = -EAC_bh/EAE_r(-1)*EACEAE_rer(-1)/EAC_rer(-1) + EAC_bh(-1)*EACEAE_rer(-2) / EAC_rer(-2) + EAC_bf(-1) + EAC_tb(-1)/EAC_rer(-1);
		
	
	
		
			EAD_bf/US_r(-1) = -EAD_bh/EAE_r(-1)*EADEAE_rer(-1)/EAD_rer(-1) + EAD_bh(-1)*EADEAE_rer(-2) / EAD_rer(-2) + EAD_bf(-1) + EAD_tb(-1)/EAD_rer(-1);
		
	
	
			EAE_bf/US_r(-1) = -EAE_bh/EAA_r(-1) / EAE_rer(-1) + EAE_bh(-1) / EAE_rer(-2) + EAE_bf(-1) + EAE_tb(-1)/EAE_rer(-1);
		
	
		RW_bf/US_r(-1) = RW_bf(-1)+RW_tb(-1)/RW_rer(-1);
	
US_rer = 1;
EAAEAE_nerdep = EAA_rerdep/EAE_rerdep*EAA_pic/EAE_pic;
EABEAE_nerdep = EAB_rerdep/EAE_rerdep*EAB_pic/EAE_pic;
EACEAE_nerdep = EAC_rerdep/EAE_rerdep*EAC_pic/EAE_pic;
EADEAE_nerdep = EAD_rerdep/EAE_rerdep*EAD_pic/EAE_pic;
// Euler equation for euroarea traded bonds
EAA_gammabh = 0;
EAB_gammabh = 0;
EAC_gammabh = 0;
EAD_gammabh = 0;
// International transaction cost ('risk premium')
EAA_bh = (EAA_bhytarget*EAA_py*EAA_y)/EAAEAE_rer*EAE_pic;
EAB_bh = (EAB_bhytarget*EAB_py*EAB_y)/EABEAE_rer*EAE_pic;
EAC_bh = (EAC_bhytarget*EAC_py*EAC_y)/EACEAE_rer*EAE_pic;
EAD_bh = (EAD_bhytarget*EAD_py*EAD_y)/EADEAE_rer*EAE_pic;
EAE_size*EAE_bh+EAD_size*EAD_bh+EAC_size*EAC_bh+EAB_size*EAB_bh+EAA_size*EAA_bh = 0;
//-------------
// Euroarea-wide variables
//-------------
// GDP
EA_y = (EAA_size*EAA_pybar*EAA_y 	+ EAB_size*EAAEAB_rerbar*EAB_pybar *EAB_y	+ EAC_size*EAAEAC_rerbar*EAC_pybar *EAC_y + EAD_size*EAAEAD_rerbar*EAD_pybar *EAD_y	+ EAE_size*EAAEAE_rerbar*EAE_pybar *EAE_y)/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size);
// GDP growth
EA_ygrowth= EA_y/EA_y(-1);
// GDP growth (yoy)
EA_ygrowth4= EA_y/EA_y(-4);
// Money
EA_m = (EAA_size*EAA_m + EAB_size*EAAEAB_rerbar*EAB_m + EAC_size*EAAEAC_rerbar*EAC_m+ EAD_size*EAAEAD_rerbar*EAD_m + EAE_size*EAAEAE_rerbar*EAE_m)/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size);
EA_bf = (EAA_size*EAA_bf + EAB_size*EAB_bf + EAC_size*EAC_bf+ EAD_size*EAD_bf+ EAE_size*EAE_bf)/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size);
// Annual inflation
EA_pic4 = 
  EAA_pic4^(EAA_size/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size)) * EAB_pic4^(EAB_size/(EAA_size+EAB_size+EAC_size++EAD_size+EAE_size))* EAC_pic4^(EAC_size/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size))* EAD_pic4^(EAD_size/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size))* EAE_pic4^(EAE_size/(EAA_size+EAB_size+EAC_size+EAD_size+EAE_size));
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
RW_alphat,  0.3;
US_alphat,  0.3;
EAB_alphat, 0.3;
EAC_alphat, 0.3;
EAD_alphat, 0.3;
EAE_alphat, 0.3;
end;
steady(homotopy_steps = 5);
// Productivity of public capital
disp('alphag')
homotopy_setup;
EAA_alphag, 0.05;
US_alphag,  0.05;
RW_alphag,  0.05;
EAB_alphag, 0.05;     
EAC_alphag, 0.05;     
EAD_alphag, 0.05;     
EAE_alphag, 0.05;     
end;
steady(homotopy_steps = 5);
save_params_and_steady_state('eagle_steady_govInv.txt');
