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
 EAARW_excy
 EAAUS_excy
 EAAEAB_exiy
 EAAEAC_exiy
 EAARW_exiy
 EAAUS_exiy
 EAAEAB_fx
 EAAEAC_fx
 EAARW_fx
 EAAUS_fx
 EAAEAB_gammaimc
 EAAEAC_gammaimc
 EAARW_gammaimc
 EAAUS_gammaimc
 EAAEAB_gammaimcdag
 EAAEAC_gammaimcdag
 EAARW_gammaimcdag
 EAAUS_gammaimcdag
 EAAEAB_gammaimi
 EAAEAC_gammaimi
 EAARW_gammaimi
 EAAUS_gammaimi
 EAAEAB_gammaimidag
 EAAEAC_gammaimidag
 EAARW_gammaimidag
 EAAUS_gammaimidag
 EAAEAB_gx
 EAAEAC_gx
 EAARW_gx
 EAAUS_gx
 EAAEAB_im
 EAAEAC_im
 EAARW_im
 EAAUS_im
 EAAEAB_imc
 EAAEAC_imc
 EAARW_imc
 EAAUS_imc
 EAAEAB_imcy
 EAAEAC_imcy
 EAARW_imcy
 EAAUS_imcy
 EAAEAB_imi
 EAAEAC_imi
 EAARW_imi
 EAAUS_imi
 EAAEAB_imiy
 EAAEAC_imiy
 EAARW_imiy
 EAAUS_imiy
 EAAEAB_piim
 EAAEAC_piim
 EAARW_piim
 EAAUS_piim
 EAAEAB_pim
 EAAEAC_pim
 EAARW_pim
 EAAUS_pim
 EAAEAB_pimtilde
 EAAEAC_pimtilde
 EAARW_pimtilde
 EAAUS_pimtilde
 EAAEAB_rer
 EAAEAC_rer
 EAARW_rer
 EAAUS_rer
 EAAEAB_sx
 EAAEAC_sx
 EAARW_sx
 EAAUS_sx
 EAAEAB_tot
 EAAEAC_tot
 EAARW_tot
 EAAUS_tot
 EAAEAB_weight
 EAAEAC_weight
 EAARW_weight
 EAAUS_weight
 EAAEAB_weightex
 EAAEAC_weightex
 EAARW_weightex
 EAAUS_weightex
 EAAEAB_weightim
 EAAEAC_weightim
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
 EAA_g
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
 EAA_gy
 EAA_ht
 EAA_htc
 EAA_hti
 EAA_i
 EAA_ii
 EAA_im
 EAA_imc
 EAA_imcy
 EAA_imi
 EAA_imiy
 EAA_imy
 EAA_internalrer
 EAA_iy
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
 EAA_gammau2
 EAA_gammav1
 EAA_gammav2
 EAA_kappa
 EAA_muc
 EAA_mui
 EAA_mumc
 EAA_mumi
 EAA_mutc
 EAA_muti
 EAA_nuc
 EAA_nui
 EAA_nutc
 EAA_nuti
 EAA_omega
 EAA_phitb
 EAA_pi4target
 EAA_psin
 EAA_psit
 EAA_rhog
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
 EAA_gybar
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
 EAA_epsg
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
 EABRW_excy
 EABUS_excy
 EABEAA_exiy
 EABEAC_exiy
 EABRW_exiy
 EABUS_exiy
 EABEAA_fx
 EABEAC_fx
 EABRW_fx
 EABUS_fx
 EABEAA_gammaimc
 EABEAC_gammaimc
 EABRW_gammaimc
 EABUS_gammaimc
 EABEAA_gammaimcdag
 EABEAC_gammaimcdag
 EABRW_gammaimcdag
 EABUS_gammaimcdag
 EABEAA_gammaimi
 EABEAC_gammaimi
 EABRW_gammaimi
 EABUS_gammaimi
 EABEAA_gammaimidag
 EABEAC_gammaimidag
 EABRW_gammaimidag
 EABUS_gammaimidag
 EABEAA_gx
 EABEAC_gx
 EABRW_gx
 EABUS_gx
 EABEAA_im
 EABEAC_im
 EABRW_im
 EABUS_im
 EABEAA_imc
 EABEAC_imc
 EABRW_imc
 EABUS_imc
 EABEAA_imcy
 EABEAC_imcy
 EABRW_imcy
 EABUS_imcy
 EABEAA_imi
 EABEAC_imi
 EABRW_imi
 EABUS_imi
 EABEAA_imiy
 EABEAC_imiy
 EABRW_imiy
 EABUS_imiy
 EABEAA_piim
 EABEAC_piim
 EABRW_piim
 EABUS_piim
 EABEAA_pim
 EABEAC_pim
 EABRW_pim
 EABUS_pim
 EABEAA_pimtilde
 EABEAC_pimtilde
 EABRW_pimtilde
 EABUS_pimtilde
 EABEAA_rer
 EABEAC_rer
 EABRW_rer
 EABUS_rer
 EABEAA_sx
 EABEAC_sx
 EABRW_sx
 EABUS_sx
 EABEAA_tot
 EABEAC_tot
 EABRW_tot
 EABUS_tot
 EABEAA_weight
 EABEAC_weight
 EABRW_weight
 EABUS_weight
 EABEAA_weightex
 EABEAC_weightex
 EABRW_weightex
 EABUS_weightex
 EABEAA_weightim
 EABEAC_weightim
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
 EAB_g
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
 EAB_gy
 EAB_ht
 EAB_htc
 EAB_hti
 EAB_i
 EAB_ii
 EAB_im
 EAB_imc
 EAB_imcy
 EAB_imi
 EAB_imiy
 EAB_imy
 EAB_internalrer
 EAB_iy
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
 EAB_gammau2
 EAB_gammav1
 EAB_gammav2
 EAB_kappa
 EAB_muc
 EAB_mui
 EAB_mumc
 EAB_mumi
 EAB_mutc
 EAB_muti
 EAB_nuc
 EAB_nui
 EAB_nutc
 EAB_nuti
 EAB_omega
 EAB_phitb
 EAB_pi4target
 EAB_psin
 EAB_psit
 EAB_rhog
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
 EAB_gybar
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
 EAB_epsg
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
 EACRW_excy
 EACUS_excy
 EACEAA_exiy
 EACEAB_exiy
 EACRW_exiy
 EACUS_exiy
 EACEAA_fx
 EACEAB_fx
 EACRW_fx
 EACUS_fx
 EACEAA_gammaimc
 EACEAB_gammaimc
 EACRW_gammaimc
 EACUS_gammaimc
 EACEAA_gammaimcdag
 EACEAB_gammaimcdag
 EACRW_gammaimcdag
 EACUS_gammaimcdag
 EACEAA_gammaimi
 EACEAB_gammaimi
 EACRW_gammaimi
 EACUS_gammaimi
 EACEAA_gammaimidag
 EACEAB_gammaimidag
 EACRW_gammaimidag
 EACUS_gammaimidag
 EACEAA_gx
 EACEAB_gx
 EACRW_gx
 EACUS_gx
 EACEAA_im
 EACEAB_im
 EACRW_im
 EACUS_im
 EACEAA_imc
 EACEAB_imc
 EACRW_imc
 EACUS_imc
 EACEAA_imcy
 EACEAB_imcy
 EACRW_imcy
 EACUS_imcy
 EACEAA_imi
 EACEAB_imi
 EACRW_imi
 EACUS_imi
 EACEAA_imiy
 EACEAB_imiy
 EACRW_imiy
 EACUS_imiy
 EACEAA_piim
 EACEAB_piim
 EACRW_piim
 EACUS_piim
 EACEAA_pim
 EACEAB_pim
 EACRW_pim
 EACUS_pim
 EACEAA_pimtilde
 EACEAB_pimtilde
 EACRW_pimtilde
 EACUS_pimtilde
 EACEAA_rer
 EACEAB_rer
 EACRW_rer
 EACUS_rer
 EACEAA_sx
 EACEAB_sx
 EACRW_sx
 EACUS_sx
 EACEAA_tot
 EACEAB_tot
 EACRW_tot
 EACUS_tot
 EACEAA_weight
 EACEAB_weight
 EACRW_weight
 EACUS_weight
 EACEAA_weightex
 EACEAB_weightex
 EACRW_weightex
 EACUS_weightex
 EACEAA_weightim
 EACEAB_weightim
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
 EAC_g
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
 EAC_gy
 EAC_ht
 EAC_htc
 EAC_hti
 EAC_i
 EAC_ii
 EAC_im
 EAC_imc
 EAC_imcy
 EAC_imi
 EAC_imiy
 EAC_imy
 EAC_internalrer
 EAC_iy
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
 EAC_gammau2
 EAC_gammav1
 EAC_gammav2
 EAC_kappa
 EAC_muc
 EAC_mui
 EAC_mumc
 EAC_mumi
 EAC_mutc
 EAC_muti
 EAC_nuc
 EAC_nui
 EAC_nutc
 EAC_nuti
 EAC_omega
 EAC_phitb
 EAC_pi4target
 EAC_psin
 EAC_psit
 EAC_rhog
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
 EAC_gybar
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
 EAC_epsg
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
 RWEAA_excy
 RWEAB_excy
 RWEAC_excy
 RWUS_excy
 RWEAA_exiy
 RWEAB_exiy
 RWEAC_exiy
 RWUS_exiy
 RWEAA_fx
 RWEAB_fx
 RWEAC_fx
 RWUS_fx
 RWEAA_gammaimc
 RWEAB_gammaimc
 RWEAC_gammaimc
 RWUS_gammaimc
 RWEAA_gammaimcdag
 RWEAB_gammaimcdag
 RWEAC_gammaimcdag
 RWUS_gammaimcdag
 RWEAA_gammaimi
 RWEAB_gammaimi
 RWEAC_gammaimi
 RWUS_gammaimi
 RWEAA_gammaimidag
 RWEAB_gammaimidag
 RWEAC_gammaimidag
 RWUS_gammaimidag
 RWEAA_gx
 RWEAB_gx
 RWEAC_gx
 RWUS_gx
 RWEAA_im
 RWEAB_im
 RWEAC_im
 RWUS_im
 RWEAA_imc
 RWEAB_imc
 RWEAC_imc
 RWUS_imc
 RWEAA_imcy
 RWEAB_imcy
 RWEAC_imcy
 RWUS_imcy
 RWEAA_imi
 RWEAB_imi
 RWEAC_imi
 RWUS_imi
 RWEAA_imiy
 RWEAB_imiy
 RWEAC_imiy
 RWUS_imiy
 RWEAA_piim
 RWEAB_piim
 RWEAC_piim
 RWUS_piim
 RWEAA_pim
 RWEAB_pim
 RWEAC_pim
 RWUS_pim
 RWEAA_pimtilde
 RWEAB_pimtilde
 RWEAC_pimtilde
 RWUS_pimtilde
 RWEAA_rer
 RWEAB_rer
 RWEAC_rer
 RWUS_rer
 RWEAA_sx
 RWEAB_sx
 RWEAC_sx
 RWUS_sx
 RWEAA_tot
 RWEAB_tot
 RWEAC_tot
 RWUS_tot
 RWEAA_weight
 RWEAB_weight
 RWEAC_weight
 RWUS_weight
 RWEAA_weightex
 RWEAB_weightex
 RWEAC_weightex
 RWUS_weightex
 RWEAA_weightim
 RWEAB_weightim
 RWEAC_weightim
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
 RW_g
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
 RW_gy
 RW_ht
 RW_htc
 RW_hti
 RW_i
 RW_ii
 RW_im
 RW_imc
 RW_imcy
 RW_imi
 RW_imiy
 RW_imy
 RW_internalrer
 RW_iy
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
 RW_gammau2
 RW_gammav1
 RW_gammav2
 RW_kappa
 RW_muc
 RW_mui
 RW_mumc
 RW_mumi
 RW_mutc
 RW_muti
 RW_nuc
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
 RW_rhog
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
 RW_gybar
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
 RW_epsg
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
 USRW_excy
 USEAA_exiy
 USEAB_exiy
 USEAC_exiy
 USRW_exiy
 USEAA_fx
 USEAB_fx
 USEAC_fx
 USRW_fx
 USEAA_gammaimc
 USEAB_gammaimc
 USEAC_gammaimc
 USRW_gammaimc
 USEAA_gammaimcdag
 USEAB_gammaimcdag
 USEAC_gammaimcdag
 USRW_gammaimcdag
 USEAA_gammaimi
 USEAB_gammaimi
 USEAC_gammaimi
 USRW_gammaimi
 USEAA_gammaimidag
 USEAB_gammaimidag
 USEAC_gammaimidag
 USRW_gammaimidag
 USEAA_gx
 USEAB_gx
 USEAC_gx
 USRW_gx
 USEAA_im
 USEAB_im
 USEAC_im
 USRW_im
 USEAA_imc
 USEAB_imc
 USEAC_imc
 USRW_imc
 USEAA_imcy
 USEAB_imcy
 USEAC_imcy
 USRW_imcy
 USEAA_imi
 USEAB_imi
 USEAC_imi
 USRW_imi
 USEAA_imiy
 USEAB_imiy
 USEAC_imiy
 USRW_imiy
 USEAA_piim
 USEAB_piim
 USEAC_piim
 USRW_piim
 USEAA_pim
 USEAB_pim
 USEAC_pim
 USRW_pim
 USEAA_pimtilde
 USEAB_pimtilde
 USEAC_pimtilde
 USRW_pimtilde
 USEAA_rer
 USEAB_rer
 USEAC_rer
 USRW_rer
 USEAA_sx
 USEAB_sx
 USEAC_sx
 USRW_sx
 USEAA_tot
 USEAB_tot
 USEAC_tot
 USRW_tot
 USEAA_weight
 USEAB_weight
 USEAC_weight
 USRW_weight
 USEAA_weightex
 USEAB_weightex
 USEAC_weightex
 USRW_weightex
 USEAA_weightim
 USEAB_weightim
 USEAC_weightim
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
 US_g
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
 US_gy
 US_ht
 US_htc
 US_hti
 US_i
 US_ii
 US_im
 US_imc
 US_imcy
 US_imi
 US_imiy
 US_imy
 US_internalrer
 US_iy
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
 US_gammau2
 US_gammav1
 US_gammav2
 US_kappa
 US_muc
 US_mui
 US_mumc
 US_mumi
 US_mutc
 US_muti
 US_nuc
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
 US_rhog
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
 US_gybar
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
 US_epsg
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
 EAAUS_numc
 EAAUS_numi
 EABEAA_numc
 EABEAA_numi
 EABEAC_numc
 EABEAC_numi
 EABRW_numc
 EABRW_numi
 EACEAB_numc
 EACEAB_numi
 EACRW_numc
 EACRW_numi
 EACUS_numc
 EACUS_numi
 RWEAA_numc
 RWEAA_numi
 RWEAC_numc
 RWEAC_numi
 RWUS_numc
 RWUS_numi
 USEAA_numc
 USEAA_numi
 USEAB_numc
 USEAB_numi
 USRW_numc
 USRW_numi
;
var EAAEAC_nerdep;
var EABEAC_nerdep;
var EAA_gammabh;
var EAB_gammabh;
var
 EAA_bh
 EAB_bh
 EAC_bh
;
// Flip some variables
change_type(var)
 EA_ybar
 EAAEAB_rerbar
 EAAEAC_rerbar
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
 RWEAA_rerbar
 RWEAB_rerbar
 RWEAC_rerbar
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
//-------------
// Household I
//-------------
// Utility
EAA_utili = 
EAA_zcon*log(EAA_ci-EAA_kappa*EAA_ci(-1))-1/(1+EAA_zeta)*(EAA_ni)^(1+EAA_zeta)+EAA_beta*EAA_utili(+1)
;
// Marginal utility of consumption
EAA_lambdai*(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider) = EAA_zcon*(EAA_ci-EAA_kappa*EAA_ci(-1))^(-EAA_sigma);
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
EAA_zcon*log(EAA_cj-EAA_kappa*EAA_cj(-1))-1/(1+EAA_zeta)*EAA_nj^(1+EAA_zeta)+EAA_beta*EAA_utilj(+1)
;
// Budget constraint
(1+EAA_tauc+EAA_gammavj)*EAA_cj+EAA_mj = (1-EAA_taun-EAA_tauwh)*EAA_wj*EAA_nj+EAA_trj-EAA_tj+EAA_mj(-1)*EAA_pic^(-1);
// Marginal utility of consumption
EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder) = EAA_zcon*(EAA_cj-EAA_kappa*EAA_cj(-1))^(-EAA_sigma);
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
+EABEAA_pim*EAAEAB_rer*(EABEAA_imc+EABEAA_imi)*EAB_size/EAA_size
+EACEAA_pim*EAAEAC_rer*(EACEAA_imc+EACEAA_imi)*EAC_size/EAA_size
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
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
;
// Effective real exchange rate: double weighting (imports)
EAAEAB_weightim = EAAEAB_rer*EAB_pex*EAAEAB_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAB_weightex = EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAB_rer*EAB_py*EAB_y/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)+
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EACEAB_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*RWEAB_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*USEAB_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
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
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EABEAC_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*RWEAC_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*USEAC_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAC_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAARW_weightex = RW_size/EAA_size*RWEAA_im/EAA_ex*EAARW_rer*RW_py*RW_y/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAUS_rer*US_pex*RWUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAARW_rer*RW_pex*EABRW_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAARW_rer*RW_pex*EACRW_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAARW_rer*RW_pex*USRW_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
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
+EAARW_rer*RW_pex*USRW_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAUS_rer*US_pex*EABUS_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAUS_rer*US_pex*EACUS_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAUS_rer*US_pex*RWUS_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAUS_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightex;
// Effective real exchange rate
EAA_reer = 1
*EAAEAB_rer^EAAEAB_weight
*EAAEAC_rer^EAAEAC_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAAEAC_tot^EAAEAC_weight
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
+EAAUS_numc ^(1/EAA_mumc)*EAAUS_imc^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAUS_numc
)^(1/EAA_mumc)*EAARW_imc^(1-1/EAA_mumc);
// Demand for bilateral consumption import goods
EAAUS_imc = EAAUS_numc*(EAAUS_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAAEAC_imc = EAAEAC_numc*(EAAEAC_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAARW_imc = (1
-EAAEAB_numc
-EAAEAC_numc
-EAAUS_numc
)*(EAARW_pim/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Price of the consumption good (import)
EAA_pimc^(1-EAA_mumc) =
+EAAEAB_numc * EAAEAB_pim^(1-EAA_mumc)
+EAAEAC_numc * EAAEAC_pim^(1-EAA_mumc)
+EAAUS_numc * EAAUS_pim^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
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
+EAAUS_numi ^(1/EAA_mumi)*EAAUS_imi^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)^(1/EAA_mumi)*EAARW_imi^(1-1/EAA_mumi);
// Demand for bilateral investment import goods
EAAUS_imi = EAAUS_numi*(EAAUS_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral investment import goods
EAAEAC_imi = EAAEAC_numi*(EAAEAC_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
EAARW_imi = (1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)*(EAARW_pim/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Price of the investment good (import)
EAA_pimi^(1-EAA_mumi) =
+EAAEAB_numi * EAAEAB_pim^(1-EAA_mumi)
+EAAEAC_numi * EAAEAC_pim^(1-EAA_mumi)
+EAAUS_numi * EAAUS_pim^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)*EAARW_pim^(1-EAA_mumi);
// Private investment good (import) inflation
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
EAA_yst = EAA_sh*EAA_ht
+EAAEAB_sx*EAB_size/EAA_size*EABEAA_im
+EAAEAC_sx*EAC_size/EAA_size*EACEAA_im
+EAARW_sx*RW_size/EAA_size*RWEAA_im
+EAAUS_sx*US_size/EAA_size*USEAA_im
;
// Aggregate demand for bilateral imported intermediate goods
EAAEAB_im = EAAEAB_imi+EAAEAB_imc;
EAAEAC_im = EAAEAC_imi+EAAEAC_imc;
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
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
-EAARW_pim*EAARW_im
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
-EAAUS_pim*EAAUS_im
;
// Aggregate exports (volume)
EAA_ex =
+EAB_size/EAA_size*EABEAA_im
+EAC_size/EAA_size*EACEAA_im
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
	EAA_pnt(-1)*EAA_g(-1)+EAA_tr(-1)
	+EAA_b(-1)*EAA_pic(-1)^(-1)+EAA_m(-2)*EAA_pic(-1)^(-1) = EAA_tauc(-1)*EAA_c(-1)+(EAA_taun(-1)+EAA_tauwh(-1))*(EAA_wi(-1)*EAA_ndi(-1)+EAA_wj(-1)*EAA_ndj(-1))+EAA_tauwf(-1)*EAA_w(-1)*EAA_nd(-1)+EAA_tauk(-1)*(EAA_rk(-1)*EAA_u(-1)-(EAA_gammau(-1)+EAA_delta)*EAA_pi(-1))*EAA_k(-1)+EAA_taud(-1)*EAA_d(-1)+EAA_t(-1)+(EAA_r(-1)*(1-EAA_gammab(-1)))^(-1)*EAA_b+EAA_m(-1);
// Government spending, using EAA_pg = EAA_pht
EAA_pnt*EAA_g = EAA_gy*EAA_pybar*EAA_ybar;
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
	
			EAA_r = EAC_r;
		
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
EAA_nt =  EAA_nti+EAA_ntc+EAA_g;
// Aggregate demand for domestic intermediate goods, using EAA_hg = EAA_g
EAA_ht = EAA_htc+EAA_hti;
// Price dispersion in the domestic markets
EAA_sh = (1-EAA_xih)*(EAA_phttilde/EAA_pht)^(-EAA_thetat)+EAA_xih*(EAA_piht/(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_sh(-1);
// Price dispersion in the foreign markets
EAAEAB_sx = (1-EAA_xix)*(EABEAA_pimtilde/EABEAA_pim)^(-EAA_thetat)+EAA_xix*(EABEAA_piim/(EABEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAB_sx(-1);
EAAEAC_sx = (1-EAA_xix)*(EACEAA_pimtilde/EACEAA_pim)^(-EAA_thetat)+EAA_xix*(EACEAA_piim/(EACEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAC_sx(-1);
EAARW_sx = (1-EAA_xix)*(RWEAA_pimtilde/RWEAA_pim)^(-EAA_thetat)+EAA_xix*(RWEAA_piim/(RWEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAARW_sx(-1);
EAAUS_sx = (1-EAA_xix)*(USEAA_pimtilde/USEAA_pim)^(-EAA_thetat)+EAA_xix*(USEAA_piim/(USEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAUS_sx(-1);
// Price dispersion in the domestic markets
EAA_snt = (1-EAA_xin)*(EAA_pnttilde/EAA_pnt)^(-EAA_thetan)+EAA_xin*(EAA_pint/(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAA_qc = EAA_c+EAA_gammav;
// Aggregate investment and capital utilisation cost
EAA_qi = EAA_i+EAA_k*EAA_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAA_pg = EAA_pht and EAA_qg = EAA_g   
EAA_py*EAA_y = EAA_qc+EAA_pi*EAA_qi+EAA_pnt*EAA_g
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im
-EAAEAB_pim*EAAEAB_imc
-EAAEAB_pim*EAAEAB_imi
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im
-EAAEAC_pim*EAAEAC_imc
-EAAEAC_pim*EAAEAC_imi
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
EAA_gy = (1-EAA_rhog)*EAA_gybar+EAA_rhog*EAA_gy(-1)+EAA_epsg;
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
//-------------
// Household I
//-------------
// Utility
EAB_utili = 
EAB_zcon*log(EAB_ci-EAB_kappa*EAB_ci(-1))-1/(1+EAB_zeta)*(EAB_ni)^(1+EAB_zeta)+EAB_beta*EAB_utili(+1)
;
// Marginal utility of consumption
EAB_lambdai*(1+EAB_tauc+EAB_gammavi+EAB_vi*EAB_gammavider) = EAB_zcon*(EAB_ci-EAB_kappa*EAB_ci(-1))^(-EAB_sigma);
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
EAB_zcon*log(EAB_cj-EAB_kappa*EAB_cj(-1))-1/(1+EAB_zeta)*EAB_nj^(1+EAB_zeta)+EAB_beta*EAB_utilj(+1)
;
// Budget constraint
(1+EAB_tauc+EAB_gammavj)*EAB_cj+EAB_mj = (1-EAB_taun-EAB_tauwh)*EAB_wj*EAB_nj+EAB_trj-EAB_tj+EAB_mj(-1)*EAB_pic^(-1);
// Marginal utility of consumption
EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder) = EAB_zcon*(EAB_cj-EAB_kappa*EAB_cj(-1))^(-EAB_sigma);
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
+EAAEAB_pim*EABEAA_rer*(EAAEAB_imc+EAAEAB_imi)*EAA_size/EAB_size
+EACEAB_pim*EABEAC_rer*(EACEAB_imc+EACEAB_imi)*EAC_size/EAB_size
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
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
;
// Effective real exchange rate: double weighting (imports)
EABEAA_weightim = EABEAA_rer*EAA_pex*EABEAA_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAA_weightex = EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAA_rer*EAA_py*EAA_y/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)+
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EACEAA_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAA_rer*EAA_pex*RWEAA_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAA_rer*EAA_pex*USEAA_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
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
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAAEAC_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAC_rer*EAC_pex*RWEAC_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAC_rer*EAC_pex*USEAC_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAC_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABRW_weightex = RW_size/EAB_size*RWEAB_im/EAB_ex*EABRW_rer*RW_py*RW_y/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABRW_rer*RW_pex*EAARW_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABRW_rer*RW_pex*EACRW_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABRW_rer*RW_pex*USRW_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
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
+EABRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABUS_rer*US_pex*EAAUS_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABUS_rer*US_pex*EACUS_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABUS_rer*US_pex*RWUS_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EABUS_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightex;
// Effective real exchange rate
EAB_reer = 1
*EABEAA_rer^EABEAA_weight
*EABEAC_rer^EABEAC_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABEAC_tot^EABEAC_weight
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
+EABRW_numc ^(1/EAB_mumc)*EABRW_imc^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABRW_numc
)^(1/EAB_mumc)*EABUS_imc^(1-1/EAB_mumc);
// Demand for bilateral consumption import goods
EABEAA_imc = EABEAA_numc*(EABEAA_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABRW_imc = EABRW_numc*(EABRW_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABUS_imc = (1
-EABEAA_numc
-EABEAC_numc
-EABRW_numc
)*(EABUS_pim/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Price of the consumption good (import)
EAB_pimc^(1-EAB_mumc) =
+EABEAA_numc * EABEAA_pim^(1-EAB_mumc)
+EABEAC_numc * EABEAC_pim^(1-EAB_mumc)
+EABRW_numc * EABRW_pim^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
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
+EABRW_numi ^(1/EAB_mumi)*EABRW_imi^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)^(1/EAB_mumi)*EABUS_imi^(1-1/EAB_mumi);
// Demand for bilateral investment import goods
EABEAA_imi = EABEAA_numi*(EABEAA_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral investment import goods
EABRW_imi = EABRW_numi*(EABRW_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
EABUS_imi = (1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)*(EABUS_pim/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Price of the investment good (import)
EAB_pimi^(1-EAB_mumi) =
+EABEAA_numi * EABEAA_pim^(1-EAB_mumi)
+EABEAC_numi * EABEAC_pim^(1-EAB_mumi)
+EABRW_numi * EABRW_pim^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)*EABUS_pim^(1-EAB_mumi);
// Private investment good (import) inflation
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
EAB_yst = EAB_sh*EAB_ht
+EABEAA_sx*EAA_size/EAB_size*EAAEAB_im
+EABEAC_sx*EAC_size/EAB_size*EACEAB_im
+EABRW_sx*RW_size/EAB_size*RWEAB_im
+EABUS_sx*US_size/EAB_size*USEAB_im
;
// Aggregate demand for bilateral imported intermediate goods
EABEAA_im = EABEAA_imi+EABEAA_imc;
EABEAC_im = EABEAC_imi+EABEAC_imc;
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
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
-EABRW_pim*EABRW_im
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
-EABUS_pim*EABUS_im
;
// Aggregate exports (volume)
EAB_ex =
+EAA_size/EAB_size*EAAEAB_im
+EAC_size/EAB_size*EACEAB_im
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
	EAB_pnt(-1)*EAB_g(-1)+EAB_tr(-1)
	+EAB_b(-1)*EAB_pic(-1)^(-1)+EAB_m(-2)*EAB_pic(-1)^(-1) = EAB_tauc(-1)*EAB_c(-1)+(EAB_taun(-1)+EAB_tauwh(-1))*(EAB_wi(-1)*EAB_ndi(-1)+EAB_wj(-1)*EAB_ndj(-1))+EAB_tauwf(-1)*EAB_w(-1)*EAB_nd(-1)+EAB_tauk(-1)*(EAB_rk(-1)*EAB_u(-1)-(EAB_gammau(-1)+EAB_delta)*EAB_pi(-1))*EAB_k(-1)+EAB_taud(-1)*EAB_d(-1)+EAB_t(-1)+(EAB_r(-1)*(1-EAB_gammab(-1)))^(-1)*EAB_b+EAB_m(-1);
// Government spending, using EAB_pg = EAB_pht
EAB_pnt*EAB_g = EAB_gy*EAB_pybar*EAB_ybar;
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
	
			EAB_r = EAC_r;
		
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
EAB_nt =  EAB_nti+EAB_ntc+EAB_g;
// Aggregate demand for domestic intermediate goods, using EAB_hg = EAB_g
EAB_ht = EAB_htc+EAB_hti;
// Price dispersion in the domestic markets
EAB_sh = (1-EAB_xih)*(EAB_phttilde/EAB_pht)^(-EAB_thetat)+EAB_xih*(EAB_piht/(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_sh(-1);
// Price dispersion in the foreign markets
EABEAA_sx = (1-EAB_xix)*(EAAEAB_pimtilde/EAAEAB_pim)^(-EAB_thetat)+EAB_xix*(EAAEAB_piim/(EAAEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAA_sx(-1);
EABEAC_sx = (1-EAB_xix)*(EACEAB_pimtilde/EACEAB_pim)^(-EAB_thetat)+EAB_xix*(EACEAB_piim/(EACEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAC_sx(-1);
EABRW_sx = (1-EAB_xix)*(RWEAB_pimtilde/RWEAB_pim)^(-EAB_thetat)+EAB_xix*(RWEAB_piim/(RWEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABRW_sx(-1);
EABUS_sx = (1-EAB_xix)*(USEAB_pimtilde/USEAB_pim)^(-EAB_thetat)+EAB_xix*(USEAB_piim/(USEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABUS_sx(-1);
// Price dispersion in the domestic markets
EAB_snt = (1-EAB_xin)*(EAB_pnttilde/EAB_pnt)^(-EAB_thetan)+EAB_xin*(EAB_pint/(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAB_qc = EAB_c+EAB_gammav;
// Aggregate investment and capital utilisation cost
EAB_qi = EAB_i+EAB_k*EAB_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAB_pg = EAB_pht and EAB_qg = EAB_g   
EAB_py*EAB_y = EAB_qc+EAB_pi*EAB_qi+EAB_pnt*EAB_g
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im
-EABEAA_pim*EABEAA_imc
-EABEAA_pim*EABEAA_imi
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im
-EABEAC_pim*EABEAC_imc
-EABEAC_pim*EABEAC_imi
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
EAB_gy = (1-EAB_rhog)*EAB_gybar+EAB_rhog*EAB_gy(-1)+EAB_epsg;
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
//-------------
// Household I
//-------------
// Utility
EAC_utili = 
EAC_zcon*log(EAC_ci-EAC_kappa*EAC_ci(-1))-1/(1+EAC_zeta)*(EAC_ni)^(1+EAC_zeta)+EAC_beta*EAC_utili(+1)
;
// Marginal utility of consumption
EAC_lambdai*(1+EAC_tauc+EAC_gammavi+EAC_vi*EAC_gammavider) = EAC_zcon*(EAC_ci-EAC_kappa*EAC_ci(-1))^(-EAC_sigma);
// Euler equation for government bonds
EAC_r = EAC_beta^(-1)*EAC_lambdai/EAC_lambdai(+1)*EAC_pic(+1);
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
EAC_zcon*log(EAC_cj-EAC_kappa*EAC_cj(-1))-1/(1+EAC_zeta)*EAC_nj^(1+EAC_zeta)+EAC_beta*EAC_utilj(+1)
;
// Budget constraint
(1+EAC_tauc+EAC_gammavj)*EAC_cj+EAC_mj = (1-EAC_taun-EAC_tauwh)*EAC_wj*EAC_nj+EAC_trj-EAC_tj+EAC_mj(-1)*EAC_pic^(-1);
// Marginal utility of consumption
EAC_lambdaj*(1+EAC_tauc+EAC_gammavj+EAC_vj*EAC_gammavjder) = EAC_zcon*(EAC_cj-EAC_kappa*EAC_cj(-1))^(-EAC_sigma);
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
EAC_yst = EA_z*EAC_zt*EAC_kdt^EAC_alphat*EAC_ndt^(1-EAC_alphat)-EAC_psitbar;
// Production function nontradable
EAC_ysn = EA_z*EAC_zn*EAC_kdn^EAC_alphan*EAC_ndn^(1-EAC_alphan)-EAC_psinbar;
// Real marginal cost tradable
EAC_mct = 1/(EA_z*EAC_zt*(EAC_alphat)^(EAC_alphat)*(1-EAC_alphat)^(1-EAC_alphat))*EAC_rk^(EAC_alphat)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphat);
// Real marginal cost nontradable
EAC_mcn = 1/(EA_z*EAC_zn*(EAC_alphan)^(EAC_alphan)*(1-EAC_alphan)^(1-EAC_alphan))*EAC_rk^(EAC_alphan)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphan);
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
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
;
// Effective real exchange rate: double weighting (imports)
EACEAA_weightim = EACEAA_rer*EAA_pex*EACEAA_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAA_weightex = EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAA_rer*EAA_py*EAA_y/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EABEAA_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAA_rer*EAA_pex*RWEAA_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAA_rer*EAA_pex*USEAA_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
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
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAAEAB_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAB_rer*EAB_pex*RWEAB_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAB_rer*EAB_pex*USEAB_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAB_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EACRW_weightim = EACRW_rer*RW_pex*EACRW_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACRW_weightex = RW_size/EAC_size*RWEAC_im/EAC_ex*EACRW_rer*RW_py*RW_y/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACRW_rer*RW_pex*EAARW_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACRW_rer*RW_pex*EABRW_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACRW_rer*RW_pex*USRW_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
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
+EACRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACUS_rer*US_pex*EAAUS_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACUS_rer*US_pex*EABUS_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACUS_rer*US_pex*RWUS_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EACUS_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightex;
// Effective real exchange rate
EAC_reer = 1
*EACEAA_rer^EACEAA_weight
*EACEAB_rer^EACEAB_weight
*EACRW_rer^EACRW_weight
*EACUS_rer^EACUS_weight
;
// Effective terms of trade
EAC_etot = 1
*EACEAA_tot^EACEAA_weight
*EACEAB_tot^EACEAB_weight
*EACRW_tot^EACRW_weight
*EACUS_tot^EACUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAC_imc^((EAC_mumc-1)/EAC_mumc) =
+EACEAB_numc ^(1/EAC_mumc)*EACEAB_imc^(1-1/EAC_mumc)
+EACRW_numc ^(1/EAC_mumc)*EACRW_imc^(1-1/EAC_mumc)
+EACUS_numc ^(1/EAC_mumc)*EACUS_imc^(1-1/EAC_mumc)
+(1
-EACEAB_numc
-EACRW_numc
-EACUS_numc
)^(1/EAC_mumc)*EACEAA_imc^(1-1/EAC_mumc);
// Demand for bilateral consumption import goods
EACEAB_imc = EACEAB_numc*(EACEAB_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACUS_imc = EACUS_numc*(EACUS_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAA_imc = (1
-EACEAB_numc
-EACRW_numc
-EACUS_numc
)*(EACEAA_pim/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Price of the consumption good (import)
EAC_pimc^(1-EAC_mumc) =
+EACEAB_numc * EACEAB_pim^(1-EAC_mumc)
+EACRW_numc * EACRW_pim^(1-EAC_mumc)
+EACUS_numc * EACUS_pim^(1-EAC_mumc)
+(1
-EACEAB_numc
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
+EACRW_numi ^(1/EAC_mumi)*EACRW_imi^(1-1/EAC_mumi)
+EACUS_numi ^(1/EAC_mumi)*EACUS_imi^(1-1/EAC_mumi)
+(1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)^(1/EAC_mumi)*EACEAA_imi^(1-1/EAC_mumi);
// Demand for bilateral investment import goods
EACEAB_imi = EACEAB_numi*(EACEAB_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral investment import goods
EACUS_imi = EACUS_numi*(EACUS_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
EACEAA_imi = (1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)*(EACEAA_pim/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Price of the investment good (import)
EAC_pimi^(1-EAC_mumi) =
+EACEAB_numi * EACEAB_pim^(1-EAC_mumi)
+EACRW_numi * EACRW_pim^(1-EAC_mumi)
+EACUS_numi * EACUS_pim^(1-EAC_mumi)
+(1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)*EACEAA_pim^(1-EAC_mumi);
// Private investment good (import) inflation
EAC_piimi = EAC_pimi/EAC_pimi(-1)*EAC_pic;
// Wedge between aggregate demand and production, using EAC_x = RW_size/EAC_size*RW_im
EAC_yst = EAC_sh*EAC_ht
+EACEAA_sx*EAA_size/EAC_size*EAAEAC_im
+EACEAB_sx*EAB_size/EAC_size*EABEAC_im
+EACRW_sx*RW_size/EAC_size*RWEAC_im
+EACUS_sx*US_size/EAC_size*USEAC_im
;
// Aggregate demand for bilateral imported intermediate goods
EACEAA_im = EACEAA_imi+EACEAA_imc;
EACEAB_im = EACEAB_imi+EACEAB_imc;
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
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
-EACRW_pim*EACRW_im
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
-EACUS_pim*EACUS_im
;
// Aggregate exports (volume)
EAC_ex =
+EAA_size/EAC_size*EAAEAC_im
+EAB_size/EAC_size*EABEAC_im
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
	EAC_pnt(-1)*EAC_g(-1)+EAC_tr(-1)
	+EAC_b(-1)*EAC_pic(-1)^(-1)+EAC_m(-2)*EAC_pic(-1)^(-1) = EAC_tauc(-1)*EAC_c(-1)+(EAC_taun(-1)+EAC_tauwh(-1))*(EAC_wi(-1)*EAC_ndi(-1)+EAC_wj(-1)*EAC_ndj(-1))+EAC_tauwf(-1)*EAC_w(-1)*EAC_nd(-1)+EAC_tauk(-1)*(EAC_rk(-1)*EAC_u(-1)-(EAC_gammau(-1)+EAC_delta)*EAC_pi(-1))*EAC_k(-1)+EAC_taud(-1)*EAC_d(-1)+EAC_t(-1)+(EAC_r(-1)*(1-EAC_gammab(-1)))^(-1)*EAC_b+EAC_m(-1);
// Government spending, using EAC_pg = EAC_pht
EAC_pnt*EAC_g = EAC_gy*EAC_pybar*EAC_ybar;
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
		EAC_r^4-1 = EAC_rrstar^4*EAC_pi4target-1;
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
// Wedge between aggregate demand and production, using EAC_x = RW_size/EAC_size*RW_im
EAC_ysn = EAC_snt*EAC_nt;
//  nontradables aggregate demand
EAC_nt =  EAC_nti+EAC_ntc+EAC_g;
// Aggregate demand for domestic intermediate goods, using EAC_hg = EAC_g
EAC_ht = EAC_htc+EAC_hti;
// Price dispersion in the domestic markets
EAC_sh = (1-EAC_xih)*(EAC_phttilde/EAC_pht)^(-EAC_thetat)+EAC_xih*(EAC_piht/(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_sh(-1);
// Price dispersion in the foreign markets
EACEAA_sx = (1-EAC_xix)*(EAAEAC_pimtilde/EAAEAC_pim)^(-EAC_thetat)+EAC_xix*(EAAEAC_piim/(EAAEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAA_sx(-1);
EACEAB_sx = (1-EAC_xix)*(EABEAC_pimtilde/EABEAC_pim)^(-EAC_thetat)+EAC_xix*(EABEAC_piim/(EABEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAB_sx(-1);
EACRW_sx = (1-EAC_xix)*(RWEAC_pimtilde/RWEAC_pim)^(-EAC_thetat)+EAC_xix*(RWEAC_piim/(RWEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACRW_sx(-1);
EACUS_sx = (1-EAC_xix)*(USEAC_pimtilde/USEAC_pim)^(-EAC_thetat)+EAC_xix*(USEAC_piim/(USEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACUS_sx(-1);
// Price dispersion in the domestic markets
EAC_snt = (1-EAC_xin)*(EAC_pnttilde/EAC_pnt)^(-EAC_thetan)+EAC_xin*(EAC_pint/(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAC_qc = EAC_c+EAC_gammav;
// Aggregate investment and capital utilisation cost
EAC_qi = EAC_i+EAC_k*EAC_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAC_pg = EAC_pht and EAC_qg = EAC_g   
EAC_py*EAC_y = EAC_qc+EAC_pi*EAC_qi+EAC_pnt*EAC_g
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im
-EACEAA_pim*EACEAA_imc
-EACEAA_pim*EACEAA_imi
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im
-EACEAB_pim*EACEAB_imc
-EACEAB_pim*EACEAB_imi
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
EAC_gy = (1-EAC_rhog)*EAC_gybar+EAC_rhog*EAC_gy(-1)+EAC_epsg;
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
//-------------
// Household I
//-------------
// Utility
RW_utili = 
RW_zcon*log(RW_ci-RW_kappa*RW_ci(-1))-1/(1+RW_zeta)*(RW_ni)^(1+RW_zeta)+RW_beta*RW_utili(+1)
;
// Marginal utility of consumption
RW_lambdai*(1+RW_tauc+RW_gammavi+RW_vi*RW_gammavider) = RW_zcon*(RW_ci-RW_kappa*RW_ci(-1))^(-RW_sigma);
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
RW_zcon*log(RW_cj-RW_kappa*RW_cj(-1))-1/(1+RW_zeta)*RW_nj^(1+RW_zeta)+RW_beta*RW_utilj(+1)
;
// Budget constraint
(1+RW_tauc+RW_gammavj)*RW_cj+RW_mj = (1-RW_taun-RW_tauwh)*RW_wj*RW_nj+RW_trj-RW_tj+RW_mj(-1)*RW_pic^(-1);
// Marginal utility of consumption
RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder) = RW_zcon*(RW_cj-RW_kappa*RW_cj(-1))^(-RW_sigma);
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
RW_yst = RW_zt*RW_kdt^RW_alphat*RW_ndt^(1-RW_alphat)-RW_psitbar;
// Production function nontradable
RW_ysn = RW_zn*RW_kdn^RW_alphan*RW_ndn^(1-RW_alphan)-RW_psinbar;
// Real marginal cost tradable
RW_mct = 1/(RW_zt*(RW_alphat)^(RW_alphat)*(1-RW_alphat)^(1-RW_alphat))*RW_rk^(RW_alphat)*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
// Real marginal cost nontradable
RW_mcn = 1/(RW_zn*(RW_alphan)^(RW_alphan)*(1-RW_alphan)^(1-RW_alphan))*RW_rk^(RW_alphan)*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
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
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
;
// Effective real exchange rate: double weighting (imports)
RWEAA_weightim = RWEAA_rer*EAA_pex*RWEAA_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAA_weightex = EAA_size/RW_size*EAARW_im/RW_ex*RWEAA_rer*EAA_py*EAA_y/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWUS_rer*US_pex*EAAUS_im
)+
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAA_rer*EAA_pex*EABEAA_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAA_rer*EAA_pex*EACEAA_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWUS_rer*US_pex*EACUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAA_rer*EAA_pex*USEAA_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
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
+RWUS_rer*US_pex*EABUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAB_rer*EAB_pex*EAAEAB_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAB_rer*EAB_pex*EACEAB_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWUS_rer*US_pex*EACUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAB_rer*EAB_pex*USEAB_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
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
+RWUS_rer*US_pex*EACUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAC_rer*EAC_pex*EAAEAC_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAC_rer*EAC_pex*EABEAC_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWUS_rer*US_pex*EABUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAC_rer*EAC_pex*USEAC_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAC_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightex;
// Effective real exchange rate: double weighting (imports)
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWUS_weightex = US_size/RW_size*USRW_im/RW_ex*RWUS_rer*US_py*US_y/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWUS_rer*US_pex*EAAUS_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWUS_rer*US_pex*EABUS_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWUS_rer*US_pex*EACUS_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWUS_rer*US_pex*EACUS_im
)
;
// Effective real exchange rate: double weighting (overall)
RWUS_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightex;
// Effective real exchange rate
RW_reer = 1
*RWEAA_rer^RWEAA_weight
*RWEAB_rer^RWEAB_weight
*RWEAC_rer^RWEAC_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWEAC_tot^RWEAC_weight
*RWUS_tot^RWUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
RW_imc^((RW_mumc-1)/RW_mumc) =
+RWEAA_numc ^(1/RW_mumc)*RWEAA_imc^(1-1/RW_mumc)
+RWEAC_numc ^(1/RW_mumc)*RWEAC_imc^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*RWUS_imc^(1-1/RW_mumc)
+(1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)^(1/RW_mumc)*RWEAB_imc^(1-1/RW_mumc);
// Demand for bilateral consumption import goods
RWEAC_imc = RWEAC_numc*(RWEAC_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAA_imc = RWEAA_numc*(RWEAA_pim/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAB_imc = (1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)*(RWEAB_pim/RW_pimc)^(-RW_mumc)*RW_imc;
// Price of the consumption good (import)
RW_pimc^(1-RW_mumc) =
+RWEAA_numc * RWEAA_pim^(1-RW_mumc)
+RWEAC_numc * RWEAC_pim^(1-RW_mumc)
+RWUS_numc * RWUS_pim^(1-RW_mumc)
+(1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)*RWEAB_pim^(1-RW_mumc);
// Private consumption good (import) inflation
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import) inflation
RW_piimc4 = RW_pimc/RW_pimc(-4)*RW_pic4;
// Private consumption good (import) inflation
RW_piex4 = RW_pex/RW_pex(-4)*RW_pic4;
// Private investment good (import)
RW_imi^((RW_mumi-1)/RW_mumi) =
+RWEAA_numi ^(1/RW_mumi)*RWEAA_imi^(1-1/RW_mumi)
+RWEAC_numi ^(1/RW_mumi)*RWEAC_imi^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*RWUS_imi^(1-1/RW_mumi)
+(1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)^(1/RW_mumi)*RWEAB_imi^(1-1/RW_mumi);
// Demand for bilateral investment import goods
RWEAC_imi = RWEAC_numi*(RWEAC_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral investment import goods
RWEAA_imi = RWEAA_numi*(RWEAA_pim/RW_pimi)^(-RW_mumi)*RW_imi;
RWEAB_imi = (1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)*(RWEAB_pim/RW_pimi)^(-RW_mumi)*RW_imi;
// Price of the investment good (import)
RW_pimi^(1-RW_mumi) =
+RWEAA_numi * RWEAA_pim^(1-RW_mumi)
+RWEAC_numi * RWEAC_pim^(1-RW_mumi)
+RWUS_numi * RWUS_pim^(1-RW_mumi)
+(1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)*RWEAB_pim^(1-RW_mumi);
// Private investment good (import) inflation
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
RW_yst = RW_sh*RW_ht
+RWEAA_sx*EAA_size/RW_size*EAARW_im
+RWEAB_sx*EAB_size/RW_size*EABRW_im
+RWEAC_sx*EAC_size/RW_size*EACRW_im
+RWUS_sx*US_size/RW_size*USRW_im
;
// Aggregate demand for bilateral imported intermediate goods
RWEAA_im = RWEAA_imi+RWEAA_imc;
RWEAB_im = RWEAB_imi+RWEAB_imc;
RWEAC_im = RWEAC_imi+RWEAC_imc;
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
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
-RWUS_pim*RWUS_im
;
// Aggregate exports (volume)
RW_ex =
+EAA_size/RW_size*EAARW_im
+EAB_size/RW_size*EABRW_im
+EAC_size/RW_size*EACRW_im
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
	RW_pnt(-1)*RW_g(-1)+RW_tr(-1)
	+RW_b(-1)*RW_pic(-1)^(-1)+RW_m(-2)*RW_pic(-1)^(-1) = RW_tauc(-1)*RW_c(-1)+(RW_taun(-1)+RW_tauwh(-1))*(RW_wi(-1)*RW_ndi(-1)+RW_wj(-1)*RW_ndj(-1))+RW_tauwf(-1)*RW_w(-1)*RW_nd(-1)+RW_tauk(-1)*(RW_rk(-1)*RW_u(-1)-(RW_gammau(-1)+RW_delta)*RW_pi(-1))*RW_k(-1)+RW_taud(-1)*RW_d(-1)+RW_t(-1)+(RW_r(-1))^(-1)*RW_b+RW_m(-1);
// Government spending, using RW_pg = RW_pht
RW_pnt*RW_g = RW_gy*RW_pybar*RW_ybar;
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
RW_nt =  RW_nti+RW_ntc+RW_g;
// Aggregate demand for domestic intermediate goods, using RW_hg = RW_g
RW_ht = RW_htc+RW_hti;
// Price dispersion in the domestic markets
RW_sh = (1-RW_xih)*(RW_phttilde/RW_pht)^(-RW_thetat)+RW_xih*(RW_piht/(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_sh(-1);
// Price dispersion in the foreign markets
RWEAA_sx = (1-RW_xix)*(EAARW_pimtilde/EAARW_pim)^(-RW_thetat)+RW_xix*(EAARW_piim/(EAARW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAA_sx(-1);
RWEAB_sx = (1-RW_xix)*(EABRW_pimtilde/EABRW_pim)^(-RW_thetat)+RW_xix*(EABRW_piim/(EABRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAB_sx(-1);
RWEAC_sx = (1-RW_xix)*(EACRW_pimtilde/EACRW_pim)^(-RW_thetat)+RW_xix*(EACRW_piim/(EACRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAC_sx(-1);
RWUS_sx = (1-RW_xix)*(USRW_pimtilde/USRW_pim)^(-RW_thetat)+RW_xix*(USRW_piim/(USRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWUS_sx(-1);
// Price dispersion in the domestic markets
RW_snt = (1-RW_xin)*(RW_pnttilde/RW_pnt)^(-RW_thetan)+RW_xin*(RW_pint/(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
RW_qc = RW_c+RW_gammav;
// Aggregate investment and capital utilisation cost
RW_qi = RW_i+RW_k*RW_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using RW_pg = RW_pht and RW_qg = RW_g   
RW_py*RW_y = RW_qc+RW_pi*RW_qi+RW_pnt*RW_g
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im
-RWEAA_pim*RWEAA_imc
-RWEAA_pim*RWEAA_imi
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im
-RWEAB_pim*RWEAB_imc
-RWEAB_pim*RWEAB_imi
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im
-RWEAC_pim*RWEAC_imc
-RWEAC_pim*RWEAC_imi
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
RW_gy = (1-RW_rhog)*RW_gybar+RW_rhog*RW_gy(-1)+RW_epsg;
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
//-------------
// Household I
//-------------
// Utility
US_utili = 
US_zcon*log(US_ci-US_kappa*US_ci(-1))-1/(1+US_zeta)*(US_ni)^(1+US_zeta)+US_beta*US_utili(+1)
;
// Marginal utility of consumption
US_lambdai*(1+US_tauc+US_gammavi+US_vi*US_gammavider) = US_zcon*(US_ci-US_kappa*US_ci(-1))^(-US_sigma);
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
US_zcon*log(US_cj-US_kappa*US_cj(-1))-1/(1+US_zeta)*US_nj^(1+US_zeta)+US_beta*US_utilj(+1)
;
// Budget constraint
(1+US_tauc+US_gammavj)*US_cj+US_mj = (1-US_taun-US_tauwh)*US_wj*US_nj+US_trj-US_tj+US_mj(-1)*US_pic^(-1);
// Marginal utility of consumption
US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder) = US_zcon*(US_cj-US_kappa*US_cj(-1))^(-US_sigma);
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
US_yst = US_zt*US_kdt^US_alphat*US_ndt^(1-US_alphat)-US_psitbar;
// Production function nontradable
US_ysn = US_zn*US_kdn^US_alphan*US_ndn^(1-US_alphan)-US_psinbar;
// Real marginal cost tradable
US_mct = 1/(US_zt*(US_alphat)^(US_alphat)*(1-US_alphat)^(1-US_alphat))*US_rk^(US_alphat)*((1+US_tauwf)*US_w)^(1-US_alphat);
// Real marginal cost nontradable
US_mcn = 1/(US_zn*(US_alphan)^(US_alphan)*(1-US_alphan)^(1-US_alphan))*US_rk^(US_alphan)*((1+US_tauwf)*US_w)^(1-US_alphan);
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
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
;
// Effective real exchange rate: double weighting (imports)
USEAA_weightim = USEAA_rer*EAA_pex*USEAA_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAA_weightex = EAA_size/US_size*EAAUS_im/US_ex*USEAA_rer*EAA_py*EAA_y/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USRW_rer*RW_pex*EAARW_im
)+
+EAB_size/US_size*EABUS_im/US_ex*USEAA_rer*EAA_pex*EABEAA_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAA_rer*EAA_pex*EACEAA_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USRW_rer*RW_pex*EACRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAA_rer*EAA_pex*RWEAA_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
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
+USRW_rer*RW_pex*EABRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAB_rer*EAB_pex*EAAEAB_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USRW_rer*RW_pex*EAARW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAB_rer*EAB_pex*EACEAB_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USRW_rer*RW_pex*EACRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAB_rer*EAB_pex*RWEAB_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
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
+USRW_rer*RW_pex*EACRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAC_rer*EAC_pex*EAAEAC_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAC_rer*EAC_pex*EABEAC_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USRW_rer*RW_pex*EABRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAC_rer*EAC_pex*RWEAC_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAC_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAC_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAC_weightex;
// Effective real exchange rate: double weighting (imports)
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USRW_weightex = RW_size/US_size*RWUS_im/US_ex*USRW_rer*RW_py*RW_y/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USRW_rer*RW_pex*EAARW_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USRW_rer*RW_pex*EABRW_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USRW_rer*RW_pex*EACRW_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USRW_rer*RW_pex*EACRW_im
)
;
// Effective real exchange rate: double weighting (overall)
USRW_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USRW_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USRW_weightex;
// Effective real exchange rate
US_reer = 1
*USEAA_rer^USEAA_weight
*USEAB_rer^USEAB_weight
*USEAC_rer^USEAC_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USEAC_tot^USEAC_weight
*USRW_tot^USRW_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
US_imc^((US_mumc-1)/US_mumc) =
+USEAA_numc ^(1/US_mumc)*USEAA_imc^(1-1/US_mumc)
+USEAB_numc ^(1/US_mumc)*USEAB_imc^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*USRW_imc^(1-1/US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USRW_numc
)^(1/US_mumc)*USEAC_imc^(1-1/US_mumc);
// Demand for bilateral consumption import goods
USRW_imc = USRW_numc*(USRW_pim/US_pimc)^(-US_mumc)*US_imc;
USEAB_imc = USEAB_numc*(USEAB_pim/US_pimc)^(-US_mumc)*US_imc;
USEAC_imc = (1
-USEAA_numc
-USEAB_numc
-USRW_numc
)*(USEAC_pim/US_pimc)^(-US_mumc)*US_imc;
// Price of the consumption good (import)
US_pimc^(1-US_mumc) =
+USEAA_numc * USEAA_pim^(1-US_mumc)
+USEAB_numc * USEAB_pim^(1-US_mumc)
+USRW_numc * USRW_pim^(1-US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USRW_numc
)*USEAC_pim^(1-US_mumc);
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
+USRW_numi ^(1/US_mumi)*USRW_imi^(1-1/US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USRW_numi
)^(1/US_mumi)*USEAC_imi^(1-1/US_mumi);
// Demand for bilateral investment import goods
USRW_imi = USRW_numi*(USRW_pim/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral investment import goods
USEAB_imi = USEAB_numi*(USEAB_pim/US_pimi)^(-US_mumi)*US_imi;
USEAC_imi = (1
-USEAA_numi
-USEAB_numi
-USRW_numi
)*(USEAC_pim/US_pimi)^(-US_mumi)*US_imi;
// Price of the investment good (import)
US_pimi^(1-US_mumi) =
+USEAA_numi * USEAA_pim^(1-US_mumi)
+USEAB_numi * USEAB_pim^(1-US_mumi)
+USRW_numi * USRW_pim^(1-US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USRW_numi
)*USEAC_pim^(1-US_mumi);
// Private investment good (import) inflation
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
US_yst = US_sh*US_ht
+USEAA_sx*EAA_size/US_size*EAAUS_im
+USEAB_sx*EAB_size/US_size*EABUS_im
+USEAC_sx*EAC_size/US_size*EACUS_im
+USRW_sx*RW_size/US_size*RWUS_im
;
// Aggregate demand for bilateral imported intermediate goods
USEAA_im = USEAA_imi+USEAA_imc;
USEAB_im = USEAB_imi+USEAB_imc;
USEAC_im = USEAC_imi+USEAC_imc;
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
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
-USRW_pim*USRW_im
;
// Aggregate exports (volume)
US_ex =
+EAA_size/US_size*EAAUS_im
+EAB_size/US_size*EABUS_im
+EAC_size/US_size*EACUS_im
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
	US_pnt(-1)*US_g(-1)+US_tr(-1)
	+US_b(-1)*US_pic(-1)^(-1)+US_m(-2)*US_pic(-1)^(-1) = US_tauc(-1)*US_c(-1)+(US_taun(-1)+US_tauwh(-1))*(US_wi(-1)*US_ndi(-1)+US_wj(-1)*US_ndj(-1))+US_tauwf(-1)*US_w(-1)*US_nd(-1)+US_tauk(-1)*(US_rk(-1)*US_u(-1)-(US_gammau(-1)+US_delta)*US_pi(-1))*US_k(-1)+US_taud(-1)*US_d(-1)+US_t(-1)+(US_r(-1))^(-1)*US_b+US_m(-1);
// Government spending, using US_pg = US_pht
US_pnt*US_g = US_gy*US_pybar*US_ybar;
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
US_nt =  US_nti+US_ntc+US_g;
// Aggregate demand for domestic intermediate goods, using US_hg = US_g
US_ht = US_htc+US_hti;
// Price dispersion in the domestic markets
US_sh = (1-US_xih)*(US_phttilde/US_pht)^(-US_thetat)+US_xih*(US_piht/(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_sh(-1);
// Price dispersion in the foreign markets
USEAA_sx = (1-US_xix)*(EAAUS_pimtilde/EAAUS_pim)^(-US_thetat)+US_xix*(EAAUS_piim/(EAAUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAA_sx(-1);
USEAB_sx = (1-US_xix)*(EABUS_pimtilde/EABUS_pim)^(-US_thetat)+US_xix*(EABUS_piim/(EABUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAB_sx(-1);
USEAC_sx = (1-US_xix)*(EACUS_pimtilde/EACUS_pim)^(-US_thetat)+US_xix*(EACUS_piim/(EACUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAC_sx(-1);
USRW_sx = (1-US_xix)*(RWUS_pimtilde/RWUS_pim)^(-US_thetat)+US_xix*(RWUS_piim/(RWUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USRW_sx(-1);
// Price dispersion in the domestic markets
US_snt = (1-US_xin)*(US_pnttilde/US_pnt)^(-US_thetan)+US_xin*(US_pint/(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
US_qc = US_c+US_gammav;
// Aggregate investment and capital utilisation cost
US_qi = US_i+US_k*US_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using US_pg = US_pht and US_qg = US_g   
US_py*US_y = US_qc+US_pi*US_qi+US_pnt*US_g
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im
-USEAA_pim*USEAA_imc
-USEAA_pim*USEAA_imi
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im
-USEAB_pim*USEAB_imc
-USEAB_pim*USEAB_imi
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im
-USEAC_pim*USEAC_imc
-USEAC_pim*USEAC_imi
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
US_gy = (1-US_rhog)*US_gybar+US_rhog*US_gy(-1)+US_epsg;
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
-RW_size*RW_bf
;
// Net foreign asset position
	
		
			
				EAA_bf/US_r(-1) = -EAA_bh/EAC_r(-1)*EAAEAC_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAC_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1);
			
		
	
	
		
				EAB_bf/US_r(-1) = -EAB_bh/EAC_r(-1)*EABEAC_rer(-1)/EAB_rer(-1) + EAB_bh(-1)*EABEAC_rer(-2) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1);
				
		
	
	
			EAC_bf/US_r(-1) = -EAC_bh/EAA_r(-1) / EAC_rer(-1) + EAC_bh(-1) / EAC_rer(-2) + EAC_bf(-1) + EAC_tb(-1)/EAC_rer(-1);
		
	
		RW_bf/US_r(-1) = RW_bf(-1)+RW_tb(-1)/RW_rer(-1);
	
US_rer = 1;
EAAEAC_nerdep = EAA_rerdep/EAC_rerdep*EAA_pic/EAC_pic;
EABEAC_nerdep = EAB_rerdep/EAC_rerdep*EAB_pic/EAC_pic;
// Euler equation for euroarea traded bonds
EAA_gammabh = 0;
EAB_gammabh = 0;
// International transaction cost ('risk premium')
EAA_bh = (EAA_bhytarget*EAA_py*EAA_y)/EAAEAC_rer*EAC_pic;
EAB_bh = (EAB_bhytarget*EAB_py*EAB_y)/EABEAC_rer*EAC_pic;
EAC_size*EAC_bh+EAB_size*EAB_bh+EAA_size*EAA_bh = 0;
//-------------
// Euroarea-wide variables
//-------------
// GDP
EA_y = (EAA_size*EAA_pybar*EAA_y 	+ EAB_size*EAAEAB_rerbar*EAB_pybar *EAB_y	+ EAC_size*EAAEAC_rerbar*EAC_pybar *EAC_y	)/(EAA_size+EAB_size+EAC_size);
// GDP growth
EA_ygrowth= EA_y/EA_y(-1);
// GDP growth (yoy)
EA_ygrowth4= EA_y/EA_y(-4);
// Money
EA_m = (EAA_size*EAA_m + EAB_size*EAAEAB_rerbar*EAB_m + EAC_size*EAAEAC_rerbar*EAC_m)/(EAA_size+EAB_size+EAC_size);
EA_bf = (EAA_size*EAA_bf + EAB_size*EAB_bf + EAC_size*EAC_bf)/(EAA_size+EAB_size+EAC_size);
// Annual inflation
EA_pic4 = 
  EAA_pic4^(EAA_size/(EAA_size+EAB_size+EAC_size)) * EAB_pic4^(EAB_size/(EAA_size+EAB_size+EAC_size))* EAC_pic4^(EAC_size/(EAA_size+EAB_size+EAC_size));
// Productivity
log(EA_z) = (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;
// Auxiliary equation for steady-state output
EA_ybar = EA_y;
end;
load_params_and_steady_state('eagle_steady.txt');
