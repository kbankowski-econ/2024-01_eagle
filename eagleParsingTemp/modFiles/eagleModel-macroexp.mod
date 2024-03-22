// --+ options: stochastic, json=compute +--
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
    EA_epsr
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
        EAA_epsrp
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
        EAB_epsrp
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
        EAC_epsrp
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
        RW_epsr
        RW_epsrp
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
        US_epsr
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
var EAAEAB_nerdep;
var EAAEAC_nerdep;
var EAA_gammabh;
var EAB_gammabh;
var
 EAA_bh
 EAB_bh
 EAC_bh
;
// Flip some variables
model(block, bytecode, cutoff=0);
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
[name='EAA_utili']
EAA_utili = 
EAA_zcon*log(EAA_ci-EAA_kappa*EAA_ci(-1))-1/(1+EAA_zeta)*(EAA_ni)^(1+EAA_zeta)+EAA_beta*EAA_utili(+1)
;
// Marginal utility of consumption
[name='EAA_lambdai']
EAA_lambdai = (EAA_zcon*(EAA_ci-EAA_kappa*EAA_ci(-1))^(-EAA_sigma))/(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider);
// Euler equation for government bonds
[name='EAA_r']
EAA_r =( EAA_beta^(-1)*EAA_lambdai/EAA_lambdai(+1)*EAA_pic(+1))/(1-EAA_gammabh);
// Euler equation for money
[name='EAA_vi']
EAA_vi = ((1-EAA_beta*EAA_lambdai(+1)/(EAA_lambdai*EAA_pic(+1)))/EAA_gammavider)^(1/2);
// Consumption-based velocity
[name='EAA_mi']
EAA_mi = EAA_ci/EAA_vi;
// Transaction cost
[name='EAA_gammavi']
EAA_gammavi = EAA_gammav1*EAA_vi+EAA_gammav2/EAA_vi-2*(EAA_gammav1*EAA_gammav2)^(1/2);
// Derivative of transaction cost
[name='EAA_gammavider']
EAA_gammavider = EAA_gammav1-EAA_gammav2*EAA_vi^(-2);
// Capital accumulation
[name='EAA_ki']
EAA_ki = (1-EAA_delta)*EAA_ki(-1)+(1-EAA_gammai(-1))*EAA_ii(-1)*EAA_zinv;
// Investment adjustment cost
[name='EAA_gammai']
EAA_gammai = EAA_gammai1/2*(EAA_ii/EAA_ii(-1)-1)^2;
// Derivative of investment adjustment cost
[name='EAA_gammaider']
EAA_gammaider = EAA_gammai1*(EAA_ii/EAA_ii(-1)-1)/EAA_ii(-1);
// Capacity utilisation cost
[name='EAA_gammau']
EAA_gammau = ((EAA_beta^(-1)-1+EAA_delta)*EAA_qbar-EAA_delta*EAA_taukbar*EAA_pibar)/((1-EAA_taukbar)*EAA_pibar)*(EAA_u-1)+EAA_gammau2/2*(EAA_u-1)^2;
// Derivative of capacity utilisation cost
[name='EAA_gammauder']
EAA_gammauder = ((EAA_beta^(-1)-1+EAA_delta)*EAA_qbar-EAA_delta*EAA_taukbar*EAA_pibar)/((1-EAA_taukbar)*EAA_pibar)+EAA_gammau2*(EAA_u-1);
// Optimal capacity utilisation (FOC)
[name='EAA_rk']
EAA_rk = EAA_gammauder*EAA_pi;
// Tobin's Q
[name='EAA_pi']
EAA_pi = EAA_q*EAA_zinv*(1-EAA_gammai-EAA_gammaider*EAA_ii)+EAA_beta*EAA_lambdai(+1)/EAA_lambdai*EAA_q(+1)*EAA_zinv(+1)*EAA_gammaider(+1)*EAA_ii(+1)^2/EAA_ii;
// Auxiliary equation for Tobin's Q in steady state
// Rate of return on capital
[name='EAA_q']
EAA_q = EAA_beta*EAA_lambdai(+1)/EAA_lambdai*((1-EAA_tauk(+1))*(EAA_rk(+1)*EAA_u(+1)-EAA_gammau(+1)*EAA_pi(+1))+(EAA_tauk(+1)*EAA_delta)*EAA_pi(+1)+(1-EAA_delta)*EAA_q(+1));
// Optimal wage contract (FOC)
[name='EAA_witilde']
EAA_witilde = (EAA_etai/(EAA_etai-1)*EAA_fi/EAA_gi+EAA_wcst)^(1/(1+EAA_etai*EAA_zeta));
// Definition of fi
[name='EAA_fi']
EAA_fi = EAA_wi^(EAA_etai*(1+EAA_zeta))*EAA_ndi^(1+EAA_zeta)+EAA_xii*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai*(1+EAA_zeta))*EAA_fi(+1);
// Definition of gi
[name='EAA_gi']
EAA_gi = EAA_lambdai*(1-EAA_taun-EAA_tauwh)*EAA_wi^EAA_etai*EAA_ndi+EAA_xii*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai-1)*EAA_gi(+1);
// Aggregate wage rate
[name='EAA_wi']
EAA_wi = ((1-EAA_xii)*EAA_witilde^(1-EAA_etai)+EAA_xii*EAA_wi(-1)^(1-EAA_etai)*(EAA_pic(-1)^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))/EAA_pic)^(1-EAA_etai))^(1/(1-EAA_etai));
//-------------
// Household J
//-------------
// Utility
[name='EAA_utilj']
EAA_utilj = 
EAA_zcon*log(EAA_cj-EAA_kappa*EAA_cj(-1))-1/(1+EAA_zeta)*EAA_nj^(1+EAA_zeta)+EAA_beta*EAA_utilj(+1)
;
// Budget constraint
[name='EAA_mj']
EAA_mj = (1-EAA_taun-EAA_tauwh)*EAA_wj*EAA_nj+EAA_trj-EAA_tj+EAA_mj(-1)*EAA_pic^(-1) - (1+EAA_tauc+EAA_gammavj)*EAA_cj;
// Marginal utility of consumption
[name='EAA_cj']
EAA_cj = ((EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder))^(1/EAA_sigma))/EAA_zcon + EAA_kappa*EAA_cj(-1);
// Euler equation for money
[name='EAA_lambdaj']
EAA_lambdaj = EAA_beta*EAA_lambdaj(+1)/(1 - EAA_vj^(2)*EAA_gammavjder)/EAA_pic(+1);
// Consumption-based velocity
[name='EAA_vj']
EAA_vj = EAA_cj/EAA_mj;
// Transaction technology
[name='EAA_gammavj']
EAA_gammavj = EAA_gammav1*EAA_vj+EAA_gammav2/EAA_vj-2*(EAA_gammav1*EAA_gammav2)^(1/2);
// Derivative of transaction technology
[name='EAA_gammavjder']
EAA_gammavjder = EAA_gammav1-EAA_gammav2*EAA_vj^(-2);
// Optimal wage contract (FOC)
[name='EAA_wjtilde']
EAA_wjtilde = (EAA_etaj/(EAA_etaj-1)*EAA_fj/EAA_gj+EAA_wcst)^(1/(1+EAA_etaj*EAA_zeta));
// Definition of fj
[name='EAA_fj']
EAA_fj = EAA_wj^(EAA_etaj*(1+EAA_zeta))*EAA_ndj^(1+EAA_zeta)+EAA_xij*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj*(1+EAA_zeta))*EAA_fj(+1);
// Definition of gj
[name='EAA_gj']
EAA_gj = EAA_lambdaj*(1-EAA_taun-EAA_tauwh)*EAA_wj^EAA_etaj*EAA_ndj+EAA_xij*EAA_beta*(EAA_pic(+1)/(EAA_pic^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj-1)*EAA_gj(+1);
// Aggregate wage rate
[name='EAA_wj']
EAA_wj = ((1-EAA_xij)*EAA_wjtilde^(1-EAA_etaj)+EAA_xij*EAA_wj(-1)^(1-EAA_etaj)*(EAA_pic(-1)^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))/EAA_pic)^(1-EAA_etaj))^(1/(1-EAA_etaj));
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
[name='EAA_ndt'] 
EAA_ndt = ((EAA_yst + EAA_psitbar)/(EA_z*EAA_zt*EAA_kdt^EAA_alphat))^(1/(1-EAA_alphat));
// Production function nontradable
[name='EAA_ndn'] 
EAA_ndn = ((EAA_ysn+EAA_psinbar)/(EA_z*EAA_zn*EAA_kdn^EAA_alphan))^(1/(1-EAA_alphan));
// Real marginal cost tradable
[name='EAA_mct']
EAA_mct = 1/(EA_z*EAA_zt*(EAA_alphat)^(EAA_alphat)*(1-EAA_alphat)^(1-EAA_alphat))*EAA_rk^(EAA_alphat)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphat);
// Real marginal cost nontradable
[name='EAA_mcn']
EAA_mcn = 1/(EA_z*EAA_zn*(EAA_alphan)^(EAA_alphan)*(1-EAA_alphan)^(1-EAA_alphan))*EAA_rk^(EAA_alphan)*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphan);
// Wage Inflation (qoq)
[name='EAA_piw']
EAA_piw = EAA_w/EAA_w(-1)*EAA_pic;
// Wage Inflation (yoy)
[name='EAA_piw4']
EAA_piw4 = EAA_piw*EAA_piw(-1)*EAA_piw(-2)*EAA_piw(-3);
// Auxiliary equation for steady-state fixed cost
// Auxiliary equation for steady-state fixed cost
// Capital input (FOC)
[name='EAA_kdt']
EAA_kdt= EAA_alphat*(EAA_yst+EAA_psitbar)/(EAA_rk*EAA_mct) ;
// Capital input (FOC)
[name='EAA_kdn']
EAA_kdn = EAA_alphan*(EAA_ysn+EAA_psinbar)/(EAA_rk*EAA_mcn);
// Total capital demand
[name='EAA_kd']
EAA_kd = EAA_kdn + EAA_kdt;
// Demand for labour services by household I
[name='EAA_w']
EAA_w = 
(EAA_wi/(EAA_ndi/EAA_nd/(1-EAA_omega))^(1/(-EAA_eta)))
;
// Demand for labour services by household J
[name='EAA_ndj']
EAA_ndj = 
EAA_omega*(EAA_wj/EAA_w)^(-EAA_eta)*EAA_nd
;
// Aggregate labour demand
[name='EAA_ndi']
EAA_ndi =  
(((EAA_nd)^((EAA_eta-1)/EAA_eta)-EAA_omega^(1/EAA_eta)*EAA_ndj^(1-1/EAA_eta))/(1-EAA_omega)^(1/EAA_eta))^(1/(1-1/EAA_eta)) 
;
// Total demand 
[name='EAA_nd']
EAA_nd = EAA_ndt + EAA_ndn;
// Aggregate dividends
[name='EAA_d']
EAA_d = EAA_py*EAA_y-EAA_rk*EAA_kd-(1+EAA_tauwf)*EAA_w*EAA_nd;
// Non-tradable sector dividends
[name='EAA_dn']
EAA_dn = EAA_pnt*EAA_ysn-EAA_rk*EAA_kdn-(1+EAA_tauwf)*EAA_w*EAA_ndn;
// Tradable sector dividends
[name='EAA_dt']
EAA_dt = EAA_pht*EAA_ht
+EABEAA_pim*EAAEAB_rer*(EABEAA_imc+EABEAA_imi)*EAB_size/EAA_size
+EACEAA_pim*EAAEAC_rer*(EACEAA_imc+EACEAA_imi)*EAC_size/EAA_size
+RWEAA_pim*EAARW_rer*(RWEAA_imc+RWEAA_imi)*RW_size/EAA_size
+USEAA_pim*EAAUS_rer*(USEAA_imc+USEAA_imi)*US_size/EAA_size
-EAA_rk*EAA_kdt-(1+EAA_tauwf)*EAA_w*EAA_ndt;
// Optimal price contract set in domestic markets (FOC)
[name='EAA_phttilde']
EAA_phttilde= EAA_thetat/(EAA_thetat-1)*EAA_fh/EAA_gh*EAA_pht;
// Definition of fh
[name='EAA_fh']
EAA_fh = EAA_mct*EAA_ht+EAA_xih*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piht(+1)/(EAA_piht^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_fh(+1);
// Definition of gh
[name='EAA_gh']
EAA_gh = EAA_pht*EAA_ht+EAA_xih*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_piht(+1)/(EAA_piht^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^(EAA_thetat-1)*EAA_gh(+1);
// Aggregate intermediate-good price dynamics
[name='EAA_pht']
EAA_pht = ((1-EAA_xih)*EAA_phttilde^(1-EAA_thetat)+EAA_xih*(EAA_pht(-1)/EAA_pic)^(1-EAA_thetat)*(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat))^(1/(1-EAA_thetat));
// Intermediate-good price inflation
[name='EAA_piht']
EAA_piht = EAA_pht/EAA_pht(-1)*EAA_pic;
// Optimal price contract set in domestic markets (FOC)
[name='EAA_pnttilde']
EAA_pnttilde = EAA_thetan/(EAA_thetan-1)*EAA_fn/EAA_gn*EAA_pnt;
// Definition of fn
[name='EAA_fn']
EAA_fn = EAA_mcn*EAA_nt+EAA_xin*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_pint(+1)/(EAA_pint^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_fn(+1);
// Definition of gn
[name='EAA_gn']
EAA_gn = EAA_pnt*EAA_nt+EAA_xin*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAA_pint(+1)/(EAA_pint^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^(EAA_thetan-1)*EAA_gn(+1);
// Aggregate intermediate-good price dynamics
[name='EAA_pnt']
EAA_pnt = ((1-EAA_xin)*EAA_pnttilde^(1-EAA_thetan)+EAA_xin*(EAA_pnt(-1)/EAA_pic)^(1-EAA_thetan)*(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin)))^(1-EAA_thetan))^(1/(1-EAA_thetan));
// Intermediate-good price inflation
[name='EAA_pint']
EAA_pint = EAA_pnt/EAA_pnt(-1)*EAA_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAB_pimtilde
[name='EABEAA_pimtilde']
EABEAA_pimtilde = (EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAB_fx/EAAEAB_gx)*EABEAA_pim;
// Definition of fx
[name='EAAEAB_fx']
EAAEAB_fx = EAB_size/EAA_size*EABEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAB_fx(+1);
// Definition of gx   
[name='EAAEAB_gx']
EAAEAB_gx = EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EABEAA_piim(+1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAB_pim
[name='EABEAA_pim']
EABEAA_pim= ((1-EAA_xix)*EABEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EABEAA_pim(-1)/EAB_pic)^(1-EAA_thetat)*(EABEAA_piim(-1)^EAA_chix*EAB_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat))^(-1/(1-EAA_thetat)) ;
// Intermediate-good price inflation, using EAA_pix = EAB_piim
[name='EABEAA_piim']
EABEAA_piim = EABEAA_pim/EABEAA_pim(-1)*EAB_pic;
// Bilateral real exchange rate
[name='EAAEAB_rer']
EAAEAB_rer = EAA_rer/EAB_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EAAEAB_tot'] 
EAAEAB_tot = EAAEAB_pim/(EAAEAB_rer*EABEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAC_pimtilde
[name='EACEAA_pimtilde']
EACEAA_pimtilde = (EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAC_fx/EAAEAC_gx)*EACEAA_pim;
// Definition of fx
[name='EAAEAC_fx']
EAAEAC_fx = EAC_size/EAA_size*EACEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAC_fx(+1);
// Definition of gx   
[name='EAAEAC_gx']
EAAEAC_gx = EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EACEAA_piim(+1)/(EACEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAC_pim
[name='EACEAA_pim']
EACEAA_pim= ((1-EAA_xix)*EACEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EACEAA_pim(-1)/EAC_pic)^(1-EAA_thetat)*(EACEAA_piim(-1)^EAA_chix*EAC_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat))^(-1/(1-EAA_thetat)) ;
// Intermediate-good price inflation, using EAA_pix = EAC_piim
[name='EACEAA_piim']
EACEAA_piim = EACEAA_pim/EACEAA_pim(-1)*EAC_pic;
// Bilateral real exchange rate
[name='EAAEAC_rer']
EAAEAC_rer = EAA_rer/EAC_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EAAEAC_tot'] 
EAAEAC_tot = EAAEAC_pim/(EAAEAC_rer*EACEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = RW_pimtilde
[name='RWEAA_pimtilde']
RWEAA_pimtilde = (EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAARW_fx/EAARW_gx)*RWEAA_pim;
// Definition of fx
[name='EAARW_fx']
EAARW_fx = RW_size/EAA_size*RWEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAARW_fx(+1);
// Definition of gx   
[name='EAARW_gx']
EAARW_gx = EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(RWEAA_piim(+1)/(RWEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAARW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = RW_pim
[name='RWEAA_pim']
RWEAA_pim= ((1-EAA_xix)*RWEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(RWEAA_pim(-1)/RW_pic)^(1-EAA_thetat)*(RWEAA_piim(-1)^EAA_chix*RW_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat))^(-1/(1-EAA_thetat)) ;
// Intermediate-good price inflation, using EAA_pix = RW_piim
[name='RWEAA_piim']
RWEAA_piim = RWEAA_pim/RWEAA_pim(-1)*RW_pic;
// Bilateral real exchange rate
[name='EAARW_rer']
EAARW_rer = EAA_rer/RW_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EAARW_tot'] 
EAARW_tot = EAARW_pim/(EAARW_rer*RWEAA_pim);
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = US_pimtilde
[name='USEAA_pimtilde']
USEAA_pimtilde = (EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAUS_fx/EAAUS_gx)*USEAA_pim;
// Definition of fx
[name='EAAUS_fx']
EAAUS_fx = US_size/EAA_size*USEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAUS_fx(+1);
// Definition of gx   
[name='EAAUS_gx']
EAAUS_gx = EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(USEAA_piim(+1)/(USEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = US_pim
[name='USEAA_pim']
USEAA_pim= ((1-EAA_xix)*USEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(USEAA_pim(-1)/US_pic)^(1-EAA_thetat)*(USEAA_piim(-1)^EAA_chix*US_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat))^(-1/(1-EAA_thetat)) ;
// Intermediate-good price inflation, using EAA_pix = US_piim
[name='USEAA_piim']
USEAA_piim = USEAA_pim/USEAA_pim(-1)*US_pic;
// Bilateral real exchange rate
[name='EAAUS_rer']
EAAUS_rer = EAA_rer/US_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EAAUS_tot'] 
EAAUS_tot = EAAUS_pim/(EAAUS_rer*USEAA_pim);
// Total imports 
[name='EAA_im']
EAA_im = EAA_imc+EAA_imi;
// Total import deflator
[name='EAA_pim']
EAA_pim  = (EAA_pimc*EAA_imc+EAA_pimi*EAA_imi)/EAA_im;
// Total Export deflator 
[name='EAA_pex']
EAA_pex  = 
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im/EAA_ex
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im/EAA_ex
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im/EAA_ex
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im/EAA_ex
;
// Effective real exchange rate: double weighting (imports)
[name='EAAEAB_weightim']
EAAEAB_weightim = EAAEAB_rer*EAB_pex*EAAEAB_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
[name='EAAEAB_weightex']
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
[name='EAAEAB_weight']
EAAEAB_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAB_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EAAEAC_weightim']
EAAEAC_weightim = EAAEAC_rer*EAC_pex*EAAEAC_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
[name='EAAEAC_weightex']
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
[name='EAAEAC_weight']
EAAEAC_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAC_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EAARW_weightim']
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
[name='EAARW_weightex']
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
[name='EAARW_weight']
EAARW_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAARW_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAARW_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EAAUS_weightim']
EAAUS_weightim = EAAUS_rer*US_pex*EAAUS_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
[name='EAAUS_weightex']
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
[name='EAAUS_weight']
EAAUS_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAUS_weightex;
// Effective real exchange rate
[name='EAA_reer']
EAA_reer = 1
*EAAEAB_rer^EAAEAB_weight
*EAAEAC_rer^EAAEAC_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
[name='EAA_etot']
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAAEAC_tot^EAAEAC_weight
*EAARW_tot^EAARW_weight
*EAAUS_tot^EAAUS_weight
;
//-----------------
// Final-good firms
//-----------------
[name='EAA_imc'] 
// Private consumption good (import)
EAA_imc = (
+EAAEAB_numc ^(1/EAA_mumc)*((1-EAAEAB_gammaimc)*EAAEAB_imc)^(1-1/EAA_mumc)
+EAAEAC_numc ^(1/EAA_mumc)*((1-EAAEAC_gammaimc)*EAAEAC_imc)^(1-1/EAA_mumc)
+EAAUS_numc ^(1/EAA_mumc)*((1-EAAUS_gammaimc)*EAAUS_imc)^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAUS_numc
)^(1/EAA_mumc)*((1-EAARW_gammaimc)*EAARW_imc)^(1-1/EAA_mumc))^(EAA_mumc/(EAA_mumc-1));
// Demand for bilateral consumption import goods
[name='EAAUS_imc'] 
EAAUS_imc = EAAUS_numc*(EAAUS_pim/(EAAUS_gammaimcdag*EAA_pimc))^(-EAA_mumc)*EAA_imc/(1-EAAUS_gammaimc);
[name='EAARW_imc']
EAARW_imc = (1
-EAAEAB_numc
-EAAEAC_numc
-EAAUS_numc
)*(EAARW_pim/(EAARW_gammaimcdag*EAA_pimc))^(-EAA_mumc)*EAA_imc/(1-EAARW_gammaimc);
[name='EAAEAC_imc'] 
EAAEAC_imc = EAAEAC_numc*(EAAEAC_pim/(EAAEAC_gammaimcdag*EAA_pimc))^(-EAA_mumc)*EAA_imc/(1-EAAEAC_gammaimc);
// Price of the consumption good (import)
[name='EAA_pimc']
EAA_pimc = (
+EAAEAB_numc *(EAAEAB_pim/EAAEAB_gammaimcdag)^(1-EAA_mumc)
+EAAEAC_numc *(EAAEAC_pim/EAAEAC_gammaimcdag)^(1-EAA_mumc)
+EAAUS_numc *(EAAUS_pim/EAAUS_gammaimcdag)^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAUS_numc
)*(EAARW_pim/EAARW_gammaimcdag)^(1-EAA_mumc))^(1/(1-EAA_mumc));
// Private consumption good (import) inflation
[name='EAA_piimc']
EAA_piimc = EAA_pimc/EAA_pimc(-1)*EAA_pic;
// Private consumption good (import) inflation
[name='EAA_piimc4']
EAA_piimc4 = EAA_pimc/EAA_pimc(-4)*EAA_pic4;
// Private consumption good (import) inflation
[name='EAA_piex4'] 
EAA_piex4 = EAA_pex/EAA_pex(-4)*EAA_pic4;
[name='EAA_imi'] 
EAA_imi = (
+EAAEAB_numi ^(1/EAA_mumi)*((1-EAAEAB_gammaimi)*EAAEAB_imi)^(1-1/EAA_mumi)
+EAAEAC_numi ^(1/EAA_mumi)*((1-EAAEAC_gammaimi)*EAAEAC_imi)^(1-1/EAA_mumi)
+EAAUS_numi ^(1/EAA_mumi)*((1-EAAUS_gammaimi)*EAAUS_imi)^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)^(1/EAA_mumi)*((1-EAARW_gammaimi)*EAARW_imi)^(1-1/EAA_mumi))^(EAA_mumi/(EAA_mumi-1));
// Demand for bilateral investment import goods
[name='EAAUS_imi'] 
EAAUS_imi = EAAUS_numi*(EAAUS_pim/(EAAUS_gammaimidag*EAA_pimi))^(-EAA_mumi)*EAA_imi/(1-EAAUS_gammaimi);
[name='EAARW_imi']
EAARW_imi = (1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)*(EAARW_pim/(EAARW_gammaimidag*EAA_pimi))^(-EAA_mumi)*EAA_imi/(1-EAARW_gammaimi);
[name='EAAEAC_imi'] 
EAAEAC_imi = EAAEAC_numi*(EAAEAC_pim/(EAAEAC_gammaimidag*EAA_pimi))^(-EAA_mumi)*EAA_imi/(1-EAAEAC_gammaimi);
// Price of the investment good (import)
[name='EAA_pimi']
EAA_pimi = (
+EAAEAB_numi *(EAAEAB_pim/EAAEAB_gammaimidag)^(1-EAA_mumi)
+EAAEAC_numi *(EAAEAC_pim/EAAEAC_gammaimidag)^(1-EAA_mumi)
+EAAUS_numi *(EAAUS_pim/EAAUS_gammaimidag)^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAUS_numi
)*(EAARW_pim/EAARW_gammaimidag)^(1-EAA_mumi))^(1/(1-EAA_mumi));
// Private investment good (import) inflation
[name='EAA_piimi']
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
[name='EAA_yst']
EAA_yst = EAA_sh*EAA_ht
+EAAEAB_sx*EAB_size/EAA_size*EABEAA_im
+EAAEAC_sx*EAC_size/EAA_size*EACEAA_im
+EAARW_sx*RW_size/EAA_size*RWEAA_im
+EAAUS_sx*US_size/EAA_size*USEAA_im
;
// Aggregate demand for bilateral imported intermediate goods
[name='EAAEAB_im']
EAAEAB_im = EAAEAB_imi+EAAEAB_imc;
[name='EAAEAC_im']
EAAEAC_im = EAAEAC_imi+EAAEAC_imc;
[name='EAARW_im']
EAARW_im = EAARW_imi+EAARW_imc;
[name='EAAUS_im']
EAAUS_im = EAAUS_imi+EAAUS_imc;
// Private consumption good firm
// Private consumption good (tradable)
[name='EAA_ttc']
EAA_ttc = ((EAA_nutc)^(1/EAA_mutc)*EAA_htc^(1-1/EAA_mutc)+(1-EAA_nutc)^(1/EAA_mutc)*EAA_imc^(1-1/EAA_mutc))^(EAA_mutc/(EAA_mutc-1));
// Private consumption good  (total)
[name='EAA_qc']
EAA_qc = ((EAA_nuc)^(1/EAA_muc)*EAA_ttc^(1-1/EAA_muc)+(1-EAA_nuc)^(1/EAA_muc)*EAA_ntc^(1-1/EAA_muc))^(EAA_muc/(EAA_muc-1)) ;
// Demand for domestic intermediate goods - NONTRADABLE
[name='EAA_ntc']
EAA_ntc = (1-EAA_nuc)*(EAA_pnt)^(-EAA_muc)*EAA_qc;
// Price of the consumption good (tradable) 
[name='EAA_pttc'] 
EAA_pttc = ((EAA_nutc)*EAA_pht^(1-EAA_mutc)+(1-EAA_nutc)*EAA_pimc^(1-EAA_mutc))^(1/(1-EAA_mutc));
// Price of the consumption good 
1^(1-EAA_muc) = (EAA_nuc)*EAA_pttc^(1-EAA_muc)+(1-EAA_nuc)*EAA_pnt^(1-EAA_muc);
// Demand for domestic intermediate goods
[name='EAA_htc']
EAA_htc = EAA_nutc*(EAA_pht/EAA_pttc)^(-EAA_mutc)*EAA_ttc;
// Import adjustment cost
[name='EAAEAB_gammaimc']
EAAEAB_gammaimc = EAA_gammaimc1/2*((EAAEAB_imc/EAA_qc)/(EAAEAB_imc(-1)/EAA_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAEAB_gammaimcdag']
EAAEAB_gammaimcdag = 1-EAAEAB_gammaimc-EAA_gammaimc1*((EAAEAB_imc/EAA_qc)/(EAAEAB_imc(-1)/EAA_qc(-1))-1)*(EAAEAB_imc/EAA_qc)/(EAAEAB_imc(-1)/EAA_qc(-1));
// Import adjustment cost
[name='EAAEAC_gammaimc']
EAAEAC_gammaimc = EAA_gammaimc1/2*((EAAEAC_imc/EAA_qc)/(EAAEAC_imc(-1)/EAA_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAEAC_gammaimcdag']
EAAEAC_gammaimcdag = 1-EAAEAC_gammaimc-EAA_gammaimc1*((EAAEAC_imc/EAA_qc)/(EAAEAC_imc(-1)/EAA_qc(-1))-1)*(EAAEAC_imc/EAA_qc)/(EAAEAC_imc(-1)/EAA_qc(-1));
// Import adjustment cost
[name='EAARW_gammaimc']
EAARW_gammaimc = EAA_gammaimc1/2*((EAARW_imc/EAA_qc)/(EAARW_imc(-1)/EAA_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAARW_gammaimcdag']
EAARW_gammaimcdag = 1-EAARW_gammaimc-EAA_gammaimc1*((EAARW_imc/EAA_qc)/(EAARW_imc(-1)/EAA_qc(-1))-1)*(EAARW_imc/EAA_qc)/(EAARW_imc(-1)/EAA_qc(-1));
// Import adjustment cost
[name='EAAUS_gammaimc']
EAAUS_gammaimc = EAA_gammaimc1/2*((EAAUS_imc/EAA_qc)/(EAAUS_imc(-1)/EAA_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAUS_gammaimcdag']
EAAUS_gammaimcdag = 1-EAAUS_gammaimc-EAA_gammaimc1*((EAAUS_imc/EAA_qc)/(EAAUS_imc(-1)/EAA_qc(-1))-1)*(EAAUS_imc/EAA_qc)/(EAAUS_imc(-1)/EAA_qc(-1));
// Private investment good firm
// Private investment good
[name='EAA_tti']
EAA_tti = ((EAA_nuti)^(1/EAA_muti)*EAA_hti^(1-1/EAA_muti)+(1-EAA_nuti)^(1/EAA_muti)*EAA_imi^(1-1/EAA_muti))^(EAA_muti/(EAA_muti-1));
// Private investment good
[name='EAA_qi']
EAA_qi = ((EAA_nui)^(1/EAA_mui)*EAA_tti^(1-1/EAA_mui)+(1-EAA_nui)^(1/EAA_mui)*EAA_nti^(1-1/EAA_mui))^(EAA_mui/(EAA_mui-1));
// Demand for domestic intermediate goods
[name='EAA_nti']
EAA_nti = (1-EAA_nui)*(EAA_pnt/EAA_pi)^(-EAA_mui)*EAA_qi;
// Price of the investment good (TRADABLE) 
[name='EAA_ptti'] 
EAA_ptti= ((EAA_nuti)*EAA_pht^(1-EAA_muti)+(1-EAA_nuti)*EAA_pimi^(1-EAA_muti))^(1/(EAA_muti-1)) ;
// Price of the investment good
EAA_pi = ((EAA_nui)*EAA_ptti^(1-EAA_mui)+(1-EAA_nui)*(EAA_pnt)^(1-EAA_mui))^(1/(1-EAA_mui));
// Auxiliary equation for the price of the investment good in steady state
// Demand for domestic intermediate goods
[name='EAA_hti']
EAA_hti = EAA_nuti*(EAA_pht/EAA_ptti)^(-EAA_muti)*EAA_tti;
// Import adjustment cost
[name='EAAEAB_gammaimi']
EAAEAB_gammaimi = EAA_gammaimi1/2*((EAAEAB_imi/EAA_qi)/(EAAEAB_imi(-1)/EAA_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAEAB_gammaimidag']
EAAEAB_gammaimidag = 1-EAAEAB_gammaimi-EAA_gammaimi1*((EAAEAB_imi/EAA_qi)/(EAAEAB_imi(-1)/EAA_qi)-1)*((EAAEAB_imi/EAA_qi)/(EAAEAB_imi(-1)/EAA_qi(-1)));
// Import adjustment cost
[name='EAAEAC_gammaimi']
EAAEAC_gammaimi = EAA_gammaimi1/2*((EAAEAC_imi/EAA_qi)/(EAAEAC_imi(-1)/EAA_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAEAC_gammaimidag']
EAAEAC_gammaimidag = 1-EAAEAC_gammaimi-EAA_gammaimi1*((EAAEAC_imi/EAA_qi)/(EAAEAC_imi(-1)/EAA_qi)-1)*((EAAEAC_imi/EAA_qi)/(EAAEAC_imi(-1)/EAA_qi(-1)));
// Import adjustment cost
[name='EAARW_gammaimi']
EAARW_gammaimi = EAA_gammaimi1/2*((EAARW_imi/EAA_qi)/(EAARW_imi(-1)/EAA_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAARW_gammaimidag']
EAARW_gammaimidag = 1-EAARW_gammaimi-EAA_gammaimi1*((EAARW_imi/EAA_qi)/(EAARW_imi(-1)/EAA_qi)-1)*((EAARW_imi/EAA_qi)/(EAARW_imi(-1)/EAA_qi(-1)));
// Import adjustment cost
[name='EAAUS_gammaimi']
EAAUS_gammaimi = EAA_gammaimi1/2*((EAAUS_imi/EAA_qi)/(EAAUS_imi(-1)/EAA_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EAAUS_gammaimidag']
EAAUS_gammaimidag = 1-EAAUS_gammaimi-EAA_gammaimi1*((EAAUS_imi/EAA_qi)/(EAAUS_imi(-1)/EAA_qi)-1)*((EAAUS_imi/EAA_qi)/(EAAUS_imi(-1)/EAA_qi(-1)));
// Trade balance
[name='EAA_tb']
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
[name='EAA_ex']
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
[name='EAA_b']
	 EAA_b = (-1)* (1/(EAA_r(-1)*(1-EAA_gammab(-1)))^(-1)) * ( - EAA_pnt(-1)*EAA_g(-1) - EAA_tr(-1)
	- EAA_b(-1)*EAA_pic(-1)^(-1) - EAA_m(-2)*EAA_pic(-1)^(-1) + EAA_tauc(-1)*EAA_c(-1)+(EAA_taun(-1)+EAA_tauwh(-1))*(EAA_wi(-1)*EAA_ndi(-1)+EAA_wj(-1)*EAA_ndj(-1))+EAA_tauwf(-1)*EAA_w(-1)*EAA_nd(-1)+EAA_tauk(-1)*(EAA_rk(-1)*EAA_u(-1)-(EAA_gammau(-1)+EAA_delta)*EAA_pi(-1))*EAA_k(-1)+EAA_taud(-1)*EAA_d(-1)+EAA_t(-1)+EAA_m(-1));
// Government spending, using EAA_pg = EAA_pht
[name='EAA_g']
EAA_g = EAA_gy*EAA_pybar*EAA_ybar/EAA_pnt;
// Transfers
[name='EAA_tr']
EAA_tr = EAA_try*EAA_pybar*EAA_ybar;
// Fiscal rule
[name='EAA_t']
EAA_t = (EAA_phitb*(EAA_b/(EAA_pybar*EAA_ybar)-EAA_bytarget))*(EAA_pybar*EAA_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
[name='EAA_ti']
EAA_ti = EAA_upsilont*EAA_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
[name='EAA_tri']
EAA_tri = EAA_upsilontr*EAA_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
// Monetary policy rule
	
			EAA_rerdep/EAB_rerdep*EAA_pic/EAB_pic-1=0;
		
	
// Definition of annual inflation
EAA_pic4 = EAA_pic*EAA_pic(-1)*EAA_pic(-2)*EAA_pic(-3);
// Real interest rate
EAA_rr-1 = EAA_r/EAA_pic(+1)-1;
// Equilibrium real interest rate
[name='EAA_rrstar']
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
[name='EAA_ci']
EAA_ci = (EAA_c-EAA_omega*EAA_cj )/(1-EAA_omega);
// Aggregate money holdings
[name='EAA_m']
EAA_m = (1-EAA_omega)*EAA_mi+EAA_omega*EAA_mj;
// Aggregate capital stock
[name='EAA_k']
EAA_k = (1-EAA_omega)*EAA_ki;
// Aggregate investment
[name='EAA_ii']
EAA_ii = EAA_i/(1-EAA_omega);
// Aggregate lump-sum transfers
[name='EAA_trj']
EAA_trj = 
1/EAA_omega*EAA_tr-(1-EAA_omega)/EAA_omega*EAA_tri
;
// Aggregate lump-sum taxes
[name='EAA_tj']
EAA_tj = 
1/EAA_omega*EAA_t-(1-EAA_omega)/EAA_omega*EAA_ti
;
// Aggregate transaction costs
[name='EAA_gammav']
EAA_gammav = (1-EAA_omega)*EAA_ci*EAA_gammavi+EAA_omega*EAA_cj*EAA_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
[name='EAA_ni']
EAA_ni = EAA_si*EAA_ndi;
// Wage dispersion
[name='EAA_si']
EAA_si = (1-EAA_xii)*(EAA_witilde/EAA_wi)^(-EAA_etai)+EAA_xii*(EAA_wi(-1)/EAA_wi)^(-EAA_etai)*(EAA_pic/(EAA_pic(-1)^EAA_chii*EAA_pi4target^(1/4*(1-EAA_chii))))^(EAA_etai)*EAA_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
[name='EAA_nj']
EAA_nj = EAA_sj*EAA_ndj;
// Wage dispersion
[name='EAA_sj']
EAA_sj = (1-EAA_xij)*(EAA_wjtilde/EAA_wj)^(-EAA_etaj)+EAA_xij*(EAA_wj(-1)/EAA_wj)^(-EAA_etaj)*(EAA_pic/(EAA_pic(-1)^EAA_chij*EAA_pi4target^(1/4*(1-EAA_chij))))^(EAA_etaj)*EAA_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
[name='EAA_u']
EAA_u = EAA_kd/EAA_k;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAA_x = EAB_size/EAA_size*EAB_im
[name='EAA_ysn']
EAA_ysn = EAA_snt*EAA_nt;
//  nontradables aggregate demand
[name='EAA_nt']
EAA_nt =  EAA_nti+EAA_ntc+EAA_g;
// Aggregate demand for domestic intermediate goods, using EAA_hg = EAA_g
[name='EAA_ht']
EAA_ht = EAA_htc+EAA_hti;
// Price dispersion in the domestic markets
[name='EAA_sh']
EAA_sh = (1-EAA_xih)*(EAA_phttilde/EAA_pht)^(-EAA_thetat)+EAA_xih*(EAA_piht/(EAA_piht(-1)^EAA_chih*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAA_sh(-1);
// Price dispersion in the foreign markets
[name='EAAEAB_sx']
EAAEAB_sx = (1-EAA_xix)*(EABEAA_pimtilde/EABEAA_pim)^(-EAA_thetat)+EAA_xix*(EABEAA_piim/(EABEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAB_sx(-1);
[name='EAAEAC_sx']
EAAEAC_sx = (1-EAA_xix)*(EACEAA_pimtilde/EACEAA_pim)^(-EAA_thetat)+EAA_xix*(EACEAA_piim/(EACEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAEAC_sx(-1);
[name='EAARW_sx']
EAARW_sx = (1-EAA_xix)*(RWEAA_pimtilde/RWEAA_pim)^(-EAA_thetat)+EAA_xix*(RWEAA_piim/(RWEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAARW_sx(-1);
[name='EAAUS_sx']
EAAUS_sx = (1-EAA_xix)*(USEAA_pimtilde/USEAA_pim)^(-EAA_thetat)+EAA_xix*(USEAA_piim/(USEAA_piim(-1)^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chih))))^EAA_thetat*EAAUS_sx(-1);
// Price dispersion in the domestic markets
[name='EAA_snt']
EAA_snt = (1-EAA_xin)*(EAA_pnttilde/EAA_pnt)^(-EAA_thetan)+EAA_xin*(EAA_pint/(EAA_pint(-1)^EAA_chin*EAA_pi4target^(1/4*(1-EAA_chin))))^EAA_thetan*EAA_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
[name='EAA_c']
EAA_c = EAA_qc - EAA_gammav ;
// Aggregate investment and capital utilisation cost
[name='EAA_i']
EAA_i = EAA_qi - EAA_k*EAA_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAA_pg = EAA_pht and EAA_qg = EAA_g   
[name='EAA_py']
EAA_py = (1/EAA_y) * ( EAA_qc+EAA_pi*EAA_qi+EAA_pnt*EAA_g
+EAAEAB_rer*EABEAA_pim*EAB_size/EAA_size*EABEAA_im
-EAAEAB_pim*(EAAEAB_imc*(1-EAAEAB_gammaimc)/EAAEAB_gammaimcdag)
-EAAEAB_pim*(EAAEAB_imi*(1-EAAEAB_gammaimi)/EAAEAB_gammaimidag)
+EAAEAC_rer*EACEAA_pim*EAC_size/EAA_size*EACEAA_im
-EAAEAC_pim*(EAAEAC_imc*(1-EAAEAC_gammaimc)/EAAEAC_gammaimcdag)
-EAAEAC_pim*(EAAEAC_imi*(1-EAAEAC_gammaimi)/EAAEAC_gammaimidag)
+EAARW_rer*RWEAA_pim*RW_size/EAA_size*RWEAA_im
-EAARW_pim*(EAARW_imc*(1-EAARW_gammaimc)/EAARW_gammaimcdag)
-EAARW_pim*(EAARW_imi*(1-EAARW_gammaimi)/EAARW_gammaimidag)
+EAAUS_rer*USEAA_pim*US_size/EAA_size*USEAA_im
-EAAUS_pim*(EAAUS_imc*(1-EAAUS_gammaimc)/EAAUS_gammaimcdag)
-EAAUS_pim*(EAAUS_imi*(1-EAAUS_gammaimi)/EAAUS_gammaimidag)
);
// Aggregate real demand
[name='EAA_y']
EAA_y = EAA_yst+EAA_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
[name='EAA_zt']
log(EAA_zt) = (1-EAA_rhozt)*log(EAA_ztbar)+EAA_rhozt*log(EAA_zt(-1))+EAA_epszt;
[name='EAA_zn']
log(EAA_zn) = (1-EAA_rhozn)*log(EAA_znbar)+EAA_rhozn*log(EAA_zn(-1))+EAA_epszn;
// Government spending shock
[name='EAA_gy']
EAA_gy = (1-EAA_rhog)*EAA_gybar+EAA_rhog*EAA_gy(-1)+EAA_epsg;
// Transfer shock
[name='EAA_try']
EAA_try = (1-EAA_rhotr)*EAA_trybar+EAA_rhotr*EAA_try(-1)+EAA_epstr;
// Consumption tax shock
[name='EAA_tauc']
EAA_tauc = (1-EAA_rhotauc)*EAA_taucbar+EAA_rhotauc*EAA_tauc(-1)+EAA_epstauc;
// Dividend income tax shock
[name='EAA_taud']
EAA_taud = (1-EAA_rhotaud)*EAA_taudbar+EAA_rhotaud*EAA_taud(-1)+EAA_epstaud;
// Capital income tax shock
[name='EAA_tauk']
EAA_tauk = (1-EAA_rhotauk)*EAA_taukbar+EAA_rhotauk*EAA_tauk(-1)+EAA_epstauk;
// Labour income tax shock
[name='EAA_taun']
EAA_taun = (1-EAA_rhotaun)*EAA_taunbar+EAA_rhotaun*EAA_taun(-1)+EAA_epstaun;
// Payroll tax shock: households
[name='EAA_tauwh']
EAA_tauwh = (1-EAA_rhotauwh)*EAA_tauwhbar+EAA_rhotauwh*EAA_tauwh(-1)+EAA_epstauwh;
// Payroll tax shock: firms
[name='EAA_tauwf']
EAA_tauwf = (1-EAA_rhotauwf)*EAA_tauwfbar+EAA_rhotauwf*EAA_tauwf(-1)+EAA_epstauwf;
// Wage cost push shock
[name='EAA_wcst']
EAA_wcst = (1-EAA_rhowcst)*EAA_wcstbar+EAA_rhowcst*EAA_wcst(-1)+EAA_epswcst;
// Preference shock
[name='EAA_zcon']
log(EAA_zcon) = (1-EAA_rhozcon)*log(EAA_zconbar)+EAA_rhozcon*log(EAA_zcon(-1))+EAA_epszcon;
// Investment specific shock
[name='EAA_zinv']
log(EAA_zinv) = (1-EAA_rhozinv)*log(EAA_zinvbar)+EAA_rhozinv*log(EAA_zinv(-1))+EAA_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
[name='EAA_cy']
EAA_cy = EAA_c/(EAA_py*EAA_y);
// Aggregate nominal investment share
[name='EAA_iy']
EAA_iy = EAA_pi*EAA_i/(EAA_py*EAA_y);
// Aggregate nominal import share  
[name='EAA_imy']
EAA_imy = (EAA_pimc*EAA_imc+EAA_pimi*EAA_imi)/(EAA_py*EAA_y);
// Aggregate nominal import share for consumption goods 
[name='EAA_imcy']
EAA_imcy = EAA_pimc*EAA_imc/(EAA_py*EAA_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
[name='EAA_imiy']
EAA_imiy = EAA_pimi*EAA_imi/(EAA_py*EAA_y);
// Aggregate debt-to-output ratio
[name='EAA_by']
EAA_by = EAA_b/(EAA_pybar*EAA_ybar);
// Aggregate lump-sum tax-to-output ratio
[name='EAA_ty']
EAA_ty = EAA_t/(EAA_pybar*EAA_ybar);
// Aggregate labour cost share
[name='EAA_lcy']
EAA_lcy = ((1+EAA_tauwf)*EAA_w*EAA_nd)/(EAA_py*EAA_y);
// Aggregate nominal Wage share
[name='EAA_wy']
EAA_wy = (EAA_w*EAA_nd)/(EAA_py*EAA_y);
// NT sector nominal Wage share
[name='EAA_wnty']
EAA_wnty = (EAA_w*EAA_ndn)/(EAA_pnt*EAA_ysn);
// T sector nominal Wage share
[name='EAA_whty']
EAA_whty = (EAA_w*EAA_ndt)/(EAA_pht*EAA_yst);
// T sector share
[name='EAA_yhty']
EAA_yhty = EAA_pht*EAA_yst/(EAA_py*EAA_y);
// NT sector share
[name='EAA_ynty']
EAA_ynty = EAA_pnt*EAA_ysn/(EAA_py*EAA_y);
// Output gap
[name='EAA_ygap']
EAA_ygap = EAA_y/EAA_ybar-1;
// Output growth (gross rate)
[name='EAA_ygrowth']
EAA_ygrowth = EAA_y/EAA_y(-1);
// Output growth (gross rate yoy)
[name='EAA_ygrowth4']
EAA_ygrowth4 = EAA_y/EAA_y(-4);
// Domestic nominal output as a share of world nominal output
[name='EAA_yshare']
EAA_yshare  = EAA_size*EAA_py*EAA_y/EAA_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
[name='EAA_epsilonm'] 
EAA_epsilonm = -1/8*1/(EAA_r*(EAA_gammav2*EAA_r+EAA_r-1));
// Trade balance-to-GDP ratio
[name='EAA_tby'] 
EAA_tby = EAA_tb/(EAA_py*EAA_y);
// Imports of consumption goods
[name='EAAEAB_imcy'] 
EAAEAB_imcy  = EAAEAB_pim*EAAEAB_imc/(EAA_py*EAA_y);
// Imports of investment goods
[name='EAAEAB_imiy'] 
EAAEAB_imiy = EAAEAB_pim*EAAEAB_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
[name='EAAEAB_excy']
EAAEAB_excy  = EAB_size/EAA_size*EAAEAB_rer*EABEAA_pim*EABEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
[name='EAAEAB_exiy'] 
EAAEAB_exiy  = EAB_size/EAA_size*EAAEAB_rer*EABEAA_pim*EABEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods
[name='EAAEAC_imcy'] 
EAAEAC_imcy  = EAAEAC_pim*EAAEAC_imc/(EAA_py*EAA_y);
// Imports of investment goods
[name='EAAEAC_imiy'] 
EAAEAC_imiy = EAAEAC_pim*EAAEAC_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
[name='EAAEAC_excy']
EAAEAC_excy  = EAC_size/EAA_size*EAAEAC_rer*EACEAA_pim*EACEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
[name='EAAEAC_exiy'] 
EAAEAC_exiy  = EAC_size/EAA_size*EAAEAC_rer*EACEAA_pim*EACEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods
[name='EAARW_imcy'] 
EAARW_imcy  = EAARW_pim*EAARW_imc/(EAA_py*EAA_y);
// Imports of investment goods
[name='EAARW_imiy'] 
EAARW_imiy = EAARW_pim*EAARW_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
[name='EAARW_excy']
EAARW_excy  = RW_size/EAA_size*EAARW_rer*RWEAA_pim*RWEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
[name='EAARW_exiy'] 
EAARW_exiy  = RW_size/EAA_size*EAARW_rer*RWEAA_pim*RWEAA_imi/(EAA_py*EAA_y);
// Imports of consumption goods
[name='EAAUS_imcy'] 
EAAUS_imcy  = EAAUS_pim*EAAUS_imc/(EAA_py*EAA_y);
// Imports of investment goods
[name='EAAUS_imiy'] 
EAAUS_imiy = EAAUS_pim*EAAUS_imi/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
[name='EAAUS_excy']
EAAUS_excy  = US_size/EAA_size*EAAUS_rer*USEAA_pim*USEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
[name='EAAUS_exiy'] 
EAAUS_exiy  = US_size/EAA_size*EAAUS_rer*USEAA_pim*USEAA_imi/(EAA_py*EAA_y);
// Internal real exchange rate
[name='EAA_internalrer'] 
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
[name='EAB_utili']
EAB_utili = 
EAB_zcon*log(EAB_ci-EAB_kappa*EAB_ci(-1))-1/(1+EAB_zeta)*(EAB_ni)^(1+EAB_zeta)+EAB_beta*EAB_utili(+1)
;
// Marginal utility of consumption
[name='EAB_lambdai']
EAB_lambdai = (EAB_zcon*(EAB_ci-EAB_kappa*EAB_ci(-1))^(-EAB_sigma))/(1+EAB_tauc+EAB_gammavi+EAB_vi*EAB_gammavider);
// Euler equation for government bonds
[name='EAB_r']
EAB_r = EAB_beta^(-1)*EAB_lambdai/EAB_lambdai(+1)*EAB_pic(+1);
// Euler equation for money
[name='EAB_vi']
EAB_vi = ((1-EAB_beta*EAB_lambdai(+1)/(EAB_lambdai*EAB_pic(+1)))/EAB_gammavider)^(1/2);
// Consumption-based velocity
[name='EAB_mi']
EAB_mi = EAB_ci/EAB_vi;
// Transaction cost
[name='EAB_gammavi']
EAB_gammavi = EAB_gammav1*EAB_vi+EAB_gammav2/EAB_vi-2*(EAB_gammav1*EAB_gammav2)^(1/2);
// Derivative of transaction cost
[name='EAB_gammavider']
EAB_gammavider = EAB_gammav1-EAB_gammav2*EAB_vi^(-2);
// Capital accumulation
[name='EAB_ki']
EAB_ki = (1-EAB_delta)*EAB_ki(-1)+(1-EAB_gammai(-1))*EAB_ii(-1)*EAB_zinv;
// Investment adjustment cost
[name='EAB_gammai']
EAB_gammai = EAB_gammai1/2*(EAB_ii/EAB_ii(-1)-1)^2;
// Derivative of investment adjustment cost
[name='EAB_gammaider']
EAB_gammaider = EAB_gammai1*(EAB_ii/EAB_ii(-1)-1)/EAB_ii(-1);
// Capacity utilisation cost
[name='EAB_gammau']
EAB_gammau = ((EAB_beta^(-1)-1+EAB_delta)*EAB_qbar-EAB_delta*EAB_taukbar*EAB_pibar)/((1-EAB_taukbar)*EAB_pibar)*(EAB_u-1)+EAB_gammau2/2*(EAB_u-1)^2;
// Derivative of capacity utilisation cost
[name='EAB_gammauder']
EAB_gammauder = ((EAB_beta^(-1)-1+EAB_delta)*EAB_qbar-EAB_delta*EAB_taukbar*EAB_pibar)/((1-EAB_taukbar)*EAB_pibar)+EAB_gammau2*(EAB_u-1);
// Optimal capacity utilisation (FOC)
[name='EAB_rk']
EAB_rk = EAB_gammauder*EAB_pi;
// Tobin's Q
[name='EAB_pi']
EAB_pi = EAB_q*EAB_zinv*(1-EAB_gammai-EAB_gammaider*EAB_ii)+EAB_beta*EAB_lambdai(+1)/EAB_lambdai*EAB_q(+1)*EAB_zinv(+1)*EAB_gammaider(+1)*EAB_ii(+1)^2/EAB_ii;
// Auxiliary equation for Tobin's Q in steady state
// Rate of return on capital
[name='EAB_q']
EAB_q = EAB_beta*EAB_lambdai(+1)/EAB_lambdai*((1-EAB_tauk(+1))*(EAB_rk(+1)*EAB_u(+1)-EAB_gammau(+1)*EAB_pi(+1))+(EAB_tauk(+1)*EAB_delta)*EAB_pi(+1)+(1-EAB_delta)*EAB_q(+1));
// Optimal wage contract (FOC)
[name='EAB_witilde']
EAB_witilde = (EAB_etai/(EAB_etai-1)*EAB_fi/EAB_gi+EAB_wcst)^(1/(1+EAB_etai*EAB_zeta));
// Definition of fi
[name='EAB_fi']
EAB_fi = EAB_wi^(EAB_etai*(1+EAB_zeta))*EAB_ndi^(1+EAB_zeta)+EAB_xii*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai*(1+EAB_zeta))*EAB_fi(+1);
// Definition of gi
[name='EAB_gi']
EAB_gi = EAB_lambdai*(1-EAB_taun-EAB_tauwh)*EAB_wi^EAB_etai*EAB_ndi+EAB_xii*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai-1)*EAB_gi(+1);
// Aggregate wage rate
[name='EAB_wi']
EAB_wi = ((1-EAB_xii)*EAB_witilde^(1-EAB_etai)+EAB_xii*EAB_wi(-1)^(1-EAB_etai)*(EAB_pic(-1)^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))/EAB_pic)^(1-EAB_etai))^(1/(1-EAB_etai));
//-------------
// Household J
//-------------
// Utility
[name='EAB_utilj']
EAB_utilj = 
EAB_zcon*log(EAB_cj-EAB_kappa*EAB_cj(-1))-1/(1+EAB_zeta)*EAB_nj^(1+EAB_zeta)+EAB_beta*EAB_utilj(+1)
;
// Budget constraint
[name='EAB_mj']
EAB_mj = (1-EAB_taun-EAB_tauwh)*EAB_wj*EAB_nj+EAB_trj-EAB_tj+EAB_mj(-1)*EAB_pic^(-1) - (1+EAB_tauc+EAB_gammavj)*EAB_cj;
// Marginal utility of consumption
[name='EAB_cj']
EAB_cj = ((EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder))^(1/EAB_sigma))/EAB_zcon + EAB_kappa*EAB_cj(-1);
// Euler equation for money
[name='EAB_lambdaj']
EAB_lambdaj = EAB_beta*EAB_lambdaj(+1)/(1 - EAB_vj^(2)*EAB_gammavjder)/EAB_pic(+1);
// Consumption-based velocity
[name='EAB_vj']
EAB_vj = EAB_cj/EAB_mj;
// Transaction technology
[name='EAB_gammavj']
EAB_gammavj = EAB_gammav1*EAB_vj+EAB_gammav2/EAB_vj-2*(EAB_gammav1*EAB_gammav2)^(1/2);
// Derivative of transaction technology
[name='EAB_gammavjder']
EAB_gammavjder = EAB_gammav1-EAB_gammav2*EAB_vj^(-2);
// Optimal wage contract (FOC)
[name='EAB_wjtilde']
EAB_wjtilde = (EAB_etaj/(EAB_etaj-1)*EAB_fj/EAB_gj+EAB_wcst)^(1/(1+EAB_etaj*EAB_zeta));
// Definition of fj
[name='EAB_fj']
EAB_fj = EAB_wj^(EAB_etaj*(1+EAB_zeta))*EAB_ndj^(1+EAB_zeta)+EAB_xij*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj*(1+EAB_zeta))*EAB_fj(+1);
// Definition of gj
[name='EAB_gj']
EAB_gj = EAB_lambdaj*(1-EAB_taun-EAB_tauwh)*EAB_wj^EAB_etaj*EAB_ndj+EAB_xij*EAB_beta*(EAB_pic(+1)/(EAB_pic^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj-1)*EAB_gj(+1);
// Aggregate wage rate
[name='EAB_wj']
EAB_wj = ((1-EAB_xij)*EAB_wjtilde^(1-EAB_etaj)+EAB_xij*EAB_wj(-1)^(1-EAB_etaj)*(EAB_pic(-1)^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))/EAB_pic)^(1-EAB_etaj))^(1/(1-EAB_etaj));
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
[name='EAB_ndt'] 
EAB_ndt = ((EAB_yst + EAB_psitbar)/(EA_z*EAB_zt*EAB_kdt^EAB_alphat))^(1/(1-EAB_alphat));
// Production function nontradable
[name='EAB_ndn'] 
EAB_ndn = ((EAB_ysn+EAB_psinbar)/(EA_z*EAB_zn*EAB_kdn^EAB_alphan))^(1/(1-EAB_alphan));
// Real marginal cost tradable
[name='EAB_mct']
EAB_mct = 1/(EA_z*EAB_zt*(EAB_alphat)^(EAB_alphat)*(1-EAB_alphat)^(1-EAB_alphat))*EAB_rk^(EAB_alphat)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphat);
// Real marginal cost nontradable
[name='EAB_mcn']
EAB_mcn = 1/(EA_z*EAB_zn*(EAB_alphan)^(EAB_alphan)*(1-EAB_alphan)^(1-EAB_alphan))*EAB_rk^(EAB_alphan)*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphan);
// Wage Inflation (qoq)
[name='EAB_piw']
EAB_piw = EAB_w/EAB_w(-1)*EAB_pic;
// Wage Inflation (yoy)
[name='EAB_piw4']
EAB_piw4 = EAB_piw*EAB_piw(-1)*EAB_piw(-2)*EAB_piw(-3);
// Auxiliary equation for steady-state fixed cost
// Auxiliary equation for steady-state fixed cost
// Capital input (FOC)
[name='EAB_kdt']
EAB_kdt= EAB_alphat*(EAB_yst+EAB_psitbar)/(EAB_rk*EAB_mct) ;
// Capital input (FOC)
[name='EAB_kdn']
EAB_kdn = EAB_alphan*(EAB_ysn+EAB_psinbar)/(EAB_rk*EAB_mcn);
// Total capital demand
[name='EAB_kd']
EAB_kd = EAB_kdn + EAB_kdt;
// Demand for labour services by household I
[name='EAB_w']
EAB_w = 
(EAB_wi/(EAB_ndi/EAB_nd/(1-EAB_omega))^(1/(-EAB_eta)))
;
// Demand for labour services by household J
[name='EAB_ndj']
EAB_ndj = 
EAB_omega*(EAB_wj/EAB_w)^(-EAB_eta)*EAB_nd
;
// Aggregate labour demand
[name='EAB_ndi']
EAB_ndi =  
(((EAB_nd)^((EAB_eta-1)/EAB_eta)-EAB_omega^(1/EAB_eta)*EAB_ndj^(1-1/EAB_eta))/(1-EAB_omega)^(1/EAB_eta))^(1/(1-1/EAB_eta)) 
;
// Total demand 
[name='EAB_nd']
EAB_nd = EAB_ndt + EAB_ndn;
// Aggregate dividends
[name='EAB_d']
EAB_d = EAB_py*EAB_y-EAB_rk*EAB_kd-(1+EAB_tauwf)*EAB_w*EAB_nd;
// Non-tradable sector dividends
[name='EAB_dn']
EAB_dn = EAB_pnt*EAB_ysn-EAB_rk*EAB_kdn-(1+EAB_tauwf)*EAB_w*EAB_ndn;
// Tradable sector dividends
[name='EAB_dt']
EAB_dt = EAB_pht*EAB_ht
+EAAEAB_pim*EABEAA_rer*(EAAEAB_imc+EAAEAB_imi)*EAA_size/EAB_size
+EACEAB_pim*EABEAC_rer*(EACEAB_imc+EACEAB_imi)*EAC_size/EAB_size
+RWEAB_pim*EABRW_rer*(RWEAB_imc+RWEAB_imi)*RW_size/EAB_size
+USEAB_pim*EABUS_rer*(USEAB_imc+USEAB_imi)*US_size/EAB_size
-EAB_rk*EAB_kdt-(1+EAB_tauwf)*EAB_w*EAB_ndt;
// Optimal price contract set in domestic markets (FOC)
[name='EAB_phttilde']
EAB_phttilde= EAB_thetat/(EAB_thetat-1)*EAB_fh/EAB_gh*EAB_pht;
// Definition of fh
[name='EAB_fh']
EAB_fh = EAB_mct*EAB_ht+EAB_xih*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piht(+1)/(EAB_piht^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_fh(+1);
// Definition of gh
[name='EAB_gh']
EAB_gh = EAB_pht*EAB_ht+EAB_xih*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_piht(+1)/(EAB_piht^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^(EAB_thetat-1)*EAB_gh(+1);
// Aggregate intermediate-good price dynamics
[name='EAB_pht']
EAB_pht = ((1-EAB_xih)*EAB_phttilde^(1-EAB_thetat)+EAB_xih*(EAB_pht(-1)/EAB_pic)^(1-EAB_thetat)*(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat))^(1/(1-EAB_thetat));
// Intermediate-good price inflation
[name='EAB_piht']
EAB_piht = EAB_pht/EAB_pht(-1)*EAB_pic;
// Optimal price contract set in domestic markets (FOC)
[name='EAB_pnttilde']
EAB_pnttilde = EAB_thetan/(EAB_thetan-1)*EAB_fn/EAB_gn*EAB_pnt;
// Definition of fn
[name='EAB_fn']
EAB_fn = EAB_mcn*EAB_nt+EAB_xin*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_pint(+1)/(EAB_pint^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_fn(+1);
// Definition of gn
[name='EAB_gn']
EAB_gn = EAB_pnt*EAB_nt+EAB_xin*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAB_pint(+1)/(EAB_pint^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^(EAB_thetan-1)*EAB_gn(+1);
// Aggregate intermediate-good price dynamics
[name='EAB_pnt']
EAB_pnt = ((1-EAB_xin)*EAB_pnttilde^(1-EAB_thetan)+EAB_xin*(EAB_pnt(-1)/EAB_pic)^(1-EAB_thetan)*(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin)))^(1-EAB_thetan))^(1/(1-EAB_thetan));
// Intermediate-good price inflation
[name='EAB_pint']
EAB_pint = EAB_pnt/EAB_pnt(-1)*EAB_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAA_pimtilde
[name='EAAEAB_pimtilde']
EAAEAB_pimtilde = (EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAA_fx/EABEAA_gx)*EAAEAB_pim;
// Definition of fx
[name='EABEAA_fx']
EABEAA_fx = EAA_size/EAB_size*EAAEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAA_fx(+1);
// Definition of gx   
[name='EABEAA_gx']
EABEAA_gx = EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAAEAB_piim(+1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAA_pim
[name='EAAEAB_pim']
EAAEAB_pim= ((1-EAB_xix)*EAAEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAAEAB_pim(-1)/EAA_pic)^(1-EAB_thetat)*(EAAEAB_piim(-1)^EAB_chix*EAA_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat))^(-1/(1-EAB_thetat)) ;
// Intermediate-good price inflation, using EAB_pix = EAA_piim
[name='EAAEAB_piim']
EAAEAB_piim = EAAEAB_pim/EAAEAB_pim(-1)*EAA_pic;
// Bilateral real exchange rate
[name='EABEAA_rer']
EABEAA_rer = EAB_rer/EAA_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EABEAA_tot'] 
EABEAA_tot = EABEAA_pim/(EABEAA_rer*EAAEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAC_pimtilde
[name='EACEAB_pimtilde']
EACEAB_pimtilde = (EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAC_fx/EABEAC_gx)*EACEAB_pim;
// Definition of fx
[name='EABEAC_fx']
EABEAC_fx = EAC_size/EAB_size*EACEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAC_fx(+1);
// Definition of gx   
[name='EABEAC_gx']
EABEAC_gx = EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EACEAB_piim(+1)/(EACEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAC_pim
[name='EACEAB_pim']
EACEAB_pim= ((1-EAB_xix)*EACEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EACEAB_pim(-1)/EAC_pic)^(1-EAB_thetat)*(EACEAB_piim(-1)^EAB_chix*EAC_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat))^(-1/(1-EAB_thetat)) ;
// Intermediate-good price inflation, using EAB_pix = EAC_piim
[name='EACEAB_piim']
EACEAB_piim = EACEAB_pim/EACEAB_pim(-1)*EAC_pic;
// Bilateral real exchange rate
[name='EABEAC_rer']
EABEAC_rer = EAB_rer/EAC_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EABEAC_tot'] 
EABEAC_tot = EABEAC_pim/(EABEAC_rer*EACEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = RW_pimtilde
[name='RWEAB_pimtilde']
RWEAB_pimtilde = (EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABRW_fx/EABRW_gx)*RWEAB_pim;
// Definition of fx
[name='EABRW_fx']
EABRW_fx = RW_size/EAB_size*RWEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABRW_fx(+1);
// Definition of gx   
[name='EABRW_gx']
EABRW_gx = EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(RWEAB_piim(+1)/(RWEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = RW_pim
[name='RWEAB_pim']
RWEAB_pim= ((1-EAB_xix)*RWEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(RWEAB_pim(-1)/RW_pic)^(1-EAB_thetat)*(RWEAB_piim(-1)^EAB_chix*RW_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat))^(-1/(1-EAB_thetat)) ;
// Intermediate-good price inflation, using EAB_pix = RW_piim
[name='RWEAB_piim']
RWEAB_piim = RWEAB_pim/RWEAB_pim(-1)*RW_pic;
// Bilateral real exchange rate
[name='EABRW_rer']
EABRW_rer = EAB_rer/RW_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EABRW_tot'] 
EABRW_tot = EABRW_pim/(EABRW_rer*RWEAB_pim);
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = US_pimtilde
[name='USEAB_pimtilde']
USEAB_pimtilde = (EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABUS_fx/EABUS_gx)*USEAB_pim;
// Definition of fx
[name='EABUS_fx']
EABUS_fx = US_size/EAB_size*USEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABUS_fx(+1);
// Definition of gx   
[name='EABUS_gx']
EABUS_gx = EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(USEAB_piim(+1)/(USEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = US_pim
[name='USEAB_pim']
USEAB_pim= ((1-EAB_xix)*USEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(USEAB_pim(-1)/US_pic)^(1-EAB_thetat)*(USEAB_piim(-1)^EAB_chix*US_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat))^(-1/(1-EAB_thetat)) ;
// Intermediate-good price inflation, using EAB_pix = US_piim
[name='USEAB_piim']
USEAB_piim = USEAB_pim/USEAB_pim(-1)*US_pic;
// Bilateral real exchange rate
[name='EABUS_rer']
EABUS_rer = EAB_rer/US_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EABUS_tot'] 
EABUS_tot = EABUS_pim/(EABUS_rer*USEAB_pim);
// Total imports 
[name='EAB_im']
EAB_im = EAB_imc+EAB_imi;
// Total import deflator
[name='EAB_pim']
EAB_pim  = (EAB_pimc*EAB_imc+EAB_pimi*EAB_imi)/EAB_im;
// Total Export deflator 
[name='EAB_pex']
EAB_pex  = 
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im/EAB_ex
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im/EAB_ex
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im/EAB_ex
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im/EAB_ex
;
// Effective real exchange rate: double weighting (imports)
[name='EABEAA_weightim']
EABEAA_weightim = EABEAA_rer*EAA_pex*EABEAA_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
[name='EABEAA_weightex']
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
[name='EABEAA_weight']
EABEAA_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAA_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EABEAC_weightim']
EABEAC_weightim = EABEAC_rer*EAC_pex*EABEAC_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
[name='EABEAC_weightex']
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
[name='EABEAC_weight']
EABEAC_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAC_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EABRW_weightim']
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
[name='EABRW_weightex']
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
[name='EABRW_weight']
EABRW_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABRW_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABRW_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EABUS_weightim']
EABUS_weightim = EABUS_rer*US_pex*EABUS_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
[name='EABUS_weightex']
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
[name='EABUS_weight']
EABUS_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABUS_weightex;
// Effective real exchange rate
[name='EAB_reer']
EAB_reer = 1
*EABEAA_rer^EABEAA_weight
*EABEAC_rer^EABEAC_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
[name='EAB_etot']
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABEAC_tot^EABEAC_weight
*EABRW_tot^EABRW_weight
*EABUS_tot^EABUS_weight
;
//-----------------
// Final-good firms
//-----------------
[name='EAB_imc'] 
// Private consumption good (import)
EAB_imc = (
+EABEAA_numc ^(1/EAB_mumc)*((1-EABEAA_gammaimc)*EABEAA_imc)^(1-1/EAB_mumc)
+EABEAC_numc ^(1/EAB_mumc)*((1-EABEAC_gammaimc)*EABEAC_imc)^(1-1/EAB_mumc)
+EABRW_numc ^(1/EAB_mumc)*((1-EABRW_gammaimc)*EABRW_imc)^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABRW_numc
)^(1/EAB_mumc)*((1-EABUS_gammaimc)*EABUS_imc)^(1-1/EAB_mumc))^(EAB_mumc/(EAB_mumc-1));
// Demand for bilateral consumption import goods
[name='EABEAA_imc'] 
EABEAA_imc = EABEAA_numc*(EABEAA_pim/(EABEAA_gammaimcdag*EAB_pimc))^(-EAB_mumc)*EAB_imc/(1-EABEAA_gammaimc);
[name='EABUS_imc']
EABUS_imc = (1
-EABEAA_numc
-EABEAC_numc
-EABRW_numc
)*(EABUS_pim/(EABUS_gammaimcdag*EAB_pimc))^(-EAB_mumc)*EAB_imc/(1-EABUS_gammaimc);
[name='EABRW_imc'] 
EABRW_imc = EABRW_numc*(EABRW_pim/(EABRW_gammaimcdag*EAB_pimc))^(-EAB_mumc)*EAB_imc/(1-EABRW_gammaimc);
// Price of the consumption good (import)
[name='EAB_pimc']
EAB_pimc = (
+EABEAA_numc *(EABEAA_pim/EABEAA_gammaimcdag)^(1-EAB_mumc)
+EABEAC_numc *(EABEAC_pim/EABEAC_gammaimcdag)^(1-EAB_mumc)
+EABRW_numc *(EABRW_pim/EABRW_gammaimcdag)^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABRW_numc
)*(EABUS_pim/EABUS_gammaimcdag)^(1-EAB_mumc))^(1/(1-EAB_mumc));
// Private consumption good (import) inflation
[name='EAB_piimc']
EAB_piimc = EAB_pimc/EAB_pimc(-1)*EAB_pic;
// Private consumption good (import) inflation
[name='EAB_piimc4']
EAB_piimc4 = EAB_pimc/EAB_pimc(-4)*EAB_pic4;
// Private consumption good (import) inflation
[name='EAB_piex4'] 
EAB_piex4 = EAB_pex/EAB_pex(-4)*EAB_pic4;
[name='EAB_imi'] 
EAB_imi = (
+EABEAA_numi ^(1/EAB_mumi)*((1-EABEAA_gammaimi)*EABEAA_imi)^(1-1/EAB_mumi)
+EABEAC_numi ^(1/EAB_mumi)*((1-EABEAC_gammaimi)*EABEAC_imi)^(1-1/EAB_mumi)
+EABRW_numi ^(1/EAB_mumi)*((1-EABRW_gammaimi)*EABRW_imi)^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)^(1/EAB_mumi)*((1-EABUS_gammaimi)*EABUS_imi)^(1-1/EAB_mumi))^(EAB_mumi/(EAB_mumi-1));
// Demand for bilateral investment import goods
[name='EABEAA_imi'] 
EABEAA_imi = EABEAA_numi*(EABEAA_pim/(EABEAA_gammaimidag*EAB_pimi))^(-EAB_mumi)*EAB_imi/(1-EABEAA_gammaimi);
[name='EABUS_imi']
EABUS_imi = (1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)*(EABUS_pim/(EABUS_gammaimidag*EAB_pimi))^(-EAB_mumi)*EAB_imi/(1-EABUS_gammaimi);
[name='EABRW_imi'] 
EABRW_imi = EABRW_numi*(EABRW_pim/(EABRW_gammaimidag*EAB_pimi))^(-EAB_mumi)*EAB_imi/(1-EABRW_gammaimi);
// Price of the investment good (import)
[name='EAB_pimi']
EAB_pimi = (
+EABEAA_numi *(EABEAA_pim/EABEAA_gammaimidag)^(1-EAB_mumi)
+EABEAC_numi *(EABEAC_pim/EABEAC_gammaimidag)^(1-EAB_mumi)
+EABRW_numi *(EABRW_pim/EABRW_gammaimidag)^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABRW_numi
)*(EABUS_pim/EABUS_gammaimidag)^(1-EAB_mumi))^(1/(1-EAB_mumi));
// Private investment good (import) inflation
[name='EAB_piimi']
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
[name='EAB_yst']
EAB_yst = EAB_sh*EAB_ht
+EABEAA_sx*EAA_size/EAB_size*EAAEAB_im
+EABEAC_sx*EAC_size/EAB_size*EACEAB_im
+EABRW_sx*RW_size/EAB_size*RWEAB_im
+EABUS_sx*US_size/EAB_size*USEAB_im
;
// Aggregate demand for bilateral imported intermediate goods
[name='EABEAA_im']
EABEAA_im = EABEAA_imi+EABEAA_imc;
[name='EABEAC_im']
EABEAC_im = EABEAC_imi+EABEAC_imc;
[name='EABRW_im']
EABRW_im = EABRW_imi+EABRW_imc;
[name='EABUS_im']
EABUS_im = EABUS_imi+EABUS_imc;
// Private consumption good firm
// Private consumption good (tradable)
[name='EAB_ttc']
EAB_ttc = ((EAB_nutc)^(1/EAB_mutc)*EAB_htc^(1-1/EAB_mutc)+(1-EAB_nutc)^(1/EAB_mutc)*EAB_imc^(1-1/EAB_mutc))^(EAB_mutc/(EAB_mutc-1));
// Private consumption good  (total)
[name='EAB_qc']
EAB_qc = ((EAB_nuc)^(1/EAB_muc)*EAB_ttc^(1-1/EAB_muc)+(1-EAB_nuc)^(1/EAB_muc)*EAB_ntc^(1-1/EAB_muc))^(EAB_muc/(EAB_muc-1)) ;
// Demand for domestic intermediate goods - NONTRADABLE
[name='EAB_ntc']
EAB_ntc = (1-EAB_nuc)*(EAB_pnt)^(-EAB_muc)*EAB_qc;
// Price of the consumption good (tradable) 
[name='EAB_pttc'] 
EAB_pttc = ((EAB_nutc)*EAB_pht^(1-EAB_mutc)+(1-EAB_nutc)*EAB_pimc^(1-EAB_mutc))^(1/(1-EAB_mutc));
// Price of the consumption good 
1^(1-EAB_muc) = (EAB_nuc)*EAB_pttc^(1-EAB_muc)+(1-EAB_nuc)*EAB_pnt^(1-EAB_muc);
// Demand for domestic intermediate goods
[name='EAB_htc']
EAB_htc = EAB_nutc*(EAB_pht/EAB_pttc)^(-EAB_mutc)*EAB_ttc;
// Import adjustment cost
[name='EABEAA_gammaimc']
EABEAA_gammaimc = EAB_gammaimc1/2*((EABEAA_imc/EAB_qc)/(EABEAA_imc(-1)/EAB_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABEAA_gammaimcdag']
EABEAA_gammaimcdag = 1-EABEAA_gammaimc-EAB_gammaimc1*((EABEAA_imc/EAB_qc)/(EABEAA_imc(-1)/EAB_qc(-1))-1)*(EABEAA_imc/EAB_qc)/(EABEAA_imc(-1)/EAB_qc(-1));
// Import adjustment cost
[name='EABEAC_gammaimc']
EABEAC_gammaimc = EAB_gammaimc1/2*((EABEAC_imc/EAB_qc)/(EABEAC_imc(-1)/EAB_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABEAC_gammaimcdag']
EABEAC_gammaimcdag = 1-EABEAC_gammaimc-EAB_gammaimc1*((EABEAC_imc/EAB_qc)/(EABEAC_imc(-1)/EAB_qc(-1))-1)*(EABEAC_imc/EAB_qc)/(EABEAC_imc(-1)/EAB_qc(-1));
// Import adjustment cost
[name='EABRW_gammaimc']
EABRW_gammaimc = EAB_gammaimc1/2*((EABRW_imc/EAB_qc)/(EABRW_imc(-1)/EAB_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABRW_gammaimcdag']
EABRW_gammaimcdag = 1-EABRW_gammaimc-EAB_gammaimc1*((EABRW_imc/EAB_qc)/(EABRW_imc(-1)/EAB_qc(-1))-1)*(EABRW_imc/EAB_qc)/(EABRW_imc(-1)/EAB_qc(-1));
// Import adjustment cost
[name='EABUS_gammaimc']
EABUS_gammaimc = EAB_gammaimc1/2*((EABUS_imc/EAB_qc)/(EABUS_imc(-1)/EAB_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABUS_gammaimcdag']
EABUS_gammaimcdag = 1-EABUS_gammaimc-EAB_gammaimc1*((EABUS_imc/EAB_qc)/(EABUS_imc(-1)/EAB_qc(-1))-1)*(EABUS_imc/EAB_qc)/(EABUS_imc(-1)/EAB_qc(-1));
// Private investment good firm
// Private investment good
[name='EAB_tti']
EAB_tti = ((EAB_nuti)^(1/EAB_muti)*EAB_hti^(1-1/EAB_muti)+(1-EAB_nuti)^(1/EAB_muti)*EAB_imi^(1-1/EAB_muti))^(EAB_muti/(EAB_muti-1));
// Private investment good
[name='EAB_qi']
EAB_qi = ((EAB_nui)^(1/EAB_mui)*EAB_tti^(1-1/EAB_mui)+(1-EAB_nui)^(1/EAB_mui)*EAB_nti^(1-1/EAB_mui))^(EAB_mui/(EAB_mui-1));
// Demand for domestic intermediate goods
[name='EAB_nti']
EAB_nti = (1-EAB_nui)*(EAB_pnt/EAB_pi)^(-EAB_mui)*EAB_qi;
// Price of the investment good (TRADABLE) 
[name='EAB_ptti'] 
EAB_ptti= ((EAB_nuti)*EAB_pht^(1-EAB_muti)+(1-EAB_nuti)*EAB_pimi^(1-EAB_muti))^(1/(EAB_muti-1)) ;
// Price of the investment good
EAB_pi = ((EAB_nui)*EAB_ptti^(1-EAB_mui)+(1-EAB_nui)*(EAB_pnt)^(1-EAB_mui))^(1/(1-EAB_mui));
// Auxiliary equation for the price of the investment good in steady state
// Demand for domestic intermediate goods
[name='EAB_hti']
EAB_hti = EAB_nuti*(EAB_pht/EAB_ptti)^(-EAB_muti)*EAB_tti;
// Import adjustment cost
[name='EABEAA_gammaimi']
EABEAA_gammaimi = EAB_gammaimi1/2*((EABEAA_imi/EAB_qi)/(EABEAA_imi(-1)/EAB_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABEAA_gammaimidag']
EABEAA_gammaimidag = 1-EABEAA_gammaimi-EAB_gammaimi1*((EABEAA_imi/EAB_qi)/(EABEAA_imi(-1)/EAB_qi)-1)*((EABEAA_imi/EAB_qi)/(EABEAA_imi(-1)/EAB_qi(-1)));
// Import adjustment cost
[name='EABEAC_gammaimi']
EABEAC_gammaimi = EAB_gammaimi1/2*((EABEAC_imi/EAB_qi)/(EABEAC_imi(-1)/EAB_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABEAC_gammaimidag']
EABEAC_gammaimidag = 1-EABEAC_gammaimi-EAB_gammaimi1*((EABEAC_imi/EAB_qi)/(EABEAC_imi(-1)/EAB_qi)-1)*((EABEAC_imi/EAB_qi)/(EABEAC_imi(-1)/EAB_qi(-1)));
// Import adjustment cost
[name='EABRW_gammaimi']
EABRW_gammaimi = EAB_gammaimi1/2*((EABRW_imi/EAB_qi)/(EABRW_imi(-1)/EAB_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABRW_gammaimidag']
EABRW_gammaimidag = 1-EABRW_gammaimi-EAB_gammaimi1*((EABRW_imi/EAB_qi)/(EABRW_imi(-1)/EAB_qi)-1)*((EABRW_imi/EAB_qi)/(EABRW_imi(-1)/EAB_qi(-1)));
// Import adjustment cost
[name='EABUS_gammaimi']
EABUS_gammaimi = EAB_gammaimi1/2*((EABUS_imi/EAB_qi)/(EABUS_imi(-1)/EAB_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EABUS_gammaimidag']
EABUS_gammaimidag = 1-EABUS_gammaimi-EAB_gammaimi1*((EABUS_imi/EAB_qi)/(EABUS_imi(-1)/EAB_qi)-1)*((EABUS_imi/EAB_qi)/(EABUS_imi(-1)/EAB_qi(-1)));
// Trade balance
[name='EAB_tb']
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
[name='EAB_ex']
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
[name='EAB_b']
		 EAB_b = (-1)*(1/(EAB_r(-1)*(1-EAB_gammab(-1)))^(-1)) * (- EAB_pnt(-1)*EAB_g(-1) - EAB_tr(-1)
		- EAB_b(-1)*EAB_pic(-1)^(-1) - EAB_m(-2)*EAB_pic(-1)^(-1) + EAB_tauc(-1)*EAB_c(-1)+(EAB_taun(-1)+EAB_tauwh(-1))*(EAB_wi(-1)*EAB_ndi(-1)+EAB_wj(-1)*EAB_ndj(-1))+EAB_tauwf(-1)*EAB_w(-1)*EAB_nd(-1)+EAB_tauk(-1)*(EAB_rk(-1)*EAB_u(-1)-(EAB_gammau(-1)+EAB_delta)*EAB_pi(-1))*EAB_k(-1)+EAB_taud(-1)*EAB_d(-1)+EAB_t(-1)+EAB_m(-1));
// Government spending, using EAB_pg = EAB_pht
[name='EAB_g']
EAB_g = EAB_gy*EAB_pybar*EAB_ybar/EAB_pnt;
// Transfers
[name='EAB_tr']
EAB_tr = EAB_try*EAB_pybar*EAB_ybar;
// Fiscal rule
[name='EAB_t']
EAB_t = (EAB_phitb*(EAB_b/(EAB_pybar*EAB_ybar)-EAB_bytarget))*(EAB_pybar*EAB_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
[name='EAB_ti']
EAB_ti = EAB_upsilont*EAB_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
[name='EAB_tri']
EAB_tri = EAB_upsilontr*EAB_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
// Monetary policy rule
		EAB_rerdep/RW_rerdep*EAB_pic/RW_pic-1=0;
	
// Definition of annual inflation
EAB_pic4 = EAB_pic*EAB_pic(-1)*EAB_pic(-2)*EAB_pic(-3);
// Real interest rate
EAB_rr-1 = EAB_r/EAB_pic(+1)-1;
// Equilibrium real interest rate
[name='EAB_rrstar']
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
[name='EAB_ci']
EAB_ci = (EAB_c-EAB_omega*EAB_cj )/(1-EAB_omega);
// Aggregate money holdings
[name='EAB_m']
EAB_m = (1-EAB_omega)*EAB_mi+EAB_omega*EAB_mj;
// Aggregate capital stock
[name='EAB_k']
EAB_k = (1-EAB_omega)*EAB_ki;
// Aggregate investment
[name='EAB_ii']
EAB_ii = EAB_i/(1-EAB_omega);
// Aggregate lump-sum transfers
[name='EAB_trj']
EAB_trj = 
1/EAB_omega*EAB_tr-(1-EAB_omega)/EAB_omega*EAB_tri
;
// Aggregate lump-sum taxes
[name='EAB_tj']
EAB_tj = 
1/EAB_omega*EAB_t-(1-EAB_omega)/EAB_omega*EAB_ti
;
// Aggregate transaction costs
[name='EAB_gammav']
EAB_gammav = (1-EAB_omega)*EAB_ci*EAB_gammavi+EAB_omega*EAB_cj*EAB_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
[name='EAB_ni']
EAB_ni = EAB_si*EAB_ndi;
// Wage dispersion
[name='EAB_si']
EAB_si = (1-EAB_xii)*(EAB_witilde/EAB_wi)^(-EAB_etai)+EAB_xii*(EAB_wi(-1)/EAB_wi)^(-EAB_etai)*(EAB_pic/(EAB_pic(-1)^EAB_chii*EAB_pi4target^(1/4*(1-EAB_chii))))^(EAB_etai)*EAB_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
[name='EAB_nj']
EAB_nj = EAB_sj*EAB_ndj;
// Wage dispersion
[name='EAB_sj']
EAB_sj = (1-EAB_xij)*(EAB_wjtilde/EAB_wj)^(-EAB_etaj)+EAB_xij*(EAB_wj(-1)/EAB_wj)^(-EAB_etaj)*(EAB_pic/(EAB_pic(-1)^EAB_chij*EAB_pi4target^(1/4*(1-EAB_chij))))^(EAB_etaj)*EAB_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
[name='EAB_u']
EAB_u = EAB_kd/EAB_k;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAB_x = EAC_size/EAB_size*EAC_im
[name='EAB_ysn']
EAB_ysn = EAB_snt*EAB_nt;
//  nontradables aggregate demand
[name='EAB_nt']
EAB_nt =  EAB_nti+EAB_ntc+EAB_g;
// Aggregate demand for domestic intermediate goods, using EAB_hg = EAB_g
[name='EAB_ht']
EAB_ht = EAB_htc+EAB_hti;
// Price dispersion in the domestic markets
[name='EAB_sh']
EAB_sh = (1-EAB_xih)*(EAB_phttilde/EAB_pht)^(-EAB_thetat)+EAB_xih*(EAB_piht/(EAB_piht(-1)^EAB_chih*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EAB_sh(-1);
// Price dispersion in the foreign markets
[name='EABEAA_sx']
EABEAA_sx = (1-EAB_xix)*(EAAEAB_pimtilde/EAAEAB_pim)^(-EAB_thetat)+EAB_xix*(EAAEAB_piim/(EAAEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAA_sx(-1);
[name='EABEAC_sx']
EABEAC_sx = (1-EAB_xix)*(EACEAB_pimtilde/EACEAB_pim)^(-EAB_thetat)+EAB_xix*(EACEAB_piim/(EACEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABEAC_sx(-1);
[name='EABRW_sx']
EABRW_sx = (1-EAB_xix)*(RWEAB_pimtilde/RWEAB_pim)^(-EAB_thetat)+EAB_xix*(RWEAB_piim/(RWEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABRW_sx(-1);
[name='EABUS_sx']
EABUS_sx = (1-EAB_xix)*(USEAB_pimtilde/USEAB_pim)^(-EAB_thetat)+EAB_xix*(USEAB_piim/(USEAB_piim(-1)^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chih))))^EAB_thetat*EABUS_sx(-1);
// Price dispersion in the domestic markets
[name='EAB_snt']
EAB_snt = (1-EAB_xin)*(EAB_pnttilde/EAB_pnt)^(-EAB_thetan)+EAB_xin*(EAB_pint/(EAB_pint(-1)^EAB_chin*EAB_pi4target^(1/4*(1-EAB_chin))))^EAB_thetan*EAB_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
[name='EAB_c']
EAB_c = EAB_qc - EAB_gammav ;
// Aggregate investment and capital utilisation cost
[name='EAB_i']
EAB_i = EAB_qi - EAB_k*EAB_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAB_pg = EAB_pht and EAB_qg = EAB_g   
[name='EAB_py']
EAB_py = (1/EAB_y) * ( EAB_qc+EAB_pi*EAB_qi+EAB_pnt*EAB_g
+EABEAA_rer*EAAEAB_pim*EAA_size/EAB_size*EAAEAB_im
-EABEAA_pim*(EABEAA_imc*(1-EABEAA_gammaimc)/EABEAA_gammaimcdag)
-EABEAA_pim*(EABEAA_imi*(1-EABEAA_gammaimi)/EABEAA_gammaimidag)
+EABEAC_rer*EACEAB_pim*EAC_size/EAB_size*EACEAB_im
-EABEAC_pim*(EABEAC_imc*(1-EABEAC_gammaimc)/EABEAC_gammaimcdag)
-EABEAC_pim*(EABEAC_imi*(1-EABEAC_gammaimi)/EABEAC_gammaimidag)
+EABRW_rer*RWEAB_pim*RW_size/EAB_size*RWEAB_im
-EABRW_pim*(EABRW_imc*(1-EABRW_gammaimc)/EABRW_gammaimcdag)
-EABRW_pim*(EABRW_imi*(1-EABRW_gammaimi)/EABRW_gammaimidag)
+EABUS_rer*USEAB_pim*US_size/EAB_size*USEAB_im
-EABUS_pim*(EABUS_imc*(1-EABUS_gammaimc)/EABUS_gammaimcdag)
-EABUS_pim*(EABUS_imi*(1-EABUS_gammaimi)/EABUS_gammaimidag)
);
// Aggregate real demand
[name='EAB_y']
EAB_y = EAB_yst+EAB_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
[name='EAB_zt']
log(EAB_zt) = (1-EAB_rhozt)*log(EAB_ztbar)+EAB_rhozt*log(EAB_zt(-1))+EAB_epszt;
[name='EAB_zn']
log(EAB_zn) = (1-EAB_rhozn)*log(EAB_znbar)+EAB_rhozn*log(EAB_zn(-1))+EAB_epszn;
// Government spending shock
[name='EAB_gy']
EAB_gy = (1-EAB_rhog)*EAB_gybar+EAB_rhog*EAB_gy(-1)+EAB_epsg;
// Transfer shock
[name='EAB_try']
EAB_try = (1-EAB_rhotr)*EAB_trybar+EAB_rhotr*EAB_try(-1)+EAB_epstr;
// Consumption tax shock
[name='EAB_tauc']
EAB_tauc = (1-EAB_rhotauc)*EAB_taucbar+EAB_rhotauc*EAB_tauc(-1)+EAB_epstauc;
// Dividend income tax shock
[name='EAB_taud']
EAB_taud = (1-EAB_rhotaud)*EAB_taudbar+EAB_rhotaud*EAB_taud(-1)+EAB_epstaud;
// Capital income tax shock
[name='EAB_tauk']
EAB_tauk = (1-EAB_rhotauk)*EAB_taukbar+EAB_rhotauk*EAB_tauk(-1)+EAB_epstauk;
// Labour income tax shock
[name='EAB_taun']
EAB_taun = (1-EAB_rhotaun)*EAB_taunbar+EAB_rhotaun*EAB_taun(-1)+EAB_epstaun;
// Payroll tax shock: households
[name='EAB_tauwh']
EAB_tauwh = (1-EAB_rhotauwh)*EAB_tauwhbar+EAB_rhotauwh*EAB_tauwh(-1)+EAB_epstauwh;
// Payroll tax shock: firms
[name='EAB_tauwf']
EAB_tauwf = (1-EAB_rhotauwf)*EAB_tauwfbar+EAB_rhotauwf*EAB_tauwf(-1)+EAB_epstauwf;
// Wage cost push shock
[name='EAB_wcst']
EAB_wcst = (1-EAB_rhowcst)*EAB_wcstbar+EAB_rhowcst*EAB_wcst(-1)+EAB_epswcst;
// Preference shock
[name='EAB_zcon']
log(EAB_zcon) = (1-EAB_rhozcon)*log(EAB_zconbar)+EAB_rhozcon*log(EAB_zcon(-1))+EAB_epszcon;
// Investment specific shock
[name='EAB_zinv']
log(EAB_zinv) = (1-EAB_rhozinv)*log(EAB_zinvbar)+EAB_rhozinv*log(EAB_zinv(-1))+EAB_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
[name='EAB_cy']
EAB_cy = EAB_c/(EAB_py*EAB_y);
// Aggregate nominal investment share
[name='EAB_iy']
EAB_iy = EAB_pi*EAB_i/(EAB_py*EAB_y);
// Aggregate nominal import share  
[name='EAB_imy']
EAB_imy = (EAB_pimc*EAB_imc+EAB_pimi*EAB_imi)/(EAB_py*EAB_y);
// Aggregate nominal import share for consumption goods 
[name='EAB_imcy']
EAB_imcy = EAB_pimc*EAB_imc/(EAB_py*EAB_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
[name='EAB_imiy']
EAB_imiy = EAB_pimi*EAB_imi/(EAB_py*EAB_y);
// Aggregate debt-to-output ratio
[name='EAB_by']
EAB_by = EAB_b/(EAB_pybar*EAB_ybar);
// Aggregate lump-sum tax-to-output ratio
[name='EAB_ty']
EAB_ty = EAB_t/(EAB_pybar*EAB_ybar);
// Aggregate labour cost share
[name='EAB_lcy']
EAB_lcy = ((1+EAB_tauwf)*EAB_w*EAB_nd)/(EAB_py*EAB_y);
// Aggregate nominal Wage share
[name='EAB_wy']
EAB_wy = (EAB_w*EAB_nd)/(EAB_py*EAB_y);
// NT sector nominal Wage share
[name='EAB_wnty']
EAB_wnty = (EAB_w*EAB_ndn)/(EAB_pnt*EAB_ysn);
// T sector nominal Wage share
[name='EAB_whty']
EAB_whty = (EAB_w*EAB_ndt)/(EAB_pht*EAB_yst);
// T sector share
[name='EAB_yhty']
EAB_yhty = EAB_pht*EAB_yst/(EAB_py*EAB_y);
// NT sector share
[name='EAB_ynty']
EAB_ynty = EAB_pnt*EAB_ysn/(EAB_py*EAB_y);
// Output gap
[name='EAB_ygap']
EAB_ygap = EAB_y/EAB_ybar-1;
// Output growth (gross rate)
[name='EAB_ygrowth']
EAB_ygrowth = EAB_y/EAB_y(-1);
// Output growth (gross rate yoy)
[name='EAB_ygrowth4']
EAB_ygrowth4 = EAB_y/EAB_y(-4);
// Domestic nominal output as a share of world nominal output
[name='EAB_yshare']
EAB_yshare  = EAB_size*EAB_py*EAB_y/EAB_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
[name='EAB_epsilonm'] 
EAB_epsilonm = -1/8*1/(EAB_r*(EAB_gammav2*EAB_r+EAB_r-1));
// Trade balance-to-GDP ratio
[name='EAB_tby'] 
EAB_tby = EAB_tb/(EAB_py*EAB_y);
// Imports of consumption goods
[name='EABEAA_imcy'] 
EABEAA_imcy  = EABEAA_pim*EABEAA_imc/(EAB_py*EAB_y);
// Imports of investment goods
[name='EABEAA_imiy'] 
EABEAA_imiy = EABEAA_pim*EABEAA_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
[name='EABEAA_excy']
EABEAA_excy  = EAA_size/EAB_size*EABEAA_rer*EAAEAB_pim*EAAEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
[name='EABEAA_exiy'] 
EABEAA_exiy  = EAA_size/EAB_size*EABEAA_rer*EAAEAB_pim*EAAEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods
[name='EABEAC_imcy'] 
EABEAC_imcy  = EABEAC_pim*EABEAC_imc/(EAB_py*EAB_y);
// Imports of investment goods
[name='EABEAC_imiy'] 
EABEAC_imiy = EABEAC_pim*EABEAC_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
[name='EABEAC_excy']
EABEAC_excy  = EAC_size/EAB_size*EABEAC_rer*EACEAB_pim*EACEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
[name='EABEAC_exiy'] 
EABEAC_exiy  = EAC_size/EAB_size*EABEAC_rer*EACEAB_pim*EACEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods
[name='EABRW_imcy'] 
EABRW_imcy  = EABRW_pim*EABRW_imc/(EAB_py*EAB_y);
// Imports of investment goods
[name='EABRW_imiy'] 
EABRW_imiy = EABRW_pim*EABRW_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
[name='EABRW_excy']
EABRW_excy  = RW_size/EAB_size*EABRW_rer*RWEAB_pim*RWEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
[name='EABRW_exiy'] 
EABRW_exiy  = RW_size/EAB_size*EABRW_rer*RWEAB_pim*RWEAB_imi/(EAB_py*EAB_y);
// Imports of consumption goods
[name='EABUS_imcy'] 
EABUS_imcy  = EABUS_pim*EABUS_imc/(EAB_py*EAB_y);
// Imports of investment goods
[name='EABUS_imiy'] 
EABUS_imiy = EABUS_pim*EABUS_imi/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
[name='EABUS_excy']
EABUS_excy  = US_size/EAB_size*EABUS_rer*USEAB_pim*USEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
[name='EABUS_exiy'] 
EABUS_exiy  = US_size/EAB_size*EABUS_rer*USEAB_pim*USEAB_imi/(EAB_py*EAB_y);
// Internal real exchange rate
[name='EAB_internalrer'] 
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
[name='EAC_utili']
EAC_utili = 
EAC_zcon*log(EAC_ci-EAC_kappa*EAC_ci(-1))-1/(1+EAC_zeta)*(EAC_ni)^(1+EAC_zeta)+EAC_beta*EAC_utili(+1)
;
// Marginal utility of consumption
[name='EAC_lambdai']
EAC_lambdai = (EAC_zcon*(EAC_ci-EAC_kappa*EAC_ci(-1))^(-EAC_sigma))/(1+EAC_tauc+EAC_gammavi+EAC_vi*EAC_gammavider);
// Euler equation for government bonds
[name='EAC_r']
EAC_r = EAC_beta^(-1)*EAC_lambdai/EAC_lambdai(+1)*EAC_pic(+1);
// Euler equation for money
[name='EAC_vi']
EAC_vi = ((1-EAC_beta*EAC_lambdai(+1)/(EAC_lambdai*EAC_pic(+1)))/EAC_gammavider)^(1/2);
// Consumption-based velocity
[name='EAC_mi']
EAC_mi = EAC_ci/EAC_vi;
// Transaction cost
[name='EAC_gammavi']
EAC_gammavi = EAC_gammav1*EAC_vi+EAC_gammav2/EAC_vi-2*(EAC_gammav1*EAC_gammav2)^(1/2);
// Derivative of transaction cost
[name='EAC_gammavider']
EAC_gammavider = EAC_gammav1-EAC_gammav2*EAC_vi^(-2);
// Capital accumulation
[name='EAC_ki']
EAC_ki = (1-EAC_delta)*EAC_ki(-1)+(1-EAC_gammai(-1))*EAC_ii(-1)*EAC_zinv;
// Investment adjustment cost
[name='EAC_gammai']
EAC_gammai = EAC_gammai1/2*(EAC_ii/EAC_ii(-1)-1)^2;
// Derivative of investment adjustment cost
[name='EAC_gammaider']
EAC_gammaider = EAC_gammai1*(EAC_ii/EAC_ii(-1)-1)/EAC_ii(-1);
// Capacity utilisation cost
[name='EAC_gammau']
EAC_gammau = ((EAC_beta^(-1)-1+EAC_delta)*EAC_qbar-EAC_delta*EAC_taukbar*EAC_pibar)/((1-EAC_taukbar)*EAC_pibar)*(EAC_u-1)+EAC_gammau2/2*(EAC_u-1)^2;
// Derivative of capacity utilisation cost
[name='EAC_gammauder']
EAC_gammauder = ((EAC_beta^(-1)-1+EAC_delta)*EAC_qbar-EAC_delta*EAC_taukbar*EAC_pibar)/((1-EAC_taukbar)*EAC_pibar)+EAC_gammau2*(EAC_u-1);
// Optimal capacity utilisation (FOC)
[name='EAC_rk']
EAC_rk = EAC_gammauder*EAC_pi;
// Tobin's Q
[name='EAC_pi']
EAC_pi = EAC_q*EAC_zinv*(1-EAC_gammai-EAC_gammaider*EAC_ii)+EAC_beta*EAC_lambdai(+1)/EAC_lambdai*EAC_q(+1)*EAC_zinv(+1)*EAC_gammaider(+1)*EAC_ii(+1)^2/EAC_ii;
// Auxiliary equation for Tobin's Q in steady state
// Rate of return on capital
[name='EAC_q']
EAC_q = EAC_beta*EAC_lambdai(+1)/EAC_lambdai*((1-EAC_tauk(+1))*(EAC_rk(+1)*EAC_u(+1)-EAC_gammau(+1)*EAC_pi(+1))+(EAC_tauk(+1)*EAC_delta)*EAC_pi(+1)+(1-EAC_delta)*EAC_q(+1));
// Optimal wage contract (FOC)
[name='EAC_witilde']
EAC_witilde = (EAC_etai/(EAC_etai-1)*EAC_fi/EAC_gi+EAC_wcst)^(1/(1+EAC_etai*EAC_zeta));
// Definition of fi
[name='EAC_fi']
EAC_fi = EAC_wi^(EAC_etai*(1+EAC_zeta))*EAC_ndi^(1+EAC_zeta)+EAC_xii*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai*(1+EAC_zeta))*EAC_fi(+1);
// Definition of gi
[name='EAC_gi']
EAC_gi = EAC_lambdai*(1-EAC_taun-EAC_tauwh)*EAC_wi^EAC_etai*EAC_ndi+EAC_xii*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai-1)*EAC_gi(+1);
// Aggregate wage rate
[name='EAC_wi']
EAC_wi = ((1-EAC_xii)*EAC_witilde^(1-EAC_etai)+EAC_xii*EAC_wi(-1)^(1-EAC_etai)*(EAC_pic(-1)^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))/EAC_pic)^(1-EAC_etai))^(1/(1-EAC_etai));
//-------------
// Household J
//-------------
// Utility
[name='EAC_utilj']
EAC_utilj = 
EAC_zcon*log(EAC_cj-EAC_kappa*EAC_cj(-1))-1/(1+EAC_zeta)*EAC_nj^(1+EAC_zeta)+EAC_beta*EAC_utilj(+1)
;
// Budget constraint
[name='EAC_mj']
EAC_mj = (1-EAC_taun-EAC_tauwh)*EAC_wj*EAC_nj+EAC_trj-EAC_tj+EAC_mj(-1)*EAC_pic^(-1) - (1+EAC_tauc+EAC_gammavj)*EAC_cj;
// Marginal utility of consumption
[name='EAC_cj']
EAC_cj = ((EAC_lambdaj*(1+EAC_tauc+EAC_gammavj+EAC_vj*EAC_gammavjder))^(1/EAC_sigma))/EAC_zcon + EAC_kappa*EAC_cj(-1);
// Euler equation for money
[name='EAC_lambdaj']
EAC_lambdaj = EAC_beta*EAC_lambdaj(+1)/(1 - EAC_vj^(2)*EAC_gammavjder)/EAC_pic(+1);
// Consumption-based velocity
[name='EAC_vj']
EAC_vj = EAC_cj/EAC_mj;
// Transaction technology
[name='EAC_gammavj']
EAC_gammavj = EAC_gammav1*EAC_vj+EAC_gammav2/EAC_vj-2*(EAC_gammav1*EAC_gammav2)^(1/2);
// Derivative of transaction technology
[name='EAC_gammavjder']
EAC_gammavjder = EAC_gammav1-EAC_gammav2*EAC_vj^(-2);
// Optimal wage contract (FOC)
[name='EAC_wjtilde']
EAC_wjtilde = (EAC_etaj/(EAC_etaj-1)*EAC_fj/EAC_gj+EAC_wcst)^(1/(1+EAC_etaj*EAC_zeta));
// Definition of fj
[name='EAC_fj']
EAC_fj = EAC_wj^(EAC_etaj*(1+EAC_zeta))*EAC_ndj^(1+EAC_zeta)+EAC_xij*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj*(1+EAC_zeta))*EAC_fj(+1);
// Definition of gj
[name='EAC_gj']
EAC_gj = EAC_lambdaj*(1-EAC_taun-EAC_tauwh)*EAC_wj^EAC_etaj*EAC_ndj+EAC_xij*EAC_beta*(EAC_pic(+1)/(EAC_pic^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj-1)*EAC_gj(+1);
// Aggregate wage rate
[name='EAC_wj']
EAC_wj = ((1-EAC_xij)*EAC_wjtilde^(1-EAC_etaj)+EAC_xij*EAC_wj(-1)^(1-EAC_etaj)*(EAC_pic(-1)^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))/EAC_pic)^(1-EAC_etaj))^(1/(1-EAC_etaj));
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
[name='EAC_ndt'] 
EAC_ndt = ((EAC_yst + EAC_psitbar)/(EA_z*EAC_zt*EAC_kdt^EAC_alphat))^(1/(1-EAC_alphat));
// Production function nontradable
[name='EAC_ndn'] 
EAC_ndn = ((EAC_ysn+EAC_psinbar)/(EA_z*EAC_zn*EAC_kdn^EAC_alphan))^(1/(1-EAC_alphan));
// Real marginal cost tradable
[name='EAC_mct']
EAC_mct = 1/(EA_z*EAC_zt*(EAC_alphat)^(EAC_alphat)*(1-EAC_alphat)^(1-EAC_alphat))*EAC_rk^(EAC_alphat)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphat);
// Real marginal cost nontradable
[name='EAC_mcn']
EAC_mcn = 1/(EA_z*EAC_zn*(EAC_alphan)^(EAC_alphan)*(1-EAC_alphan)^(1-EAC_alphan))*EAC_rk^(EAC_alphan)*((1+EAC_tauwf)*EAC_w)^(1-EAC_alphan);
// Wage Inflation (qoq)
[name='EAC_piw']
EAC_piw = EAC_w/EAC_w(-1)*EAC_pic;
// Wage Inflation (yoy)
[name='EAC_piw4']
EAC_piw4 = EAC_piw*EAC_piw(-1)*EAC_piw(-2)*EAC_piw(-3);
// Auxiliary equation for steady-state fixed cost
// Auxiliary equation for steady-state fixed cost
// Capital input (FOC)
[name='EAC_kdt']
EAC_kdt= EAC_alphat*(EAC_yst+EAC_psitbar)/(EAC_rk*EAC_mct) ;
// Capital input (FOC)
[name='EAC_kdn']
EAC_kdn = EAC_alphan*(EAC_ysn+EAC_psinbar)/(EAC_rk*EAC_mcn);
// Total capital demand
[name='EAC_kd']
EAC_kd = EAC_kdn + EAC_kdt;
// Demand for labour services by household I
[name='EAC_w']
EAC_w = 
(EAC_wi/(EAC_ndi/EAC_nd/(1-EAC_omega))^(1/(-EAC_eta)))
;
// Demand for labour services by household J
[name='EAC_ndj']
EAC_ndj = 
EAC_omega*(EAC_wj/EAC_w)^(-EAC_eta)*EAC_nd
;
// Aggregate labour demand
[name='EAC_ndi']
EAC_ndi =  
(((EAC_nd)^((EAC_eta-1)/EAC_eta)-EAC_omega^(1/EAC_eta)*EAC_ndj^(1-1/EAC_eta))/(1-EAC_omega)^(1/EAC_eta))^(1/(1-1/EAC_eta)) 
;
// Total demand 
[name='EAC_nd']
EAC_nd = EAC_ndt + EAC_ndn;
// Aggregate dividends
[name='EAC_d']
EAC_d = EAC_py*EAC_y-EAC_rk*EAC_kd-(1+EAC_tauwf)*EAC_w*EAC_nd;
// Non-tradable sector dividends
[name='EAC_dn']
EAC_dn = EAC_pnt*EAC_ysn-EAC_rk*EAC_kdn-(1+EAC_tauwf)*EAC_w*EAC_ndn;
// Tradable sector dividends
[name='EAC_dt']
EAC_dt = EAC_pht*EAC_ht
+EAAEAC_pim*EACEAA_rer*(EAAEAC_imc+EAAEAC_imi)*EAA_size/EAC_size
+EABEAC_pim*EACEAB_rer*(EABEAC_imc+EABEAC_imi)*EAB_size/EAC_size
+RWEAC_pim*EACRW_rer*(RWEAC_imc+RWEAC_imi)*RW_size/EAC_size
+USEAC_pim*EACUS_rer*(USEAC_imc+USEAC_imi)*US_size/EAC_size
-EAC_rk*EAC_kdt-(1+EAC_tauwf)*EAC_w*EAC_ndt;
// Optimal price contract set in domestic markets (FOC)
[name='EAC_phttilde']
EAC_phttilde= EAC_thetat/(EAC_thetat-1)*EAC_fh/EAC_gh*EAC_pht;
// Definition of fh
[name='EAC_fh']
EAC_fh = EAC_mct*EAC_ht+EAC_xih*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piht(+1)/(EAC_piht^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_fh(+1);
// Definition of gh
[name='EAC_gh']
EAC_gh = EAC_pht*EAC_ht+EAC_xih*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_piht(+1)/(EAC_piht^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^(EAC_thetat-1)*EAC_gh(+1);
// Aggregate intermediate-good price dynamics
[name='EAC_pht']
EAC_pht = ((1-EAC_xih)*EAC_phttilde^(1-EAC_thetat)+EAC_xih*(EAC_pht(-1)/EAC_pic)^(1-EAC_thetat)*(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat))^(1/(1-EAC_thetat));
// Intermediate-good price inflation
[name='EAC_piht']
EAC_piht = EAC_pht/EAC_pht(-1)*EAC_pic;
// Optimal price contract set in domestic markets (FOC)
[name='EAC_pnttilde']
EAC_pnttilde = EAC_thetan/(EAC_thetan-1)*EAC_fn/EAC_gn*EAC_pnt;
// Definition of fn
[name='EAC_fn']
EAC_fn = EAC_mcn*EAC_nt+EAC_xin*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_pint(+1)/(EAC_pint^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_fn(+1);
// Definition of gn
[name='EAC_gn']
EAC_gn = EAC_pnt*EAC_nt+EAC_xin*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAC_pint(+1)/(EAC_pint^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^(EAC_thetan-1)*EAC_gn(+1);
// Aggregate intermediate-good price dynamics
[name='EAC_pnt']
EAC_pnt = ((1-EAC_xin)*EAC_pnttilde^(1-EAC_thetan)+EAC_xin*(EAC_pnt(-1)/EAC_pic)^(1-EAC_thetan)*(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin)))^(1-EAC_thetan))^(1/(1-EAC_thetan));
// Intermediate-good price inflation
[name='EAC_pint']
EAC_pint = EAC_pnt/EAC_pnt(-1)*EAC_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAA_pimtilde
[name='EAAEAC_pimtilde']
EAAEAC_pimtilde = (EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAA_fx/EACEAA_gx)*EAAEAC_pim;
// Definition of fx
[name='EACEAA_fx']
EACEAA_fx = EAA_size/EAC_size*EAAEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAA_fx(+1);
// Definition of gx   
[name='EACEAA_gx']
EACEAA_gx = EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAAEAC_piim(+1)/(EAAEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAA_pim
[name='EAAEAC_pim']
EAAEAC_pim= ((1-EAC_xix)*EAAEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAAEAC_pim(-1)/EAA_pic)^(1-EAC_thetat)*(EAAEAC_piim(-1)^EAC_chix*EAA_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat))^(-1/(1-EAC_thetat)) ;
// Intermediate-good price inflation, using EAC_pix = EAA_piim
[name='EAAEAC_piim']
EAAEAC_piim = EAAEAC_pim/EAAEAC_pim(-1)*EAA_pic;
// Bilateral real exchange rate
[name='EACEAA_rer']
EACEAA_rer = EAC_rer/EAA_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EACEAA_tot'] 
EACEAA_tot = EACEAA_pim/(EACEAA_rer*EAAEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAB_pimtilde
[name='EABEAC_pimtilde']
EABEAC_pimtilde = (EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAB_fx/EACEAB_gx)*EABEAC_pim;
// Definition of fx
[name='EACEAB_fx']
EACEAB_fx = EAB_size/EAC_size*EABEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAB_fx(+1);
// Definition of gx   
[name='EACEAB_gx']
EACEAB_gx = EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EABEAC_piim(+1)/(EABEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAB_pim
[name='EABEAC_pim']
EABEAC_pim= ((1-EAC_xix)*EABEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EABEAC_pim(-1)/EAB_pic)^(1-EAC_thetat)*(EABEAC_piim(-1)^EAC_chix*EAB_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat))^(-1/(1-EAC_thetat)) ;
// Intermediate-good price inflation, using EAC_pix = EAB_piim
[name='EABEAC_piim']
EABEAC_piim = EABEAC_pim/EABEAC_pim(-1)*EAB_pic;
// Bilateral real exchange rate
[name='EACEAB_rer']
EACEAB_rer = EAC_rer/EAB_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EACEAB_tot'] 
EACEAB_tot = EACEAB_pim/(EACEAB_rer*EABEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = RW_pimtilde
[name='RWEAC_pimtilde']
RWEAC_pimtilde = (EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACRW_fx/EACRW_gx)*RWEAC_pim;
// Definition of fx
[name='EACRW_fx']
EACRW_fx = RW_size/EAC_size*RWEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACRW_fx(+1);
// Definition of gx   
[name='EACRW_gx']
EACRW_gx = EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(RWEAC_piim(+1)/(RWEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = RW_pim
[name='RWEAC_pim']
RWEAC_pim= ((1-EAC_xix)*RWEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(RWEAC_pim(-1)/RW_pic)^(1-EAC_thetat)*(RWEAC_piim(-1)^EAC_chix*RW_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat))^(-1/(1-EAC_thetat)) ;
// Intermediate-good price inflation, using EAC_pix = RW_piim
[name='RWEAC_piim']
RWEAC_piim = RWEAC_pim/RWEAC_pim(-1)*RW_pic;
// Bilateral real exchange rate
[name='EACRW_rer']
EACRW_rer = EAC_rer/RW_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EACRW_tot'] 
EACRW_tot = EACRW_pim/(EACRW_rer*RWEAC_pim);
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = US_pimtilde
[name='USEAC_pimtilde']
USEAC_pimtilde = (EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACUS_fx/EACUS_gx)*USEAC_pim;
// Definition of fx
[name='EACUS_fx']
EACUS_fx = US_size/EAC_size*USEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACUS_fx(+1);
// Definition of gx   
[name='EACUS_gx']
EACUS_gx = EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(USEAC_piim(+1)/(USEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = US_pim
[name='USEAC_pim']
USEAC_pim= ((1-EAC_xix)*USEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(USEAC_pim(-1)/US_pic)^(1-EAC_thetat)*(USEAC_piim(-1)^EAC_chix*US_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat))^(-1/(1-EAC_thetat)) ;
// Intermediate-good price inflation, using EAC_pix = US_piim
[name='USEAC_piim']
USEAC_piim = USEAC_pim/USEAC_pim(-1)*US_pic;
// Bilateral real exchange rate
[name='EACUS_rer']
EACUS_rer = EAC_rer/US_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='EACUS_tot'] 
EACUS_tot = EACUS_pim/(EACUS_rer*USEAC_pim);
// Total imports 
[name='EAC_im']
EAC_im = EAC_imc+EAC_imi;
// Total import deflator
[name='EAC_pim']
EAC_pim  = (EAC_pimc*EAC_imc+EAC_pimi*EAC_imi)/EAC_im;
// Total Export deflator 
[name='EAC_pex']
EAC_pex  = 
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im/EAC_ex
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im/EAC_ex
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im/EAC_ex
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im/EAC_ex
;
// Effective real exchange rate: double weighting (imports)
[name='EACEAA_weightim']
EACEAA_weightim = EACEAA_rer*EAA_pex*EACEAA_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
[name='EACEAA_weightex']
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
[name='EACEAA_weight']
EACEAA_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAA_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAA_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EACEAB_weightim']
EACEAB_weightim = EACEAB_rer*EAB_pex*EACEAB_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
[name='EACEAB_weightex']
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
[name='EACEAB_weight']
EACEAB_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAB_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EACRW_weightim']
EACRW_weightim = EACRW_rer*RW_pex*EACRW_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
[name='EACRW_weightex']
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
[name='EACRW_weight']
EACRW_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACRW_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACRW_weightex;
// Effective real exchange rate: double weighting (imports)
[name='EACUS_weightim']
EACUS_weightim = EACUS_rer*US_pex*EACUS_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
[name='EACUS_weightex']
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
[name='EACUS_weight']
EACUS_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACUS_weightex;
// Effective real exchange rate
[name='EAC_reer']
EAC_reer = 1
*EACEAA_rer^EACEAA_weight
*EACEAB_rer^EACEAB_weight
*EACRW_rer^EACRW_weight
*EACUS_rer^EACUS_weight
;
// Effective terms of trade
[name='EAC_etot']
EAC_etot = 1
*EACEAA_tot^EACEAA_weight
*EACEAB_tot^EACEAB_weight
*EACRW_tot^EACRW_weight
*EACUS_tot^EACUS_weight
;
//-----------------
// Final-good firms
//-----------------
[name='EAC_imc'] 
// Private consumption good (import)
EAC_imc = (
+EACEAB_numc ^(1/EAC_mumc)*((1-EACEAB_gammaimc)*EACEAB_imc)^(1-1/EAC_mumc)
+EACRW_numc ^(1/EAC_mumc)*((1-EACRW_gammaimc)*EACRW_imc)^(1-1/EAC_mumc)
+EACUS_numc ^(1/EAC_mumc)*((1-EACUS_gammaimc)*EACUS_imc)^(1-1/EAC_mumc)
+(1
-EACEAB_numc
-EACRW_numc
-EACUS_numc
)^(1/EAC_mumc)*((1-EACEAA_gammaimc)*EACEAA_imc)^(1-1/EAC_mumc))^(EAC_mumc/(EAC_mumc-1));
// Demand for bilateral consumption import goods
[name='EACEAB_imc'] 
EACEAB_imc = EACEAB_numc*(EACEAB_pim/(EACEAB_gammaimcdag*EAC_pimc))^(-EAC_mumc)*EAC_imc/(1-EACEAB_gammaimc);
[name='EACEAA_imc']
EACEAA_imc = (1
-EACEAB_numc
-EACRW_numc
-EACUS_numc
)*(EACEAA_pim/(EACEAA_gammaimcdag*EAC_pimc))^(-EAC_mumc)*EAC_imc/(1-EACEAA_gammaimc);
[name='EACUS_imc'] 
EACUS_imc = EACUS_numc*(EACUS_pim/(EACUS_gammaimcdag*EAC_pimc))^(-EAC_mumc)*EAC_imc/(1-EACUS_gammaimc);
// Price of the consumption good (import)
[name='EAC_pimc']
EAC_pimc = (
+EACEAB_numc *(EACEAB_pim/EACEAB_gammaimcdag)^(1-EAC_mumc)
+EACRW_numc *(EACRW_pim/EACRW_gammaimcdag)^(1-EAC_mumc)
+EACUS_numc *(EACUS_pim/EACUS_gammaimcdag)^(1-EAC_mumc)
+(1
-EACEAB_numc
-EACRW_numc
-EACUS_numc
)*(EACEAA_pim/EACEAA_gammaimcdag)^(1-EAC_mumc))^(1/(1-EAC_mumc));
// Private consumption good (import) inflation
[name='EAC_piimc']
EAC_piimc = EAC_pimc/EAC_pimc(-1)*EAC_pic;
// Private consumption good (import) inflation
[name='EAC_piimc4']
EAC_piimc4 = EAC_pimc/EAC_pimc(-4)*EAC_pic4;
// Private consumption good (import) inflation
[name='EAC_piex4'] 
EAC_piex4 = EAC_pex/EAC_pex(-4)*EAC_pic4;
[name='EAC_imi'] 
EAC_imi = (
+EACEAB_numi ^(1/EAC_mumi)*((1-EACEAB_gammaimi)*EACEAB_imi)^(1-1/EAC_mumi)
+EACRW_numi ^(1/EAC_mumi)*((1-EACRW_gammaimi)*EACRW_imi)^(1-1/EAC_mumi)
+EACUS_numi ^(1/EAC_mumi)*((1-EACUS_gammaimi)*EACUS_imi)^(1-1/EAC_mumi)
+(1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)^(1/EAC_mumi)*((1-EACEAA_gammaimi)*EACEAA_imi)^(1-1/EAC_mumi))^(EAC_mumi/(EAC_mumi-1));
// Demand for bilateral investment import goods
[name='EACEAB_imi'] 
EACEAB_imi = EACEAB_numi*(EACEAB_pim/(EACEAB_gammaimidag*EAC_pimi))^(-EAC_mumi)*EAC_imi/(1-EACEAB_gammaimi);
[name='EACEAA_imi']
EACEAA_imi = (1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)*(EACEAA_pim/(EACEAA_gammaimidag*EAC_pimi))^(-EAC_mumi)*EAC_imi/(1-EACEAA_gammaimi);
[name='EACUS_imi'] 
EACUS_imi = EACUS_numi*(EACUS_pim/(EACUS_gammaimidag*EAC_pimi))^(-EAC_mumi)*EAC_imi/(1-EACUS_gammaimi);
// Price of the investment good (import)
[name='EAC_pimi']
EAC_pimi = (
+EACEAB_numi *(EACEAB_pim/EACEAB_gammaimidag)^(1-EAC_mumi)
+EACRW_numi *(EACRW_pim/EACRW_gammaimidag)^(1-EAC_mumi)
+EACUS_numi *(EACUS_pim/EACUS_gammaimidag)^(1-EAC_mumi)
+(1
-EACEAB_numi
-EACRW_numi
-EACUS_numi
)*(EACEAA_pim/EACEAA_gammaimidag)^(1-EAC_mumi))^(1/(1-EAC_mumi));
// Private investment good (import) inflation
[name='EAC_piimi']
EAC_piimi = EAC_pimi/EAC_pimi(-1)*EAC_pic;
// Wedge between aggregate demand and production, using EAC_x = RW_size/EAC_size*RW_im
[name='EAC_yst']
EAC_yst = EAC_sh*EAC_ht
+EACEAA_sx*EAA_size/EAC_size*EAAEAC_im
+EACEAB_sx*EAB_size/EAC_size*EABEAC_im
+EACRW_sx*RW_size/EAC_size*RWEAC_im
+EACUS_sx*US_size/EAC_size*USEAC_im
;
// Aggregate demand for bilateral imported intermediate goods
[name='EACEAA_im']
EACEAA_im = EACEAA_imi+EACEAA_imc;
[name='EACEAB_im']
EACEAB_im = EACEAB_imi+EACEAB_imc;
[name='EACRW_im']
EACRW_im = EACRW_imi+EACRW_imc;
[name='EACUS_im']
EACUS_im = EACUS_imi+EACUS_imc;
// Private consumption good firm
// Private consumption good (tradable)
[name='EAC_ttc']
EAC_ttc = ((EAC_nutc)^(1/EAC_mutc)*EAC_htc^(1-1/EAC_mutc)+(1-EAC_nutc)^(1/EAC_mutc)*EAC_imc^(1-1/EAC_mutc))^(EAC_mutc/(EAC_mutc-1));
// Private consumption good  (total)
[name='EAC_qc']
EAC_qc = ((EAC_nuc)^(1/EAC_muc)*EAC_ttc^(1-1/EAC_muc)+(1-EAC_nuc)^(1/EAC_muc)*EAC_ntc^(1-1/EAC_muc))^(EAC_muc/(EAC_muc-1)) ;
// Demand for domestic intermediate goods - NONTRADABLE
[name='EAC_ntc']
EAC_ntc = (1-EAC_nuc)*(EAC_pnt)^(-EAC_muc)*EAC_qc;
// Price of the consumption good (tradable) 
[name='EAC_pttc'] 
EAC_pttc = ((EAC_nutc)*EAC_pht^(1-EAC_mutc)+(1-EAC_nutc)*EAC_pimc^(1-EAC_mutc))^(1/(1-EAC_mutc));
// Price of the consumption good 
1^(1-EAC_muc) = (EAC_nuc)*EAC_pttc^(1-EAC_muc)+(1-EAC_nuc)*EAC_pnt^(1-EAC_muc);
// Demand for domestic intermediate goods
[name='EAC_htc']
EAC_htc = EAC_nutc*(EAC_pht/EAC_pttc)^(-EAC_mutc)*EAC_ttc;
// Import adjustment cost
[name='EACEAA_gammaimc']
EACEAA_gammaimc = EAC_gammaimc1/2*((EACEAA_imc/EAC_qc)/(EACEAA_imc(-1)/EAC_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACEAA_gammaimcdag']
EACEAA_gammaimcdag = 1-EACEAA_gammaimc-EAC_gammaimc1*((EACEAA_imc/EAC_qc)/(EACEAA_imc(-1)/EAC_qc(-1))-1)*(EACEAA_imc/EAC_qc)/(EACEAA_imc(-1)/EAC_qc(-1));
// Import adjustment cost
[name='EACEAB_gammaimc']
EACEAB_gammaimc = EAC_gammaimc1/2*((EACEAB_imc/EAC_qc)/(EACEAB_imc(-1)/EAC_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACEAB_gammaimcdag']
EACEAB_gammaimcdag = 1-EACEAB_gammaimc-EAC_gammaimc1*((EACEAB_imc/EAC_qc)/(EACEAB_imc(-1)/EAC_qc(-1))-1)*(EACEAB_imc/EAC_qc)/(EACEAB_imc(-1)/EAC_qc(-1));
// Import adjustment cost
[name='EACRW_gammaimc']
EACRW_gammaimc = EAC_gammaimc1/2*((EACRW_imc/EAC_qc)/(EACRW_imc(-1)/EAC_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACRW_gammaimcdag']
EACRW_gammaimcdag = 1-EACRW_gammaimc-EAC_gammaimc1*((EACRW_imc/EAC_qc)/(EACRW_imc(-1)/EAC_qc(-1))-1)*(EACRW_imc/EAC_qc)/(EACRW_imc(-1)/EAC_qc(-1));
// Import adjustment cost
[name='EACUS_gammaimc']
EACUS_gammaimc = EAC_gammaimc1/2*((EACUS_imc/EAC_qc)/(EACUS_imc(-1)/EAC_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACUS_gammaimcdag']
EACUS_gammaimcdag = 1-EACUS_gammaimc-EAC_gammaimc1*((EACUS_imc/EAC_qc)/(EACUS_imc(-1)/EAC_qc(-1))-1)*(EACUS_imc/EAC_qc)/(EACUS_imc(-1)/EAC_qc(-1));
// Private investment good firm
// Private investment good
[name='EAC_tti']
EAC_tti = ((EAC_nuti)^(1/EAC_muti)*EAC_hti^(1-1/EAC_muti)+(1-EAC_nuti)^(1/EAC_muti)*EAC_imi^(1-1/EAC_muti))^(EAC_muti/(EAC_muti-1));
// Private investment good
[name='EAC_qi']
EAC_qi = ((EAC_nui)^(1/EAC_mui)*EAC_tti^(1-1/EAC_mui)+(1-EAC_nui)^(1/EAC_mui)*EAC_nti^(1-1/EAC_mui))^(EAC_mui/(EAC_mui-1));
// Demand for domestic intermediate goods
[name='EAC_nti']
EAC_nti = (1-EAC_nui)*(EAC_pnt/EAC_pi)^(-EAC_mui)*EAC_qi;
// Price of the investment good (TRADABLE) 
[name='EAC_ptti'] 
EAC_ptti= ((EAC_nuti)*EAC_pht^(1-EAC_muti)+(1-EAC_nuti)*EAC_pimi^(1-EAC_muti))^(1/(EAC_muti-1)) ;
// Price of the investment good
EAC_pi = ((EAC_nui)*EAC_ptti^(1-EAC_mui)+(1-EAC_nui)*(EAC_pnt)^(1-EAC_mui))^(1/(1-EAC_mui));
// Auxiliary equation for the price of the investment good in steady state
// Demand for domestic intermediate goods
[name='EAC_hti']
EAC_hti = EAC_nuti*(EAC_pht/EAC_ptti)^(-EAC_muti)*EAC_tti;
// Import adjustment cost
[name='EACEAA_gammaimi']
EACEAA_gammaimi = EAC_gammaimi1/2*((EACEAA_imi/EAC_qi)/(EACEAA_imi(-1)/EAC_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACEAA_gammaimidag']
EACEAA_gammaimidag = 1-EACEAA_gammaimi-EAC_gammaimi1*((EACEAA_imi/EAC_qi)/(EACEAA_imi(-1)/EAC_qi)-1)*((EACEAA_imi/EAC_qi)/(EACEAA_imi(-1)/EAC_qi(-1)));
// Import adjustment cost
[name='EACEAB_gammaimi']
EACEAB_gammaimi = EAC_gammaimi1/2*((EACEAB_imi/EAC_qi)/(EACEAB_imi(-1)/EAC_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACEAB_gammaimidag']
EACEAB_gammaimidag = 1-EACEAB_gammaimi-EAC_gammaimi1*((EACEAB_imi/EAC_qi)/(EACEAB_imi(-1)/EAC_qi)-1)*((EACEAB_imi/EAC_qi)/(EACEAB_imi(-1)/EAC_qi(-1)));
// Import adjustment cost
[name='EACRW_gammaimi']
EACRW_gammaimi = EAC_gammaimi1/2*((EACRW_imi/EAC_qi)/(EACRW_imi(-1)/EAC_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACRW_gammaimidag']
EACRW_gammaimidag = 1-EACRW_gammaimi-EAC_gammaimi1*((EACRW_imi/EAC_qi)/(EACRW_imi(-1)/EAC_qi)-1)*((EACRW_imi/EAC_qi)/(EACRW_imi(-1)/EAC_qi(-1)));
// Import adjustment cost
[name='EACUS_gammaimi']
EACUS_gammaimi = EAC_gammaimi1/2*((EACUS_imi/EAC_qi)/(EACUS_imi(-1)/EAC_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='EACUS_gammaimidag']
EACUS_gammaimidag = 1-EACUS_gammaimi-EAC_gammaimi1*((EACUS_imi/EAC_qi)/(EACUS_imi(-1)/EAC_qi)-1)*((EACUS_imi/EAC_qi)/(EACUS_imi(-1)/EAC_qi(-1)));
// Trade balance
[name='EAC_tb']
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
[name='EAC_ex']
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
[name='EAC_b']
		
			EAC_b = (-1)*(1/(EAC_r(-1)*(1-EAC_gammab(-1)))^(-1)) * (- EAC_pnt(-1)*EAC_g(-1) - EAC_tr(-1)
			- EAC_b(-1)*EAC_pic(-1)^(-1) - EAC_m(-2)*EAC_pic(-1)^(-1) + EAC_tauc(-1)*EAC_c(-1)+(EAC_taun(-1)+EAC_tauwh(-1))*(EAC_wi(-1)*EAC_ndi(-1)+EAC_wj(-1)*EAC_ndj(-1))+EAC_tauwf(-1)*EAC_w(-1)*EAC_nd(-1)+EAC_tauk(-1)*(EAC_rk(-1)*EAC_u(-1)-(EAC_gammau(-1)+EAC_delta)*EAC_pi(-1))*EAC_k(-1)+EAC_taud(-1)*EAC_d(-1)+EAC_t(-1)+EAC_m(-1));
// Government spending, using EAC_pg = EAC_pht
[name='EAC_g']
EAC_g = EAC_gy*EAC_pybar*EAC_ybar/EAC_pnt;
// Transfers
[name='EAC_tr']
EAC_tr = EAC_try*EAC_pybar*EAC_ybar;
// Fiscal rule
[name='EAC_t']
EAC_t = (EAC_phitb*(EAC_b/(EAC_pybar*EAC_ybar)-EAC_bytarget))*(EAC_pybar*EAC_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
[name='EAC_ti']
EAC_ti = EAC_upsilont*EAC_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
[name='EAC_tri']
EAC_tri = EAC_upsilontr*EAC_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
// Monetary policy rule
	EAC_r^4-1 = EA_phirr*(EAC_r(-1)^4-1)+(1-EA_phirr)*(EAC_rrstar^4*EAC_pi4target-1
	+EA_phirpi*(EA_pic4-EAC_pi4target))
	+EA_phirgy*(EA_ygrowth-1)+EA_epsr;
// Definition of annual inflation
EAC_pic4 = EAC_pic*EAC_pic(-1)*EAC_pic(-2)*EAC_pic(-3);
// Real interest rate
EAC_rr-1 = EAC_r/EAC_pic(+1)-1;
// Equilibrium real interest rate
[name='EAC_rrstar']
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
[name='EAC_ci']
EAC_ci = (EAC_c-EAC_omega*EAC_cj )/(1-EAC_omega);
// Aggregate money holdings
[name='EAC_m']
EAC_m = (1-EAC_omega)*EAC_mi+EAC_omega*EAC_mj;
// Aggregate capital stock
[name='EAC_k']
EAC_k = (1-EAC_omega)*EAC_ki;
// Aggregate investment
[name='EAC_ii']
EAC_ii = EAC_i/(1-EAC_omega);
// Aggregate lump-sum transfers
[name='EAC_trj']
EAC_trj = 
1/EAC_omega*EAC_tr-(1-EAC_omega)/EAC_omega*EAC_tri
;
// Aggregate lump-sum taxes
[name='EAC_tj']
EAC_tj = 
1/EAC_omega*EAC_t-(1-EAC_omega)/EAC_omega*EAC_ti
;
// Aggregate transaction costs
[name='EAC_gammav']
EAC_gammav = (1-EAC_omega)*EAC_ci*EAC_gammavi+EAC_omega*EAC_cj*EAC_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
[name='EAC_ni']
EAC_ni = EAC_si*EAC_ndi;
// Wage dispersion
[name='EAC_si']
EAC_si = (1-EAC_xii)*(EAC_witilde/EAC_wi)^(-EAC_etai)+EAC_xii*(EAC_wi(-1)/EAC_wi)^(-EAC_etai)*(EAC_pic/(EAC_pic(-1)^EAC_chii*EAC_pi4target^(1/4*(1-EAC_chii))))^(EAC_etai)*EAC_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
[name='EAC_nj']
EAC_nj = EAC_sj*EAC_ndj;
// Wage dispersion
[name='EAC_sj']
EAC_sj = (1-EAC_xij)*(EAC_wjtilde/EAC_wj)^(-EAC_etaj)+EAC_xij*(EAC_wj(-1)/EAC_wj)^(-EAC_etaj)*(EAC_pic/(EAC_pic(-1)^EAC_chij*EAC_pi4target^(1/4*(1-EAC_chij))))^(EAC_etaj)*EAC_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
[name='EAC_u']
EAC_u = EAC_kd/EAC_k;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAC_x = RW_size/EAC_size*RW_im
[name='EAC_ysn']
EAC_ysn = EAC_snt*EAC_nt;
//  nontradables aggregate demand
[name='EAC_nt']
EAC_nt =  EAC_nti+EAC_ntc+EAC_g;
// Aggregate demand for domestic intermediate goods, using EAC_hg = EAC_g
[name='EAC_ht']
EAC_ht = EAC_htc+EAC_hti;
// Price dispersion in the domestic markets
[name='EAC_sh']
EAC_sh = (1-EAC_xih)*(EAC_phttilde/EAC_pht)^(-EAC_thetat)+EAC_xih*(EAC_piht/(EAC_piht(-1)^EAC_chih*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EAC_sh(-1);
// Price dispersion in the foreign markets
[name='EACEAA_sx']
EACEAA_sx = (1-EAC_xix)*(EAAEAC_pimtilde/EAAEAC_pim)^(-EAC_thetat)+EAC_xix*(EAAEAC_piim/(EAAEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAA_sx(-1);
[name='EACEAB_sx']
EACEAB_sx = (1-EAC_xix)*(EABEAC_pimtilde/EABEAC_pim)^(-EAC_thetat)+EAC_xix*(EABEAC_piim/(EABEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACEAB_sx(-1);
[name='EACRW_sx']
EACRW_sx = (1-EAC_xix)*(RWEAC_pimtilde/RWEAC_pim)^(-EAC_thetat)+EAC_xix*(RWEAC_piim/(RWEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACRW_sx(-1);
[name='EACUS_sx']
EACUS_sx = (1-EAC_xix)*(USEAC_pimtilde/USEAC_pim)^(-EAC_thetat)+EAC_xix*(USEAC_piim/(USEAC_piim(-1)^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chih))))^EAC_thetat*EACUS_sx(-1);
// Price dispersion in the domestic markets
[name='EAC_snt']
EAC_snt = (1-EAC_xin)*(EAC_pnttilde/EAC_pnt)^(-EAC_thetan)+EAC_xin*(EAC_pint/(EAC_pint(-1)^EAC_chin*EAC_pi4target^(1/4*(1-EAC_chin))))^EAC_thetan*EAC_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
[name='EAC_c']
EAC_c = EAC_qc - EAC_gammav ;
// Aggregate investment and capital utilisation cost
[name='EAC_i']
EAC_i = EAC_qi - EAC_k*EAC_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using EAC_pg = EAC_pht and EAC_qg = EAC_g   
[name='EAC_py']
EAC_py = (1/EAC_y) * ( EAC_qc+EAC_pi*EAC_qi+EAC_pnt*EAC_g
+EACEAA_rer*EAAEAC_pim*EAA_size/EAC_size*EAAEAC_im
-EACEAA_pim*(EACEAA_imc*(1-EACEAA_gammaimc)/EACEAA_gammaimcdag)
-EACEAA_pim*(EACEAA_imi*(1-EACEAA_gammaimi)/EACEAA_gammaimidag)
+EACEAB_rer*EABEAC_pim*EAB_size/EAC_size*EABEAC_im
-EACEAB_pim*(EACEAB_imc*(1-EACEAB_gammaimc)/EACEAB_gammaimcdag)
-EACEAB_pim*(EACEAB_imi*(1-EACEAB_gammaimi)/EACEAB_gammaimidag)
+EACRW_rer*RWEAC_pim*RW_size/EAC_size*RWEAC_im
-EACRW_pim*(EACRW_imc*(1-EACRW_gammaimc)/EACRW_gammaimcdag)
-EACRW_pim*(EACRW_imi*(1-EACRW_gammaimi)/EACRW_gammaimidag)
+EACUS_rer*USEAC_pim*US_size/EAC_size*USEAC_im
-EACUS_pim*(EACUS_imc*(1-EACUS_gammaimc)/EACUS_gammaimcdag)
-EACUS_pim*(EACUS_imi*(1-EACUS_gammaimi)/EACUS_gammaimidag)
);
// Aggregate real demand
[name='EAC_y']
EAC_y = EAC_yst+EAC_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
[name='EAC_zt']
log(EAC_zt) = (1-EAC_rhozt)*log(EAC_ztbar)+EAC_rhozt*log(EAC_zt(-1))+EAC_epszt;
[name='EAC_zn']
log(EAC_zn) = (1-EAC_rhozn)*log(EAC_znbar)+EAC_rhozn*log(EAC_zn(-1))+EAC_epszn;
// Government spending shock
[name='EAC_gy']
EAC_gy = (1-EAC_rhog)*EAC_gybar+EAC_rhog*EAC_gy(-1)+EAC_epsg;
// Transfer shock
[name='EAC_try']
EAC_try = (1-EAC_rhotr)*EAC_trybar+EAC_rhotr*EAC_try(-1)+EAC_epstr;
// Consumption tax shock
[name='EAC_tauc']
EAC_tauc = (1-EAC_rhotauc)*EAC_taucbar+EAC_rhotauc*EAC_tauc(-1)+EAC_epstauc;
// Dividend income tax shock
[name='EAC_taud']
EAC_taud = (1-EAC_rhotaud)*EAC_taudbar+EAC_rhotaud*EAC_taud(-1)+EAC_epstaud;
// Capital income tax shock
[name='EAC_tauk']
EAC_tauk = (1-EAC_rhotauk)*EAC_taukbar+EAC_rhotauk*EAC_tauk(-1)+EAC_epstauk;
// Labour income tax shock
[name='EAC_taun']
EAC_taun = (1-EAC_rhotaun)*EAC_taunbar+EAC_rhotaun*EAC_taun(-1)+EAC_epstaun;
// Payroll tax shock: households
[name='EAC_tauwh']
EAC_tauwh = (1-EAC_rhotauwh)*EAC_tauwhbar+EAC_rhotauwh*EAC_tauwh(-1)+EAC_epstauwh;
// Payroll tax shock: firms
[name='EAC_tauwf']
EAC_tauwf = (1-EAC_rhotauwf)*EAC_tauwfbar+EAC_rhotauwf*EAC_tauwf(-1)+EAC_epstauwf;
// Wage cost push shock
[name='EAC_wcst']
EAC_wcst = (1-EAC_rhowcst)*EAC_wcstbar+EAC_rhowcst*EAC_wcst(-1)+EAC_epswcst;
// Preference shock
[name='EAC_zcon']
log(EAC_zcon) = (1-EAC_rhozcon)*log(EAC_zconbar)+EAC_rhozcon*log(EAC_zcon(-1))+EAC_epszcon;
// Investment specific shock
[name='EAC_zinv']
log(EAC_zinv) = (1-EAC_rhozinv)*log(EAC_zinvbar)+EAC_rhozinv*log(EAC_zinv(-1))+EAC_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
[name='EAC_cy']
EAC_cy = EAC_c/(EAC_py*EAC_y);
// Aggregate nominal investment share
[name='EAC_iy']
EAC_iy = EAC_pi*EAC_i/(EAC_py*EAC_y);
// Aggregate nominal import share  
[name='EAC_imy']
EAC_imy = (EAC_pimc*EAC_imc+EAC_pimi*EAC_imi)/(EAC_py*EAC_y);
// Aggregate nominal import share for consumption goods 
[name='EAC_imcy']
EAC_imcy = EAC_pimc*EAC_imc/(EAC_py*EAC_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
[name='EAC_imiy']
EAC_imiy = EAC_pimi*EAC_imi/(EAC_py*EAC_y);
// Aggregate debt-to-output ratio
[name='EAC_by']
EAC_by = EAC_b/(EAC_pybar*EAC_ybar);
// Aggregate lump-sum tax-to-output ratio
[name='EAC_ty']
EAC_ty = EAC_t/(EAC_pybar*EAC_ybar);
// Aggregate labour cost share
[name='EAC_lcy']
EAC_lcy = ((1+EAC_tauwf)*EAC_w*EAC_nd)/(EAC_py*EAC_y);
// Aggregate nominal Wage share
[name='EAC_wy']
EAC_wy = (EAC_w*EAC_nd)/(EAC_py*EAC_y);
// NT sector nominal Wage share
[name='EAC_wnty']
EAC_wnty = (EAC_w*EAC_ndn)/(EAC_pnt*EAC_ysn);
// T sector nominal Wage share
[name='EAC_whty']
EAC_whty = (EAC_w*EAC_ndt)/(EAC_pht*EAC_yst);
// T sector share
[name='EAC_yhty']
EAC_yhty = EAC_pht*EAC_yst/(EAC_py*EAC_y);
// NT sector share
[name='EAC_ynty']
EAC_ynty = EAC_pnt*EAC_ysn/(EAC_py*EAC_y);
// Output gap
[name='EAC_ygap']
EAC_ygap = EAC_y/EAC_ybar-1;
// Output growth (gross rate)
[name='EAC_ygrowth']
EAC_ygrowth = EAC_y/EAC_y(-1);
// Output growth (gross rate yoy)
[name='EAC_ygrowth4']
EAC_ygrowth4 = EAC_y/EAC_y(-4);
// Domestic nominal output as a share of world nominal output
[name='EAC_yshare']
EAC_yshare  = EAC_size*EAC_py*EAC_y/EAC_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
[name='EAC_epsilonm'] 
EAC_epsilonm = -1/8*1/(EAC_r*(EAC_gammav2*EAC_r+EAC_r-1));
// Trade balance-to-GDP ratio
[name='EAC_tby'] 
EAC_tby = EAC_tb/(EAC_py*EAC_y);
// Imports of consumption goods
[name='EACEAA_imcy'] 
EACEAA_imcy  = EACEAA_pim*EACEAA_imc/(EAC_py*EAC_y);
// Imports of investment goods
[name='EACEAA_imiy'] 
EACEAA_imiy = EACEAA_pim*EACEAA_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
[name='EACEAA_excy']
EACEAA_excy  = EAA_size/EAC_size*EACEAA_rer*EAAEAC_pim*EAAEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
[name='EACEAA_exiy'] 
EACEAA_exiy  = EAA_size/EAC_size*EACEAA_rer*EAAEAC_pim*EAAEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods
[name='EACEAB_imcy'] 
EACEAB_imcy  = EACEAB_pim*EACEAB_imc/(EAC_py*EAC_y);
// Imports of investment goods
[name='EACEAB_imiy'] 
EACEAB_imiy = EACEAB_pim*EACEAB_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
[name='EACEAB_excy']
EACEAB_excy  = EAB_size/EAC_size*EACEAB_rer*EABEAC_pim*EABEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
[name='EACEAB_exiy'] 
EACEAB_exiy  = EAB_size/EAC_size*EACEAB_rer*EABEAC_pim*EABEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods
[name='EACRW_imcy'] 
EACRW_imcy  = EACRW_pim*EACRW_imc/(EAC_py*EAC_y);
// Imports of investment goods
[name='EACRW_imiy'] 
EACRW_imiy = EACRW_pim*EACRW_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
[name='EACRW_excy']
EACRW_excy  = RW_size/EAC_size*EACRW_rer*RWEAC_pim*RWEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
[name='EACRW_exiy'] 
EACRW_exiy  = RW_size/EAC_size*EACRW_rer*RWEAC_pim*RWEAC_imi/(EAC_py*EAC_y);
// Imports of consumption goods
[name='EACUS_imcy'] 
EACUS_imcy  = EACUS_pim*EACUS_imc/(EAC_py*EAC_y);
// Imports of investment goods
[name='EACUS_imiy'] 
EACUS_imiy = EACUS_pim*EACUS_imi/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
[name='EACUS_excy']
EACUS_excy  = US_size/EAC_size*EACUS_rer*USEAC_pim*USEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
[name='EACUS_exiy'] 
EACUS_exiy  = US_size/EAC_size*EACUS_rer*USEAC_pim*USEAC_imi/(EAC_py*EAC_y);
// Internal real exchange rate
[name='EAC_internalrer'] 
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
[name='RW_utili']
RW_utili = 
RW_zcon*log(RW_ci-RW_kappa*RW_ci(-1))-1/(1+RW_zeta)*(RW_ni)^(1+RW_zeta)+RW_beta*RW_utili(+1)
;
// Marginal utility of consumption
[name='RW_lambdai']
RW_lambdai = (RW_zcon*(RW_ci-RW_kappa*RW_ci(-1))^(-RW_sigma))/(1+RW_tauc+RW_gammavi+RW_vi*RW_gammavider);
// Euler equation for government bonds
[name='RW_r']
RW_r = RW_beta^(-1)*RW_lambdai/RW_lambdai(+1)*RW_pic(+1);
// Euler equation for money
[name='RW_vi']
RW_vi = ((1-RW_beta*RW_lambdai(+1)/(RW_lambdai*RW_pic(+1)))/RW_gammavider)^(1/2);
// Consumption-based velocity
[name='RW_mi']
RW_mi = RW_ci/RW_vi;
// Transaction cost
[name='RW_gammavi']
RW_gammavi = RW_gammav1*RW_vi+RW_gammav2/RW_vi-2*(RW_gammav1*RW_gammav2)^(1/2);
// Derivative of transaction cost
[name='RW_gammavider']
RW_gammavider = RW_gammav1-RW_gammav2*RW_vi^(-2);
// Capital accumulation
[name='RW_ki']
RW_ki = (1-RW_delta)*RW_ki(-1)+(1-RW_gammai(-1))*RW_ii(-1)*RW_zinv;
// Investment adjustment cost
[name='RW_gammai']
RW_gammai = RW_gammai1/2*(RW_ii/RW_ii(-1)-1)^2;
// Derivative of investment adjustment cost
[name='RW_gammaider']
RW_gammaider = RW_gammai1*(RW_ii/RW_ii(-1)-1)/RW_ii(-1);
// Capacity utilisation cost
[name='RW_gammau']
RW_gammau = ((RW_beta^(-1)-1+RW_delta)*RW_qbar-RW_delta*RW_taukbar*RW_pibar)/((1-RW_taukbar)*RW_pibar)*(RW_u-1)+RW_gammau2/2*(RW_u-1)^2;
// Derivative of capacity utilisation cost
[name='RW_gammauder']
RW_gammauder = ((RW_beta^(-1)-1+RW_delta)*RW_qbar-RW_delta*RW_taukbar*RW_pibar)/((1-RW_taukbar)*RW_pibar)+RW_gammau2*(RW_u-1);
// Optimal capacity utilisation (FOC)
[name='RW_rk']
RW_rk = RW_gammauder*RW_pi;
// Tobin's Q
[name='RW_pi']
RW_pi = RW_q*RW_zinv*(1-RW_gammai-RW_gammaider*RW_ii)+RW_beta*RW_lambdai(+1)/RW_lambdai*RW_q(+1)*RW_zinv(+1)*RW_gammaider(+1)*RW_ii(+1)^2/RW_ii;
// Auxiliary equation for Tobin's Q in steady state
// Rate of return on capital
[name='RW_q']
RW_q = RW_beta*RW_lambdai(+1)/RW_lambdai*((1-RW_tauk(+1))*(RW_rk(+1)*RW_u(+1)-RW_gammau(+1)*RW_pi(+1))+(RW_tauk(+1)*RW_delta)*RW_pi(+1)+(1-RW_delta)*RW_q(+1));
// Optimal wage contract (FOC)
[name='RW_witilde']
RW_witilde = (RW_etai/(RW_etai-1)*RW_fi/RW_gi+RW_wcst)^(1/(1+RW_etai*RW_zeta));
// Definition of fi
[name='RW_fi']
RW_fi = RW_wi^(RW_etai*(1+RW_zeta))*RW_ndi^(1+RW_zeta)+RW_xii*RW_beta*(RW_pic(+1)/(RW_pic^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai*(1+RW_zeta))*RW_fi(+1);
// Definition of gi
[name='RW_gi']
RW_gi = RW_lambdai*(1-RW_taun-RW_tauwh)*RW_wi^RW_etai*RW_ndi+RW_xii*RW_beta*(RW_pic(+1)/(RW_pic^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai-1)*RW_gi(+1);
// Aggregate wage rate
[name='RW_wi']
RW_wi = ((1-RW_xii)*RW_witilde^(1-RW_etai)+RW_xii*RW_wi(-1)^(1-RW_etai)*(RW_pic(-1)^RW_chii*RW_pi4target^(1/4*(1-RW_chii))/RW_pic)^(1-RW_etai))^(1/(1-RW_etai));
//-------------
// Household J
//-------------
// Utility
[name='RW_utilj']
RW_utilj = 
RW_zcon*log(RW_cj-RW_kappa*RW_cj(-1))-1/(1+RW_zeta)*RW_nj^(1+RW_zeta)+RW_beta*RW_utilj(+1)
;
// Budget constraint
[name='RW_mj']
RW_mj = (1-RW_taun-RW_tauwh)*RW_wj*RW_nj+RW_trj-RW_tj+RW_mj(-1)*RW_pic^(-1) - (1+RW_tauc+RW_gammavj)*RW_cj;
// Marginal utility of consumption
[name='RW_cj']
RW_cj = ((RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder))^(1/RW_sigma))/RW_zcon + RW_kappa*RW_cj(-1);
// Euler equation for money
[name='RW_lambdaj']
RW_lambdaj = RW_beta*RW_lambdaj(+1)/(1 - RW_vj^(2)*RW_gammavjder)/RW_pic(+1);
// Consumption-based velocity
[name='RW_vj']
RW_vj = RW_cj/RW_mj;
// Transaction technology
[name='RW_gammavj']
RW_gammavj = RW_gammav1*RW_vj+RW_gammav2/RW_vj-2*(RW_gammav1*RW_gammav2)^(1/2);
// Derivative of transaction technology
[name='RW_gammavjder']
RW_gammavjder = RW_gammav1-RW_gammav2*RW_vj^(-2);
// Optimal wage contract (FOC)
[name='RW_wjtilde']
RW_wjtilde = (RW_etaj/(RW_etaj-1)*RW_fj/RW_gj+RW_wcst)^(1/(1+RW_etaj*RW_zeta));
// Definition of fj
[name='RW_fj']
RW_fj = RW_wj^(RW_etaj*(1+RW_zeta))*RW_ndj^(1+RW_zeta)+RW_xij*RW_beta*(RW_pic(+1)/(RW_pic^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj*(1+RW_zeta))*RW_fj(+1);
// Definition of gj
[name='RW_gj']
RW_gj = RW_lambdaj*(1-RW_taun-RW_tauwh)*RW_wj^RW_etaj*RW_ndj+RW_xij*RW_beta*(RW_pic(+1)/(RW_pic^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj-1)*RW_gj(+1);
// Aggregate wage rate
[name='RW_wj']
RW_wj = ((1-RW_xij)*RW_wjtilde^(1-RW_etaj)+RW_xij*RW_wj(-1)^(1-RW_etaj)*(RW_pic(-1)^RW_chij*RW_pi4target^(1/4*(1-RW_chij))/RW_pic)^(1-RW_etaj))^(1/(1-RW_etaj));
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
[name='RW_ndt']
RW_ndt = ((RW_yst + RW_psitbar)/(RW_zt*RW_kdt^RW_alphat))^(1/(1-RW_alphat));
// Production function nontradable
[name='RW_ndn'] 
RW_ndn = ((RW_ysn + RW_psinbar)/(RW_zn*RW_kdn^RW_alphan))^(1/(1-RW_alphan));
// Real marginal cost tradable
[name='RW_mct']
RW_mct = 1/(RW_zt*(RW_alphat)^(RW_alphat)*(1-RW_alphat)^(1-RW_alphat))*RW_rk^(RW_alphat)*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
// Real marginal cost nontradable
[name='RW_mcn']
RW_mcn = 1/(RW_zn*(RW_alphan)^(RW_alphan)*(1-RW_alphan)^(1-RW_alphan))*RW_rk^(RW_alphan)*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
// Wage Inflation (qoq)
[name='RW_piw']
RW_piw = RW_w/RW_w(-1)*RW_pic;
// Wage Inflation (yoy)
[name='RW_piw4']
RW_piw4 = RW_piw*RW_piw(-1)*RW_piw(-2)*RW_piw(-3);
// Auxiliary equation for steady-state fixed cost
// Auxiliary equation for steady-state fixed cost
// Capital input (FOC)
[name='RW_kdt']
RW_kdt= RW_alphat*(RW_yst+RW_psitbar)/(RW_rk*RW_mct) ;
// Capital input (FOC)
[name='RW_kdn']
RW_kdn = RW_alphan*(RW_ysn+RW_psinbar)/(RW_rk*RW_mcn);
// Total capital demand
[name='RW_kd']
RW_kd = RW_kdn + RW_kdt;
// Demand for labour services by household I
[name='RW_w']
RW_w = 
(RW_wi/(RW_ndi/RW_nd/(1-RW_omega))^(1/(-RW_eta)))
;
// Demand for labour services by household J
[name='RW_ndj']
RW_ndj = 
RW_omega*(RW_wj/RW_w)^(-RW_eta)*RW_nd
;
// Aggregate labour demand
[name='RW_ndi']
RW_ndi =  
(((RW_nd)^((RW_eta-1)/RW_eta)-RW_omega^(1/RW_eta)*RW_ndj^(1-1/RW_eta))/(1-RW_omega)^(1/RW_eta))^(1/(1-1/RW_eta)) 
;
// Total demand 
[name='RW_nd']
RW_nd = RW_ndt + RW_ndn;
// Aggregate dividends
[name='RW_d']
RW_d = RW_py*RW_y-RW_rk*RW_kd-(1+RW_tauwf)*RW_w*RW_nd;
// Non-tradable sector dividends
[name='RW_dn']
RW_dn = RW_pnt*RW_ysn-RW_rk*RW_kdn-(1+RW_tauwf)*RW_w*RW_ndn;
// Tradable sector dividends
[name='RW_dt']
RW_dt = RW_pht*RW_ht
+EAARW_pim*RWEAA_rer*(EAARW_imc+EAARW_imi)*EAA_size/RW_size
+EABRW_pim*RWEAB_rer*(EABRW_imc+EABRW_imi)*EAB_size/RW_size
+EACRW_pim*RWEAC_rer*(EACRW_imc+EACRW_imi)*EAC_size/RW_size
+USRW_pim*RWUS_rer*(USRW_imc+USRW_imi)*US_size/RW_size
-RW_rk*RW_kdt-(1+RW_tauwf)*RW_w*RW_ndt;
// Optimal price contract set in domestic markets (FOC)
[name='RW_phttilde']
RW_phttilde= RW_thetat/(RW_thetat-1)*RW_fh/RW_gh*RW_pht;
// Definition of fh
[name='RW_fh']
RW_fh = RW_mct*RW_ht+RW_xih*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piht(+1)/(RW_piht^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_fh(+1);
// Definition of gh
[name='RW_gh']
RW_gh = RW_pht*RW_ht+RW_xih*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_piht(+1)/(RW_piht^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^(RW_thetat-1)*RW_gh(+1);
// Aggregate intermediate-good price dynamics
[name='RW_pht']
RW_pht = ((1-RW_xih)*RW_phttilde^(1-RW_thetat)+RW_xih*(RW_pht(-1)/RW_pic)^(1-RW_thetat)*(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat))^(1/(1-RW_thetat));
// Intermediate-good price inflation
[name='RW_piht']
RW_piht = RW_pht/RW_pht(-1)*RW_pic;
// Optimal price contract set in domestic markets (FOC)
[name='RW_pnttilde']
RW_pnttilde = RW_thetan/(RW_thetan-1)*RW_fn/RW_gn*RW_pnt;
// Definition of fn
[name='RW_fn']
RW_fn = RW_mcn*RW_nt+RW_xin*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_pint(+1)/(RW_pint^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_fn(+1);
// Definition of gn
[name='RW_gn']
RW_gn = RW_pnt*RW_nt+RW_xin*RW_beta*RW_lambdai(+1)/RW_lambdai*(RW_pint(+1)/(RW_pint^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^(RW_thetan-1)*RW_gn(+1);
// Aggregate intermediate-good price dynamics
[name='RW_pnt']
RW_pnt = ((1-RW_xin)*RW_pnttilde^(1-RW_thetan)+RW_xin*(RW_pnt(-1)/RW_pic)^(1-RW_thetan)*(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin)))^(1-RW_thetan))^(1/(1-RW_thetan));
// Intermediate-good price inflation
[name='RW_pint']
RW_pint = RW_pnt/RW_pnt(-1)*RW_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAA_pimtilde
[name='EAARW_pimtilde']
EAARW_pimtilde = (RW_cpim*RW_thetat/(RW_thetat-1)*RWEAA_fx/RWEAA_gx)*EAARW_pim;
// Definition of fx
[name='RWEAA_fx']
RWEAA_fx = EAA_size/RW_size*EAARW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAA_fx(+1);
// Definition of gx   
[name='RWEAA_gx']
RWEAA_gx = RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAARW_piim(+1)/(EAARW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAA_pim
[name='EAARW_pim']
EAARW_pim= ((1-RW_xix)*EAARW_pimtilde^(1-RW_thetat)+RW_xix*(EAARW_pim(-1)/EAA_pic)^(1-RW_thetat)*(EAARW_piim(-1)^RW_chix*EAA_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat))^(-1/(1-RW_thetat)) ;
// Intermediate-good price inflation, using RW_pix = EAA_piim
[name='EAARW_piim']
EAARW_piim = EAARW_pim/EAARW_pim(-1)*EAA_pic;
// Bilateral real exchange rate
[name='RWEAA_rer']
RWEAA_rer = RW_rer/EAA_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='RWEAA_tot'] 
RWEAA_tot = RWEAA_pim/(RWEAA_rer*EAARW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAB_pimtilde
[name='EABRW_pimtilde']
EABRW_pimtilde = (RW_cpim*RW_thetat/(RW_thetat-1)*RWEAB_fx/RWEAB_gx)*EABRW_pim;
// Definition of fx
[name='RWEAB_fx']
RWEAB_fx = EAB_size/RW_size*EABRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAB_fx(+1);
// Definition of gx   
[name='RWEAB_gx']
RWEAB_gx = RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EABRW_piim(+1)/(EABRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAB_pim
[name='EABRW_pim']
EABRW_pim= ((1-RW_xix)*EABRW_pimtilde^(1-RW_thetat)+RW_xix*(EABRW_pim(-1)/EAB_pic)^(1-RW_thetat)*(EABRW_piim(-1)^RW_chix*EAB_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat))^(-1/(1-RW_thetat)) ;
// Intermediate-good price inflation, using RW_pix = EAB_piim
[name='EABRW_piim']
EABRW_piim = EABRW_pim/EABRW_pim(-1)*EAB_pic;
// Bilateral real exchange rate
[name='RWEAB_rer']
RWEAB_rer = RW_rer/EAB_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='RWEAB_tot'] 
RWEAB_tot = RWEAB_pim/(RWEAB_rer*EABRW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAC_pimtilde
[name='EACRW_pimtilde']
EACRW_pimtilde = (RW_cpim*RW_thetat/(RW_thetat-1)*RWEAC_fx/RWEAC_gx)*EACRW_pim;
// Definition of fx
[name='RWEAC_fx']
RWEAC_fx = EAC_size/RW_size*EACRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAC_fx(+1);
// Definition of gx   
[name='RWEAC_gx']
RWEAC_gx = RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EACRW_piim(+1)/(EACRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAC_pim
[name='EACRW_pim']
EACRW_pim= ((1-RW_xix)*EACRW_pimtilde^(1-RW_thetat)+RW_xix*(EACRW_pim(-1)/EAC_pic)^(1-RW_thetat)*(EACRW_piim(-1)^RW_chix*EAC_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat))^(-1/(1-RW_thetat)) ;
// Intermediate-good price inflation, using RW_pix = EAC_piim
[name='EACRW_piim']
EACRW_piim = EACRW_pim/EACRW_pim(-1)*EAC_pic;
// Bilateral real exchange rate
[name='RWEAC_rer']
RWEAC_rer = RW_rer/EAC_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='RWEAC_tot'] 
RWEAC_tot = RWEAC_pim/(RWEAC_rer*EACRW_pim);
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = US_pimtilde
[name='USRW_pimtilde']
USRW_pimtilde = (RW_cpim*RW_thetat/(RW_thetat-1)*RWUS_fx/RWUS_gx)*USRW_pim;
// Definition of fx
[name='RWUS_fx']
RWUS_fx = US_size/RW_size*USRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWUS_fx(+1);
// Definition of gx   
[name='RWUS_gx']
RWUS_gx = RWUS_rer*USRW_pim*US_size/RW_size*USRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(USRW_piim(+1)/(USRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWUS_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = US_pim
[name='USRW_pim']
USRW_pim= ((1-RW_xix)*USRW_pimtilde^(1-RW_thetat)+RW_xix*(USRW_pim(-1)/US_pic)^(1-RW_thetat)*(USRW_piim(-1)^RW_chix*US_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat))^(-1/(1-RW_thetat)) ;
// Intermediate-good price inflation, using RW_pix = US_piim
[name='USRW_piim']
USRW_piim = USRW_pim/USRW_pim(-1)*US_pic;
// Bilateral real exchange rate
[name='RWUS_rer']
RWUS_rer = RW_rer/US_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='RWUS_tot'] 
RWUS_tot = RWUS_pim/(RWUS_rer*USRW_pim);
// Total imports 
[name='RW_im']
RW_im = RW_imc+RW_imi;
// Total import deflator
[name='RW_pim']
RW_pim  = (RW_pimc*RW_imc+RW_pimi*RW_imi)/RW_im;
// Total Export deflator 
[name='RW_pex']
RW_pex  = 
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im/RW_ex
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im/RW_ex
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im/RW_ex
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im/RW_ex
;
// Effective real exchange rate: double weighting (imports)
[name='RWEAA_weightim']
RWEAA_weightim = RWEAA_rer*EAA_pex*RWEAA_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
[name='RWEAA_weightex']
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
[name='RWEAA_weight']
RWEAA_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAA_weightex;
// Effective real exchange rate: double weighting (imports)
[name='RWEAB_weightim']
RWEAB_weightim = RWEAB_rer*EAB_pex*RWEAB_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
[name='RWEAB_weightex']
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
[name='RWEAB_weight']
RWEAB_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAB_weightex;
// Effective real exchange rate: double weighting (imports)
[name='RWEAC_weightim']
RWEAC_weightim = RWEAC_rer*EAC_pex*RWEAC_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
[name='RWEAC_weightex']
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
[name='RWEAC_weight']
RWEAC_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAC_weightex;
// Effective real exchange rate: double weighting (imports)
[name='RWUS_weightim']
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
[name='RWUS_weightex']
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
[name='RWUS_weight']
RWUS_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWUS_weightex;
// Effective real exchange rate
[name='RW_reer']
RW_reer = 1
*RWEAA_rer^RWEAA_weight
*RWEAB_rer^RWEAB_weight
*RWEAC_rer^RWEAC_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
[name='RW_etot']
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWEAC_tot^RWEAC_weight
*RWUS_tot^RWUS_weight
;
//-----------------
// Final-good firms
//-----------------
[name='RW_imc'] 
// Private consumption good (import)
RW_imc = (
+RWEAA_numc ^(1/RW_mumc)*((1-RWEAA_gammaimc)*RWEAA_imc)^(1-1/RW_mumc)
+RWEAC_numc ^(1/RW_mumc)*((1-RWEAC_gammaimc)*RWEAC_imc)^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*((1-RWUS_gammaimc)*RWUS_imc)^(1-1/RW_mumc)
+(1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)^(1/RW_mumc)*((1-RWEAB_gammaimc)*RWEAB_imc)^(1-1/RW_mumc))^(RW_mumc/(RW_mumc-1));
// Demand for bilateral consumption import goods
[name='RWEAC_imc'] 
RWEAC_imc = RWEAC_numc*(RWEAC_pim/(RWEAC_gammaimcdag*RW_pimc))^(-RW_mumc)*RW_imc/(1-RWEAC_gammaimc);
[name='RWEAB_imc']
RWEAB_imc = (1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)*(RWEAB_pim/(RWEAB_gammaimcdag*RW_pimc))^(-RW_mumc)*RW_imc/(1-RWEAB_gammaimc);
[name='RWEAA_imc'] 
RWEAA_imc = RWEAA_numc*(RWEAA_pim/(RWEAA_gammaimcdag*RW_pimc))^(-RW_mumc)*RW_imc/(1-RWEAA_gammaimc);
// Price of the consumption good (import)
[name='RW_pimc']
RW_pimc = (
+RWEAA_numc *(RWEAA_pim/RWEAA_gammaimcdag)^(1-RW_mumc)
+RWEAC_numc *(RWEAC_pim/RWEAC_gammaimcdag)^(1-RW_mumc)
+RWUS_numc *(RWUS_pim/RWUS_gammaimcdag)^(1-RW_mumc)
+(1
-RWEAA_numc
-RWEAC_numc
-RWUS_numc
)*(RWEAB_pim/RWEAB_gammaimcdag)^(1-RW_mumc))^(1/(1-RW_mumc));
// Private consumption good (import) inflation
[name='RW_piimc']
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import) inflation
[name='RW_piimc4']
RW_piimc4 = RW_pimc/RW_pimc(-4)*RW_pic4;
// Private consumption good (import) inflation
[name='RW_piex4'] 
RW_piex4 = RW_pex/RW_pex(-4)*RW_pic4;
[name='RW_imi'] 
RW_imi = (
+RWEAA_numi ^(1/RW_mumi)*((1-RWEAA_gammaimi)*RWEAA_imi)^(1-1/RW_mumi)
+RWEAC_numi ^(1/RW_mumi)*((1-RWEAC_gammaimi)*RWEAC_imi)^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*((1-RWUS_gammaimi)*RWUS_imi)^(1-1/RW_mumi)
+(1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)^(1/RW_mumi)*((1-RWEAB_gammaimi)*RWEAB_imi)^(1-1/RW_mumi))^(RW_mumi/(RW_mumi-1));
// Demand for bilateral investment import goods
[name='RWEAC_imi'] 
RWEAC_imi = RWEAC_numi*(RWEAC_pim/(RWEAC_gammaimidag*RW_pimi))^(-RW_mumi)*RW_imi/(1-RWEAC_gammaimi);
[name='RWEAB_imi']
RWEAB_imi = (1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)*(RWEAB_pim/(RWEAB_gammaimidag*RW_pimi))^(-RW_mumi)*RW_imi/(1-RWEAB_gammaimi);
[name='RWEAA_imi'] 
RWEAA_imi = RWEAA_numi*(RWEAA_pim/(RWEAA_gammaimidag*RW_pimi))^(-RW_mumi)*RW_imi/(1-RWEAA_gammaimi);
// Price of the investment good (import)
[name='RW_pimi']
RW_pimi = (
+RWEAA_numi *(RWEAA_pim/RWEAA_gammaimidag)^(1-RW_mumi)
+RWEAC_numi *(RWEAC_pim/RWEAC_gammaimidag)^(1-RW_mumi)
+RWUS_numi *(RWUS_pim/RWUS_gammaimidag)^(1-RW_mumi)
+(1
-RWEAA_numi
-RWEAC_numi
-RWUS_numi
)*(RWEAB_pim/RWEAB_gammaimidag)^(1-RW_mumi))^(1/(1-RW_mumi));
// Private investment good (import) inflation
[name='RW_piimi']
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
[name='RW_yst']
RW_yst = RW_sh*RW_ht
+RWEAA_sx*EAA_size/RW_size*EAARW_im
+RWEAB_sx*EAB_size/RW_size*EABRW_im
+RWEAC_sx*EAC_size/RW_size*EACRW_im
+RWUS_sx*US_size/RW_size*USRW_im
;
// Aggregate demand for bilateral imported intermediate goods
[name='RWEAA_im']
RWEAA_im = RWEAA_imi+RWEAA_imc;
[name='RWEAB_im']
RWEAB_im = RWEAB_imi+RWEAB_imc;
[name='RWEAC_im']
RWEAC_im = RWEAC_imi+RWEAC_imc;
[name='RWUS_im']
RWUS_im = RWUS_imi+RWUS_imc;
// Private consumption good firm
// Private consumption good (tradable)
[name='RW_ttc']
RW_ttc = ((RW_nutc)^(1/RW_mutc)*RW_htc^(1-1/RW_mutc)+(1-RW_nutc)^(1/RW_mutc)*RW_imc^(1-1/RW_mutc))^(RW_mutc/(RW_mutc-1));
// Private consumption good  (total)
[name='RW_qc']
RW_qc = ((RW_nuc)^(1/RW_muc)*RW_ttc^(1-1/RW_muc)+(1-RW_nuc)^(1/RW_muc)*RW_ntc^(1-1/RW_muc))^(RW_muc/(RW_muc-1)) ;
// Demand for domestic intermediate goods - NONTRADABLE
[name='RW_ntc']
RW_ntc = (1-RW_nuc)*(RW_pnt)^(-RW_muc)*RW_qc;
// Price of the consumption good (tradable) 
[name='RW_pttc'] 
RW_pttc = ((RW_nutc)*RW_pht^(1-RW_mutc)+(1-RW_nutc)*RW_pimc^(1-RW_mutc))^(1/(1-RW_mutc));
// Price of the consumption good 
1^(1-RW_muc) = (RW_nuc)*RW_pttc^(1-RW_muc)+(1-RW_nuc)*RW_pnt^(1-RW_muc);
// Demand for domestic intermediate goods
[name='RW_htc']
RW_htc = RW_nutc*(RW_pht/RW_pttc)^(-RW_mutc)*RW_ttc;
// Import adjustment cost
[name='RWEAA_gammaimc']
RWEAA_gammaimc = RW_gammaimc1/2*((RWEAA_imc/RW_qc)/(RWEAA_imc(-1)/RW_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAA_gammaimcdag']
RWEAA_gammaimcdag = 1-RWEAA_gammaimc-RW_gammaimc1*((RWEAA_imc/RW_qc)/(RWEAA_imc(-1)/RW_qc(-1))-1)*(RWEAA_imc/RW_qc)/(RWEAA_imc(-1)/RW_qc(-1));
// Import adjustment cost
[name='RWEAB_gammaimc']
RWEAB_gammaimc = RW_gammaimc1/2*((RWEAB_imc/RW_qc)/(RWEAB_imc(-1)/RW_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAB_gammaimcdag']
RWEAB_gammaimcdag = 1-RWEAB_gammaimc-RW_gammaimc1*((RWEAB_imc/RW_qc)/(RWEAB_imc(-1)/RW_qc(-1))-1)*(RWEAB_imc/RW_qc)/(RWEAB_imc(-1)/RW_qc(-1));
// Import adjustment cost
[name='RWEAC_gammaimc']
RWEAC_gammaimc = RW_gammaimc1/2*((RWEAC_imc/RW_qc)/(RWEAC_imc(-1)/RW_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAC_gammaimcdag']
RWEAC_gammaimcdag = 1-RWEAC_gammaimc-RW_gammaimc1*((RWEAC_imc/RW_qc)/(RWEAC_imc(-1)/RW_qc(-1))-1)*(RWEAC_imc/RW_qc)/(RWEAC_imc(-1)/RW_qc(-1));
// Import adjustment cost
[name='RWUS_gammaimc']
RWUS_gammaimc = RW_gammaimc1/2*((RWUS_imc/RW_qc)/(RWUS_imc(-1)/RW_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWUS_gammaimcdag']
RWUS_gammaimcdag = 1-RWUS_gammaimc-RW_gammaimc1*((RWUS_imc/RW_qc)/(RWUS_imc(-1)/RW_qc(-1))-1)*(RWUS_imc/RW_qc)/(RWUS_imc(-1)/RW_qc(-1));
// Private investment good firm
// Private investment good
[name='RW_tti']
RW_tti = ((RW_nuti)^(1/RW_muti)*RW_hti^(1-1/RW_muti)+(1-RW_nuti)^(1/RW_muti)*RW_imi^(1-1/RW_muti))^(RW_muti/(RW_muti-1));
// Private investment good
[name='RW_qi']
RW_qi = ((RW_nui)^(1/RW_mui)*RW_tti^(1-1/RW_mui)+(1-RW_nui)^(1/RW_mui)*RW_nti^(1-1/RW_mui))^(RW_mui/(RW_mui-1));
// Demand for domestic intermediate goods
[name='RW_nti']
RW_nti = (1-RW_nui)*(RW_pnt/RW_pi)^(-RW_mui)*RW_qi;
// Price of the investment good (TRADABLE) 
[name='RW_ptti'] 
RW_ptti= ((RW_nuti)*RW_pht^(1-RW_muti)+(1-RW_nuti)*RW_pimi^(1-RW_muti))^(1/(RW_muti-1)) ;
// Price of the investment good
RW_pi = ((RW_nui)*RW_ptti^(1-RW_mui)+(1-RW_nui)*(RW_pnt)^(1-RW_mui))^(1/(1-RW_mui));
// Auxiliary equation for the price of the investment good in steady state
// Demand for domestic intermediate goods
[name='RW_hti']
RW_hti = RW_nuti*(RW_pht/RW_ptti)^(-RW_muti)*RW_tti;
// Import adjustment cost
[name='RWEAA_gammaimi']
RWEAA_gammaimi = RW_gammaimi1/2*((RWEAA_imi/RW_qi)/(RWEAA_imi(-1)/RW_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAA_gammaimidag']
RWEAA_gammaimidag = 1-RWEAA_gammaimi-RW_gammaimi1*((RWEAA_imi/RW_qi)/(RWEAA_imi(-1)/RW_qi)-1)*((RWEAA_imi/RW_qi)/(RWEAA_imi(-1)/RW_qi(-1)));
// Import adjustment cost
[name='RWEAB_gammaimi']
RWEAB_gammaimi = RW_gammaimi1/2*((RWEAB_imi/RW_qi)/(RWEAB_imi(-1)/RW_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAB_gammaimidag']
RWEAB_gammaimidag = 1-RWEAB_gammaimi-RW_gammaimi1*((RWEAB_imi/RW_qi)/(RWEAB_imi(-1)/RW_qi)-1)*((RWEAB_imi/RW_qi)/(RWEAB_imi(-1)/RW_qi(-1)));
// Import adjustment cost
[name='RWEAC_gammaimi']
RWEAC_gammaimi = RW_gammaimi1/2*((RWEAC_imi/RW_qi)/(RWEAC_imi(-1)/RW_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWEAC_gammaimidag']
RWEAC_gammaimidag = 1-RWEAC_gammaimi-RW_gammaimi1*((RWEAC_imi/RW_qi)/(RWEAC_imi(-1)/RW_qi)-1)*((RWEAC_imi/RW_qi)/(RWEAC_imi(-1)/RW_qi(-1)));
// Import adjustment cost
[name='RWUS_gammaimi']
RWUS_gammaimi = RW_gammaimi1/2*((RWUS_imi/RW_qi)/(RWUS_imi(-1)/RW_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='RWUS_gammaimidag']
RWUS_gammaimidag = 1-RWUS_gammaimi-RW_gammaimi1*((RWUS_imi/RW_qi)/(RWUS_imi(-1)/RW_qi)-1)*((RWUS_imi/RW_qi)/(RWUS_imi(-1)/RW_qi(-1)));
// Trade balance
[name='RW_tb']
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
[name='RW_ex']
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
[name='RW_b']
			 RW_b = (-1)*(1/(RW_r(-1))^(-1))*(- RW_pnt(-1)*RW_g(-1) - RW_tr(-1)
			- RW_b(-1)*RW_pic(-1)^(-1) - RW_m(-2)*RW_pic(-1)^(-1) + RW_tauc(-1)*RW_c(-1)+(RW_taun(-1)+RW_tauwh(-1))*(RW_wi(-1)*RW_ndi(-1)+RW_wj(-1)*RW_ndj(-1))+RW_tauwf(-1)*RW_w(-1)*RW_nd(-1)+RW_tauk(-1)*(RW_rk(-1)*RW_u(-1)-(RW_gammau(-1)+RW_delta)*RW_pi(-1))*RW_k(-1)+RW_taud(-1)*RW_d(-1)+RW_t(-1)+RW_m(-1));
// Government spending, using RW_pg = RW_pht
[name='RW_g']
RW_g = RW_gy*RW_pybar*RW_ybar/RW_pnt;
// Transfers
[name='RW_tr']
RW_tr = RW_try*RW_pybar*RW_ybar;
// Fiscal rule
[name='RW_t']
RW_t = (RW_phitb*(RW_b/(RW_pybar*RW_ybar)-RW_bytarget))*(RW_pybar*RW_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
[name='RW_ti']
RW_ti = RW_upsilont*RW_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
[name='RW_tri']
RW_tri = RW_upsilontr*RW_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
// Monetary policy rule
	
			RW_r^4-1 = RW_phirr*(RW_r(-1)^4-1)+(1-RW_phirr)*(RW_rrstar^4*RW_pi4target-1+RW_phirpi*(RW_pic4-RW_pi4target))+RW_phirgy*(RW_y/RW_y(-1)-1)+RW_epsr;
	
// Definition of annual inflation
RW_pic4 = RW_pic*RW_pic(-1)*RW_pic(-2)*RW_pic(-3);
// Real interest rate
RW_rr-1 = RW_r/RW_pic(+1)-1;
// Equilibrium real interest rate
[name='RW_rrstar']
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
[name='RW_ci']
RW_ci = (RW_c-RW_omega*RW_cj )/(1-RW_omega);
// Aggregate money holdings
[name='RW_m']
RW_m = (1-RW_omega)*RW_mi+RW_omega*RW_mj;
// Aggregate capital stock
[name='RW_k']
RW_k = (1-RW_omega)*RW_ki;
// Aggregate investment
[name='RW_ii']
RW_ii = RW_i/(1-RW_omega);
// Aggregate lump-sum transfers
[name='RW_trj']
RW_trj = 
1/RW_omega*RW_tr-(1-RW_omega)/RW_omega*RW_tri
;
// Aggregate lump-sum taxes
[name='RW_tj']
RW_tj = 
1/RW_omega*RW_t-(1-RW_omega)/RW_omega*RW_ti
;
// Aggregate transaction costs
[name='RW_gammav']
RW_gammav = (1-RW_omega)*RW_ci*RW_gammavi+RW_omega*RW_cj*RW_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
[name='RW_ni']
RW_ni = RW_si*RW_ndi;
// Wage dispersion
[name='RW_si']
RW_si = (1-RW_xii)*(RW_witilde/RW_wi)^(-RW_etai)+RW_xii*(RW_wi(-1)/RW_wi)^(-RW_etai)*(RW_pic/(RW_pic(-1)^RW_chii*RW_pi4target^(1/4*(1-RW_chii))))^(RW_etai)*RW_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
[name='RW_nj']
RW_nj = RW_sj*RW_ndj;
// Wage dispersion
[name='RW_sj']
RW_sj = (1-RW_xij)*(RW_wjtilde/RW_wj)^(-RW_etaj)+RW_xij*(RW_wj(-1)/RW_wj)^(-RW_etaj)*(RW_pic/(RW_pic(-1)^RW_chij*RW_pi4target^(1/4*(1-RW_chij))))^(RW_etaj)*RW_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
[name='RW_u']
RW_u = RW_kd/RW_k;
// Intermediate-good markets
// Wedge between aggregate demand and production, using RW_x = US_size/RW_size*US_im
[name='RW_ysn']
RW_ysn = RW_snt*RW_nt;
//  nontradables aggregate demand
[name='RW_nt']
RW_nt =  RW_nti+RW_ntc+RW_g;
// Aggregate demand for domestic intermediate goods, using RW_hg = RW_g
[name='RW_ht']
RW_ht = RW_htc+RW_hti;
// Price dispersion in the domestic markets
[name='RW_sh']
RW_sh = (1-RW_xih)*(RW_phttilde/RW_pht)^(-RW_thetat)+RW_xih*(RW_piht/(RW_piht(-1)^RW_chih*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RW_sh(-1);
// Price dispersion in the foreign markets
[name='RWEAA_sx']
RWEAA_sx = (1-RW_xix)*(EAARW_pimtilde/EAARW_pim)^(-RW_thetat)+RW_xix*(EAARW_piim/(EAARW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAA_sx(-1);
[name='RWEAB_sx']
RWEAB_sx = (1-RW_xix)*(EABRW_pimtilde/EABRW_pim)^(-RW_thetat)+RW_xix*(EABRW_piim/(EABRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAB_sx(-1);
[name='RWEAC_sx']
RWEAC_sx = (1-RW_xix)*(EACRW_pimtilde/EACRW_pim)^(-RW_thetat)+RW_xix*(EACRW_piim/(EACRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWEAC_sx(-1);
[name='RWUS_sx']
RWUS_sx = (1-RW_xix)*(USRW_pimtilde/USRW_pim)^(-RW_thetat)+RW_xix*(USRW_piim/(USRW_piim(-1)^RW_chix*RW_pi4target^(1/4*(1-RW_chih))))^RW_thetat*RWUS_sx(-1);
// Price dispersion in the domestic markets
[name='RW_snt']
RW_snt = (1-RW_xin)*(RW_pnttilde/RW_pnt)^(-RW_thetan)+RW_xin*(RW_pint/(RW_pint(-1)^RW_chin*RW_pi4target^(1/4*(1-RW_chin))))^RW_thetan*RW_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
[name='RW_c']
RW_c = RW_qc - RW_gammav ;
// Aggregate investment and capital utilisation cost
[name='RW_i']
RW_i = RW_qi - RW_k*RW_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using RW_pg = RW_pht and RW_qg = RW_g   
[name='RW_py']
RW_py = (1/RW_y) * ( RW_qc+RW_pi*RW_qi+RW_pnt*RW_g
+RWEAA_rer*EAARW_pim*EAA_size/RW_size*EAARW_im
-RWEAA_pim*(RWEAA_imc*(1-RWEAA_gammaimc)/RWEAA_gammaimcdag)
-RWEAA_pim*(RWEAA_imi*(1-RWEAA_gammaimi)/RWEAA_gammaimidag)
+RWEAB_rer*EABRW_pim*EAB_size/RW_size*EABRW_im
-RWEAB_pim*(RWEAB_imc*(1-RWEAB_gammaimc)/RWEAB_gammaimcdag)
-RWEAB_pim*(RWEAB_imi*(1-RWEAB_gammaimi)/RWEAB_gammaimidag)
+RWEAC_rer*EACRW_pim*EAC_size/RW_size*EACRW_im
-RWEAC_pim*(RWEAC_imc*(1-RWEAC_gammaimc)/RWEAC_gammaimcdag)
-RWEAC_pim*(RWEAC_imi*(1-RWEAC_gammaimi)/RWEAC_gammaimidag)
+RWUS_rer*USRW_pim*US_size/RW_size*USRW_im
-RWUS_pim*(RWUS_imc*(1-RWUS_gammaimc)/RWUS_gammaimcdag)
-RWUS_pim*(RWUS_imi*(1-RWUS_gammaimi)/RWUS_gammaimidag)
);
// Aggregate real demand
[name='RW_y']
RW_y = RW_yst+RW_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
[name='RW_zt']
log(RW_zt) = (1-RW_rhozt)*log(RW_ztbar)+RW_rhozt*log(RW_zt(-1))+RW_epszt;
[name='RW_zn']
log(RW_zn) = (1-RW_rhozn)*log(RW_znbar)+RW_rhozn*log(RW_zn(-1))+RW_epszn;
// Government spending shock
[name='RW_gy']
RW_gy = (1-RW_rhog)*RW_gybar+RW_rhog*RW_gy(-1)+RW_epsg;
// Transfer shock
[name='RW_try']
RW_try = (1-RW_rhotr)*RW_trybar+RW_rhotr*RW_try(-1)+RW_epstr;
// Consumption tax shock
[name='RW_tauc']
RW_tauc = (1-RW_rhotauc)*RW_taucbar+RW_rhotauc*RW_tauc(-1)+RW_epstauc;
// Dividend income tax shock
[name='RW_taud']
RW_taud = (1-RW_rhotaud)*RW_taudbar+RW_rhotaud*RW_taud(-1)+RW_epstaud;
// Capital income tax shock
[name='RW_tauk']
RW_tauk = (1-RW_rhotauk)*RW_taukbar+RW_rhotauk*RW_tauk(-1)+RW_epstauk;
// Labour income tax shock
[name='RW_taun']
RW_taun = (1-RW_rhotaun)*RW_taunbar+RW_rhotaun*RW_taun(-1)+RW_epstaun;
// Payroll tax shock: households
[name='RW_tauwh']
RW_tauwh = (1-RW_rhotauwh)*RW_tauwhbar+RW_rhotauwh*RW_tauwh(-1)+RW_epstauwh;
// Payroll tax shock: firms
[name='RW_tauwf']
RW_tauwf = (1-RW_rhotauwf)*RW_tauwfbar+RW_rhotauwf*RW_tauwf(-1)+RW_epstauwf;
// Wage cost push shock
[name='RW_wcst']
RW_wcst = (1-RW_rhowcst)*RW_wcstbar+RW_rhowcst*RW_wcst(-1)+RW_epswcst;
// Preference shock
[name='RW_zcon']
log(RW_zcon) = (1-RW_rhozcon)*log(RW_zconbar)+RW_rhozcon*log(RW_zcon(-1))+RW_epszcon;
// Investment specific shock
[name='RW_zinv']
log(RW_zinv) = (1-RW_rhozinv)*log(RW_zinvbar)+RW_rhozinv*log(RW_zinv(-1))+RW_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
[name='RW_cy']
RW_cy = RW_c/(RW_py*RW_y);
// Aggregate nominal investment share
[name='RW_iy']
RW_iy = RW_pi*RW_i/(RW_py*RW_y);
// Aggregate nominal import share  
[name='RW_imy']
RW_imy = (RW_pimc*RW_imc+RW_pimi*RW_imi)/(RW_py*RW_y);
// Aggregate nominal import share for consumption goods 
[name='RW_imcy']
RW_imcy = RW_pimc*RW_imc/(RW_py*RW_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
[name='RW_imiy']
RW_imiy = RW_pimi*RW_imi/(RW_py*RW_y);
// Aggregate debt-to-output ratio
[name='RW_by']
RW_by = RW_b/(RW_pybar*RW_ybar);
// Aggregate lump-sum tax-to-output ratio
[name='RW_ty']
RW_ty = RW_t/(RW_pybar*RW_ybar);
// Aggregate labour cost share
[name='RW_lcy']
RW_lcy = ((1+RW_tauwf)*RW_w*RW_nd)/(RW_py*RW_y);
// Aggregate nominal Wage share
[name='RW_wy']
RW_wy = (RW_w*RW_nd)/(RW_py*RW_y);
// NT sector nominal Wage share
[name='RW_wnty']
RW_wnty = (RW_w*RW_ndn)/(RW_pnt*RW_ysn);
// T sector nominal Wage share
[name='RW_whty']
RW_whty = (RW_w*RW_ndt)/(RW_pht*RW_yst);
// T sector share
[name='RW_yhty']
RW_yhty = RW_pht*RW_yst/(RW_py*RW_y);
// NT sector share
[name='RW_ynty']
RW_ynty = RW_pnt*RW_ysn/(RW_py*RW_y);
// Output gap
[name='RW_ygap']
RW_ygap = RW_y/RW_ybar-1;
// Output growth (gross rate)
[name='RW_ygrowth']
RW_ygrowth = RW_y/RW_y(-1);
// Output growth (gross rate yoy)
[name='RW_ygrowth4']
RW_ygrowth4 = RW_y/RW_y(-4);
// Domestic nominal output as a share of world nominal output
[name='RW_yshare']
RW_yshare  = RW_size*RW_py*RW_y/RW_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
[name='RW_epsilonm'] 
RW_epsilonm = -1/8*1/(RW_r*(RW_gammav2*RW_r+RW_r-1));
// Trade balance-to-GDP ratio
[name='RW_tby'] 
RW_tby = RW_tb/(RW_py*RW_y);
// Imports of consumption goods
[name='RWEAA_imcy'] 
RWEAA_imcy  = RWEAA_pim*RWEAA_imc/(RW_py*RW_y);
// Imports of investment goods
[name='RWEAA_imiy'] 
RWEAA_imiy = RWEAA_pim*RWEAA_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
[name='RWEAA_excy']
RWEAA_excy  = EAA_size/RW_size*RWEAA_rer*EAARW_pim*EAARW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
[name='RWEAA_exiy'] 
RWEAA_exiy  = EAA_size/RW_size*RWEAA_rer*EAARW_pim*EAARW_imi/(RW_py*RW_y);
// Imports of consumption goods
[name='RWEAB_imcy'] 
RWEAB_imcy  = RWEAB_pim*RWEAB_imc/(RW_py*RW_y);
// Imports of investment goods
[name='RWEAB_imiy'] 
RWEAB_imiy = RWEAB_pim*RWEAB_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
[name='RWEAB_excy']
RWEAB_excy  = EAB_size/RW_size*RWEAB_rer*EABRW_pim*EABRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
[name='RWEAB_exiy'] 
RWEAB_exiy  = EAB_size/RW_size*RWEAB_rer*EABRW_pim*EABRW_imi/(RW_py*RW_y);
// Imports of consumption goods
[name='RWEAC_imcy'] 
RWEAC_imcy  = RWEAC_pim*RWEAC_imc/(RW_py*RW_y);
// Imports of investment goods
[name='RWEAC_imiy'] 
RWEAC_imiy = RWEAC_pim*RWEAC_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
[name='RWEAC_excy']
RWEAC_excy  = EAC_size/RW_size*RWEAC_rer*EACRW_pim*EACRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
[name='RWEAC_exiy'] 
RWEAC_exiy  = EAC_size/RW_size*RWEAC_rer*EACRW_pim*EACRW_imi/(RW_py*RW_y);
// Imports of consumption goods
[name='RWUS_imcy'] 
RWUS_imcy  = RWUS_pim*RWUS_imc/(RW_py*RW_y);
// Imports of investment goods
[name='RWUS_imiy'] 
RWUS_imiy = RWUS_pim*RWUS_imi/(RW_py*RW_y);
// Exports of consumption goods to gdp
[name='RWUS_excy']
RWUS_excy  = US_size/RW_size*RWUS_rer*USRW_pim*USRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
[name='RWUS_exiy'] 
RWUS_exiy  = US_size/RW_size*RWUS_rer*USRW_pim*USRW_imi/(RW_py*RW_y);
// Internal real exchange rate
[name='RW_internalrer'] 
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
[name='US_utili']
US_utili = 
US_zcon*log(US_ci-US_kappa*US_ci(-1))-1/(1+US_zeta)*(US_ni)^(1+US_zeta)+US_beta*US_utili(+1)
;
// Marginal utility of consumption
[name='US_lambdai']
US_lambdai = (US_zcon*(US_ci-US_kappa*US_ci(-1))^(-US_sigma))/(1+US_tauc+US_gammavi+US_vi*US_gammavider);
// Euler equation for government bonds
[name='US_r']
US_r = US_beta^(-1)*US_lambdai/US_lambdai(+1)*US_pic(+1);
// Euler equation for money
[name='US_vi']
US_vi = ((1-US_beta*US_lambdai(+1)/(US_lambdai*US_pic(+1)))/US_gammavider)^(1/2);
// Consumption-based velocity
[name='US_mi']
US_mi = US_ci/US_vi;
// Transaction cost
[name='US_gammavi']
US_gammavi = US_gammav1*US_vi+US_gammav2/US_vi-2*(US_gammav1*US_gammav2)^(1/2);
// Derivative of transaction cost
[name='US_gammavider']
US_gammavider = US_gammav1-US_gammav2*US_vi^(-2);
// Capital accumulation
[name='US_ki']
US_ki = (1-US_delta)*US_ki(-1)+(1-US_gammai(-1))*US_ii(-1)*US_zinv;
// Investment adjustment cost
[name='US_gammai']
US_gammai = US_gammai1/2*(US_ii/US_ii(-1)-1)^2;
// Derivative of investment adjustment cost
[name='US_gammaider']
US_gammaider = US_gammai1*(US_ii/US_ii(-1)-1)/US_ii(-1);
// Capacity utilisation cost
[name='US_gammau']
US_gammau = ((US_beta^(-1)-1+US_delta)*US_qbar-US_delta*US_taukbar*US_pibar)/((1-US_taukbar)*US_pibar)*(US_u-1)+US_gammau2/2*(US_u-1)^2;
// Derivative of capacity utilisation cost
[name='US_gammauder']
US_gammauder = ((US_beta^(-1)-1+US_delta)*US_qbar-US_delta*US_taukbar*US_pibar)/((1-US_taukbar)*US_pibar)+US_gammau2*(US_u-1);
// Optimal capacity utilisation (FOC)
[name='US_rk']
US_rk = US_gammauder*US_pi;
// Tobin's Q
[name='US_pi']
US_pi = US_q*US_zinv*(1-US_gammai-US_gammaider*US_ii)+US_beta*US_lambdai(+1)/US_lambdai*US_q(+1)*US_zinv(+1)*US_gammaider(+1)*US_ii(+1)^2/US_ii;
// Auxiliary equation for Tobin's Q in steady state
// Rate of return on capital
[name='US_q']
US_q = US_beta*US_lambdai(+1)/US_lambdai*((1-US_tauk(+1))*(US_rk(+1)*US_u(+1)-US_gammau(+1)*US_pi(+1))+(US_tauk(+1)*US_delta)*US_pi(+1)+(1-US_delta)*US_q(+1));
// Optimal wage contract (FOC)
[name='US_witilde']
US_witilde = (US_etai/(US_etai-1)*US_fi/US_gi+US_wcst)^(1/(1+US_etai*US_zeta));
// Definition of fi
[name='US_fi']
US_fi = US_wi^(US_etai*(1+US_zeta))*US_ndi^(1+US_zeta)+US_xii*US_beta*(US_pic(+1)/(US_pic^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai*(1+US_zeta))*US_fi(+1);
// Definition of gi
[name='US_gi']
US_gi = US_lambdai*(1-US_taun-US_tauwh)*US_wi^US_etai*US_ndi+US_xii*US_beta*(US_pic(+1)/(US_pic^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai-1)*US_gi(+1);
// Aggregate wage rate
[name='US_wi']
US_wi = ((1-US_xii)*US_witilde^(1-US_etai)+US_xii*US_wi(-1)^(1-US_etai)*(US_pic(-1)^US_chii*US_pi4target^(1/4*(1-US_chii))/US_pic)^(1-US_etai))^(1/(1-US_etai));
//-------------
// Household J
//-------------
// Utility
[name='US_utilj']
US_utilj = 
US_zcon*log(US_cj-US_kappa*US_cj(-1))-1/(1+US_zeta)*US_nj^(1+US_zeta)+US_beta*US_utilj(+1)
;
// Budget constraint
[name='US_mj']
US_mj = (1-US_taun-US_tauwh)*US_wj*US_nj+US_trj-US_tj+US_mj(-1)*US_pic^(-1) - (1+US_tauc+US_gammavj)*US_cj;
// Marginal utility of consumption
[name='US_cj']
US_cj = ((US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder))^(1/US_sigma))/US_zcon + US_kappa*US_cj(-1);
// Euler equation for money
[name='US_lambdaj']
US_lambdaj = US_beta*US_lambdaj(+1)/(1 - US_vj^(2)*US_gammavjder)/US_pic(+1);
// Consumption-based velocity
[name='US_vj']
US_vj = US_cj/US_mj;
// Transaction technology
[name='US_gammavj']
US_gammavj = US_gammav1*US_vj+US_gammav2/US_vj-2*(US_gammav1*US_gammav2)^(1/2);
// Derivative of transaction technology
[name='US_gammavjder']
US_gammavjder = US_gammav1-US_gammav2*US_vj^(-2);
// Optimal wage contract (FOC)
[name='US_wjtilde']
US_wjtilde = (US_etaj/(US_etaj-1)*US_fj/US_gj+US_wcst)^(1/(1+US_etaj*US_zeta));
// Definition of fj
[name='US_fj']
US_fj = US_wj^(US_etaj*(1+US_zeta))*US_ndj^(1+US_zeta)+US_xij*US_beta*(US_pic(+1)/(US_pic^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj*(1+US_zeta))*US_fj(+1);
// Definition of gj
[name='US_gj']
US_gj = US_lambdaj*(1-US_taun-US_tauwh)*US_wj^US_etaj*US_ndj+US_xij*US_beta*(US_pic(+1)/(US_pic^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj-1)*US_gj(+1);
// Aggregate wage rate
[name='US_wj']
US_wj = ((1-US_xij)*US_wjtilde^(1-US_etaj)+US_xij*US_wj(-1)^(1-US_etaj)*(US_pic(-1)^US_chij*US_pi4target^(1/4*(1-US_chij))/US_pic)^(1-US_etaj))^(1/(1-US_etaj));
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
[name='US_ndt']
US_ndt = ((US_yst + US_psitbar)/(US_zt*US_kdt^US_alphat))^(1/(1-US_alphat));
// Production function nontradable
[name='US_ndn'] 
US_ndn = ((US_ysn + US_psinbar)/(US_zn*US_kdn^US_alphan))^(1/(1-US_alphan));
// Real marginal cost tradable
[name='US_mct']
US_mct = 1/(US_zt*(US_alphat)^(US_alphat)*(1-US_alphat)^(1-US_alphat))*US_rk^(US_alphat)*((1+US_tauwf)*US_w)^(1-US_alphat);
// Real marginal cost nontradable
[name='US_mcn']
US_mcn = 1/(US_zn*(US_alphan)^(US_alphan)*(1-US_alphan)^(1-US_alphan))*US_rk^(US_alphan)*((1+US_tauwf)*US_w)^(1-US_alphan);
// Wage Inflation (qoq)
[name='US_piw']
US_piw = US_w/US_w(-1)*US_pic;
// Wage Inflation (yoy)
[name='US_piw4']
US_piw4 = US_piw*US_piw(-1)*US_piw(-2)*US_piw(-3);
// Auxiliary equation for steady-state fixed cost
// Auxiliary equation for steady-state fixed cost
// Capital input (FOC)
[name='US_kdt']
US_kdt= US_alphat*(US_yst+US_psitbar)/(US_rk*US_mct) ;
// Capital input (FOC)
[name='US_kdn']
US_kdn = US_alphan*(US_ysn+US_psinbar)/(US_rk*US_mcn);
// Total capital demand
[name='US_kd']
US_kd = US_kdn + US_kdt;
// Demand for labour services by household I
[name='US_w']
US_w = 
(US_wi/(US_ndi/US_nd/(1-US_omega))^(1/(-US_eta)))
;
// Demand for labour services by household J
[name='US_ndj']
US_ndj = 
US_omega*(US_wj/US_w)^(-US_eta)*US_nd
;
// Aggregate labour demand
[name='US_ndi']
US_ndi =  
(((US_nd)^((US_eta-1)/US_eta)-US_omega^(1/US_eta)*US_ndj^(1-1/US_eta))/(1-US_omega)^(1/US_eta))^(1/(1-1/US_eta)) 
;
// Total demand 
[name='US_nd']
US_nd = US_ndt + US_ndn;
// Aggregate dividends
[name='US_d']
US_d = US_py*US_y-US_rk*US_kd-(1+US_tauwf)*US_w*US_nd;
// Non-tradable sector dividends
[name='US_dn']
US_dn = US_pnt*US_ysn-US_rk*US_kdn-(1+US_tauwf)*US_w*US_ndn;
// Tradable sector dividends
[name='US_dt']
US_dt = US_pht*US_ht
+EAAUS_pim*USEAA_rer*(EAAUS_imc+EAAUS_imi)*EAA_size/US_size
+EABUS_pim*USEAB_rer*(EABUS_imc+EABUS_imi)*EAB_size/US_size
+EACUS_pim*USEAC_rer*(EACUS_imc+EACUS_imi)*EAC_size/US_size
+RWUS_pim*USRW_rer*(RWUS_imc+RWUS_imi)*RW_size/US_size
-US_rk*US_kdt-(1+US_tauwf)*US_w*US_ndt;
// Optimal price contract set in domestic markets (FOC)
[name='US_phttilde']
US_phttilde= US_thetat/(US_thetat-1)*US_fh/US_gh*US_pht;
// Definition of fh
[name='US_fh']
US_fh = US_mct*US_ht+US_xih*US_beta*US_lambdai(+1)/US_lambdai*(US_piht(+1)/(US_piht^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_fh(+1);
// Definition of gh
[name='US_gh']
US_gh = US_pht*US_ht+US_xih*US_beta*US_lambdai(+1)/US_lambdai*(US_piht(+1)/(US_piht^US_chih*US_pi4target^(1/4*(1-US_chih))))^(US_thetat-1)*US_gh(+1);
// Aggregate intermediate-good price dynamics
[name='US_pht']
US_pht = ((1-US_xih)*US_phttilde^(1-US_thetat)+US_xih*(US_pht(-1)/US_pic)^(1-US_thetat)*(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih)))^(1-US_thetat))^(1/(1-US_thetat));
// Intermediate-good price inflation
[name='US_piht']
US_piht = US_pht/US_pht(-1)*US_pic;
// Optimal price contract set in domestic markets (FOC)
[name='US_pnttilde']
US_pnttilde = US_thetan/(US_thetan-1)*US_fn/US_gn*US_pnt;
// Definition of fn
[name='US_fn']
US_fn = US_mcn*US_nt+US_xin*US_beta*US_lambdai(+1)/US_lambdai*(US_pint(+1)/(US_pint^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_fn(+1);
// Definition of gn
[name='US_gn']
US_gn = US_pnt*US_nt+US_xin*US_beta*US_lambdai(+1)/US_lambdai*(US_pint(+1)/(US_pint^US_chin*US_pi4target^(1/4*(1-US_chin))))^(US_thetan-1)*US_gn(+1);
// Aggregate intermediate-good price dynamics
[name='US_pnt']
US_pnt = ((1-US_xin)*US_pnttilde^(1-US_thetan)+US_xin*(US_pnt(-1)/US_pic)^(1-US_thetan)*(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin)))^(1-US_thetan))^(1/(1-US_thetan));
// Intermediate-good price inflation
[name='US_pint']
US_pint = US_pnt/US_pnt(-1)*US_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAA_pimtilde
[name='EAAUS_pimtilde']
EAAUS_pimtilde = (US_cpim*US_thetat/(US_thetat-1)*USEAA_fx/USEAA_gx)*EAAUS_pim;
// Definition of fx
[name='USEAA_fx']
USEAA_fx = EAA_size/US_size*EAAUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAA_fx(+1);
// Definition of gx   
[name='USEAA_gx']
USEAA_gx = USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAAUS_piim(+1)/(EAAUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAA_pim
[name='EAAUS_pim']
EAAUS_pim= ((1-US_xix)*EAAUS_pimtilde^(1-US_thetat)+US_xix*(EAAUS_pim(-1)/EAA_pic)^(1-US_thetat)*(EAAUS_piim(-1)^US_chix*EAA_pi4target^(1/4*(1-US_chih)))^(1-US_thetat))^(-1/(1-US_thetat)) ;
// Intermediate-good price inflation, using US_pix = EAA_piim
[name='EAAUS_piim']
EAAUS_piim = EAAUS_pim/EAAUS_pim(-1)*EAA_pic;
// Bilateral real exchange rate
[name='USEAA_rer']
USEAA_rer = US_rer/EAA_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='USEAA_tot'] 
USEAA_tot = USEAA_pim/(USEAA_rer*EAAUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAB_pimtilde
[name='EABUS_pimtilde']
EABUS_pimtilde = (US_cpim*US_thetat/(US_thetat-1)*USEAB_fx/USEAB_gx)*EABUS_pim;
// Definition of fx
[name='USEAB_fx']
USEAB_fx = EAB_size/US_size*EABUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAB_fx(+1);
// Definition of gx   
[name='USEAB_gx']
USEAB_gx = USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EABUS_piim(+1)/(EABUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAB_pim
[name='EABUS_pim']
EABUS_pim= ((1-US_xix)*EABUS_pimtilde^(1-US_thetat)+US_xix*(EABUS_pim(-1)/EAB_pic)^(1-US_thetat)*(EABUS_piim(-1)^US_chix*EAB_pi4target^(1/4*(1-US_chih)))^(1-US_thetat))^(-1/(1-US_thetat)) ;
// Intermediate-good price inflation, using US_pix = EAB_piim
[name='EABUS_piim']
EABUS_piim = EABUS_pim/EABUS_pim(-1)*EAB_pic;
// Bilateral real exchange rate
[name='USEAB_rer']
USEAB_rer = US_rer/EAB_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='USEAB_tot'] 
USEAB_tot = USEAB_pim/(USEAB_rer*EABUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAC_pimtilde
[name='EACUS_pimtilde']
EACUS_pimtilde = (US_cpim*US_thetat/(US_thetat-1)*USEAC_fx/USEAC_gx)*EACUS_pim;
// Definition of fx
[name='USEAC_fx']
USEAC_fx = EAC_size/US_size*EACUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAC_fx(+1);
// Definition of gx   
[name='USEAC_gx']
USEAC_gx = USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EACUS_piim(+1)/(EACUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAC_pim
[name='EACUS_pim']
EACUS_pim= ((1-US_xix)*EACUS_pimtilde^(1-US_thetat)+US_xix*(EACUS_pim(-1)/EAC_pic)^(1-US_thetat)*(EACUS_piim(-1)^US_chix*EAC_pi4target^(1/4*(1-US_chih)))^(1-US_thetat))^(-1/(1-US_thetat)) ;
// Intermediate-good price inflation, using US_pix = EAC_piim
[name='EACUS_piim']
EACUS_piim = EACUS_pim/EACUS_pim(-1)*EAC_pic;
// Bilateral real exchange rate
[name='USEAC_rer']
USEAC_rer = US_rer/EAC_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='USEAC_tot'] 
USEAC_tot = USEAC_pim/(USEAC_rer*EACUS_pim);
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = RW_pimtilde
[name='RWUS_pimtilde']
RWUS_pimtilde = (US_cpim*US_thetat/(US_thetat-1)*USRW_fx/USRW_gx)*RWUS_pim;
// Definition of fx
[name='USRW_fx']
USRW_fx = RW_size/US_size*RWUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USRW_fx(+1);
// Definition of gx   
[name='USRW_gx']
USRW_gx = USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(RWUS_piim(+1)/(RWUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USRW_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = RW_pim
[name='RWUS_pim']
RWUS_pim= ((1-US_xix)*RWUS_pimtilde^(1-US_thetat)+US_xix*(RWUS_pim(-1)/RW_pic)^(1-US_thetat)*(RWUS_piim(-1)^US_chix*RW_pi4target^(1/4*(1-US_chih)))^(1-US_thetat))^(-1/(1-US_thetat)) ;
// Intermediate-good price inflation, using US_pix = RW_piim
[name='RWUS_piim']
RWUS_piim = RWUS_pim/RWUS_pim(-1)*RW_pic;
// Bilateral real exchange rate
[name='USRW_rer']
USRW_rer = US_rer/RW_rer;
// Auxiliary equation for steady-state output
//Terms of Trade
[name='USRW_tot'] 
USRW_tot = USRW_pim/(USRW_rer*RWUS_pim);
// Total imports 
[name='US_im']
US_im = US_imc+US_imi;
// Total import deflator
[name='US_pim']
US_pim  = (US_pimc*US_imc+US_pimi*US_imi)/US_im;
// Total Export deflator 
[name='US_pex']
US_pex  = 
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im/US_ex
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im/US_ex
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im/US_ex
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im/US_ex
;
// Effective real exchange rate: double weighting (imports)
[name='USEAA_weightim']
USEAA_weightim = USEAA_rer*EAA_pex*USEAA_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
[name='USEAA_weightex']
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
[name='USEAA_weight']
USEAA_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAA_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAA_weightex;
// Effective real exchange rate: double weighting (imports)
[name='USEAB_weightim']
USEAB_weightim = USEAB_rer*EAB_pex*USEAB_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
[name='USEAB_weightex']
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
[name='USEAB_weight']
USEAB_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAB_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAB_weightex;
// Effective real exchange rate: double weighting (imports)
[name='USEAC_weightim']
USEAC_weightim = USEAC_rer*EAC_pex*USEAC_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
[name='USEAC_weightex']
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
[name='USEAC_weight']
USEAC_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAC_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAC_weightex;
// Effective real exchange rate: double weighting (imports)
[name='USRW_weightim']
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
[name='USRW_weightex']
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
[name='USRW_weight']
USRW_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USRW_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USRW_weightex;
// Effective real exchange rate
[name='US_reer']
US_reer = 1
*USEAA_rer^USEAA_weight
*USEAB_rer^USEAB_weight
*USEAC_rer^USEAC_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
[name='US_etot']
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USEAC_tot^USEAC_weight
*USRW_tot^USRW_weight
;
//-----------------
// Final-good firms
//-----------------
[name='US_imc'] 
// Private consumption good (import)
US_imc = (
+USEAA_numc ^(1/US_mumc)*((1-USEAA_gammaimc)*USEAA_imc)^(1-1/US_mumc)
+USEAB_numc ^(1/US_mumc)*((1-USEAB_gammaimc)*USEAB_imc)^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*((1-USRW_gammaimc)*USRW_imc)^(1-1/US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USRW_numc
)^(1/US_mumc)*((1-USEAC_gammaimc)*USEAC_imc)^(1-1/US_mumc))^(US_mumc/(US_mumc-1));
// Demand for bilateral consumption import goods
[name='USRW_imc'] 
USRW_imc = USRW_numc*(USRW_pim/(USRW_gammaimcdag*US_pimc))^(-US_mumc)*US_imc/(1-USRW_gammaimc);
[name='USEAC_imc']
USEAC_imc = (1
-USEAA_numc
-USEAB_numc
-USRW_numc
)*(USEAC_pim/(USEAC_gammaimcdag*US_pimc))^(-US_mumc)*US_imc/(1-USEAC_gammaimc);
[name='USEAB_imc'] 
USEAB_imc = USEAB_numc*(USEAB_pim/(USEAB_gammaimcdag*US_pimc))^(-US_mumc)*US_imc/(1-USEAB_gammaimc);
// Price of the consumption good (import)
[name='US_pimc']
US_pimc = (
+USEAA_numc *(USEAA_pim/USEAA_gammaimcdag)^(1-US_mumc)
+USEAB_numc *(USEAB_pim/USEAB_gammaimcdag)^(1-US_mumc)
+USRW_numc *(USRW_pim/USRW_gammaimcdag)^(1-US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USRW_numc
)*(USEAC_pim/USEAC_gammaimcdag)^(1-US_mumc))^(1/(1-US_mumc));
// Private consumption good (import) inflation
[name='US_piimc']
US_piimc = US_pimc/US_pimc(-1)*US_pic;
// Private consumption good (import) inflation
[name='US_piimc4']
US_piimc4 = US_pimc/US_pimc(-4)*US_pic4;
// Private consumption good (import) inflation
[name='US_piex4'] 
US_piex4 = US_pex/US_pex(-4)*US_pic4;
[name='US_imi'] 
US_imi = (
+USEAA_numi ^(1/US_mumi)*((1-USEAA_gammaimi)*USEAA_imi)^(1-1/US_mumi)
+USEAB_numi ^(1/US_mumi)*((1-USEAB_gammaimi)*USEAB_imi)^(1-1/US_mumi)
+USRW_numi ^(1/US_mumi)*((1-USRW_gammaimi)*USRW_imi)^(1-1/US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USRW_numi
)^(1/US_mumi)*((1-USEAC_gammaimi)*USEAC_imi)^(1-1/US_mumi))^(US_mumi/(US_mumi-1));
// Demand for bilateral investment import goods
[name='USRW_imi'] 
USRW_imi = USRW_numi*(USRW_pim/(USRW_gammaimidag*US_pimi))^(-US_mumi)*US_imi/(1-USRW_gammaimi);
[name='USEAC_imi']
USEAC_imi = (1
-USEAA_numi
-USEAB_numi
-USRW_numi
)*(USEAC_pim/(USEAC_gammaimidag*US_pimi))^(-US_mumi)*US_imi/(1-USEAC_gammaimi);
[name='USEAB_imi'] 
USEAB_imi = USEAB_numi*(USEAB_pim/(USEAB_gammaimidag*US_pimi))^(-US_mumi)*US_imi/(1-USEAB_gammaimi);
// Price of the investment good (import)
[name='US_pimi']
US_pimi = (
+USEAA_numi *(USEAA_pim/USEAA_gammaimidag)^(1-US_mumi)
+USEAB_numi *(USEAB_pim/USEAB_gammaimidag)^(1-US_mumi)
+USRW_numi *(USRW_pim/USRW_gammaimidag)^(1-US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USRW_numi
)*(USEAC_pim/USEAC_gammaimidag)^(1-US_mumi))^(1/(1-US_mumi));
// Private investment good (import) inflation
[name='US_piimi']
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
[name='US_yst']
US_yst = US_sh*US_ht
+USEAA_sx*EAA_size/US_size*EAAUS_im
+USEAB_sx*EAB_size/US_size*EABUS_im
+USEAC_sx*EAC_size/US_size*EACUS_im
+USRW_sx*RW_size/US_size*RWUS_im
;
// Aggregate demand for bilateral imported intermediate goods
[name='USEAA_im']
USEAA_im = USEAA_imi+USEAA_imc;
[name='USEAB_im']
USEAB_im = USEAB_imi+USEAB_imc;
[name='USEAC_im']
USEAC_im = USEAC_imi+USEAC_imc;
[name='USRW_im']
USRW_im = USRW_imi+USRW_imc;
// Private consumption good firm
// Private consumption good (tradable)
[name='US_ttc']
US_ttc = ((US_nutc)^(1/US_mutc)*US_htc^(1-1/US_mutc)+(1-US_nutc)^(1/US_mutc)*US_imc^(1-1/US_mutc))^(US_mutc/(US_mutc-1));
// Private consumption good  (total)
[name='US_qc']
US_qc = ((US_nuc)^(1/US_muc)*US_ttc^(1-1/US_muc)+(1-US_nuc)^(1/US_muc)*US_ntc^(1-1/US_muc))^(US_muc/(US_muc-1)) ;
// Demand for domestic intermediate goods - NONTRADABLE
[name='US_ntc']
US_ntc = (1-US_nuc)*(US_pnt)^(-US_muc)*US_qc;
// Price of the consumption good (tradable) 
[name='US_pttc'] 
US_pttc = ((US_nutc)*US_pht^(1-US_mutc)+(1-US_nutc)*US_pimc^(1-US_mutc))^(1/(1-US_mutc));
// Price of the consumption good 
1^(1-US_muc) = (US_nuc)*US_pttc^(1-US_muc)+(1-US_nuc)*US_pnt^(1-US_muc);
// Demand for domestic intermediate goods
[name='US_htc']
US_htc = US_nutc*(US_pht/US_pttc)^(-US_mutc)*US_ttc;
// Import adjustment cost
[name='USEAA_gammaimc']
USEAA_gammaimc = US_gammaimc1/2*((USEAA_imc/US_qc)/(USEAA_imc(-1)/US_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAA_gammaimcdag']
USEAA_gammaimcdag = 1-USEAA_gammaimc-US_gammaimc1*((USEAA_imc/US_qc)/(USEAA_imc(-1)/US_qc(-1))-1)*(USEAA_imc/US_qc)/(USEAA_imc(-1)/US_qc(-1));
// Import adjustment cost
[name='USEAB_gammaimc']
USEAB_gammaimc = US_gammaimc1/2*((USEAB_imc/US_qc)/(USEAB_imc(-1)/US_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAB_gammaimcdag']
USEAB_gammaimcdag = 1-USEAB_gammaimc-US_gammaimc1*((USEAB_imc/US_qc)/(USEAB_imc(-1)/US_qc(-1))-1)*(USEAB_imc/US_qc)/(USEAB_imc(-1)/US_qc(-1));
// Import adjustment cost
[name='USEAC_gammaimc']
USEAC_gammaimc = US_gammaimc1/2*((USEAC_imc/US_qc)/(USEAC_imc(-1)/US_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAC_gammaimcdag']
USEAC_gammaimcdag = 1-USEAC_gammaimc-US_gammaimc1*((USEAC_imc/US_qc)/(USEAC_imc(-1)/US_qc(-1))-1)*(USEAC_imc/US_qc)/(USEAC_imc(-1)/US_qc(-1));
// Import adjustment cost
[name='USRW_gammaimc']
USRW_gammaimc = US_gammaimc1/2*((USRW_imc/US_qc)/(USRW_imc(-1)/US_qc(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USRW_gammaimcdag']
USRW_gammaimcdag = 1-USRW_gammaimc-US_gammaimc1*((USRW_imc/US_qc)/(USRW_imc(-1)/US_qc(-1))-1)*(USRW_imc/US_qc)/(USRW_imc(-1)/US_qc(-1));
// Private investment good firm
// Private investment good
[name='US_tti']
US_tti = ((US_nuti)^(1/US_muti)*US_hti^(1-1/US_muti)+(1-US_nuti)^(1/US_muti)*US_imi^(1-1/US_muti))^(US_muti/(US_muti-1));
// Private investment good
[name='US_qi']
US_qi = ((US_nui)^(1/US_mui)*US_tti^(1-1/US_mui)+(1-US_nui)^(1/US_mui)*US_nti^(1-1/US_mui))^(US_mui/(US_mui-1));
// Demand for domestic intermediate goods
[name='US_nti']
US_nti = (1-US_nui)*(US_pnt/US_pi)^(-US_mui)*US_qi;
// Price of the investment good (TRADABLE) 
[name='US_ptti'] 
US_ptti= ((US_nuti)*US_pht^(1-US_muti)+(1-US_nuti)*US_pimi^(1-US_muti))^(1/(US_muti-1)) ;
// Price of the investment good
US_pi = ((US_nui)*US_ptti^(1-US_mui)+(1-US_nui)*(US_pnt)^(1-US_mui))^(1/(1-US_mui));
// Auxiliary equation for the price of the investment good in steady state
// Demand for domestic intermediate goods
[name='US_hti']
US_hti = US_nuti*(US_pht/US_ptti)^(-US_muti)*US_tti;
// Import adjustment cost
[name='USEAA_gammaimi']
USEAA_gammaimi = US_gammaimi1/2*((USEAA_imi/US_qi)/(USEAA_imi(-1)/US_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAA_gammaimidag']
USEAA_gammaimidag = 1-USEAA_gammaimi-US_gammaimi1*((USEAA_imi/US_qi)/(USEAA_imi(-1)/US_qi)-1)*((USEAA_imi/US_qi)/(USEAA_imi(-1)/US_qi(-1)));
// Import adjustment cost
[name='USEAB_gammaimi']
USEAB_gammaimi = US_gammaimi1/2*((USEAB_imi/US_qi)/(USEAB_imi(-1)/US_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAB_gammaimidag']
USEAB_gammaimidag = 1-USEAB_gammaimi-US_gammaimi1*((USEAB_imi/US_qi)/(USEAB_imi(-1)/US_qi)-1)*((USEAB_imi/US_qi)/(USEAB_imi(-1)/US_qi(-1)));
// Import adjustment cost
[name='USEAC_gammaimi']
USEAC_gammaimi = US_gammaimi1/2*((USEAC_imi/US_qi)/(USEAC_imi(-1)/US_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USEAC_gammaimidag']
USEAC_gammaimidag = 1-USEAC_gammaimi-US_gammaimi1*((USEAC_imi/US_qi)/(USEAC_imi(-1)/US_qi)-1)*((USEAC_imi/US_qi)/(USEAC_imi(-1)/US_qi(-1)));
// Import adjustment cost
[name='USRW_gammaimi']
USRW_gammaimi = US_gammaimi1/2*((USRW_imi/US_qi)/(USRW_imi(-1)/US_qi(-1))-1)^2;
// Auxiliary equation for transformation of import adjustment cost
[name='USRW_gammaimidag']
USRW_gammaimidag = 1-USRW_gammaimi-US_gammaimi1*((USRW_imi/US_qi)/(USRW_imi(-1)/US_qi)-1)*((USRW_imi/US_qi)/(USRW_imi(-1)/US_qi(-1)));
// Trade balance
[name='US_tb']
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
[name='US_ex']
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
[name='US_b']
			 US_b = (-1)*(1/(US_r(-1))^(-1))*(- US_pnt(-1)*US_g(-1) - US_tr(-1)
			- US_b(-1)*US_pic(-1)^(-1) - US_m(-2)*US_pic(-1)^(-1) + US_tauc(-1)*US_c(-1)+(US_taun(-1)+US_tauwh(-1))*(US_wi(-1)*US_ndi(-1)+US_wj(-1)*US_ndj(-1))+US_tauwf(-1)*US_w(-1)*US_nd(-1)+US_tauk(-1)*(US_rk(-1)*US_u(-1)-(US_gammau(-1)+US_delta)*US_pi(-1))*US_k(-1)+US_taud(-1)*US_d(-1)+US_t(-1)+US_m(-1));
// Government spending, using US_pg = US_pht
[name='US_g']
US_g = US_gy*US_pybar*US_ybar/US_pnt;
// Transfers
[name='US_tr']
US_tr = US_try*US_pybar*US_ybar;
// Fiscal rule
[name='US_t']
US_t = (US_phitb*(US_b/(US_pybar*US_ybar)-US_bytarget))*(US_pybar*US_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
[name='US_ti']
US_ti = US_upsilont*US_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
[name='US_tri']
US_tri = US_upsilontr*US_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
// Monetary policy rule
	
			US_r^4-1 = US_phirr*(US_r(-1)^4-1)+(1-US_phirr)*(US_rrstar^4*US_pi4target-1+US_phirpi*(US_pic4-US_pi4target))+US_phirgy*(US_y/US_y(-1)-1)+US_epsr;
	
// Definition of annual inflation
US_pic4 = US_pic*US_pic(-1)*US_pic(-2)*US_pic(-3);
// Real interest rate
US_rr-1 = US_r/US_pic(+1)-1;
// Equilibrium real interest rate
[name='US_rrstar']
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
[name='US_ci']
US_ci = (US_c-US_omega*US_cj )/(1-US_omega);
// Aggregate money holdings
[name='US_m']
US_m = (1-US_omega)*US_mi+US_omega*US_mj;
// Aggregate capital stock
[name='US_k']
US_k = (1-US_omega)*US_ki;
// Aggregate investment
[name='US_ii']
US_ii = US_i/(1-US_omega);
// Aggregate lump-sum transfers
[name='US_trj']
US_trj = 
1/US_omega*US_tr-(1-US_omega)/US_omega*US_tri
;
// Aggregate lump-sum taxes
[name='US_tj']
US_tj = 
1/US_omega*US_t-(1-US_omega)/US_omega*US_ti
;
// Aggregate transaction costs
[name='US_gammav']
US_gammav = (1-US_omega)*US_ci*US_gammavi+US_omega*US_cj*US_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
[name='US_ni']
US_ni = US_si*US_ndi;
// Wage dispersion
[name='US_si']
US_si = (1-US_xii)*(US_witilde/US_wi)^(-US_etai)+US_xii*(US_wi(-1)/US_wi)^(-US_etai)*(US_pic/(US_pic(-1)^US_chii*US_pi4target^(1/4*(1-US_chii))))^(US_etai)*US_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
[name='US_nj']
US_nj = US_sj*US_ndj;
// Wage dispersion
[name='US_sj']
US_sj = (1-US_xij)*(US_wjtilde/US_wj)^(-US_etaj)+US_xij*(US_wj(-1)/US_wj)^(-US_etaj)*(US_pic/(US_pic(-1)^US_chij*US_pi4target^(1/4*(1-US_chij))))^(US_etaj)*US_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
[name='US_u']
US_u = US_kd/US_k;
// Intermediate-good markets
// Wedge between aggregate demand and production, using US_x = EAA_size/US_size*EAA_im
[name='US_ysn']
US_ysn = US_snt*US_nt;
//  nontradables aggregate demand
[name='US_nt']
US_nt =  US_nti+US_ntc+US_g;
// Aggregate demand for domestic intermediate goods, using US_hg = US_g
[name='US_ht']
US_ht = US_htc+US_hti;
// Price dispersion in the domestic markets
[name='US_sh']
US_sh = (1-US_xih)*(US_phttilde/US_pht)^(-US_thetat)+US_xih*(US_piht/(US_piht(-1)^US_chih*US_pi4target^(1/4*(1-US_chih))))^US_thetat*US_sh(-1);
// Price dispersion in the foreign markets
[name='USEAA_sx']
USEAA_sx = (1-US_xix)*(EAAUS_pimtilde/EAAUS_pim)^(-US_thetat)+US_xix*(EAAUS_piim/(EAAUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAA_sx(-1);
[name='USEAB_sx']
USEAB_sx = (1-US_xix)*(EABUS_pimtilde/EABUS_pim)^(-US_thetat)+US_xix*(EABUS_piim/(EABUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAB_sx(-1);
[name='USEAC_sx']
USEAC_sx = (1-US_xix)*(EACUS_pimtilde/EACUS_pim)^(-US_thetat)+US_xix*(EACUS_piim/(EACUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USEAC_sx(-1);
[name='USRW_sx']
USRW_sx = (1-US_xix)*(RWUS_pimtilde/RWUS_pim)^(-US_thetat)+US_xix*(RWUS_piim/(RWUS_piim(-1)^US_chix*US_pi4target^(1/4*(1-US_chih))))^US_thetat*USRW_sx(-1);
// Price dispersion in the domestic markets
[name='US_snt']
US_snt = (1-US_xin)*(US_pnttilde/US_pnt)^(-US_thetan)+US_xin*(US_pint/(US_pint(-1)^US_chin*US_pi4target^(1/4*(1-US_chin))))^US_thetan*US_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
[name='US_c']
US_c = US_qc - US_gammav ;
// Aggregate investment and capital utilisation cost
[name='US_i']
US_i = US_qi - US_k*US_gammau;
//-------------
// Resource constraint
//-------------
// Aggregate nominal demand, using US_pg = US_pht and US_qg = US_g   
[name='US_py']
US_py = (1/US_y) * ( US_qc+US_pi*US_qi+US_pnt*US_g
+USEAA_rer*EAAUS_pim*EAA_size/US_size*EAAUS_im
-USEAA_pim*(USEAA_imc*(1-USEAA_gammaimc)/USEAA_gammaimcdag)
-USEAA_pim*(USEAA_imi*(1-USEAA_gammaimi)/USEAA_gammaimidag)
+USEAB_rer*EABUS_pim*EAB_size/US_size*EABUS_im
-USEAB_pim*(USEAB_imc*(1-USEAB_gammaimc)/USEAB_gammaimcdag)
-USEAB_pim*(USEAB_imi*(1-USEAB_gammaimi)/USEAB_gammaimidag)
+USEAC_rer*EACUS_pim*EAC_size/US_size*EACUS_im
-USEAC_pim*(USEAC_imc*(1-USEAC_gammaimc)/USEAC_gammaimcdag)
-USEAC_pim*(USEAC_imi*(1-USEAC_gammaimi)/USEAC_gammaimidag)
+USRW_rer*RWUS_pim*RW_size/US_size*RWUS_im
-USRW_pim*(USRW_imc*(1-USRW_gammaimc)/USRW_gammaimcdag)
-USRW_pim*(USRW_imi*(1-USRW_gammaimi)/USRW_gammaimidag)
);
// Aggregate real demand
[name='US_y']
US_y = US_yst+US_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
[name='US_zt']
log(US_zt) = (1-US_rhozt)*log(US_ztbar)+US_rhozt*log(US_zt(-1))+US_epszt;
[name='US_zn']
log(US_zn) = (1-US_rhozn)*log(US_znbar)+US_rhozn*log(US_zn(-1))+US_epszn;
// Government spending shock
[name='US_gy']
US_gy = (1-US_rhog)*US_gybar+US_rhog*US_gy(-1)+US_epsg;
// Transfer shock
[name='US_try']
US_try = (1-US_rhotr)*US_trybar+US_rhotr*US_try(-1)+US_epstr;
// Consumption tax shock
[name='US_tauc']
US_tauc = (1-US_rhotauc)*US_taucbar+US_rhotauc*US_tauc(-1)+US_epstauc;
// Dividend income tax shock
[name='US_taud']
US_taud = (1-US_rhotaud)*US_taudbar+US_rhotaud*US_taud(-1)+US_epstaud;
// Capital income tax shock
[name='US_tauk']
US_tauk = (1-US_rhotauk)*US_taukbar+US_rhotauk*US_tauk(-1)+US_epstauk;
// Labour income tax shock
[name='US_taun']
US_taun = (1-US_rhotaun)*US_taunbar+US_rhotaun*US_taun(-1)+US_epstaun;
// Payroll tax shock: households
[name='US_tauwh']
US_tauwh = (1-US_rhotauwh)*US_tauwhbar+US_rhotauwh*US_tauwh(-1)+US_epstauwh;
// Payroll tax shock: firms
[name='US_tauwf']
US_tauwf = (1-US_rhotauwf)*US_tauwfbar+US_rhotauwf*US_tauwf(-1)+US_epstauwf;
// Wage cost push shock
[name='US_wcst']
US_wcst = (1-US_rhowcst)*US_wcstbar+US_rhowcst*US_wcst(-1)+US_epswcst;
// Preference shock
[name='US_zcon']
log(US_zcon) = (1-US_rhozcon)*log(US_zconbar)+US_rhozcon*log(US_zcon(-1))+US_epszcon;
// Investment specific shock
[name='US_zinv']
log(US_zinv) = (1-US_rhozinv)*log(US_zinvbar)+US_rhozinv*log(US_zinv(-1))+US_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
[name='US_cy']
US_cy = US_c/(US_py*US_y);
// Aggregate nominal investment share
[name='US_iy']
US_iy = US_pi*US_i/(US_py*US_y);
// Aggregate nominal import share  
[name='US_imy']
US_imy = (US_pimc*US_imc+US_pimi*US_imi)/(US_py*US_y);
// Aggregate nominal import share for consumption goods 
[name='US_imcy']
US_imcy = US_pimc*US_imc/(US_py*US_y);
// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
[name='US_imiy']
US_imiy = US_pimi*US_imi/(US_py*US_y);
// Aggregate debt-to-output ratio
[name='US_by']
US_by = US_b/(US_pybar*US_ybar);
// Aggregate lump-sum tax-to-output ratio
[name='US_ty']
US_ty = US_t/(US_pybar*US_ybar);
// Aggregate labour cost share
[name='US_lcy']
US_lcy = ((1+US_tauwf)*US_w*US_nd)/(US_py*US_y);
// Aggregate nominal Wage share
[name='US_wy']
US_wy = (US_w*US_nd)/(US_py*US_y);
// NT sector nominal Wage share
[name='US_wnty']
US_wnty = (US_w*US_ndn)/(US_pnt*US_ysn);
// T sector nominal Wage share
[name='US_whty']
US_whty = (US_w*US_ndt)/(US_pht*US_yst);
// T sector share
[name='US_yhty']
US_yhty = US_pht*US_yst/(US_py*US_y);
// NT sector share
[name='US_ynty']
US_ynty = US_pnt*US_ysn/(US_py*US_y);
// Output gap
[name='US_ygap']
US_ygap = US_y/US_ybar-1;
// Output growth (gross rate)
[name='US_ygrowth']
US_ygrowth = US_y/US_y(-1);
// Output growth (gross rate yoy)
[name='US_ygrowth4']
US_ygrowth4 = US_y/US_y(-4);
// Domestic nominal output as a share of world nominal output
[name='US_yshare']
US_yshare  = US_size*US_py*US_y/US_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
[name='US_epsilonm'] 
US_epsilonm = -1/8*1/(US_r*(US_gammav2*US_r+US_r-1));
// Trade balance-to-GDP ratio
[name='US_tby'] 
US_tby = US_tb/(US_py*US_y);
// Imports of consumption goods
[name='USEAA_imcy'] 
USEAA_imcy  = USEAA_pim*USEAA_imc/(US_py*US_y);
// Imports of investment goods
[name='USEAA_imiy'] 
USEAA_imiy = USEAA_pim*USEAA_imi/(US_py*US_y);
// Exports of consumption goods to gdp
[name='USEAA_excy']
USEAA_excy  = EAA_size/US_size*USEAA_rer*EAAUS_pim*EAAUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
[name='USEAA_exiy'] 
USEAA_exiy  = EAA_size/US_size*USEAA_rer*EAAUS_pim*EAAUS_imi/(US_py*US_y);
// Imports of consumption goods
[name='USEAB_imcy'] 
USEAB_imcy  = USEAB_pim*USEAB_imc/(US_py*US_y);
// Imports of investment goods
[name='USEAB_imiy'] 
USEAB_imiy = USEAB_pim*USEAB_imi/(US_py*US_y);
// Exports of consumption goods to gdp
[name='USEAB_excy']
USEAB_excy  = EAB_size/US_size*USEAB_rer*EABUS_pim*EABUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
[name='USEAB_exiy'] 
USEAB_exiy  = EAB_size/US_size*USEAB_rer*EABUS_pim*EABUS_imi/(US_py*US_y);
// Imports of consumption goods
[name='USEAC_imcy'] 
USEAC_imcy  = USEAC_pim*USEAC_imc/(US_py*US_y);
// Imports of investment goods
[name='USEAC_imiy'] 
USEAC_imiy = USEAC_pim*USEAC_imi/(US_py*US_y);
// Exports of consumption goods to gdp
[name='USEAC_excy']
USEAC_excy  = EAC_size/US_size*USEAC_rer*EACUS_pim*EACUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
[name='USEAC_exiy'] 
USEAC_exiy  = EAC_size/US_size*USEAC_rer*EACUS_pim*EACUS_imi/(US_py*US_y);
// Imports of consumption goods
[name='USRW_imcy'] 
USRW_imcy  = USRW_pim*USRW_imc/(US_py*US_y);
// Imports of investment goods
[name='USRW_imiy'] 
USRW_imiy = USRW_pim*USRW_imi/(US_py*US_y);
// Exports of consumption goods to gdp
[name='USRW_excy']
USRW_excy  = RW_size/US_size*USRW_rer*RWUS_pim*RWUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
[name='USRW_exiy'] 
USRW_exiy  = RW_size/US_size*USRW_rer*RWUS_pim*RWUS_imi/(US_py*US_y);
// Internal real exchange rate
[name='US_internalrer'] 
US_internalrer = US_pnt/US_pttc;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
[name='EAA_rerdep'] 
EAA_rerdep(+1) = EAA_lambdai*US_pic(+1)/US_r/(1-EAA_gammab)/EAA_beta/EAA_lambdai(+1) ;
// International transaction cost ('risk premium')
[name='EAA_gammab']
EAA_gammab = EAA_gammab1*(exp(EAA_rer*EAA_bf/US_pic/(EAA_py*EAA_y)-EAA_bfytarget)-1)
;
// Risk premium shock
[name='EAA_rp']
EAA_rp = EAA_rhorp*EAA_rp(-1)+EAA_epsrp;
// Definition of the rate of real exchange-rate depreciation
[name='EAA_rer']
EAA_rer = EAA_rerdep*EAA_rer(-1);
// Definition of the terms of trade
[name='EAA_tot']
EAA_tot = EAAUS_pim/(EAA_rer*USEAA_pim);
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
[name='EAB_rerdep'] 
EAB_rerdep(+1) = EAB_lambdai*US_pic(+1)/US_r/(1-EAB_gammab)/EAB_beta/EAB_lambdai(+1) ;
// International transaction cost ('risk premium')
[name='EAB_gammab']
EAB_gammab = EAB_gammab1*(exp(EAB_rer*EAB_bf/US_pic/(EAB_py*EAB_y)-EAB_bfytarget)-1)
;
// Risk premium shock
[name='EAB_rp']
EAB_rp = EAB_rhorp*EAB_rp(-1)+EAB_epsrp;
// Definition of the rate of real exchange-rate depreciation
[name='EAB_rer']
EAB_rer = EAB_rerdep*EAB_rer(-1);
// Definition of the terms of trade
[name='EAB_tot']
EAB_tot = EABUS_pim/(EAB_rer*USEAB_pim);
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
[name='EAC_rerdep'] 
EAC_rerdep(+1) = EAC_lambdai*US_pic(+1)/US_r/(1-EAC_gammab)/EAC_beta/EAC_lambdai(+1) ;
// International transaction cost ('risk premium')
[name='EAC_gammab']
EAC_gammab = EAC_gammab1*(exp(EAC_rer*EAC_bf/US_pic/(EAC_py*EAC_y)-EAC_bfytarget)-1)
;
// Risk premium shock
[name='EAC_rp']
EAC_rp = EAC_rhorp*EAC_rp(-1)+EAC_epsrp;
// Definition of the rate of real exchange-rate depreciation
[name='EAC_rer']
EAC_rer = EAC_rerdep*EAC_rer(-1);
// Definition of the terms of trade
[name='EAC_tot']
EAC_tot = EACUS_pim/(EAC_rer*USEAC_pim);
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
[name='RW_rerdep'] 
RW_rerdep(+1) = RW_lambdai*US_pic(+1)/US_r/(1-RW_gammab)/RW_beta/RW_lambdai(+1) ;
// International transaction cost ('risk premium')
[name='RW_gammab']
RW_gammab = RW_gammab1*(exp(RW_rer*RW_bf/US_pic/(RW_py*RW_y)-RW_bfytarget)-1)
-RW_rp
;
// Risk premium shock
[name='RW_rp']
RW_rp = RW_rhorp*RW_rp(-1)+RW_epsrp;
// Definition of the rate of real exchange-rate depreciation
[name='RW_rer']
RW_rer = RW_rerdep*RW_rer(-1);
// Definition of the terms of trade
[name='RW_tot']
RW_tot = RWUS_pim/(RW_rer*USRW_pim);
//-------------
// Closure conditions
//-------------
[name='US_bf'] 
US_bf =
-EAA_size*EAA_bf/US_size
-EAB_size*EAB_bf/US_size
-EAC_size*EAC_bf/US_size
-RW_size*RW_bf/US_size
;
// Net foreign asset position
		[name='EAA_bf'] 
		EAA_bf = (-EAA_bh/EAB_r(-1)*EAAEAB_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAB_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1))*RW_r(-1);
		[name='EAB_bf'] 
		EAB_bf = (-EAB_bh/EAA_r(-1) / EAB_rer(-1) + EAB_bh(-1) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1))*RW_r(-1);
		[name='EAC_bf'] 
		EAC_bf = (-EAC_bh/EAA_r(-1) / EAC_rer(-1) + EAC_bh(-1) / EAC_rer(-2) + EAC_bf(-1) + EAC_tb(-1)/EAC_rer(-1))*RW_r(-1);
	[name='RW_bf'] 
	RW_bf = (RW_bf(-1)+RW_tb(-1)/RW_rer(-1))*US_r(-1);
[name='RW_rer']
RW_rer = 1;
[name='EAAEAB_nerdep'] 
EAAEAB_nerdep = EAA_rerdep/EAB_rerdep*EAA_pic/EAB_pic;
EAAEAC_nerdep = EAA_rerdep/EAC_rerdep*EAA_pic/EAC_pic;
// Euler equation for euroarea traded bonds
[name='EAA_gammabh'] 
1 = EAC_r*(1-EAA_gammabh)*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*EAAEAC_rer(+1)/EAAEAC_rer   /EAC_pic(+1);
1 = EAC_r*(1-EAB_gammabh)*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*EABEAC_rer(+1)/EABEAC_rer   /EAC_pic(+1);
// International transaction cost ('risk premium')
[name='EAA_bh'] 
EAA_bh = (log(EAA_gammabh/EAC_gammab1+1)+EAA_bhytarget)*(EAA_py*EAA_y)*EAC_pic/EAAEAC_rer;
EAB_bh = (log(EAB_gammabh/EAC_gammab1+1)+EAB_bhytarget)*(EAB_py*EAB_y)*EAC_pic/EABEAC_rer;
[name='EAB_bh']
EAC_bh = (-EAA_bh*EAA_size)/ EAC_size;
//-------------
// Euroarea-wide variables
//-------------
// GDP
[name = 'EA_y']
EA_y = (EAA_size*EAA_pybar*EAA_y + EAB_size*EAAEAB_rerbar*EAB_pybar *EAB_y + EAC_size*EAAEAC_rerbar*EAC_pybar *EAC_y)/(EAA_size+EAB_size+EAC_size);
// GDP growth
[name = 'EA_ygrowth']
EA_ygrowth= EA_y/EA_y(-1);
// GDP growth (yoy)
[name = 'EA_ygrowth4']
EA_ygrowth4= EA_y/EA_y(-4);
// Money
[name = 'EA_m']
EA_m = (EAA_size*EAA_m + EAB_size*EAAEAB_rerbar*EAB_m+ EAC_size*EAAEAC_rerbar*EAC_m)/(EAA_size+EAB_size+EAC_size);
[name = 'EA_bf']
EA_bf = (EAA_size*EAA_bf + EAB_size*EAB_bf + EAC_size*EAC_bf)/(EAA_size+EAB_size+EAC_size);
// Annual inflation
[name = 'EA_pic4']
EA_pic4 = EAA_pic4^(EAA_size/(EAA_size+EAB_size+EAC_size))*EAB_pic4^(EAB_size/(EAA_size+EAB_size+EAC_size))*EAC_pic4^(EAC_size/(EAA_size+EAB_size+EAC_size));
// Productivity
[name = 'EA_z']
log(EA_z) = (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;
// Auxiliary equation for steady-state output
end;
// load_params_and_steady_state('eagle_steady.txt');
