options_.maxit_ = 20
options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;
ctryNumberDouble = 8;
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
 EAAEAE_excy
 EAAEAF_excy
 EAARW_excy
 EAAUS_excy
 EAAEAB_exiy
 EAAEAC_exiy
 EAAEAD_exiy
 EAAEAE_exiy
 EAAEAF_exiy
 EAARW_exiy
 EAAUS_exiy
EAA_fx
 EAAEAB_gammaimc
 EAAEAC_gammaimc
 EAAEAD_gammaimc
 EAAEAE_gammaimc
 EAAEAF_gammaimc
 EAARW_gammaimc
 EAAUS_gammaimc
 EAAEAB_gammaimcdag
 EAAEAC_gammaimcdag
 EAAEAD_gammaimcdag
 EAAEAE_gammaimcdag
 EAAEAF_gammaimcdag
 EAARW_gammaimcdag
 EAAUS_gammaimcdag
 EAAEAB_gammaimi
 EAAEAC_gammaimi
 EAAEAD_gammaimi
 EAAEAE_gammaimi
 EAAEAF_gammaimi
 EAARW_gammaimi
 EAAUS_gammaimi
 EAAEAB_gammaimidag
 EAAEAC_gammaimidag
 EAAEAD_gammaimidag
 EAAEAE_gammaimidag
 EAAEAF_gammaimidag
 EAARW_gammaimidag
 EAAUS_gammaimidag
 EAAEAB_gammaimcg
 EAAEAC_gammaimcg
 EAAEAD_gammaimcg
 EAAEAE_gammaimcg
 EAAEAF_gammaimcg
 EAARW_gammaimcg
 EAAUS_gammaimcg
 EAAEAB_gammaimcgdag
 EAAEAC_gammaimcgdag
 EAAEAD_gammaimcgdag
 EAAEAE_gammaimcgdag
 EAAEAF_gammaimcgdag
 EAARW_gammaimcgdag
 EAAUS_gammaimcgdag
 EAAEAB_gammaimig
 EAAEAC_gammaimig
 EAAEAD_gammaimig
 EAAEAE_gammaimig
 EAAEAF_gammaimig
 EAARW_gammaimig
 EAAUS_gammaimig
 EAAEAB_gammaimigdag
 EAAEAC_gammaimigdag
 EAAEAD_gammaimigdag
 EAAEAE_gammaimigdag
 EAAEAF_gammaimigdag
 EAARW_gammaimigdag
 EAAUS_gammaimigdag
EAA_gx
 EAAEAB_im
 EAAEAC_im
 EAAEAD_im
 EAAEAE_im
 EAAEAF_im
 EAARW_im
 EAAUS_im
 EAAEAB_imc
 EAAEAC_imc
 EAAEAD_imc
 EAAEAE_imc
 EAAEAF_imc
 EAARW_imc
 EAAUS_imc
 EAAEAB_imcy
 EAAEAC_imcy
 EAAEAD_imcy
 EAAEAE_imcy
 EAAEAF_imcy
 EAARW_imcy
 EAAUS_imcy
 EAAEAB_imi
 EAAEAC_imi
 EAAEAD_imi
 EAAEAE_imi
 EAAEAF_imi
 EAARW_imi
 EAAUS_imi
 EAAEAB_imiy
 EAAEAC_imiy
 EAAEAD_imiy
 EAAEAE_imiy
 EAAEAF_imiy
 EAARW_imiy
 EAAUS_imiy
 EAAEAB_imcg
 EAAEAC_imcg
 EAAEAD_imcg
 EAAEAE_imcg
 EAAEAF_imcg
 EAARW_imcg
 EAAUS_imcg
 EAAEAB_imcgy
 EAAEAC_imcgy
 EAAEAD_imcgy
 EAAEAE_imcgy
 EAAEAF_imcgy
 EAARW_imcgy
 EAAUS_imcgy
 EAAEAB_imig
 EAAEAC_imig
 EAAEAD_imig
 EAAEAE_imig
 EAAEAF_imig
 EAARW_imig
 EAAUS_imig
 EAAEAB_imigy
 EAAEAC_imigy
 EAAEAD_imigy
 EAAEAE_imigy
 EAAEAF_imigy
 EAARW_imigy
 EAAUS_imigy
EAA_piex
EAA_pextilde
 EAAEAB_rer
 EAAEAC_rer
 EAAEAD_rer
 EAAEAE_rer
 EAAEAF_rer
 EAARW_rer
 EAAUS_rer
EAA_sx
 EAAEAB_tot
 EAAEAC_tot
 EAAEAD_tot
 EAAEAE_tot
 EAAEAF_tot
 EAARW_tot
 EAAUS_tot
 EAAEAB_weight
 EAAEAC_weight
 EAAEAD_weight
 EAAEAE_weight
 EAAEAF_weight
 EAARW_weight
 EAAUS_weight
 EAAEAB_weightex
 EAAEAC_weightex
 EAAEAD_weightex
 EAAEAE_weightex
 EAAEAF_weightex
 EAARW_weightex
 EAAUS_weightex
 EAAEAB_weightim
 EAAEAC_weightim
 EAAEAD_weightim
 EAAEAE_weightim
 EAAEAF_weightim
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
 EAAEAE_rerbar
 EAAEAF_rerbar
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
 EABEAE_excy
 EABEAF_excy
 EABRW_excy
 EABUS_excy
 EABEAA_exiy
 EABEAC_exiy
 EABEAD_exiy
 EABEAE_exiy
 EABEAF_exiy
 EABRW_exiy
 EABUS_exiy
EAB_fx
 EABEAA_gammaimc
 EABEAC_gammaimc
 EABEAD_gammaimc
 EABEAE_gammaimc
 EABEAF_gammaimc
 EABRW_gammaimc
 EABUS_gammaimc
 EABEAA_gammaimcdag
 EABEAC_gammaimcdag
 EABEAD_gammaimcdag
 EABEAE_gammaimcdag
 EABEAF_gammaimcdag
 EABRW_gammaimcdag
 EABUS_gammaimcdag
 EABEAA_gammaimi
 EABEAC_gammaimi
 EABEAD_gammaimi
 EABEAE_gammaimi
 EABEAF_gammaimi
 EABRW_gammaimi
 EABUS_gammaimi
 EABEAA_gammaimidag
 EABEAC_gammaimidag
 EABEAD_gammaimidag
 EABEAE_gammaimidag
 EABEAF_gammaimidag
 EABRW_gammaimidag
 EABUS_gammaimidag
 EABEAA_gammaimcg
 EABEAC_gammaimcg
 EABEAD_gammaimcg
 EABEAE_gammaimcg
 EABEAF_gammaimcg
 EABRW_gammaimcg
 EABUS_gammaimcg
 EABEAA_gammaimcgdag
 EABEAC_gammaimcgdag
 EABEAD_gammaimcgdag
 EABEAE_gammaimcgdag
 EABEAF_gammaimcgdag
 EABRW_gammaimcgdag
 EABUS_gammaimcgdag
 EABEAA_gammaimig
 EABEAC_gammaimig
 EABEAD_gammaimig
 EABEAE_gammaimig
 EABEAF_gammaimig
 EABRW_gammaimig
 EABUS_gammaimig
 EABEAA_gammaimigdag
 EABEAC_gammaimigdag
 EABEAD_gammaimigdag
 EABEAE_gammaimigdag
 EABEAF_gammaimigdag
 EABRW_gammaimigdag
 EABUS_gammaimigdag
EAB_gx
 EABEAA_im
 EABEAC_im
 EABEAD_im
 EABEAE_im
 EABEAF_im
 EABRW_im
 EABUS_im
 EABEAA_imc
 EABEAC_imc
 EABEAD_imc
 EABEAE_imc
 EABEAF_imc
 EABRW_imc
 EABUS_imc
 EABEAA_imcy
 EABEAC_imcy
 EABEAD_imcy
 EABEAE_imcy
 EABEAF_imcy
 EABRW_imcy
 EABUS_imcy
 EABEAA_imi
 EABEAC_imi
 EABEAD_imi
 EABEAE_imi
 EABEAF_imi
 EABRW_imi
 EABUS_imi
 EABEAA_imiy
 EABEAC_imiy
 EABEAD_imiy
 EABEAE_imiy
 EABEAF_imiy
 EABRW_imiy
 EABUS_imiy
 EABEAA_imcg
 EABEAC_imcg
 EABEAD_imcg
 EABEAE_imcg
 EABEAF_imcg
 EABRW_imcg
 EABUS_imcg
 EABEAA_imcgy
 EABEAC_imcgy
 EABEAD_imcgy
 EABEAE_imcgy
 EABEAF_imcgy
 EABRW_imcgy
 EABUS_imcgy
 EABEAA_imig
 EABEAC_imig
 EABEAD_imig
 EABEAE_imig
 EABEAF_imig
 EABRW_imig
 EABUS_imig
 EABEAA_imigy
 EABEAC_imigy
 EABEAD_imigy
 EABEAE_imigy
 EABEAF_imigy
 EABRW_imigy
 EABUS_imigy
EAB_piex
EAB_pextilde
 EABEAA_rer
 EABEAC_rer
 EABEAD_rer
 EABEAE_rer
 EABEAF_rer
 EABRW_rer
 EABUS_rer
EAB_sx
 EABEAA_tot
 EABEAC_tot
 EABEAD_tot
 EABEAE_tot
 EABEAF_tot
 EABRW_tot
 EABUS_tot
 EABEAA_weight
 EABEAC_weight
 EABEAD_weight
 EABEAE_weight
 EABEAF_weight
 EABRW_weight
 EABUS_weight
 EABEAA_weightex
 EABEAC_weightex
 EABEAD_weightex
 EABEAE_weightex
 EABEAF_weightex
 EABRW_weightex
 EABUS_weightex
 EABEAA_weightim
 EABEAC_weightim
 EABEAD_weightim
 EABEAE_weightim
 EABEAF_weightim
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
 EABEAE_rerbar
 EABEAF_rerbar
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
 EACEAE_excy
 EACEAF_excy
 EACRW_excy
 EACUS_excy
 EACEAA_exiy
 EACEAB_exiy
 EACEAD_exiy
 EACEAE_exiy
 EACEAF_exiy
 EACRW_exiy
 EACUS_exiy
EAC_fx
 EACEAA_gammaimc
 EACEAB_gammaimc
 EACEAD_gammaimc
 EACEAE_gammaimc
 EACEAF_gammaimc
 EACRW_gammaimc
 EACUS_gammaimc
 EACEAA_gammaimcdag
 EACEAB_gammaimcdag
 EACEAD_gammaimcdag
 EACEAE_gammaimcdag
 EACEAF_gammaimcdag
 EACRW_gammaimcdag
 EACUS_gammaimcdag
 EACEAA_gammaimi
 EACEAB_gammaimi
 EACEAD_gammaimi
 EACEAE_gammaimi
 EACEAF_gammaimi
 EACRW_gammaimi
 EACUS_gammaimi
 EACEAA_gammaimidag
 EACEAB_gammaimidag
 EACEAD_gammaimidag
 EACEAE_gammaimidag
 EACEAF_gammaimidag
 EACRW_gammaimidag
 EACUS_gammaimidag
 EACEAA_gammaimcg
 EACEAB_gammaimcg
 EACEAD_gammaimcg
 EACEAE_gammaimcg
 EACEAF_gammaimcg
 EACRW_gammaimcg
 EACUS_gammaimcg
 EACEAA_gammaimcgdag
 EACEAB_gammaimcgdag
 EACEAD_gammaimcgdag
 EACEAE_gammaimcgdag
 EACEAF_gammaimcgdag
 EACRW_gammaimcgdag
 EACUS_gammaimcgdag
 EACEAA_gammaimig
 EACEAB_gammaimig
 EACEAD_gammaimig
 EACEAE_gammaimig
 EACEAF_gammaimig
 EACRW_gammaimig
 EACUS_gammaimig
 EACEAA_gammaimigdag
 EACEAB_gammaimigdag
 EACEAD_gammaimigdag
 EACEAE_gammaimigdag
 EACEAF_gammaimigdag
 EACRW_gammaimigdag
 EACUS_gammaimigdag
EAC_gx
 EACEAA_im
 EACEAB_im
 EACEAD_im
 EACEAE_im
 EACEAF_im
 EACRW_im
 EACUS_im
 EACEAA_imc
 EACEAB_imc
 EACEAD_imc
 EACEAE_imc
 EACEAF_imc
 EACRW_imc
 EACUS_imc
 EACEAA_imcy
 EACEAB_imcy
 EACEAD_imcy
 EACEAE_imcy
 EACEAF_imcy
 EACRW_imcy
 EACUS_imcy
 EACEAA_imi
 EACEAB_imi
 EACEAD_imi
 EACEAE_imi
 EACEAF_imi
 EACRW_imi
 EACUS_imi
 EACEAA_imiy
 EACEAB_imiy
 EACEAD_imiy
 EACEAE_imiy
 EACEAF_imiy
 EACRW_imiy
 EACUS_imiy
 EACEAA_imcg
 EACEAB_imcg
 EACEAD_imcg
 EACEAE_imcg
 EACEAF_imcg
 EACRW_imcg
 EACUS_imcg
 EACEAA_imcgy
 EACEAB_imcgy
 EACEAD_imcgy
 EACEAE_imcgy
 EACEAF_imcgy
 EACRW_imcgy
 EACUS_imcgy
 EACEAA_imig
 EACEAB_imig
 EACEAD_imig
 EACEAE_imig
 EACEAF_imig
 EACRW_imig
 EACUS_imig
 EACEAA_imigy
 EACEAB_imigy
 EACEAD_imigy
 EACEAE_imigy
 EACEAF_imigy
 EACRW_imigy
 EACUS_imigy
EAC_piex
EAC_pextilde
 EACEAA_rer
 EACEAB_rer
 EACEAD_rer
 EACEAE_rer
 EACEAF_rer
 EACRW_rer
 EACUS_rer
EAC_sx
 EACEAA_tot
 EACEAB_tot
 EACEAD_tot
 EACEAE_tot
 EACEAF_tot
 EACRW_tot
 EACUS_tot
 EACEAA_weight
 EACEAB_weight
 EACEAD_weight
 EACEAE_weight
 EACEAF_weight
 EACRW_weight
 EACUS_weight
 EACEAA_weightex
 EACEAB_weightex
 EACEAD_weightex
 EACEAE_weightex
 EACEAF_weightex
 EACRW_weightex
 EACUS_weightex
 EACEAA_weightim
 EACEAB_weightim
 EACEAD_weightim
 EACEAE_weightim
 EACEAF_weightim
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
 EACEAE_rerbar
 EACEAF_rerbar
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
 EADEAE_excy
 EADEAF_excy
 EADRW_excy
 EADUS_excy
 EADEAA_exiy
 EADEAB_exiy
 EADEAC_exiy
 EADEAE_exiy
 EADEAF_exiy
 EADRW_exiy
 EADUS_exiy
EAD_fx
 EADEAA_gammaimc
 EADEAB_gammaimc
 EADEAC_gammaimc
 EADEAE_gammaimc
 EADEAF_gammaimc
 EADRW_gammaimc
 EADUS_gammaimc
 EADEAA_gammaimcdag
 EADEAB_gammaimcdag
 EADEAC_gammaimcdag
 EADEAE_gammaimcdag
 EADEAF_gammaimcdag
 EADRW_gammaimcdag
 EADUS_gammaimcdag
 EADEAA_gammaimi
 EADEAB_gammaimi
 EADEAC_gammaimi
 EADEAE_gammaimi
 EADEAF_gammaimi
 EADRW_gammaimi
 EADUS_gammaimi
 EADEAA_gammaimidag
 EADEAB_gammaimidag
 EADEAC_gammaimidag
 EADEAE_gammaimidag
 EADEAF_gammaimidag
 EADRW_gammaimidag
 EADUS_gammaimidag
 EADEAA_gammaimcg
 EADEAB_gammaimcg
 EADEAC_gammaimcg
 EADEAE_gammaimcg
 EADEAF_gammaimcg
 EADRW_gammaimcg
 EADUS_gammaimcg
 EADEAA_gammaimcgdag
 EADEAB_gammaimcgdag
 EADEAC_gammaimcgdag
 EADEAE_gammaimcgdag
 EADEAF_gammaimcgdag
 EADRW_gammaimcgdag
 EADUS_gammaimcgdag
 EADEAA_gammaimig
 EADEAB_gammaimig
 EADEAC_gammaimig
 EADEAE_gammaimig
 EADEAF_gammaimig
 EADRW_gammaimig
 EADUS_gammaimig
 EADEAA_gammaimigdag
 EADEAB_gammaimigdag
 EADEAC_gammaimigdag
 EADEAE_gammaimigdag
 EADEAF_gammaimigdag
 EADRW_gammaimigdag
 EADUS_gammaimigdag
EAD_gx
 EADEAA_im
 EADEAB_im
 EADEAC_im
 EADEAE_im
 EADEAF_im
 EADRW_im
 EADUS_im
 EADEAA_imc
 EADEAB_imc
 EADEAC_imc
 EADEAE_imc
 EADEAF_imc
 EADRW_imc
 EADUS_imc
 EADEAA_imcy
 EADEAB_imcy
 EADEAC_imcy
 EADEAE_imcy
 EADEAF_imcy
 EADRW_imcy
 EADUS_imcy
 EADEAA_imi
 EADEAB_imi
 EADEAC_imi
 EADEAE_imi
 EADEAF_imi
 EADRW_imi
 EADUS_imi
 EADEAA_imiy
 EADEAB_imiy
 EADEAC_imiy
 EADEAE_imiy
 EADEAF_imiy
 EADRW_imiy
 EADUS_imiy
 EADEAA_imcg
 EADEAB_imcg
 EADEAC_imcg
 EADEAE_imcg
 EADEAF_imcg
 EADRW_imcg
 EADUS_imcg
 EADEAA_imcgy
 EADEAB_imcgy
 EADEAC_imcgy
 EADEAE_imcgy
 EADEAF_imcgy
 EADRW_imcgy
 EADUS_imcgy
 EADEAA_imig
 EADEAB_imig
 EADEAC_imig
 EADEAE_imig
 EADEAF_imig
 EADRW_imig
 EADUS_imig
 EADEAA_imigy
 EADEAB_imigy
 EADEAC_imigy
 EADEAE_imigy
 EADEAF_imigy
 EADRW_imigy
 EADUS_imigy
EAD_piex
EAD_pextilde
 EADEAA_rer
 EADEAB_rer
 EADEAC_rer
 EADEAE_rer
 EADEAF_rer
 EADRW_rer
 EADUS_rer
EAD_sx
 EADEAA_tot
 EADEAB_tot
 EADEAC_tot
 EADEAE_tot
 EADEAF_tot
 EADRW_tot
 EADUS_tot
 EADEAA_weight
 EADEAB_weight
 EADEAC_weight
 EADEAE_weight
 EADEAF_weight
 EADRW_weight
 EADUS_weight
 EADEAA_weightex
 EADEAB_weightex
 EADEAC_weightex
 EADEAE_weightex
 EADEAF_weightex
 EADRW_weightex
 EADUS_weightex
 EADEAA_weightim
 EADEAB_weightim
 EADEAC_weightim
 EADEAE_weightim
 EADEAF_weightim
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
 EADEAE_rerbar
 EADEAF_rerbar
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
 EAEEAA_excy
 EAEEAB_excy
 EAEEAC_excy
 EAEEAD_excy
 EAEEAF_excy
 EAERW_excy
 EAEUS_excy
 EAEEAA_exiy
 EAEEAB_exiy
 EAEEAC_exiy
 EAEEAD_exiy
 EAEEAF_exiy
 EAERW_exiy
 EAEUS_exiy
EAE_fx
 EAEEAA_gammaimc
 EAEEAB_gammaimc
 EAEEAC_gammaimc
 EAEEAD_gammaimc
 EAEEAF_gammaimc
 EAERW_gammaimc
 EAEUS_gammaimc
 EAEEAA_gammaimcdag
 EAEEAB_gammaimcdag
 EAEEAC_gammaimcdag
 EAEEAD_gammaimcdag
 EAEEAF_gammaimcdag
 EAERW_gammaimcdag
 EAEUS_gammaimcdag
 EAEEAA_gammaimi
 EAEEAB_gammaimi
 EAEEAC_gammaimi
 EAEEAD_gammaimi
 EAEEAF_gammaimi
 EAERW_gammaimi
 EAEUS_gammaimi
 EAEEAA_gammaimidag
 EAEEAB_gammaimidag
 EAEEAC_gammaimidag
 EAEEAD_gammaimidag
 EAEEAF_gammaimidag
 EAERW_gammaimidag
 EAEUS_gammaimidag
 EAEEAA_gammaimcg
 EAEEAB_gammaimcg
 EAEEAC_gammaimcg
 EAEEAD_gammaimcg
 EAEEAF_gammaimcg
 EAERW_gammaimcg
 EAEUS_gammaimcg
 EAEEAA_gammaimcgdag
 EAEEAB_gammaimcgdag
 EAEEAC_gammaimcgdag
 EAEEAD_gammaimcgdag
 EAEEAF_gammaimcgdag
 EAERW_gammaimcgdag
 EAEUS_gammaimcgdag
 EAEEAA_gammaimig
 EAEEAB_gammaimig
 EAEEAC_gammaimig
 EAEEAD_gammaimig
 EAEEAF_gammaimig
 EAERW_gammaimig
 EAEUS_gammaimig
 EAEEAA_gammaimigdag
 EAEEAB_gammaimigdag
 EAEEAC_gammaimigdag
 EAEEAD_gammaimigdag
 EAEEAF_gammaimigdag
 EAERW_gammaimigdag
 EAEUS_gammaimigdag
EAE_gx
 EAEEAA_im
 EAEEAB_im
 EAEEAC_im
 EAEEAD_im
 EAEEAF_im
 EAERW_im
 EAEUS_im
 EAEEAA_imc
 EAEEAB_imc
 EAEEAC_imc
 EAEEAD_imc
 EAEEAF_imc
 EAERW_imc
 EAEUS_imc
 EAEEAA_imcy
 EAEEAB_imcy
 EAEEAC_imcy
 EAEEAD_imcy
 EAEEAF_imcy
 EAERW_imcy
 EAEUS_imcy
 EAEEAA_imi
 EAEEAB_imi
 EAEEAC_imi
 EAEEAD_imi
 EAEEAF_imi
 EAERW_imi
 EAEUS_imi
 EAEEAA_imiy
 EAEEAB_imiy
 EAEEAC_imiy
 EAEEAD_imiy
 EAEEAF_imiy
 EAERW_imiy
 EAEUS_imiy
 EAEEAA_imcg
 EAEEAB_imcg
 EAEEAC_imcg
 EAEEAD_imcg
 EAEEAF_imcg
 EAERW_imcg
 EAEUS_imcg
 EAEEAA_imcgy
 EAEEAB_imcgy
 EAEEAC_imcgy
 EAEEAD_imcgy
 EAEEAF_imcgy
 EAERW_imcgy
 EAEUS_imcgy
 EAEEAA_imig
 EAEEAB_imig
 EAEEAC_imig
 EAEEAD_imig
 EAEEAF_imig
 EAERW_imig
 EAEUS_imig
 EAEEAA_imigy
 EAEEAB_imigy
 EAEEAC_imigy
 EAEEAD_imigy
 EAEEAF_imigy
 EAERW_imigy
 EAEUS_imigy
EAE_piex
EAE_pextilde
 EAEEAA_rer
 EAEEAB_rer
 EAEEAC_rer
 EAEEAD_rer
 EAEEAF_rer
 EAERW_rer
 EAEUS_rer
EAE_sx
 EAEEAA_tot
 EAEEAB_tot
 EAEEAC_tot
 EAEEAD_tot
 EAEEAF_tot
 EAERW_tot
 EAEUS_tot
 EAEEAA_weight
 EAEEAB_weight
 EAEEAC_weight
 EAEEAD_weight
 EAEEAF_weight
 EAERW_weight
 EAEUS_weight
 EAEEAA_weightex
 EAEEAB_weightex
 EAEEAC_weightex
 EAEEAD_weightex
 EAEEAF_weightex
 EAERW_weightex
 EAEUS_weightex
 EAEEAA_weightim
 EAEEAB_weightim
 EAEEAC_weightim
 EAEEAD_weightim
 EAEEAF_weightim
 EAERW_weightim
 EAEUS_weightim
 EAE_b
 EAE_bf
 EAE_by
 EAE_c
 EAE_ci
 EAE_cj
 EAE_cy
 EAE_d
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
 EAE_htcg
 EAE_htig
 EAE_i
 EAE_ig
 EAE_ii
 EAE_im
 EAE_imc
 EAE_imcy
 EAE_imi
 EAE_imiy
 EAE_imcg
 EAE_imcgy
 EAE_imig
 EAE_imigy
 EAE_imy
 EAE_internalrer
 EAE_iy
 EAE_igy
 EAE_k
 EAE_kd
 EAE_kdn
 EAE_kdt
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
 EAE_ntcg
 EAE_ntig
 EAE_pex
 EAE_pht
 EAE_phttilde
 EAE_pi
 EAE_pcg
 EAE_pig
 EAE_pic
 EAE_pic4
 EAE_piex4
 EAE_piht
 EAE_piimc
 EAE_piimi
 EAE_piimcg
 EAE_piimig
 EAE_piimc4
 EAE_pim
 EAE_pimc
 EAE_pimi
 EAE_pimcg
 EAE_pimig
 EAE_pint
 EAE_piw
 EAE_piw4
 EAE_pnt
 EAE_pnttilde
 EAE_pttc
 EAE_ptti
 EAE_pttcg
 EAE_pttig
 EAE_py
 EAE_q
 EAE_qc
 EAE_qi
 EAE_qcg
 EAE_qig
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
 EAE_ttcg
 EAE_ttig
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
 EAE_gammab1
 EAE_gammai1
 EAE_gammaimc1
 EAE_gammaimi1
 EAE_gammaimcg1
 EAE_gammaimig1
 EAE_gammau2
 EAE_gammav1
 EAE_gammav2
 EAE_kappa
 EAE_muc
 EAE_mumc
 EAE_mutc
 EAE_nuc
 EAE_nutc
 EAE_mui
 EAE_mumi
 EAE_muti
 EAE_nui
 EAE_nuti
 EAE_mucg
 EAE_mumcg
 EAE_mutcg
 EAE_nucg
 EAE_nutcg
 EAE_muig
 EAE_mumig
 EAE_mutig
 EAE_nuig
 EAE_nutig
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
 EAEEAF_rerbar
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
 EAE_epsgc
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
 EAFEAA_excy
 EAFEAB_excy
 EAFEAC_excy
 EAFEAD_excy
 EAFEAE_excy
 EAFRW_excy
 EAFUS_excy
 EAFEAA_exiy
 EAFEAB_exiy
 EAFEAC_exiy
 EAFEAD_exiy
 EAFEAE_exiy
 EAFRW_exiy
 EAFUS_exiy
EAF_fx
 EAFEAA_gammaimc
 EAFEAB_gammaimc
 EAFEAC_gammaimc
 EAFEAD_gammaimc
 EAFEAE_gammaimc
 EAFRW_gammaimc
 EAFUS_gammaimc
 EAFEAA_gammaimcdag
 EAFEAB_gammaimcdag
 EAFEAC_gammaimcdag
 EAFEAD_gammaimcdag
 EAFEAE_gammaimcdag
 EAFRW_gammaimcdag
 EAFUS_gammaimcdag
 EAFEAA_gammaimi
 EAFEAB_gammaimi
 EAFEAC_gammaimi
 EAFEAD_gammaimi
 EAFEAE_gammaimi
 EAFRW_gammaimi
 EAFUS_gammaimi
 EAFEAA_gammaimidag
 EAFEAB_gammaimidag
 EAFEAC_gammaimidag
 EAFEAD_gammaimidag
 EAFEAE_gammaimidag
 EAFRW_gammaimidag
 EAFUS_gammaimidag
 EAFEAA_gammaimcg
 EAFEAB_gammaimcg
 EAFEAC_gammaimcg
 EAFEAD_gammaimcg
 EAFEAE_gammaimcg
 EAFRW_gammaimcg
 EAFUS_gammaimcg
 EAFEAA_gammaimcgdag
 EAFEAB_gammaimcgdag
 EAFEAC_gammaimcgdag
 EAFEAD_gammaimcgdag
 EAFEAE_gammaimcgdag
 EAFRW_gammaimcgdag
 EAFUS_gammaimcgdag
 EAFEAA_gammaimig
 EAFEAB_gammaimig
 EAFEAC_gammaimig
 EAFEAD_gammaimig
 EAFEAE_gammaimig
 EAFRW_gammaimig
 EAFUS_gammaimig
 EAFEAA_gammaimigdag
 EAFEAB_gammaimigdag
 EAFEAC_gammaimigdag
 EAFEAD_gammaimigdag
 EAFEAE_gammaimigdag
 EAFRW_gammaimigdag
 EAFUS_gammaimigdag
EAF_gx
 EAFEAA_im
 EAFEAB_im
 EAFEAC_im
 EAFEAD_im
 EAFEAE_im
 EAFRW_im
 EAFUS_im
 EAFEAA_imc
 EAFEAB_imc
 EAFEAC_imc
 EAFEAD_imc
 EAFEAE_imc
 EAFRW_imc
 EAFUS_imc
 EAFEAA_imcy
 EAFEAB_imcy
 EAFEAC_imcy
 EAFEAD_imcy
 EAFEAE_imcy
 EAFRW_imcy
 EAFUS_imcy
 EAFEAA_imi
 EAFEAB_imi
 EAFEAC_imi
 EAFEAD_imi
 EAFEAE_imi
 EAFRW_imi
 EAFUS_imi
 EAFEAA_imiy
 EAFEAB_imiy
 EAFEAC_imiy
 EAFEAD_imiy
 EAFEAE_imiy
 EAFRW_imiy
 EAFUS_imiy
 EAFEAA_imcg
 EAFEAB_imcg
 EAFEAC_imcg
 EAFEAD_imcg
 EAFEAE_imcg
 EAFRW_imcg
 EAFUS_imcg
 EAFEAA_imcgy
 EAFEAB_imcgy
 EAFEAC_imcgy
 EAFEAD_imcgy
 EAFEAE_imcgy
 EAFRW_imcgy
 EAFUS_imcgy
 EAFEAA_imig
 EAFEAB_imig
 EAFEAC_imig
 EAFEAD_imig
 EAFEAE_imig
 EAFRW_imig
 EAFUS_imig
 EAFEAA_imigy
 EAFEAB_imigy
 EAFEAC_imigy
 EAFEAD_imigy
 EAFEAE_imigy
 EAFRW_imigy
 EAFUS_imigy
EAF_piex
EAF_pextilde
 EAFEAA_rer
 EAFEAB_rer
 EAFEAC_rer
 EAFEAD_rer
 EAFEAE_rer
 EAFRW_rer
 EAFUS_rer
EAF_sx
 EAFEAA_tot
 EAFEAB_tot
 EAFEAC_tot
 EAFEAD_tot
 EAFEAE_tot
 EAFRW_tot
 EAFUS_tot
 EAFEAA_weight
 EAFEAB_weight
 EAFEAC_weight
 EAFEAD_weight
 EAFEAE_weight
 EAFRW_weight
 EAFUS_weight
 EAFEAA_weightex
 EAFEAB_weightex
 EAFEAC_weightex
 EAFEAD_weightex
 EAFEAE_weightex
 EAFRW_weightex
 EAFUS_weightex
 EAFEAA_weightim
 EAFEAB_weightim
 EAFEAC_weightim
 EAFEAD_weightim
 EAFEAE_weightim
 EAFRW_weightim
 EAFUS_weightim
 EAF_b
 EAF_bf
 EAF_by
 EAF_c
 EAF_ci
 EAF_cj
 EAF_cy
 EAF_d
 EAF_dn
 EAF_dt
 EAF_epsilonm
 EAF_etot
 EAF_ex
 EAF_fh
 EAF_fi
 EAF_fj
 EAF_fn
 EAF_cg
 EAF_gammab
 EAF_gammai
 EAF_gammaider
 EAF_gammau
 EAF_gammauder
 EAF_gammav
 EAF_gammavi
 EAF_gammavider
 EAF_gammavj
 EAF_gammavjder
 EAF_gh
 EAF_gi
 EAF_gj
 EAF_gn
 EAF_cgy
 EAF_ht
 EAF_htc
 EAF_hti
 EAF_htcg
 EAF_htig
 EAF_i
 EAF_ig
 EAF_ii
 EAF_im
 EAF_imc
 EAF_imcy
 EAF_imi
 EAF_imiy
 EAF_imcg
 EAF_imcgy
 EAF_imig
 EAF_imigy
 EAF_imy
 EAF_internalrer
 EAF_iy
 EAF_igy
 EAF_k
 EAF_kd
 EAF_kdn
 EAF_kdt
 EAF_ki
 EAF_lambdai
 EAF_lambdaj
 EAF_lcy
 EAF_m
 EAF_mcn
 EAF_mct
 EAF_mi
 EAF_mj
 EAF_nd
 EAF_ndi
 EAF_ndj
 EAF_ndn
 EAF_ndt
 EAF_ni
 EAF_nj
 EAF_nt
 EAF_ntc
 EAF_nti
 EAF_ntcg
 EAF_ntig
 EAF_pex
 EAF_pht
 EAF_phttilde
 EAF_pi
 EAF_pcg
 EAF_pig
 EAF_pic
 EAF_pic4
 EAF_piex4
 EAF_piht
 EAF_piimc
 EAF_piimi
 EAF_piimcg
 EAF_piimig
 EAF_piimc4
 EAF_pim
 EAF_pimc
 EAF_pimi
 EAF_pimcg
 EAF_pimig
 EAF_pint
 EAF_piw
 EAF_piw4
 EAF_pnt
 EAF_pnttilde
 EAF_pttc
 EAF_ptti
 EAF_pttcg
 EAF_pttig
 EAF_py
 EAF_q
 EAF_qc
 EAF_qi
 EAF_qcg
 EAF_qig
 EAF_r
 EAF_reer
 EAF_rer
 EAF_rerdep
 EAF_rk
 EAF_rp
 EAF_rr
 EAF_rrstar
 EAF_sh
 EAF_si
 EAF_sj
 EAF_snt
 EAF_t
 EAF_tauc
 EAF_taud
 EAF_tauk
 EAF_taun
 EAF_tauwf
 EAF_tauwh
 EAF_tb
 EAF_tby
 EAF_ti
 EAF_tj
 EAF_tot
 EAF_tr
 EAF_tri
 EAF_trj
 EAF_try
 EAF_ttc
 EAF_tti
 EAF_ttcg
 EAF_ttig
 EAF_ty
 EAF_u
 EAF_utili
 EAF_utilj
 EAF_vi
 EAF_vj
 EAF_w
 EAF_wcst
 EAF_whty
 EAF_wi
 EAF_witilde
 EAF_wj
 EAF_wjtilde
 EAF_wnty
 EAF_wy
 EAF_y
 EAF_ygap
 EAF_ygrowth
 EAF_ygrowth4
 EAF_yhty
 EAF_ynty
 EAF_yshare
 EAF_ysn
 EAF_yst
 EAF_zcon
 EAF_zinv
 EAF_zn
 EAF_zt
;
// Parameters
parameters
 EAF_alphan
 EAF_alphat
 EAF_beta
 EAF_bfytarget
 EAF_bhytarget
 EAF_bytarget
 EAF_chin
 EAF_chih
 EAF_chii
 EAF_chij
 EAF_chix
 EAF_delta
 EAF_gammab1
 EAF_gammai1
 EAF_gammaimc1
 EAF_gammaimi1
 EAF_gammaimcg1
 EAF_gammaimig1
 EAF_gammau2
 EAF_gammav1
 EAF_gammav2
 EAF_kappa
 EAF_muc
 EAF_mumc
 EAF_mutc
 EAF_nuc
 EAF_nutc
 EAF_mui
 EAF_mumi
 EAF_muti
 EAF_nui
 EAF_nuti
 EAF_mucg
 EAF_mumcg
 EAF_mutcg
 EAF_nucg
 EAF_nutcg
 EAF_muig
 EAF_mumig
 EAF_mutig
 EAF_nuig
 EAF_nutig
 EAF_omega
 EAF_phitb
 EAF_pi4target
 EAF_psin
 EAF_psit
 EAF_rhocg
 EAF_rhoig
 EAF_rhorp
 EAF_rhotauc
 EAF_rhotaud
 EAF_rhotauk
 EAF_rhotaun
 EAF_rhotauwf
 EAF_rhotauwh
 EAF_rhotr
 EAF_rhowcst
 EAF_rhozcon
 EAF_rhozinv
 EAF_rhozn
 EAF_rhozt
 EAF_sigma
 EAF_size
 EAF_xin
 EAF_xih
 EAF_xii
 EAF_xij
 EAF_xix
 EAF_zeta
 EAF_eta
 EAF_etai
 EAF_etaj
 EAF_thetan
 EAF_thetat
 EAF_upsilont
 EAF_upsilontr
 EAFEAA_rerbar
 EAFEAB_rerbar
 EAFEAC_rerbar
 EAFEAD_rerbar
 EAFEAE_rerbar
 EAFRW_rerbar
 EAFUS_rerbar
 EAF_pibar
 EAF_psinbar
 EAF_psitbar
 EAF_pybar
 EAF_qbar
 EAF_trybar
 EAF_ybar
 EAF_ynbar
 EAF_ytbar
;
// Exogenous
varexo
 EAF_cgybar
 EAF_igybar
 EAF_taucbar
 EAF_taudbar
 EAF_taukbar
 EAF_taunbar
 EAF_tauwfbar
 EAF_tauwhbar
 EAF_wcstbar
 EAF_zconbar
 EAF_zinvbar
 EAF_znbar
 EAF_ztbar
 EAF_epsgc
 EAF_epsgi
 EAF_epstauc
 EAF_epstaud
 EAF_epstauk
 EAF_epstaun
 EAF_epstauwf
 EAF_epstauwh
 EAF_epstr
 EAF_epswcst
 EAF_epszcon
 EAF_epszinv
 EAF_epszn
 EAF_epszt
;
// Endogenous
var
 RWEAA_excy
 RWEAB_excy
 RWEAC_excy
 RWEAD_excy
 RWEAE_excy
 RWEAF_excy
 RWUS_excy
 RWEAA_exiy
 RWEAB_exiy
 RWEAC_exiy
 RWEAD_exiy
 RWEAE_exiy
 RWEAF_exiy
 RWUS_exiy
RW_fx
 RWEAA_gammaimc
 RWEAB_gammaimc
 RWEAC_gammaimc
 RWEAD_gammaimc
 RWEAE_gammaimc
 RWEAF_gammaimc
 RWUS_gammaimc
 RWEAA_gammaimcdag
 RWEAB_gammaimcdag
 RWEAC_gammaimcdag
 RWEAD_gammaimcdag
 RWEAE_gammaimcdag
 RWEAF_gammaimcdag
 RWUS_gammaimcdag
 RWEAA_gammaimi
 RWEAB_gammaimi
 RWEAC_gammaimi
 RWEAD_gammaimi
 RWEAE_gammaimi
 RWEAF_gammaimi
 RWUS_gammaimi
 RWEAA_gammaimidag
 RWEAB_gammaimidag
 RWEAC_gammaimidag
 RWEAD_gammaimidag
 RWEAE_gammaimidag
 RWEAF_gammaimidag
 RWUS_gammaimidag
 RWEAA_gammaimcg
 RWEAB_gammaimcg
 RWEAC_gammaimcg
 RWEAD_gammaimcg
 RWEAE_gammaimcg
 RWEAF_gammaimcg
 RWUS_gammaimcg
 RWEAA_gammaimcgdag
 RWEAB_gammaimcgdag
 RWEAC_gammaimcgdag
 RWEAD_gammaimcgdag
 RWEAE_gammaimcgdag
 RWEAF_gammaimcgdag
 RWUS_gammaimcgdag
 RWEAA_gammaimig
 RWEAB_gammaimig
 RWEAC_gammaimig
 RWEAD_gammaimig
 RWEAE_gammaimig
 RWEAF_gammaimig
 RWUS_gammaimig
 RWEAA_gammaimigdag
 RWEAB_gammaimigdag
 RWEAC_gammaimigdag
 RWEAD_gammaimigdag
 RWEAE_gammaimigdag
 RWEAF_gammaimigdag
 RWUS_gammaimigdag
RW_gx
 RWEAA_im
 RWEAB_im
 RWEAC_im
 RWEAD_im
 RWEAE_im
 RWEAF_im
 RWUS_im
 RWEAA_imc
 RWEAB_imc
 RWEAC_imc
 RWEAD_imc
 RWEAE_imc
 RWEAF_imc
 RWUS_imc
 RWEAA_imcy
 RWEAB_imcy
 RWEAC_imcy
 RWEAD_imcy
 RWEAE_imcy
 RWEAF_imcy
 RWUS_imcy
 RWEAA_imi
 RWEAB_imi
 RWEAC_imi
 RWEAD_imi
 RWEAE_imi
 RWEAF_imi
 RWUS_imi
 RWEAA_imiy
 RWEAB_imiy
 RWEAC_imiy
 RWEAD_imiy
 RWEAE_imiy
 RWEAF_imiy
 RWUS_imiy
 RWEAA_imcg
 RWEAB_imcg
 RWEAC_imcg
 RWEAD_imcg
 RWEAE_imcg
 RWEAF_imcg
 RWUS_imcg
 RWEAA_imcgy
 RWEAB_imcgy
 RWEAC_imcgy
 RWEAD_imcgy
 RWEAE_imcgy
 RWEAF_imcgy
 RWUS_imcgy
 RWEAA_imig
 RWEAB_imig
 RWEAC_imig
 RWEAD_imig
 RWEAE_imig
 RWEAF_imig
 RWUS_imig
 RWEAA_imigy
 RWEAB_imigy
 RWEAC_imigy
 RWEAD_imigy
 RWEAE_imigy
 RWEAF_imigy
 RWUS_imigy
RW_piex
RW_pextilde
 RWEAA_rer
 RWEAB_rer
 RWEAC_rer
 RWEAD_rer
 RWEAE_rer
 RWEAF_rer
 RWUS_rer
RW_sx
 RWEAA_tot
 RWEAB_tot
 RWEAC_tot
 RWEAD_tot
 RWEAE_tot
 RWEAF_tot
 RWUS_tot
 RWEAA_weight
 RWEAB_weight
 RWEAC_weight
 RWEAD_weight
 RWEAE_weight
 RWEAF_weight
 RWUS_weight
 RWEAA_weightex
 RWEAB_weightex
 RWEAC_weightex
 RWEAD_weightex
 RWEAE_weightex
 RWEAF_weightex
 RWUS_weightex
 RWEAA_weightim
 RWEAB_weightim
 RWEAC_weightim
 RWEAD_weightim
 RWEAE_weightim
 RWEAF_weightim
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
 RWEAE_rerbar
 RWEAF_rerbar
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
 USEAE_excy
 USEAF_excy
 USRW_excy
 USEAA_exiy
 USEAB_exiy
 USEAC_exiy
 USEAD_exiy
 USEAE_exiy
 USEAF_exiy
 USRW_exiy
US_fx
 USEAA_gammaimc
 USEAB_gammaimc
 USEAC_gammaimc
 USEAD_gammaimc
 USEAE_gammaimc
 USEAF_gammaimc
 USRW_gammaimc
 USEAA_gammaimcdag
 USEAB_gammaimcdag
 USEAC_gammaimcdag
 USEAD_gammaimcdag
 USEAE_gammaimcdag
 USEAF_gammaimcdag
 USRW_gammaimcdag
 USEAA_gammaimi
 USEAB_gammaimi
 USEAC_gammaimi
 USEAD_gammaimi
 USEAE_gammaimi
 USEAF_gammaimi
 USRW_gammaimi
 USEAA_gammaimidag
 USEAB_gammaimidag
 USEAC_gammaimidag
 USEAD_gammaimidag
 USEAE_gammaimidag
 USEAF_gammaimidag
 USRW_gammaimidag
 USEAA_gammaimcg
 USEAB_gammaimcg
 USEAC_gammaimcg
 USEAD_gammaimcg
 USEAE_gammaimcg
 USEAF_gammaimcg
 USRW_gammaimcg
 USEAA_gammaimcgdag
 USEAB_gammaimcgdag
 USEAC_gammaimcgdag
 USEAD_gammaimcgdag
 USEAE_gammaimcgdag
 USEAF_gammaimcgdag
 USRW_gammaimcgdag
 USEAA_gammaimig
 USEAB_gammaimig
 USEAC_gammaimig
 USEAD_gammaimig
 USEAE_gammaimig
 USEAF_gammaimig
 USRW_gammaimig
 USEAA_gammaimigdag
 USEAB_gammaimigdag
 USEAC_gammaimigdag
 USEAD_gammaimigdag
 USEAE_gammaimigdag
 USEAF_gammaimigdag
 USRW_gammaimigdag
US_gx
 USEAA_im
 USEAB_im
 USEAC_im
 USEAD_im
 USEAE_im
 USEAF_im
 USRW_im
 USEAA_imc
 USEAB_imc
 USEAC_imc
 USEAD_imc
 USEAE_imc
 USEAF_imc
 USRW_imc
 USEAA_imcy
 USEAB_imcy
 USEAC_imcy
 USEAD_imcy
 USEAE_imcy
 USEAF_imcy
 USRW_imcy
 USEAA_imi
 USEAB_imi
 USEAC_imi
 USEAD_imi
 USEAE_imi
 USEAF_imi
 USRW_imi
 USEAA_imiy
 USEAB_imiy
 USEAC_imiy
 USEAD_imiy
 USEAE_imiy
 USEAF_imiy
 USRW_imiy
 USEAA_imcg
 USEAB_imcg
 USEAC_imcg
 USEAD_imcg
 USEAE_imcg
 USEAF_imcg
 USRW_imcg
 USEAA_imcgy
 USEAB_imcgy
 USEAC_imcgy
 USEAD_imcgy
 USEAE_imcgy
 USEAF_imcgy
 USRW_imcgy
 USEAA_imig
 USEAB_imig
 USEAC_imig
 USEAD_imig
 USEAE_imig
 USEAF_imig
 USRW_imig
 USEAA_imigy
 USEAB_imigy
 USEAC_imigy
 USEAD_imigy
 USEAE_imigy
 USEAF_imigy
 USRW_imigy
US_piex
US_pextilde
 USEAA_rer
 USEAB_rer
 USEAC_rer
 USEAD_rer
 USEAE_rer
 USEAF_rer
 USRW_rer
US_sx
 USEAA_tot
 USEAB_tot
 USEAC_tot
 USEAD_tot
 USEAE_tot
 USEAF_tot
 USRW_tot
 USEAA_weight
 USEAB_weight
 USEAC_weight
 USEAD_weight
 USEAE_weight
 USEAF_weight
 USRW_weight
 USEAA_weightex
 USEAB_weightex
 USEAC_weightex
 USEAD_weightex
 USEAE_weightex
 USEAF_weightex
 USRW_weightex
 USEAA_weightim
 USEAB_weightim
 USEAC_weightim
 USEAD_weightim
 USEAE_weightim
 USEAF_weightim
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
 USEAE_rerbar
 USEAF_rerbar
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
 EAAEAE_numc
 EAAEAE_numi
 EAAEAE_numcg
 EAAEAE_numig
 EAAEAF_numc
 EAAEAF_numi
 EAAEAF_numcg
 EAAEAF_numig
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
 EABEAE_numc
 EABEAE_numi
 EABEAE_numcg
 EABEAE_numig
 EABEAF_numc
 EABEAF_numi
 EABEAF_numcg
 EABEAF_numig
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
 EACEAE_numc
 EACEAE_numi
 EACEAE_numcg
 EACEAE_numig
 EACEAF_numc
 EACEAF_numi
 EACEAF_numcg
 EACEAF_numig
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
 EADEAE_numc
 EADEAE_numi
 EADEAE_numcg
 EADEAE_numig
 EADEAF_numc
 EADEAF_numi
 EADEAF_numcg
 EADEAF_numig
 EADRW_numc
 EADRW_numi
 EADRW_numcg
 EADRW_numig
 EADUS_numc
 EADUS_numi
 EADUS_numcg
 EADUS_numig
 EAEEAA_numc
 EAEEAA_numi
 EAEEAA_numcg
 EAEEAA_numig
 EAEEAB_numc
 EAEEAB_numi
 EAEEAB_numcg
 EAEEAB_numig
 EAEEAD_numc
 EAEEAD_numi
 EAEEAD_numcg
 EAEEAD_numig
 EAEEAF_numc
 EAEEAF_numi
 EAEEAF_numcg
 EAEEAF_numig
 EAERW_numc
 EAERW_numi
 EAERW_numcg
 EAERW_numig
 EAEUS_numc
 EAEUS_numi
 EAEUS_numcg
 EAEUS_numig
 EAFEAA_numc
 EAFEAA_numi
 EAFEAA_numcg
 EAFEAA_numig
 EAFEAB_numc
 EAFEAB_numi
 EAFEAB_numcg
 EAFEAB_numig
 EAFEAC_numc
 EAFEAC_numi
 EAFEAC_numcg
 EAFEAC_numig
 EAFEAE_numc
 EAFEAE_numi
 EAFEAE_numcg
 EAFEAE_numig
 EAFRW_numc
 EAFRW_numi
 EAFRW_numcg
 EAFRW_numig
 EAFUS_numc
 EAFUS_numi
 EAFUS_numcg
 EAFUS_numig
 RWEAA_numc
 RWEAA_numi
 RWEAA_numcg
 RWEAA_numig
 RWEAB_numc
 RWEAB_numi
 RWEAB_numcg
 RWEAB_numig
 RWEAC_numc
 RWEAC_numi
 RWEAC_numcg
 RWEAC_numig
 RWEAD_numc
 RWEAD_numi
 RWEAD_numcg
 RWEAD_numig
 RWEAF_numc
 RWEAF_numi
 RWEAF_numcg
 RWEAF_numig
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
 USEAD_numc
 USEAD_numi
 USEAD_numcg
 USEAD_numig
 USEAE_numc
 USEAE_numi
 USEAE_numcg
 USEAE_numig
 USRW_numc
 USRW_numi
 USRW_numcg
 USRW_numig
;
        var EAAEAF_nerdep;
        var EAA_gammabh;
        var EABEAF_nerdep;
        var EAB_gammabh;
        var EACEAF_nerdep;
        var EAC_gammabh;
        var EADEAF_nerdep;
        var EAD_gammabh;
        var EAEEAF_nerdep;
        var EAE_gammabh;
var
 EAA_bh
 EAB_bh
 EAC_bh
 EAD_bh
 EAE_bh
 EAF_bh
;
// Flip some variables
change_type(var)
 EA_ybar
 EAAEAB_rerbar
 EAAEAC_rerbar
 EAAEAD_rerbar
 EAAEAE_rerbar
 EAAEAF_rerbar
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
 EABEAF_rerbar
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
 EACEAF_rerbar
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
 EADEAF_rerbar
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
 EAEEAF_rerbar
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
 EAFEAA_rerbar
 EAFEAB_rerbar
 EAFEAC_rerbar
 EAFEAD_rerbar
 EAFEAE_rerbar
 EAFRW_rerbar
 EAFUS_rerbar
 EAF_pibar
 EAF_psinbar
 EAF_psitbar
 EAF_pybar
 EAF_qbar
 EAF_trybar
 EAF_ybar
 EAF_ynbar
 EAF_ytbar
 RWEAA_rerbar
 RWEAB_rerbar
 RWEAC_rerbar
 RWEAD_rerbar
 RWEAE_rerbar
 RWEAF_rerbar
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
 USEAF_rerbar
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
// Marginal utility of consumption
EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder) = EAA_zcon*(EAA_cj-EAA_kappa*EAA_cj(-1))^(-EAA_sigma);
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
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAE_pimtilde
// EAEEAA_pimtilde/EAEEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAE_fx/EAAEAE_gx;
// Definition of fx
// EAAEAE_fx = EAE_size/EAA_size*EAEEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAEEAA_piim(+1)/(EAEEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAE_fx(+1);
// Definition of gx   
// EAAEAE_gx = EAAEAE_rer*EAEEAA_pim*EAE_size/EAA_size*EAEEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAEEAA_piim(+1)/(EAEEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAE_pim
// EAEEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EAEEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EAEEAA_pim(-1)/EAE_pic)^(1-EAA_thetat)*(EAEEAA_piim(-1)^EAA_chix*EAE_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAE_piim
// EAEEAA_piim = EAEEAA_pim/EAEEAA_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EAAEAE_rer = EAA_rer/EAE_rer;
// Auxiliary equation for steady-state output
EAAEAE_rerbar = EAAEAE_rer;
//Terms of Trade
EAAEAE_tot = EAE_pex*EAAEAE_rer/EAA_pex;
// Optimal price contract set in foreign markets (FOC), using EAA_pxtilde = EAF_pimtilde
// EAFEAA_pimtilde/EAFEAA_pim = EAA_cpim*EAA_thetat/(EAA_thetat-1)*EAAEAF_fx/EAAEAF_gx;
// Definition of fx
// EAAEAF_fx = EAF_size/EAA_size*EAFEAA_im*EAA_mct+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAFEAA_piim(+1)/(EAFEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^EAA_thetat*EAAEAF_fx(+1);
// Definition of gx   
// EAAEAF_gx = EAAEAF_rer*EAFEAA_pim*EAF_size/EAA_size*EAFEAA_im+EAA_xix*EAA_beta*EAA_lambdai(+1)/EAA_lambdai*(EAFEAA_piim(+1)/(EAFEAA_piim^EAA_chix*EAA_pi4target^(1/4*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using EAA_px = EAF_pim
// EAFEAA_pim^(1-EAA_thetat) = (1-EAA_xix)*EAFEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EAFEAA_pim(-1)/EAF_pic)^(1-EAA_thetat)*(EAFEAA_piim(-1)^EAA_chix*EAF_pi4target^(1/4*(1-EAA_chih)))^(1-EAA_thetat);
// Intermediate-good price inflation, using EAA_pix = EAF_piim
// EAFEAA_piim = EAFEAA_pim/EAFEAA_pim(-1)*EAF_pic;
// Bilateral real exchange rate
EAAEAF_rer = EAA_rer/EAF_rer;
// Auxiliary equation for steady-state output
EAAEAF_rerbar = EAAEAF_rer;
//Terms of Trade
EAAEAF_tot = EAF_pex*EAAEAF_rer/EAA_pex;
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
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)+
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EACEAB_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EADEAB_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EAEEAB_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*EAFEAB_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*RWEAB_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAB_rer*EAB_pex*USEAB_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
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
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EABEAC_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EADEAC_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EAEEAC_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*EAFEAC_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*RWEAC_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAC_rer*EAC_pex*USEAC_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
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
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EABEAD_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EACEAD_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EAEEAD_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*EAFEAD_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*RWEAD_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAD_rer*EAD_pex*USEAD_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
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
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EABEAE_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EACEAE_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EADEAE_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*EAFEAE_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*RWEAE_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAE_rer*EAE_pex*USEAE_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAE_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAE_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EAAEAF_weightim = EAAEAF_rer*EAF_pex*EAAEAF_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAAEAF_weightex = EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAEAF_rer*EAF_py*EAF_y/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*EABEAF_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*EACEAF_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*EADEAF_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*EAEEAF_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*RWEAF_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAAEAF_rer*EAF_pex*USEAF_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
+EAARW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAAEAF_weight = EAA_pim*EAA_im/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAF_weightim+EAA_pex*EAA_ex/(EAA_pim*EAA_im+EAA_pex*EAA_ex)*EAAEAF_weightex;
// Effective real exchange rate: double weighting (imports)
EAARW_weightim = EAARW_rer*RW_pex*EAARW_im/(EAA_pim*EAA_im);
// Effective real exchange rate: double weighting (exports)
EAARW_weightex = RW_size/EAA_size*RWEAA_im/EAA_ex*EAARW_rer*RW_py*RW_y/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
+EAAUS_rer*US_pex*RWUS_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAARW_rer*RW_pex*EABRW_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAARW_rer*RW_pex*EACRW_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAARW_rer*RW_pex*EADRW_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAARW_rer*RW_pex*EAERW_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAARW_rer*RW_pex*EAFRW_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+US_size/EAA_size*USEAA_im/EAA_ex*EAARW_rer*RW_pex*USRW_im/(EAAUS_rer*US_py*US_y
+EAAEAB_rer*EAB_pex*USEAB_im
+EAAEAC_rer*EAC_pex*USEAC_im
+EAAEAD_rer*EAD_pex*USEAD_im
+EAAEAE_rer*EAE_pex*USEAE_im
+EAAEAF_rer*EAF_pex*USEAF_im
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
+EAAEAF_rer*EAF_pex*USEAF_im
+EAARW_rer*RW_pex*USRW_im
)+
+EAB_size/EAA_size*EABEAA_im/EAA_ex*EAAUS_rer*US_pex*EABUS_im/(EAAEAB_rer*EAB_py*EAB_y
+EAAEAC_rer*EAC_pex*EABEAC_im
+EAAEAD_rer*EAD_pex*EABEAD_im
+EAAEAE_rer*EAE_pex*EABEAE_im
+EAAEAF_rer*EAF_pex*EABEAF_im
+EAARW_rer*RW_pex*EABRW_im
+EAAUS_rer*US_pex*EABUS_im
)
+EAC_size/EAA_size*EACEAA_im/EAA_ex*EAAUS_rer*US_pex*EACUS_im/(EAAEAC_rer*EAC_py*EAC_y
+EAAEAB_rer*EAB_pex*EACEAB_im
+EAAEAD_rer*EAD_pex*EACEAD_im
+EAAEAE_rer*EAE_pex*EACEAE_im
+EAAEAF_rer*EAF_pex*EACEAF_im
+EAARW_rer*RW_pex*EACRW_im
+EAAUS_rer*US_pex*EACUS_im
)
+EAD_size/EAA_size*EADEAA_im/EAA_ex*EAAUS_rer*US_pex*EADUS_im/(EAAEAD_rer*EAD_py*EAD_y
+EAAEAB_rer*EAB_pex*EADEAB_im
+EAAEAC_rer*EAC_pex*EADEAC_im
+EAAEAE_rer*EAE_pex*EADEAE_im
+EAAEAF_rer*EAF_pex*EADEAF_im
+EAARW_rer*RW_pex*EADRW_im
+EAAUS_rer*US_pex*EADUS_im
)
+EAE_size/EAA_size*EAEEAA_im/EAA_ex*EAAUS_rer*US_pex*EAEUS_im/(EAAEAE_rer*EAE_py*EAE_y
+EAAEAB_rer*EAB_pex*EAEEAB_im
+EAAEAC_rer*EAC_pex*EAEEAC_im
+EAAEAD_rer*EAD_pex*EAEEAD_im
+EAAEAF_rer*EAF_pex*EAEEAF_im
+EAARW_rer*RW_pex*EAERW_im
+EAAUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAA_size*EAFEAA_im/EAA_ex*EAAUS_rer*US_pex*EAFUS_im/(EAAEAF_rer*EAF_py*EAF_y
+EAAEAB_rer*EAB_pex*EAFEAB_im
+EAAEAC_rer*EAC_pex*EAFEAC_im
+EAAEAD_rer*EAD_pex*EAFEAD_im
+EAAEAE_rer*EAE_pex*EAFEAE_im
+EAARW_rer*RW_pex*EAFRW_im
+EAAUS_rer*US_pex*EAFUS_im
)
+RW_size/EAA_size*RWEAA_im/EAA_ex*EAAUS_rer*US_pex*RWUS_im/(EAARW_rer*RW_py*RW_y
+EAAEAB_rer*EAB_pex*RWEAB_im
+EAAEAC_rer*EAC_pex*RWEAC_im
+EAAEAD_rer*EAD_pex*RWEAD_im
+EAAEAE_rer*EAE_pex*RWEAE_im
+EAAEAF_rer*EAF_pex*RWEAF_im
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
*EAAEAF_rer^EAAEAF_weight
*EAARW_rer^EAARW_weight
*EAAUS_rer^EAAUS_weight
;
// Effective terms of trade
EAA_etot = 1
*EAAEAB_tot^EAAEAB_weight
*EAAEAC_tot^EAAEAC_weight
*EAAEAD_tot^EAAEAD_weight
*EAAEAE_tot^EAAEAE_weight
*EAAEAF_tot^EAAEAF_weight
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
+EAAEAF_numc ^(1/EAA_mumc)*EAAEAF_imc^(1-1/EAA_mumc)
+EAAUS_numc ^(1/EAA_mumc)*EAAUS_imc^(1-1/EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAEAF_numc
-EAAUS_numc
)^(1/EAA_mumc)*EAARW_imc^(1-1/EAA_mumc);
// Demand for bilateral consumption import goods
EAAEAC_imc = EAAEAC_numc*((EAC_pex*EAAEAC_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAEAD_imc = EAAEAD_numc*((EAD_pex*EAAEAD_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAEAE_imc = EAAEAE_numc*((EAE_pex*EAAEAE_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAEAF_imc = EAAEAF_numc*((EAF_pex*EAAEAF_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Demand for bilateral consumption import goods
EAAUS_imc = EAAUS_numc*((US_pex*EAAUS_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
EAARW_imc = (1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAEAF_numc
-EAAUS_numc
)*((RW_pex*EAARW_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
// Price of the consumption good (import)
EAA_pimc^(1-EAA_mumc) =
+EAAEAB_numc * (EAB_pex*EAAEAB_rer)^(1-EAA_mumc)
+EAAEAC_numc * (EAC_pex*EAAEAC_rer)^(1-EAA_mumc)
+EAAEAD_numc * (EAD_pex*EAAEAD_rer)^(1-EAA_mumc)
+EAAEAE_numc * (EAE_pex*EAAEAE_rer)^(1-EAA_mumc)
+EAAEAF_numc * (EAF_pex*EAAEAF_rer)^(1-EAA_mumc)
+EAAUS_numc * (US_pex*EAAUS_rer)^(1-EAA_mumc)
+(1
-EAAEAB_numc
-EAAEAC_numc
-EAAEAD_numc
-EAAEAE_numc
-EAAEAF_numc
-EAAUS_numc
)*(RW_pex*EAARW_rer)^(1-EAA_mumc);
// Private consumption good (import) inflation
EAA_piimc = EAA_pimc/EAA_pimc(-1)*EAA_pic;
// Private consumption good (import)
EAA_imi^((EAA_mumi-1)/EAA_mumi) =
+EAAEAB_numi ^(1/EAA_mumi)*EAAEAB_imi^(1-1/EAA_mumi)
+EAAEAC_numi ^(1/EAA_mumi)*EAAEAC_imi^(1-1/EAA_mumi)
+EAAEAD_numi ^(1/EAA_mumi)*EAAEAD_imi^(1-1/EAA_mumi)
+EAAEAE_numi ^(1/EAA_mumi)*EAAEAE_imi^(1-1/EAA_mumi)
+EAAEAF_numi ^(1/EAA_mumi)*EAAEAF_imi^(1-1/EAA_mumi)
+EAAUS_numi ^(1/EAA_mumi)*EAAUS_imi^(1-1/EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAEAF_numi
-EAAUS_numi
)^(1/EAA_mumi)*EAARW_imi^(1-1/EAA_mumi);
// Demand for bilateral consumption import goods
EAAEAC_imi = EAAEAC_numi*((EAC_pex*EAAEAC_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAEAD_imi = EAAEAD_numi*((EAD_pex*EAAEAD_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAEAE_imi = EAAEAE_numi*((EAE_pex*EAAEAE_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAEAF_imi = EAAEAF_numi*((EAF_pex*EAAEAF_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Demand for bilateral consumption import goods
EAAUS_imi = EAAUS_numi*((US_pex*EAAUS_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
EAARW_imi = (1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAEAF_numi
-EAAUS_numi
)*((RW_pex*EAARW_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
// Price of the consumption good (import)
EAA_pimi^(1-EAA_mumi) =
+EAAEAB_numi * (EAB_pex*EAAEAB_rer)^(1-EAA_mumi)
+EAAEAC_numi * (EAC_pex*EAAEAC_rer)^(1-EAA_mumi)
+EAAEAD_numi * (EAD_pex*EAAEAD_rer)^(1-EAA_mumi)
+EAAEAE_numi * (EAE_pex*EAAEAE_rer)^(1-EAA_mumi)
+EAAEAF_numi * (EAF_pex*EAAEAF_rer)^(1-EAA_mumi)
+EAAUS_numi * (US_pex*EAAUS_rer)^(1-EAA_mumi)
+(1
-EAAEAB_numi
-EAAEAC_numi
-EAAEAD_numi
-EAAEAE_numi
-EAAEAF_numi
-EAAUS_numi
)*(RW_pex*EAARW_rer)^(1-EAA_mumi);
// Private consumption good (import) inflation
EAA_piimi = EAA_pimi/EAA_pimi(-1)*EAA_pic;
// Private consumption good (import)
EAA_imcg^((EAA_mumcg-1)/EAA_mumcg) =
+EAAEAB_numcg ^(1/EAA_mumcg)*EAAEAB_imcg^(1-1/EAA_mumcg)
+EAAEAC_numcg ^(1/EAA_mumcg)*EAAEAC_imcg^(1-1/EAA_mumcg)
+EAAEAD_numcg ^(1/EAA_mumcg)*EAAEAD_imcg^(1-1/EAA_mumcg)
+EAAEAE_numcg ^(1/EAA_mumcg)*EAAEAE_imcg^(1-1/EAA_mumcg)
+EAAEAF_numcg ^(1/EAA_mumcg)*EAAEAF_imcg^(1-1/EAA_mumcg)
+EAAUS_numcg ^(1/EAA_mumcg)*EAAUS_imcg^(1-1/EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAEAE_numcg
-EAAEAF_numcg
-EAAUS_numcg
)^(1/EAA_mumcg)*EAARW_imcg^(1-1/EAA_mumcg);
// Demand for bilateral consumption import goods
EAAEAC_imcg = EAAEAC_numcg*((EAC_pex*EAAEAC_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAEAD_imcg = EAAEAD_numcg*((EAD_pex*EAAEAD_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAEAE_imcg = EAAEAE_numcg*((EAE_pex*EAAEAE_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAEAF_imcg = EAAEAF_numcg*((EAF_pex*EAAEAF_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Demand for bilateral consumption import goods
EAAUS_imcg = EAAUS_numcg*((US_pex*EAAUS_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
EAARW_imcg = (1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAEAE_numcg
-EAAEAF_numcg
-EAAUS_numcg
)*((RW_pex*EAARW_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
// Price of the consumption good (import)
EAA_pimcg^(1-EAA_mumcg) =
+EAAEAB_numcg * (EAB_pex*EAAEAB_rer)^(1-EAA_mumcg)
+EAAEAC_numcg * (EAC_pex*EAAEAC_rer)^(1-EAA_mumcg)
+EAAEAD_numcg * (EAD_pex*EAAEAD_rer)^(1-EAA_mumcg)
+EAAEAE_numcg * (EAE_pex*EAAEAE_rer)^(1-EAA_mumcg)
+EAAEAF_numcg * (EAF_pex*EAAEAF_rer)^(1-EAA_mumcg)
+EAAUS_numcg * (US_pex*EAAUS_rer)^(1-EAA_mumcg)
+(1
-EAAEAB_numcg
-EAAEAC_numcg
-EAAEAD_numcg
-EAAEAE_numcg
-EAAEAF_numcg
-EAAUS_numcg
)*(RW_pex*EAARW_rer)^(1-EAA_mumcg);
// Private consumption good (import) inflation
EAA_piimcg = EAA_pimcg/EAA_pimcg(-1)*EAA_pic;
// Private consumption good (import)
EAA_imig^((EAA_mumig-1)/EAA_mumig) =
+EAAEAB_numig ^(1/EAA_mumig)*EAAEAB_imig^(1-1/EAA_mumig)
+EAAEAC_numig ^(1/EAA_mumig)*EAAEAC_imig^(1-1/EAA_mumig)
+EAAEAD_numig ^(1/EAA_mumig)*EAAEAD_imig^(1-1/EAA_mumig)
+EAAEAE_numig ^(1/EAA_mumig)*EAAEAE_imig^(1-1/EAA_mumig)
+EAAEAF_numig ^(1/EAA_mumig)*EAAEAF_imig^(1-1/EAA_mumig)
+EAAUS_numig ^(1/EAA_mumig)*EAAUS_imig^(1-1/EAA_mumig)
+(1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
-EAAEAE_numig
-EAAEAF_numig
-EAAUS_numig
)^(1/EAA_mumig)*EAARW_imig^(1-1/EAA_mumig);
// Demand for bilateral consumption import goods
EAAEAC_imig = EAAEAC_numig*((EAC_pex*EAAEAC_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAEAD_imig = EAAEAD_numig*((EAD_pex*EAAEAD_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAEAE_imig = EAAEAE_numig*((EAE_pex*EAAEAE_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAEAF_imig = EAAEAF_numig*((EAF_pex*EAAEAF_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Demand for bilateral consumption import goods
EAAUS_imig = EAAUS_numig*((US_pex*EAAUS_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
EAARW_imig = (1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
-EAAEAE_numig
-EAAEAF_numig
-EAAUS_numig
)*((RW_pex*EAARW_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
// Price of the consumption good (import)
EAA_pimig^(1-EAA_mumig) =
+EAAEAB_numig * (EAB_pex*EAAEAB_rer)^(1-EAA_mumig)
+EAAEAC_numig * (EAC_pex*EAAEAC_rer)^(1-EAA_mumig)
+EAAEAD_numig * (EAD_pex*EAAEAD_rer)^(1-EAA_mumig)
+EAAEAE_numig * (EAE_pex*EAAEAE_rer)^(1-EAA_mumig)
+EAAEAF_numig * (EAF_pex*EAAEAF_rer)^(1-EAA_mumig)
+EAAUS_numig * (US_pex*EAAUS_rer)^(1-EAA_mumig)
+(1
-EAAEAB_numig
-EAAEAC_numig
-EAAEAD_numig
-EAAEAE_numig
-EAAEAF_numig
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
EAAEAE_im = 
+EAAEAE_imc
+EAAEAE_imi
+EAAEAE_imcg
+EAAEAE_imig
;
EAAEAF_im = 
+EAAEAF_imc
+EAAEAF_imi
+EAAEAF_imcg
+EAAEAF_imig
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
EAAEAE_gammaimc = 0;
EAAEAE_gammaimcdag = 1;
EAAEAF_gammaimc = 0;
EAAEAF_gammaimcdag = 1;
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
EAAEAE_gammaimi = 0;
EAAEAE_gammaimidag = 1;
EAAEAF_gammaimi = 0;
EAAEAF_gammaimidag = 1;
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
EAAEAE_gammaimcg = 0;
EAAEAE_gammaimcgdag = 1;
EAAEAF_gammaimcg = 0;
EAAEAF_gammaimcgdag = 1;
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
EAAEAE_gammaimig = 0;
EAAEAE_gammaimigdag = 1;
EAAEAF_gammaimig = 0;
EAAEAF_gammaimigdag = 1;
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
+EAA_pex*EAE_size/EAA_size*EAEEAA_im
-EAE_pex*EAAEAE_rer*EAAEAE_im
+EAA_pex*EAF_size/EAA_size*EAFEAA_im
-EAF_pex*EAAEAF_rer*EAAEAF_im
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
+EAE_size/EAA_size*EAEEAA_im
+EAF_size/EAA_size*EAFEAA_im
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
	EAA_r = EAF_r;
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
+EAA_pex*EAE_size/EAA_size*EAEEAA_im
-(EAE_pex*EAAEAE_rer)*EAAEAE_imc
-(EAE_pex*EAAEAE_rer)*EAAEAE_imi
-(EAE_pex*EAAEAE_rer)*EAAEAE_imcg
-(EAE_pex*EAAEAE_rer)*EAAEAE_imig
+EAA_pex*EAF_size/EAA_size*EAFEAA_im
-(EAF_pex*EAAEAF_rer)*EAAEAF_imc
-(EAF_pex*EAAEAF_rer)*EAAEAF_imi
-(EAF_pex*EAAEAF_rer)*EAAEAF_imcg
-(EAF_pex*EAAEAF_rer)*EAAEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
EAAEAE_imcy = (EAE_pex*EAAEAE_rer)*EAAEAE_imc/(EAA_py*EAA_y);
EAAEAE_imiy = (EAE_pex*EAAEAE_rer)*EAAEAE_imi/(EAA_py*EAA_y);
EAAEAE_imcgy = (EAE_pex*EAAEAE_rer)*EAAEAE_imcg/(EAA_py*EAA_y);
EAAEAE_imigy = (EAE_pex*EAAEAE_rer)*EAAEAE_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAE_excy  = EAE_size/EAA_size*EAA_pex*EAEEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAE_exiy  = EAE_size/EAA_size*EAA_pex*EAEEAA_imi/(EAA_py*EAA_y);
// Bilateral shares
EAAEAF_imcy = (EAF_pex*EAAEAF_rer)*EAAEAF_imc/(EAA_py*EAA_y);
EAAEAF_imiy = (EAF_pex*EAAEAF_rer)*EAAEAF_imi/(EAA_py*EAA_y);
EAAEAF_imcgy = (EAF_pex*EAAEAF_rer)*EAAEAF_imcg/(EAA_py*EAA_y);
EAAEAF_imigy = (EAF_pex*EAAEAF_rer)*EAAEAF_imig/(EAA_py*EAA_y);
// Exports of consumption goods to gdp
EAAEAF_excy  = EAF_size/EAA_size*EAA_pex*EAFEAA_imc/(EAA_py*EAA_y);
// Exports of investment goods to gdp
EAAEAF_exiy  = EAF_size/EAA_size*EAA_pex*EAFEAA_imi/(EAA_py*EAA_y);
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
// Marginal utility of consumption
EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder) = EAB_zcon*(EAB_cj-EAB_kappa*EAB_cj(-1))^(-EAB_sigma);
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
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAE_pimtilde
// EAEEAB_pimtilde/EAEEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAE_fx/EABEAE_gx;
// Definition of fx
// EABEAE_fx = EAE_size/EAB_size*EAEEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAEEAB_piim(+1)/(EAEEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAE_fx(+1);
// Definition of gx   
// EABEAE_gx = EABEAE_rer*EAEEAB_pim*EAE_size/EAB_size*EAEEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAEEAB_piim(+1)/(EAEEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAE_pim
// EAEEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EAEEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAEEAB_pim(-1)/EAE_pic)^(1-EAB_thetat)*(EAEEAB_piim(-1)^EAB_chix*EAE_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAE_piim
// EAEEAB_piim = EAEEAB_pim/EAEEAB_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EABEAE_rer = EAB_rer/EAE_rer;
// Auxiliary equation for steady-state output
EABEAE_rerbar = EABEAE_rer;
//Terms of Trade
EABEAE_tot = EAE_pex*EABEAE_rer/EAB_pex;
// Optimal price contract set in foreign markets (FOC), using EAB_pxtilde = EAF_pimtilde
// EAFEAB_pimtilde/EAFEAB_pim = EAB_cpim*EAB_thetat/(EAB_thetat-1)*EABEAF_fx/EABEAF_gx;
// Definition of fx
// EABEAF_fx = EAF_size/EAB_size*EAFEAB_im*EAB_mct+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAFEAB_piim(+1)/(EAFEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^EAB_thetat*EABEAF_fx(+1);
// Definition of gx   
// EABEAF_gx = EABEAF_rer*EAFEAB_pim*EAF_size/EAB_size*EAFEAB_im+EAB_xix*EAB_beta*EAB_lambdai(+1)/EAB_lambdai*(EAFEAB_piim(+1)/(EAFEAB_piim^EAB_chix*EAB_pi4target^(1/4*(1-EAB_chix))))^(EAB_thetat-1)*EABEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using EAB_px = EAF_pim
// EAFEAB_pim^(1-EAB_thetat) = (1-EAB_xix)*EAFEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAFEAB_pim(-1)/EAF_pic)^(1-EAB_thetat)*(EAFEAB_piim(-1)^EAB_chix*EAF_pi4target^(1/4*(1-EAB_chih)))^(1-EAB_thetat);
// Intermediate-good price inflation, using EAB_pix = EAF_piim
// EAFEAB_piim = EAFEAB_pim/EAFEAB_pim(-1)*EAF_pic;
// Bilateral real exchange rate
EABEAF_rer = EAB_rer/EAF_rer;
// Auxiliary equation for steady-state output
EABEAF_rerbar = EABEAF_rer;
//Terms of Trade
EABEAF_tot = EAF_pex*EABEAF_rer/EAB_pex;
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
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)+
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EACEAA_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EADEAA_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EAEEAA_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABEAA_rer*EAA_pex*EAFEAA_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAA_rer*EAA_pex*RWEAA_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAA_rer*EAA_pex*USEAA_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
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
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAAEAC_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EADEAC_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAEEAC_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABEAC_rer*EAC_pex*EAFEAC_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAC_rer*EAC_pex*RWEAC_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAC_rer*EAC_pex*USEAC_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
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
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAAEAD_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EACEAD_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAEEAD_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABEAD_rer*EAD_pex*EAFEAD_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAD_rer*EAD_pex*RWEAD_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAD_rer*EAD_pex*USEAD_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
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
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EAAEAE_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EACEAE_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EADEAE_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABEAE_rer*EAE_pex*EAFEAE_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAE_rer*EAE_pex*RWEAE_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAE_rer*EAE_pex*USEAE_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAE_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAE_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EABEAF_weightim = EABEAF_rer*EAF_pex*EABEAF_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABEAF_weightex = EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABEAF_rer*EAF_py*EAF_y/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABEAF_rer*EAF_pex*EAAEAF_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABEAF_rer*EAF_pex*EACEAF_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABEAF_rer*EAF_pex*EADEAF_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABEAF_rer*EAF_pex*EAEEAF_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABEAF_rer*EAF_pex*RWEAF_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABEAF_rer*EAF_pex*USEAF_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
+EABRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EABEAF_weight = EAB_pim*EAB_im/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAF_weightim+EAB_pex*EAB_ex/(EAB_pim*EAB_im+EAB_pex*EAB_ex)*EABEAF_weightex;
// Effective real exchange rate: double weighting (imports)
EABRW_weightim = EABRW_rer*RW_pex*EABRW_im/(EAB_pim*EAB_im);
// Effective real exchange rate: double weighting (exports)
EABRW_weightex = RW_size/EAB_size*RWEAB_im/EAB_ex*EABRW_rer*RW_py*RW_y/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
+EABUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABRW_rer*RW_pex*EAARW_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABRW_rer*RW_pex*EACRW_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABRW_rer*RW_pex*EADRW_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABRW_rer*RW_pex*EAERW_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABRW_rer*RW_pex*EAFRW_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+US_size/EAB_size*USEAB_im/EAB_ex*EABRW_rer*RW_pex*USRW_im/(EABUS_rer*US_py*US_y
+EABEAA_rer*EAA_pex*USEAA_im
+EABEAC_rer*EAC_pex*USEAC_im
+EABEAD_rer*EAD_pex*USEAD_im
+EABEAE_rer*EAE_pex*USEAE_im
+EABEAF_rer*EAF_pex*USEAF_im
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
+EABEAF_rer*EAF_pex*USEAF_im
+EABRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAB_size*EAAEAB_im/EAB_ex*EABUS_rer*US_pex*EAAUS_im/(EABEAA_rer*EAA_py*EAA_y
+EABEAC_rer*EAC_pex*EAAEAC_im
+EABEAD_rer*EAD_pex*EAAEAD_im
+EABEAE_rer*EAE_pex*EAAEAE_im
+EABEAF_rer*EAF_pex*EAAEAF_im
+EABRW_rer*RW_pex*EAARW_im
+EABUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAB_size*EACEAB_im/EAB_ex*EABUS_rer*US_pex*EACUS_im/(EABEAC_rer*EAC_py*EAC_y
+EABEAA_rer*EAA_pex*EACEAA_im
+EABEAD_rer*EAD_pex*EACEAD_im
+EABEAE_rer*EAE_pex*EACEAE_im
+EABEAF_rer*EAF_pex*EACEAF_im
+EABRW_rer*RW_pex*EACRW_im
+EABUS_rer*US_pex*EACUS_im
)
+EAD_size/EAB_size*EADEAB_im/EAB_ex*EABUS_rer*US_pex*EADUS_im/(EABEAD_rer*EAD_py*EAD_y
+EABEAA_rer*EAA_pex*EADEAA_im
+EABEAC_rer*EAC_pex*EADEAC_im
+EABEAE_rer*EAE_pex*EADEAE_im
+EABEAF_rer*EAF_pex*EADEAF_im
+EABRW_rer*RW_pex*EADRW_im
+EABUS_rer*US_pex*EADUS_im
)
+EAE_size/EAB_size*EAEEAB_im/EAB_ex*EABUS_rer*US_pex*EAEUS_im/(EABEAE_rer*EAE_py*EAE_y
+EABEAA_rer*EAA_pex*EAEEAA_im
+EABEAC_rer*EAC_pex*EAEEAC_im
+EABEAD_rer*EAD_pex*EAEEAD_im
+EABEAF_rer*EAF_pex*EAEEAF_im
+EABRW_rer*RW_pex*EAERW_im
+EABUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAB_size*EAFEAB_im/EAB_ex*EABUS_rer*US_pex*EAFUS_im/(EABEAF_rer*EAF_py*EAF_y
+EABEAA_rer*EAA_pex*EAFEAA_im
+EABEAC_rer*EAC_pex*EAFEAC_im
+EABEAD_rer*EAD_pex*EAFEAD_im
+EABEAE_rer*EAE_pex*EAFEAE_im
+EABRW_rer*RW_pex*EAFRW_im
+EABUS_rer*US_pex*EAFUS_im
)
+RW_size/EAB_size*RWEAB_im/EAB_ex*EABUS_rer*US_pex*RWUS_im/(EABRW_rer*RW_py*RW_y
+EABEAA_rer*EAA_pex*RWEAA_im
+EABEAC_rer*EAC_pex*RWEAC_im
+EABEAD_rer*EAD_pex*RWEAD_im
+EABEAE_rer*EAE_pex*RWEAE_im
+EABEAF_rer*EAF_pex*RWEAF_im
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
*EABEAF_rer^EABEAF_weight
*EABRW_rer^EABRW_weight
*EABUS_rer^EABUS_weight
;
// Effective terms of trade
EAB_etot = 1
*EABEAA_tot^EABEAA_weight
*EABEAC_tot^EABEAC_weight
*EABEAD_tot^EABEAD_weight
*EABEAE_tot^EABEAE_weight
*EABEAF_tot^EABEAF_weight
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
+EABEAF_numc ^(1/EAB_mumc)*EABEAF_imc^(1-1/EAB_mumc)
+EABRW_numc ^(1/EAB_mumc)*EABRW_imc^(1-1/EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABEAF_numc
-EABRW_numc
)^(1/EAB_mumc)*EABUS_imc^(1-1/EAB_mumc);
// Demand for bilateral consumption import goods
EABEAA_imc = EABEAA_numc*((EAA_pex*EABEAA_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABEAD_imc = EABEAD_numc*((EAD_pex*EABEAD_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABEAE_imc = EABEAE_numc*((EAE_pex*EABEAE_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABEAF_imc = EABEAF_numc*((EAF_pex*EABEAF_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Demand for bilateral consumption import goods
EABRW_imc = EABRW_numc*((RW_pex*EABRW_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
EABUS_imc = (1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABEAF_numc
-EABRW_numc
)*((US_pex*EABUS_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
// Price of the consumption good (import)
EAB_pimc^(1-EAB_mumc) =
+EABEAA_numc * (EAA_pex*EABEAA_rer)^(1-EAB_mumc)
+EABEAC_numc * (EAC_pex*EABEAC_rer)^(1-EAB_mumc)
+EABEAD_numc * (EAD_pex*EABEAD_rer)^(1-EAB_mumc)
+EABEAE_numc * (EAE_pex*EABEAE_rer)^(1-EAB_mumc)
+EABEAF_numc * (EAF_pex*EABEAF_rer)^(1-EAB_mumc)
+EABRW_numc * (RW_pex*EABRW_rer)^(1-EAB_mumc)
+(1
-EABEAA_numc
-EABEAC_numc
-EABEAD_numc
-EABEAE_numc
-EABEAF_numc
-EABRW_numc
)*(US_pex*EABUS_rer)^(1-EAB_mumc);
// Private consumption good (import) inflation
EAB_piimc = EAB_pimc/EAB_pimc(-1)*EAB_pic;
// Private consumption good (import)
EAB_imi^((EAB_mumi-1)/EAB_mumi) =
+EABEAA_numi ^(1/EAB_mumi)*EABEAA_imi^(1-1/EAB_mumi)
+EABEAC_numi ^(1/EAB_mumi)*EABEAC_imi^(1-1/EAB_mumi)
+EABEAD_numi ^(1/EAB_mumi)*EABEAD_imi^(1-1/EAB_mumi)
+EABEAE_numi ^(1/EAB_mumi)*EABEAE_imi^(1-1/EAB_mumi)
+EABEAF_numi ^(1/EAB_mumi)*EABEAF_imi^(1-1/EAB_mumi)
+EABRW_numi ^(1/EAB_mumi)*EABRW_imi^(1-1/EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABEAF_numi
-EABRW_numi
)^(1/EAB_mumi)*EABUS_imi^(1-1/EAB_mumi);
// Demand for bilateral consumption import goods
EABEAA_imi = EABEAA_numi*((EAA_pex*EABEAA_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABEAD_imi = EABEAD_numi*((EAD_pex*EABEAD_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABEAE_imi = EABEAE_numi*((EAE_pex*EABEAE_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABEAF_imi = EABEAF_numi*((EAF_pex*EABEAF_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Demand for bilateral consumption import goods
EABRW_imi = EABRW_numi*((RW_pex*EABRW_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
EABUS_imi = (1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABEAF_numi
-EABRW_numi
)*((US_pex*EABUS_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
// Price of the consumption good (import)
EAB_pimi^(1-EAB_mumi) =
+EABEAA_numi * (EAA_pex*EABEAA_rer)^(1-EAB_mumi)
+EABEAC_numi * (EAC_pex*EABEAC_rer)^(1-EAB_mumi)
+EABEAD_numi * (EAD_pex*EABEAD_rer)^(1-EAB_mumi)
+EABEAE_numi * (EAE_pex*EABEAE_rer)^(1-EAB_mumi)
+EABEAF_numi * (EAF_pex*EABEAF_rer)^(1-EAB_mumi)
+EABRW_numi * (RW_pex*EABRW_rer)^(1-EAB_mumi)
+(1
-EABEAA_numi
-EABEAC_numi
-EABEAD_numi
-EABEAE_numi
-EABEAF_numi
-EABRW_numi
)*(US_pex*EABUS_rer)^(1-EAB_mumi);
// Private consumption good (import) inflation
EAB_piimi = EAB_pimi/EAB_pimi(-1)*EAB_pic;
// Private consumption good (import)
EAB_imcg^((EAB_mumcg-1)/EAB_mumcg) =
+EABEAA_numcg ^(1/EAB_mumcg)*EABEAA_imcg^(1-1/EAB_mumcg)
+EABEAC_numcg ^(1/EAB_mumcg)*EABEAC_imcg^(1-1/EAB_mumcg)
+EABEAD_numcg ^(1/EAB_mumcg)*EABEAD_imcg^(1-1/EAB_mumcg)
+EABEAE_numcg ^(1/EAB_mumcg)*EABEAE_imcg^(1-1/EAB_mumcg)
+EABEAF_numcg ^(1/EAB_mumcg)*EABEAF_imcg^(1-1/EAB_mumcg)
+EABRW_numcg ^(1/EAB_mumcg)*EABRW_imcg^(1-1/EAB_mumcg)
+(1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABEAE_numcg
-EABEAF_numcg
-EABRW_numcg
)^(1/EAB_mumcg)*EABUS_imcg^(1-1/EAB_mumcg);
// Demand for bilateral consumption import goods
EABEAA_imcg = EABEAA_numcg*((EAA_pex*EABEAA_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABEAD_imcg = EABEAD_numcg*((EAD_pex*EABEAD_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABEAE_imcg = EABEAE_numcg*((EAE_pex*EABEAE_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABEAF_imcg = EABEAF_numcg*((EAF_pex*EABEAF_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Demand for bilateral consumption import goods
EABRW_imcg = EABRW_numcg*((RW_pex*EABRW_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
EABUS_imcg = (1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABEAE_numcg
-EABEAF_numcg
-EABRW_numcg
)*((US_pex*EABUS_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
// Price of the consumption good (import)
EAB_pimcg^(1-EAB_mumcg) =
+EABEAA_numcg * (EAA_pex*EABEAA_rer)^(1-EAB_mumcg)
+EABEAC_numcg * (EAC_pex*EABEAC_rer)^(1-EAB_mumcg)
+EABEAD_numcg * (EAD_pex*EABEAD_rer)^(1-EAB_mumcg)
+EABEAE_numcg * (EAE_pex*EABEAE_rer)^(1-EAB_mumcg)
+EABEAF_numcg * (EAF_pex*EABEAF_rer)^(1-EAB_mumcg)
+EABRW_numcg * (RW_pex*EABRW_rer)^(1-EAB_mumcg)
+(1
-EABEAA_numcg
-EABEAC_numcg
-EABEAD_numcg
-EABEAE_numcg
-EABEAF_numcg
-EABRW_numcg
)*(US_pex*EABUS_rer)^(1-EAB_mumcg);
// Private consumption good (import) inflation
EAB_piimcg = EAB_pimcg/EAB_pimcg(-1)*EAB_pic;
// Private consumption good (import)
EAB_imig^((EAB_mumig-1)/EAB_mumig) =
+EABEAA_numig ^(1/EAB_mumig)*EABEAA_imig^(1-1/EAB_mumig)
+EABEAC_numig ^(1/EAB_mumig)*EABEAC_imig^(1-1/EAB_mumig)
+EABEAD_numig ^(1/EAB_mumig)*EABEAD_imig^(1-1/EAB_mumig)
+EABEAE_numig ^(1/EAB_mumig)*EABEAE_imig^(1-1/EAB_mumig)
+EABEAF_numig ^(1/EAB_mumig)*EABEAF_imig^(1-1/EAB_mumig)
+EABRW_numig ^(1/EAB_mumig)*EABRW_imig^(1-1/EAB_mumig)
+(1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABEAE_numig
-EABEAF_numig
-EABRW_numig
)^(1/EAB_mumig)*EABUS_imig^(1-1/EAB_mumig);
// Demand for bilateral consumption import goods
EABEAA_imig = EABEAA_numig*((EAA_pex*EABEAA_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABEAD_imig = EABEAD_numig*((EAD_pex*EABEAD_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABEAE_imig = EABEAE_numig*((EAE_pex*EABEAE_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABEAF_imig = EABEAF_numig*((EAF_pex*EABEAF_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Demand for bilateral consumption import goods
EABRW_imig = EABRW_numig*((RW_pex*EABRW_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
EABUS_imig = (1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABEAE_numig
-EABEAF_numig
-EABRW_numig
)*((US_pex*EABUS_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
// Price of the consumption good (import)
EAB_pimig^(1-EAB_mumig) =
+EABEAA_numig * (EAA_pex*EABEAA_rer)^(1-EAB_mumig)
+EABEAC_numig * (EAC_pex*EABEAC_rer)^(1-EAB_mumig)
+EABEAD_numig * (EAD_pex*EABEAD_rer)^(1-EAB_mumig)
+EABEAE_numig * (EAE_pex*EABEAE_rer)^(1-EAB_mumig)
+EABEAF_numig * (EAF_pex*EABEAF_rer)^(1-EAB_mumig)
+EABRW_numig * (RW_pex*EABRW_rer)^(1-EAB_mumig)
+(1
-EABEAA_numig
-EABEAC_numig
-EABEAD_numig
-EABEAE_numig
-EABEAF_numig
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
EABEAE_im = 
+EABEAE_imc
+EABEAE_imi
+EABEAE_imcg
+EABEAE_imig
;
EABEAF_im = 
+EABEAF_imc
+EABEAF_imi
+EABEAF_imcg
+EABEAF_imig
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
EABEAE_gammaimc = 0;
EABEAE_gammaimcdag = 1;
EABEAF_gammaimc = 0;
EABEAF_gammaimcdag = 1;
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
EABEAE_gammaimi = 0;
EABEAE_gammaimidag = 1;
EABEAF_gammaimi = 0;
EABEAF_gammaimidag = 1;
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
EABEAE_gammaimcg = 0;
EABEAE_gammaimcgdag = 1;
EABEAF_gammaimcg = 0;
EABEAF_gammaimcgdag = 1;
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
EABEAE_gammaimig = 0;
EABEAE_gammaimigdag = 1;
EABEAF_gammaimig = 0;
EABEAF_gammaimigdag = 1;
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
+EAB_pex*EAE_size/EAB_size*EAEEAB_im
-EAE_pex*EABEAE_rer*EABEAE_im
+EAB_pex*EAF_size/EAB_size*EAFEAB_im
-EAF_pex*EABEAF_rer*EABEAF_im
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
+EAE_size/EAB_size*EAEEAB_im
+EAF_size/EAB_size*EAFEAB_im
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
	EAB_r = EAF_r;
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
+EAB_pex*EAE_size/EAB_size*EAEEAB_im
-(EAE_pex*EABEAE_rer)*EABEAE_imc
-(EAE_pex*EABEAE_rer)*EABEAE_imi
-(EAE_pex*EABEAE_rer)*EABEAE_imcg
-(EAE_pex*EABEAE_rer)*EABEAE_imig
+EAB_pex*EAF_size/EAB_size*EAFEAB_im
-(EAF_pex*EABEAF_rer)*EABEAF_imc
-(EAF_pex*EABEAF_rer)*EABEAF_imi
-(EAF_pex*EABEAF_rer)*EABEAF_imcg
-(EAF_pex*EABEAF_rer)*EABEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
EABEAE_imcy = (EAE_pex*EABEAE_rer)*EABEAE_imc/(EAB_py*EAB_y);
EABEAE_imiy = (EAE_pex*EABEAE_rer)*EABEAE_imi/(EAB_py*EAB_y);
EABEAE_imcgy = (EAE_pex*EABEAE_rer)*EABEAE_imcg/(EAB_py*EAB_y);
EABEAE_imigy = (EAE_pex*EABEAE_rer)*EABEAE_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAE_excy  = EAE_size/EAB_size*EAB_pex*EAEEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAE_exiy  = EAE_size/EAB_size*EAB_pex*EAEEAB_imi/(EAB_py*EAB_y);
// Bilateral shares
EABEAF_imcy = (EAF_pex*EABEAF_rer)*EABEAF_imc/(EAB_py*EAB_y);
EABEAF_imiy = (EAF_pex*EABEAF_rer)*EABEAF_imi/(EAB_py*EAB_y);
EABEAF_imcgy = (EAF_pex*EABEAF_rer)*EABEAF_imcg/(EAB_py*EAB_y);
EABEAF_imigy = (EAF_pex*EABEAF_rer)*EABEAF_imig/(EAB_py*EAB_y);
// Exports of consumption goods to gdp
EABEAF_excy  = EAF_size/EAB_size*EAB_pex*EAFEAB_imc/(EAB_py*EAB_y);
// Exports of investment goods to gdp
EABEAF_exiy  = EAF_size/EAB_size*EAB_pex*EAFEAB_imi/(EAB_py*EAB_y);
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
// Utility
EAC_utili = 
EAC_zcon*log(EAC_ci-EAC_kappa*EAC_ci(-1))-1/(1+EAC_zeta)*(EAC_ni)^(1+EAC_zeta)+EAC_beta*EAC_utili(+1)
;
// Marginal utility of consumption
EAC_lambdai*(1+EAC_tauc+EAC_gammavi+EAC_vi*EAC_gammavider) = EAC_zcon*(EAC_ci-EAC_kappa*EAC_ci(-1))^(-EAC_sigma);
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
EAC_zcon*log(EAC_cj-EAC_kappa*EAC_cj(-1))-1/(1+EAC_zeta)*EAC_nj^(1+EAC_zeta)+EAC_beta*EAC_utilj(+1)
;
// Marginal utility of consumption
EAC_lambdaj*(1+EAC_tauc+EAC_gammavj+EAC_vj*EAC_gammavjder) = EAC_zcon*(EAC_cj-EAC_kappa*EAC_cj(-1))^(-EAC_sigma);
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
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAE_pimtilde
// EAEEAC_pimtilde/EAEEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAE_fx/EACEAE_gx;
// Definition of fx
// EACEAE_fx = EAE_size/EAC_size*EAEEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAEEAC_piim(+1)/(EAEEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAE_fx(+1);
// Definition of gx   
// EACEAE_gx = EACEAE_rer*EAEEAC_pim*EAE_size/EAC_size*EAEEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAEEAC_piim(+1)/(EAEEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAE_pim
// EAEEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EAEEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAEEAC_pim(-1)/EAE_pic)^(1-EAC_thetat)*(EAEEAC_piim(-1)^EAC_chix*EAE_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAE_piim
// EAEEAC_piim = EAEEAC_pim/EAEEAC_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EACEAE_rer = EAC_rer/EAE_rer;
// Auxiliary equation for steady-state output
EACEAE_rerbar = EACEAE_rer;
//Terms of Trade
EACEAE_tot = EAE_pex*EACEAE_rer/EAC_pex;
// Optimal price contract set in foreign markets (FOC), using EAC_pxtilde = EAF_pimtilde
// EAFEAC_pimtilde/EAFEAC_pim = EAC_cpim*EAC_thetat/(EAC_thetat-1)*EACEAF_fx/EACEAF_gx;
// Definition of fx
// EACEAF_fx = EAF_size/EAC_size*EAFEAC_im*EAC_mct+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAFEAC_piim(+1)/(EAFEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^EAC_thetat*EACEAF_fx(+1);
// Definition of gx   
// EACEAF_gx = EACEAF_rer*EAFEAC_pim*EAF_size/EAC_size*EAFEAC_im+EAC_xix*EAC_beta*EAC_lambdai(+1)/EAC_lambdai*(EAFEAC_piim(+1)/(EAFEAC_piim^EAC_chix*EAC_pi4target^(1/4*(1-EAC_chix))))^(EAC_thetat-1)*EACEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using EAC_px = EAF_pim
// EAFEAC_pim^(1-EAC_thetat) = (1-EAC_xix)*EAFEAC_pimtilde^(1-EAC_thetat)+EAC_xix*(EAFEAC_pim(-1)/EAF_pic)^(1-EAC_thetat)*(EAFEAC_piim(-1)^EAC_chix*EAF_pi4target^(1/4*(1-EAC_chih)))^(1-EAC_thetat);
// Intermediate-good price inflation, using EAC_pix = EAF_piim
// EAFEAC_piim = EAFEAC_pim/EAFEAC_pim(-1)*EAF_pic;
// Bilateral real exchange rate
EACEAF_rer = EAC_rer/EAF_rer;
// Auxiliary equation for steady-state output
EACEAF_rerbar = EACEAF_rer;
//Terms of Trade
EACEAF_tot = EAF_pex*EACEAF_rer/EAC_pex;
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
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EABEAA_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EADEAA_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EAEEAA_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACEAA_rer*EAA_pex*EAFEAA_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAA_rer*EAA_pex*RWEAA_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAA_rer*EAA_pex*USEAA_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
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
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAAEAB_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EADEAB_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAEEAB_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACEAB_rer*EAB_pex*EAFEAB_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAB_rer*EAB_pex*RWEAB_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAB_rer*EAB_pex*USEAB_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
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
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAAEAD_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EABEAD_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAEEAD_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACEAD_rer*EAD_pex*EAFEAD_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAD_rer*EAD_pex*RWEAD_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAD_rer*EAD_pex*USEAD_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
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
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EAAEAE_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EABEAE_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EADEAE_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACEAE_rer*EAE_pex*EAFEAE_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAE_rer*EAE_pex*RWEAE_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAE_rer*EAE_pex*USEAE_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAE_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAE_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EACEAF_weightim = EACEAF_rer*EAF_pex*EACEAF_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACEAF_weightex = EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACEAF_rer*EAF_py*EAF_y/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACEAF_rer*EAF_pex*EAAEAF_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACEAF_rer*EAF_pex*EABEAF_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACEAF_rer*EAF_pex*EADEAF_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACEAF_rer*EAF_pex*EAEEAF_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACEAF_rer*EAF_pex*RWEAF_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACEAF_rer*EAF_pex*USEAF_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
+EACRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EACEAF_weight = EAC_pim*EAC_im/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAF_weightim+EAC_pex*EAC_ex/(EAC_pim*EAC_im+EAC_pex*EAC_ex)*EACEAF_weightex;
// Effective real exchange rate: double weighting (imports)
EACRW_weightim = EACRW_rer*RW_pex*EACRW_im/(EAC_pim*EAC_im);
// Effective real exchange rate: double weighting (exports)
EACRW_weightex = RW_size/EAC_size*RWEAC_im/EAC_ex*EACRW_rer*RW_py*RW_y/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
+EACUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACRW_rer*RW_pex*EAARW_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACRW_rer*RW_pex*EABRW_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACRW_rer*RW_pex*EADRW_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACRW_rer*RW_pex*EAERW_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACRW_rer*RW_pex*EAFRW_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+US_size/EAC_size*USEAC_im/EAC_ex*EACRW_rer*RW_pex*USRW_im/(EACUS_rer*US_py*US_y
+EACEAA_rer*EAA_pex*USEAA_im
+EACEAB_rer*EAB_pex*USEAB_im
+EACEAD_rer*EAD_pex*USEAD_im
+EACEAE_rer*EAE_pex*USEAE_im
+EACEAF_rer*EAF_pex*USEAF_im
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
+EACEAF_rer*EAF_pex*USEAF_im
+EACRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAC_size*EAAEAC_im/EAC_ex*EACUS_rer*US_pex*EAAUS_im/(EACEAA_rer*EAA_py*EAA_y
+EACEAB_rer*EAB_pex*EAAEAB_im
+EACEAD_rer*EAD_pex*EAAEAD_im
+EACEAE_rer*EAE_pex*EAAEAE_im
+EACEAF_rer*EAF_pex*EAAEAF_im
+EACRW_rer*RW_pex*EAARW_im
+EACUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAC_size*EABEAC_im/EAC_ex*EACUS_rer*US_pex*EABUS_im/(EACEAB_rer*EAB_py*EAB_y
+EACEAA_rer*EAA_pex*EABEAA_im
+EACEAD_rer*EAD_pex*EABEAD_im
+EACEAE_rer*EAE_pex*EABEAE_im
+EACEAF_rer*EAF_pex*EABEAF_im
+EACRW_rer*RW_pex*EABRW_im
+EACUS_rer*US_pex*EABUS_im
)
+EAD_size/EAC_size*EADEAC_im/EAC_ex*EACUS_rer*US_pex*EADUS_im/(EACEAD_rer*EAD_py*EAD_y
+EACEAA_rer*EAA_pex*EADEAA_im
+EACEAB_rer*EAB_pex*EADEAB_im
+EACEAE_rer*EAE_pex*EADEAE_im
+EACEAF_rer*EAF_pex*EADEAF_im
+EACRW_rer*RW_pex*EADRW_im
+EACUS_rer*US_pex*EADUS_im
)
+EAE_size/EAC_size*EAEEAC_im/EAC_ex*EACUS_rer*US_pex*EAEUS_im/(EACEAE_rer*EAE_py*EAE_y
+EACEAA_rer*EAA_pex*EAEEAA_im
+EACEAB_rer*EAB_pex*EAEEAB_im
+EACEAD_rer*EAD_pex*EAEEAD_im
+EACEAF_rer*EAF_pex*EAEEAF_im
+EACRW_rer*RW_pex*EAERW_im
+EACUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAC_size*EAFEAC_im/EAC_ex*EACUS_rer*US_pex*EAFUS_im/(EACEAF_rer*EAF_py*EAF_y
+EACEAA_rer*EAA_pex*EAFEAA_im
+EACEAB_rer*EAB_pex*EAFEAB_im
+EACEAD_rer*EAD_pex*EAFEAD_im
+EACEAE_rer*EAE_pex*EAFEAE_im
+EACRW_rer*RW_pex*EAFRW_im
+EACUS_rer*US_pex*EAFUS_im
)
+RW_size/EAC_size*RWEAC_im/EAC_ex*EACUS_rer*US_pex*RWUS_im/(EACRW_rer*RW_py*RW_y
+EACEAA_rer*EAA_pex*RWEAA_im
+EACEAB_rer*EAB_pex*RWEAB_im
+EACEAD_rer*EAD_pex*RWEAD_im
+EACEAE_rer*EAE_pex*RWEAE_im
+EACEAF_rer*EAF_pex*RWEAF_im
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
*EACEAF_rer^EACEAF_weight
*EACRW_rer^EACRW_weight
*EACUS_rer^EACUS_weight
;
// Effective terms of trade
EAC_etot = 1
*EACEAA_tot^EACEAA_weight
*EACEAB_tot^EACEAB_weight
*EACEAD_tot^EACEAD_weight
*EACEAE_tot^EACEAE_weight
*EACEAF_tot^EACEAF_weight
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
+EACEAF_numc ^(1/EAC_mumc)*EACEAF_imc^(1-1/EAC_mumc)
+EACRW_numc ^(1/EAC_mumc)*EACRW_imc^(1-1/EAC_mumc)
+EACUS_numc ^(1/EAC_mumc)*EACUS_imc^(1-1/EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACEAF_numc
-EACRW_numc
-EACUS_numc
)^(1/EAC_mumc)*EACEAA_imc^(1-1/EAC_mumc);
// Demand for bilateral consumption import goods
EACEAB_imc = EACEAB_numc*((EAB_pex*EACEAB_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACEAE_imc = EACEAE_numc*((EAE_pex*EACEAE_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACEAF_imc = EACEAF_numc*((EAF_pex*EACEAF_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACRW_imc = EACRW_numc*((RW_pex*EACRW_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Demand for bilateral consumption import goods
EACUS_imc = EACUS_numc*((US_pex*EACUS_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
EACEAA_imc = (1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACEAF_numc
-EACRW_numc
-EACUS_numc
)*((EAA_pex*EACEAA_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
// Price of the consumption good (import)
EAC_pimc^(1-EAC_mumc) =
+EACEAB_numc * (EAB_pex*EACEAB_rer)^(1-EAC_mumc)
+EACEAD_numc * (EAD_pex*EACEAD_rer)^(1-EAC_mumc)
+EACEAE_numc * (EAE_pex*EACEAE_rer)^(1-EAC_mumc)
+EACEAF_numc * (EAF_pex*EACEAF_rer)^(1-EAC_mumc)
+EACRW_numc * (RW_pex*EACRW_rer)^(1-EAC_mumc)
+EACUS_numc * (US_pex*EACUS_rer)^(1-EAC_mumc)
+(1
-EACEAB_numc
-EACEAD_numc
-EACEAE_numc
-EACEAF_numc
-EACRW_numc
-EACUS_numc
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumc);
// Private consumption good (import) inflation
EAC_piimc = EAC_pimc/EAC_pimc(-1)*EAC_pic;
// Private consumption good (import)
EAC_imi^((EAC_mumi-1)/EAC_mumi) =
+EACEAB_numi ^(1/EAC_mumi)*EACEAB_imi^(1-1/EAC_mumi)
+EACEAD_numi ^(1/EAC_mumi)*EACEAD_imi^(1-1/EAC_mumi)
+EACEAE_numi ^(1/EAC_mumi)*EACEAE_imi^(1-1/EAC_mumi)
+EACEAF_numi ^(1/EAC_mumi)*EACEAF_imi^(1-1/EAC_mumi)
+EACRW_numi ^(1/EAC_mumi)*EACRW_imi^(1-1/EAC_mumi)
+EACUS_numi ^(1/EAC_mumi)*EACUS_imi^(1-1/EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACEAF_numi
-EACRW_numi
-EACUS_numi
)^(1/EAC_mumi)*EACEAA_imi^(1-1/EAC_mumi);
// Demand for bilateral consumption import goods
EACEAB_imi = EACEAB_numi*((EAB_pex*EACEAB_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACEAE_imi = EACEAE_numi*((EAE_pex*EACEAE_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACEAF_imi = EACEAF_numi*((EAF_pex*EACEAF_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACRW_imi = EACRW_numi*((RW_pex*EACRW_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Demand for bilateral consumption import goods
EACUS_imi = EACUS_numi*((US_pex*EACUS_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
EACEAA_imi = (1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACEAF_numi
-EACRW_numi
-EACUS_numi
)*((EAA_pex*EACEAA_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
// Price of the consumption good (import)
EAC_pimi^(1-EAC_mumi) =
+EACEAB_numi * (EAB_pex*EACEAB_rer)^(1-EAC_mumi)
+EACEAD_numi * (EAD_pex*EACEAD_rer)^(1-EAC_mumi)
+EACEAE_numi * (EAE_pex*EACEAE_rer)^(1-EAC_mumi)
+EACEAF_numi * (EAF_pex*EACEAF_rer)^(1-EAC_mumi)
+EACRW_numi * (RW_pex*EACRW_rer)^(1-EAC_mumi)
+EACUS_numi * (US_pex*EACUS_rer)^(1-EAC_mumi)
+(1
-EACEAB_numi
-EACEAD_numi
-EACEAE_numi
-EACEAF_numi
-EACRW_numi
-EACUS_numi
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumi);
// Private consumption good (import) inflation
EAC_piimi = EAC_pimi/EAC_pimi(-1)*EAC_pic;
// Private consumption good (import)
EAC_imcg^((EAC_mumcg-1)/EAC_mumcg) =
+EACEAB_numcg ^(1/EAC_mumcg)*EACEAB_imcg^(1-1/EAC_mumcg)
+EACEAD_numcg ^(1/EAC_mumcg)*EACEAD_imcg^(1-1/EAC_mumcg)
+EACEAE_numcg ^(1/EAC_mumcg)*EACEAE_imcg^(1-1/EAC_mumcg)
+EACEAF_numcg ^(1/EAC_mumcg)*EACEAF_imcg^(1-1/EAC_mumcg)
+EACRW_numcg ^(1/EAC_mumcg)*EACRW_imcg^(1-1/EAC_mumcg)
+EACUS_numcg ^(1/EAC_mumcg)*EACUS_imcg^(1-1/EAC_mumcg)
+(1
-EACEAB_numcg
-EACEAD_numcg
-EACEAE_numcg
-EACEAF_numcg
-EACRW_numcg
-EACUS_numcg
)^(1/EAC_mumcg)*EACEAA_imcg^(1-1/EAC_mumcg);
// Demand for bilateral consumption import goods
EACEAB_imcg = EACEAB_numcg*((EAB_pex*EACEAB_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACEAE_imcg = EACEAE_numcg*((EAE_pex*EACEAE_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACEAF_imcg = EACEAF_numcg*((EAF_pex*EACEAF_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACRW_imcg = EACRW_numcg*((RW_pex*EACRW_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Demand for bilateral consumption import goods
EACUS_imcg = EACUS_numcg*((US_pex*EACUS_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
EACEAA_imcg = (1
-EACEAB_numcg
-EACEAD_numcg
-EACEAE_numcg
-EACEAF_numcg
-EACRW_numcg
-EACUS_numcg
)*((EAA_pex*EACEAA_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
// Price of the consumption good (import)
EAC_pimcg^(1-EAC_mumcg) =
+EACEAB_numcg * (EAB_pex*EACEAB_rer)^(1-EAC_mumcg)
+EACEAD_numcg * (EAD_pex*EACEAD_rer)^(1-EAC_mumcg)
+EACEAE_numcg * (EAE_pex*EACEAE_rer)^(1-EAC_mumcg)
+EACEAF_numcg * (EAF_pex*EACEAF_rer)^(1-EAC_mumcg)
+EACRW_numcg * (RW_pex*EACRW_rer)^(1-EAC_mumcg)
+EACUS_numcg * (US_pex*EACUS_rer)^(1-EAC_mumcg)
+(1
-EACEAB_numcg
-EACEAD_numcg
-EACEAE_numcg
-EACEAF_numcg
-EACRW_numcg
-EACUS_numcg
)*(EAA_pex*EACEAA_rer)^(1-EAC_mumcg);
// Private consumption good (import) inflation
EAC_piimcg = EAC_pimcg/EAC_pimcg(-1)*EAC_pic;
// Private consumption good (import)
EAC_imig^((EAC_mumig-1)/EAC_mumig) =
+EACEAB_numig ^(1/EAC_mumig)*EACEAB_imig^(1-1/EAC_mumig)
+EACEAD_numig ^(1/EAC_mumig)*EACEAD_imig^(1-1/EAC_mumig)
+EACEAE_numig ^(1/EAC_mumig)*EACEAE_imig^(1-1/EAC_mumig)
+EACEAF_numig ^(1/EAC_mumig)*EACEAF_imig^(1-1/EAC_mumig)
+EACRW_numig ^(1/EAC_mumig)*EACRW_imig^(1-1/EAC_mumig)
+EACUS_numig ^(1/EAC_mumig)*EACUS_imig^(1-1/EAC_mumig)
+(1
-EACEAB_numig
-EACEAD_numig
-EACEAE_numig
-EACEAF_numig
-EACRW_numig
-EACUS_numig
)^(1/EAC_mumig)*EACEAA_imig^(1-1/EAC_mumig);
// Demand for bilateral consumption import goods
EACEAB_imig = EACEAB_numig*((EAB_pex*EACEAB_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACEAE_imig = EACEAE_numig*((EAE_pex*EACEAE_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACEAF_imig = EACEAF_numig*((EAF_pex*EACEAF_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACRW_imig = EACRW_numig*((RW_pex*EACRW_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Demand for bilateral consumption import goods
EACUS_imig = EACUS_numig*((US_pex*EACUS_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
EACEAA_imig = (1
-EACEAB_numig
-EACEAD_numig
-EACEAE_numig
-EACEAF_numig
-EACRW_numig
-EACUS_numig
)*((EAA_pex*EACEAA_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
// Price of the consumption good (import)
EAC_pimig^(1-EAC_mumig) =
+EACEAB_numig * (EAB_pex*EACEAB_rer)^(1-EAC_mumig)
+EACEAD_numig * (EAD_pex*EACEAD_rer)^(1-EAC_mumig)
+EACEAE_numig * (EAE_pex*EACEAE_rer)^(1-EAC_mumig)
+EACEAF_numig * (EAF_pex*EACEAF_rer)^(1-EAC_mumig)
+EACRW_numig * (RW_pex*EACRW_rer)^(1-EAC_mumig)
+EACUS_numig * (US_pex*EACUS_rer)^(1-EAC_mumig)
+(1
-EACEAB_numig
-EACEAD_numig
-EACEAE_numig
-EACEAF_numig
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
EACEAE_im = 
+EACEAE_imc
+EACEAE_imi
+EACEAE_imcg
+EACEAE_imig
;
EACEAF_im = 
+EACEAF_imc
+EACEAF_imi
+EACEAF_imcg
+EACEAF_imig
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
EACEAE_gammaimc = 0;
EACEAE_gammaimcdag = 1;
EACEAF_gammaimc = 0;
EACEAF_gammaimcdag = 1;
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
EACEAE_gammaimi = 0;
EACEAE_gammaimidag = 1;
EACEAF_gammaimi = 0;
EACEAF_gammaimidag = 1;
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
EACEAE_gammaimcg = 0;
EACEAE_gammaimcgdag = 1;
EACEAF_gammaimcg = 0;
EACEAF_gammaimcgdag = 1;
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
EACEAE_gammaimig = 0;
EACEAE_gammaimigdag = 1;
EACEAF_gammaimig = 0;
EACEAF_gammaimigdag = 1;
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
+EAC_pex*EAE_size/EAC_size*EAEEAC_im
-EAE_pex*EACEAE_rer*EACEAE_im
+EAC_pex*EAF_size/EAC_size*EAFEAC_im
-EAF_pex*EACEAF_rer*EACEAF_im
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
+EAE_size/EAC_size*EAEEAC_im
+EAF_size/EAC_size*EAFEAC_im
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
	EAC_r = EAF_r;
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
+EAC_pex*EAE_size/EAC_size*EAEEAC_im
-(EAE_pex*EACEAE_rer)*EACEAE_imc
-(EAE_pex*EACEAE_rer)*EACEAE_imi
-(EAE_pex*EACEAE_rer)*EACEAE_imcg
-(EAE_pex*EACEAE_rer)*EACEAE_imig
+EAC_pex*EAF_size/EAC_size*EAFEAC_im
-(EAF_pex*EACEAF_rer)*EACEAF_imc
-(EAF_pex*EACEAF_rer)*EACEAF_imi
-(EAF_pex*EACEAF_rer)*EACEAF_imcg
-(EAF_pex*EACEAF_rer)*EACEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
EACEAE_imcy = (EAE_pex*EACEAE_rer)*EACEAE_imc/(EAC_py*EAC_y);
EACEAE_imiy = (EAE_pex*EACEAE_rer)*EACEAE_imi/(EAC_py*EAC_y);
EACEAE_imcgy = (EAE_pex*EACEAE_rer)*EACEAE_imcg/(EAC_py*EAC_y);
EACEAE_imigy = (EAE_pex*EACEAE_rer)*EACEAE_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAE_excy  = EAE_size/EAC_size*EAC_pex*EAEEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAE_exiy  = EAE_size/EAC_size*EAC_pex*EAEEAC_imi/(EAC_py*EAC_y);
// Bilateral shares
EACEAF_imcy = (EAF_pex*EACEAF_rer)*EACEAF_imc/(EAC_py*EAC_y);
EACEAF_imiy = (EAF_pex*EACEAF_rer)*EACEAF_imi/(EAC_py*EAC_y);
EACEAF_imcgy = (EAF_pex*EACEAF_rer)*EACEAF_imcg/(EAC_py*EAC_y);
EACEAF_imigy = (EAF_pex*EACEAF_rer)*EACEAF_imig/(EAC_py*EAC_y);
// Exports of consumption goods to gdp
EACEAF_excy  = EAF_size/EAC_size*EAC_pex*EAFEAC_imc/(EAC_py*EAC_y);
// Exports of investment goods to gdp
EACEAF_exiy  = EAF_size/EAC_size*EAC_pex*EAFEAC_imi/(EAC_py*EAC_y);
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
// Utility
EAD_utili = 
EAD_zcon*log(EAD_ci-EAD_kappa*EAD_ci(-1))-1/(1+EAD_zeta)*(EAD_ni)^(1+EAD_zeta)+EAD_beta*EAD_utili(+1)
;
// Marginal utility of consumption
EAD_lambdai*(1+EAD_tauc+EAD_gammavi+EAD_vi*EAD_gammavider) = EAD_zcon*(EAD_ci-EAD_kappa*EAD_ci(-1))^(-EAD_sigma);
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
EAD_zcon*log(EAD_cj-EAD_kappa*EAD_cj(-1))-1/(1+EAD_zeta)*EAD_nj^(1+EAD_zeta)+EAD_beta*EAD_utilj(+1)
;
// Marginal utility of consumption
EAD_lambdaj*(1+EAD_tauc+EAD_gammavj+EAD_vj*EAD_gammavjder) = EAD_zcon*(EAD_cj-EAD_kappa*EAD_cj(-1))^(-EAD_sigma);
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
// Production function tradable
EAD_yst = EA_z*EAD_zt*EAD_kdt^EAD_alphat*EAD_ndt^(1-EAD_alphat)-EAD_psitbar;
// Production function nontradable
EAD_ysn = EA_z*EAD_zn*EAD_kdn^EAD_alphan*EAD_ndn^(1-EAD_alphan)-EAD_psinbar;
// Real marginal cost tradable
EAD_mct = 1/(EA_z*EAD_zt*(EAD_alphat)^(EAD_alphat)*(1-EAD_alphat)^(1-EAD_alphat))*EAD_rk^(EAD_alphat)*((1+EAD_tauwf)*EAD_w)^(1-EAD_alphat);
// Real marginal cost nontradable
EAD_mcn = 1/(EA_z*EAD_zn*(EAD_alphan)^(EAD_alphan)*(1-EAD_alphan)^(1-EAD_alphan))*EAD_rk^(EAD_alphan)*((1+EAD_tauwf)*EAD_w)^(1-EAD_alphan);
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
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAE_pimtilde
// EAEEAD_pimtilde/EAEEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAE_fx/EADEAE_gx;
// Definition of fx
// EADEAE_fx = EAE_size/EAD_size*EAEEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAEEAD_piim(+1)/(EAEEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAE_fx(+1);
// Definition of gx   
// EADEAE_gx = EADEAE_rer*EAEEAD_pim*EAE_size/EAD_size*EAEEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAEEAD_piim(+1)/(EAEEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAE_pim
// EAEEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EAEEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EAEEAD_pim(-1)/EAE_pic)^(1-EAD_thetat)*(EAEEAD_piim(-1)^EAD_chix*EAE_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAE_piim
// EAEEAD_piim = EAEEAD_pim/EAEEAD_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EADEAE_rer = EAD_rer/EAE_rer;
// Auxiliary equation for steady-state output
EADEAE_rerbar = EADEAE_rer;
//Terms of Trade
EADEAE_tot = EAE_pex*EADEAE_rer/EAD_pex;
// Optimal price contract set in foreign markets (FOC), using EAD_pxtilde = EAF_pimtilde
// EAFEAD_pimtilde/EAFEAD_pim = EAD_cpim*EAD_thetat/(EAD_thetat-1)*EADEAF_fx/EADEAF_gx;
// Definition of fx
// EADEAF_fx = EAF_size/EAD_size*EAFEAD_im*EAD_mct+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAFEAD_piim(+1)/(EAFEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^EAD_thetat*EADEAF_fx(+1);
// Definition of gx   
// EADEAF_gx = EADEAF_rer*EAFEAD_pim*EAF_size/EAD_size*EAFEAD_im+EAD_xix*EAD_beta*EAD_lambdai(+1)/EAD_lambdai*(EAFEAD_piim(+1)/(EAFEAD_piim^EAD_chix*EAD_pi4target^(1/4*(1-EAD_chix))))^(EAD_thetat-1)*EADEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using EAD_px = EAF_pim
// EAFEAD_pim^(1-EAD_thetat) = (1-EAD_xix)*EAFEAD_pimtilde^(1-EAD_thetat)+EAD_xix*(EAFEAD_pim(-1)/EAF_pic)^(1-EAD_thetat)*(EAFEAD_piim(-1)^EAD_chix*EAF_pi4target^(1/4*(1-EAD_chih)))^(1-EAD_thetat);
// Intermediate-good price inflation, using EAD_pix = EAF_piim
// EAFEAD_piim = EAFEAD_pim/EAFEAD_pim(-1)*EAF_pic;
// Bilateral real exchange rate
EADEAF_rer = EAD_rer/EAF_rer;
// Auxiliary equation for steady-state output
EADEAF_rerbar = EADEAF_rer;
//Terms of Trade
EADEAF_tot = EAF_pex*EADEAF_rer/EAD_pex;
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
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EABEAA_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EACEAA_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EAEEAA_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADEAA_rer*EAA_pex*EAFEAA_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAA_rer*EAA_pex*RWEAA_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAA_rer*EAA_pex*USEAA_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
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
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAAEAB_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EACEAB_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAEEAB_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADEAB_rer*EAB_pex*EAFEAB_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAB_rer*EAB_pex*RWEAB_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAB_rer*EAB_pex*USEAB_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
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
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAAEAC_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EABEAC_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAEEAC_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADEAC_rer*EAC_pex*EAFEAC_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAC_rer*EAC_pex*RWEAC_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAC_rer*EAC_pex*USEAC_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
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
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EAAEAE_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EABEAE_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EACEAE_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADEAE_rer*EAE_pex*EAFEAE_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAE_rer*EAE_pex*RWEAE_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAE_rer*EAE_pex*USEAE_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAE_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAE_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EADEAF_weightim = EADEAF_rer*EAF_pex*EADEAF_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADEAF_weightex = EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADEAF_rer*EAF_py*EAF_y/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADEAF_rer*EAF_pex*EAAEAF_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADEAF_rer*EAF_pex*EABEAF_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADEAF_rer*EAF_pex*EACEAF_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADEAF_rer*EAF_pex*EAEEAF_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADEAF_rer*EAF_pex*RWEAF_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADEAF_rer*EAF_pex*USEAF_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
+EADRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EADEAF_weight = EAD_pim*EAD_im/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAF_weightim+EAD_pex*EAD_ex/(EAD_pim*EAD_im+EAD_pex*EAD_ex)*EADEAF_weightex;
// Effective real exchange rate: double weighting (imports)
EADRW_weightim = EADRW_rer*RW_pex*EADRW_im/(EAD_pim*EAD_im);
// Effective real exchange rate: double weighting (exports)
EADRW_weightex = RW_size/EAD_size*RWEAD_im/EAD_ex*EADRW_rer*RW_py*RW_y/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
+EADUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADRW_rer*RW_pex*EAARW_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADRW_rer*RW_pex*EABRW_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADRW_rer*RW_pex*EACRW_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADRW_rer*RW_pex*EAERW_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADRW_rer*RW_pex*EAFRW_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+US_size/EAD_size*USEAD_im/EAD_ex*EADRW_rer*RW_pex*USRW_im/(EADUS_rer*US_py*US_y
+EADEAA_rer*EAA_pex*USEAA_im
+EADEAB_rer*EAB_pex*USEAB_im
+EADEAC_rer*EAC_pex*USEAC_im
+EADEAE_rer*EAE_pex*USEAE_im
+EADEAF_rer*EAF_pex*USEAF_im
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
+EADEAF_rer*EAF_pex*USEAF_im
+EADRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAD_size*EAAEAD_im/EAD_ex*EADUS_rer*US_pex*EAAUS_im/(EADEAA_rer*EAA_py*EAA_y
+EADEAB_rer*EAB_pex*EAAEAB_im
+EADEAC_rer*EAC_pex*EAAEAC_im
+EADEAE_rer*EAE_pex*EAAEAE_im
+EADEAF_rer*EAF_pex*EAAEAF_im
+EADRW_rer*RW_pex*EAARW_im
+EADUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAD_size*EABEAD_im/EAD_ex*EADUS_rer*US_pex*EABUS_im/(EADEAB_rer*EAB_py*EAB_y
+EADEAA_rer*EAA_pex*EABEAA_im
+EADEAC_rer*EAC_pex*EABEAC_im
+EADEAE_rer*EAE_pex*EABEAE_im
+EADEAF_rer*EAF_pex*EABEAF_im
+EADRW_rer*RW_pex*EABRW_im
+EADUS_rer*US_pex*EABUS_im
)
+EAC_size/EAD_size*EACEAD_im/EAD_ex*EADUS_rer*US_pex*EACUS_im/(EADEAC_rer*EAC_py*EAC_y
+EADEAA_rer*EAA_pex*EACEAA_im
+EADEAB_rer*EAB_pex*EACEAB_im
+EADEAE_rer*EAE_pex*EACEAE_im
+EADEAF_rer*EAF_pex*EACEAF_im
+EADRW_rer*RW_pex*EACRW_im
+EADUS_rer*US_pex*EACUS_im
)
+EAE_size/EAD_size*EAEEAD_im/EAD_ex*EADUS_rer*US_pex*EAEUS_im/(EADEAE_rer*EAE_py*EAE_y
+EADEAA_rer*EAA_pex*EAEEAA_im
+EADEAB_rer*EAB_pex*EAEEAB_im
+EADEAC_rer*EAC_pex*EAEEAC_im
+EADEAF_rer*EAF_pex*EAEEAF_im
+EADRW_rer*RW_pex*EAERW_im
+EADUS_rer*US_pex*EAEUS_im
)
+EAF_size/EAD_size*EAFEAD_im/EAD_ex*EADUS_rer*US_pex*EAFUS_im/(EADEAF_rer*EAF_py*EAF_y
+EADEAA_rer*EAA_pex*EAFEAA_im
+EADEAB_rer*EAB_pex*EAFEAB_im
+EADEAC_rer*EAC_pex*EAFEAC_im
+EADEAE_rer*EAE_pex*EAFEAE_im
+EADRW_rer*RW_pex*EAFRW_im
+EADUS_rer*US_pex*EAFUS_im
)
+RW_size/EAD_size*RWEAD_im/EAD_ex*EADUS_rer*US_pex*RWUS_im/(EADRW_rer*RW_py*RW_y
+EADEAA_rer*EAA_pex*RWEAA_im
+EADEAB_rer*EAB_pex*RWEAB_im
+EADEAC_rer*EAC_pex*RWEAC_im
+EADEAE_rer*EAE_pex*RWEAE_im
+EADEAF_rer*EAF_pex*RWEAF_im
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
*EADEAF_rer^EADEAF_weight
*EADRW_rer^EADRW_weight
*EADUS_rer^EADUS_weight
;
// Effective terms of trade
EAD_etot = 1
*EADEAA_tot^EADEAA_weight
*EADEAB_tot^EADEAB_weight
*EADEAC_tot^EADEAC_weight
*EADEAE_tot^EADEAE_weight
*EADEAF_tot^EADEAF_weight
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
+EADEAF_numc ^(1/EAD_mumc)*EADEAF_imc^(1-1/EAD_mumc)
+EADRW_numc ^(1/EAD_mumc)*EADRW_imc^(1-1/EAD_mumc)
+EADUS_numc ^(1/EAD_mumc)*EADUS_imc^(1-1/EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADEAF_numc
-EADRW_numc
-EADUS_numc
)^(1/EAD_mumc)*EADEAB_imc^(1-1/EAD_mumc);
// Demand for bilateral consumption import goods
EADEAA_imc = EADEAA_numc*((EAA_pex*EADEAA_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADEAC_imc = EADEAC_numc*((EAC_pex*EADEAC_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADEAF_imc = EADEAF_numc*((EAF_pex*EADEAF_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADRW_imc = EADRW_numc*((RW_pex*EADRW_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Demand for bilateral consumption import goods
EADUS_imc = EADUS_numc*((US_pex*EADUS_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
EADEAB_imc = (1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADEAF_numc
-EADRW_numc
-EADUS_numc
)*((EAB_pex*EADEAB_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
// Price of the consumption good (import)
EAD_pimc^(1-EAD_mumc) =
+EADEAA_numc * (EAA_pex*EADEAA_rer)^(1-EAD_mumc)
+EADEAC_numc * (EAC_pex*EADEAC_rer)^(1-EAD_mumc)
+EADEAE_numc * (EAE_pex*EADEAE_rer)^(1-EAD_mumc)
+EADEAF_numc * (EAF_pex*EADEAF_rer)^(1-EAD_mumc)
+EADRW_numc * (RW_pex*EADRW_rer)^(1-EAD_mumc)
+EADUS_numc * (US_pex*EADUS_rer)^(1-EAD_mumc)
+(1
-EADEAA_numc
-EADEAC_numc
-EADEAE_numc
-EADEAF_numc
-EADRW_numc
-EADUS_numc
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumc);
// Private consumption good (import) inflation
EAD_piimc = EAD_pimc/EAD_pimc(-1)*EAD_pic;
// Private consumption good (import)
EAD_imi^((EAD_mumi-1)/EAD_mumi) =
+EADEAA_numi ^(1/EAD_mumi)*EADEAA_imi^(1-1/EAD_mumi)
+EADEAC_numi ^(1/EAD_mumi)*EADEAC_imi^(1-1/EAD_mumi)
+EADEAE_numi ^(1/EAD_mumi)*EADEAE_imi^(1-1/EAD_mumi)
+EADEAF_numi ^(1/EAD_mumi)*EADEAF_imi^(1-1/EAD_mumi)
+EADRW_numi ^(1/EAD_mumi)*EADRW_imi^(1-1/EAD_mumi)
+EADUS_numi ^(1/EAD_mumi)*EADUS_imi^(1-1/EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADEAF_numi
-EADRW_numi
-EADUS_numi
)^(1/EAD_mumi)*EADEAB_imi^(1-1/EAD_mumi);
// Demand for bilateral consumption import goods
EADEAA_imi = EADEAA_numi*((EAA_pex*EADEAA_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADEAC_imi = EADEAC_numi*((EAC_pex*EADEAC_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADEAF_imi = EADEAF_numi*((EAF_pex*EADEAF_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADRW_imi = EADRW_numi*((RW_pex*EADRW_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Demand for bilateral consumption import goods
EADUS_imi = EADUS_numi*((US_pex*EADUS_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
EADEAB_imi = (1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADEAF_numi
-EADRW_numi
-EADUS_numi
)*((EAB_pex*EADEAB_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
// Price of the consumption good (import)
EAD_pimi^(1-EAD_mumi) =
+EADEAA_numi * (EAA_pex*EADEAA_rer)^(1-EAD_mumi)
+EADEAC_numi * (EAC_pex*EADEAC_rer)^(1-EAD_mumi)
+EADEAE_numi * (EAE_pex*EADEAE_rer)^(1-EAD_mumi)
+EADEAF_numi * (EAF_pex*EADEAF_rer)^(1-EAD_mumi)
+EADRW_numi * (RW_pex*EADRW_rer)^(1-EAD_mumi)
+EADUS_numi * (US_pex*EADUS_rer)^(1-EAD_mumi)
+(1
-EADEAA_numi
-EADEAC_numi
-EADEAE_numi
-EADEAF_numi
-EADRW_numi
-EADUS_numi
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumi);
// Private consumption good (import) inflation
EAD_piimi = EAD_pimi/EAD_pimi(-1)*EAD_pic;
// Private consumption good (import)
EAD_imcg^((EAD_mumcg-1)/EAD_mumcg) =
+EADEAA_numcg ^(1/EAD_mumcg)*EADEAA_imcg^(1-1/EAD_mumcg)
+EADEAC_numcg ^(1/EAD_mumcg)*EADEAC_imcg^(1-1/EAD_mumcg)
+EADEAE_numcg ^(1/EAD_mumcg)*EADEAE_imcg^(1-1/EAD_mumcg)
+EADEAF_numcg ^(1/EAD_mumcg)*EADEAF_imcg^(1-1/EAD_mumcg)
+EADRW_numcg ^(1/EAD_mumcg)*EADRW_imcg^(1-1/EAD_mumcg)
+EADUS_numcg ^(1/EAD_mumcg)*EADUS_imcg^(1-1/EAD_mumcg)
+(1
-EADEAA_numcg
-EADEAC_numcg
-EADEAE_numcg
-EADEAF_numcg
-EADRW_numcg
-EADUS_numcg
)^(1/EAD_mumcg)*EADEAB_imcg^(1-1/EAD_mumcg);
// Demand for bilateral consumption import goods
EADEAA_imcg = EADEAA_numcg*((EAA_pex*EADEAA_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADEAC_imcg = EADEAC_numcg*((EAC_pex*EADEAC_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADEAF_imcg = EADEAF_numcg*((EAF_pex*EADEAF_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADRW_imcg = EADRW_numcg*((RW_pex*EADRW_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Demand for bilateral consumption import goods
EADUS_imcg = EADUS_numcg*((US_pex*EADUS_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
EADEAB_imcg = (1
-EADEAA_numcg
-EADEAC_numcg
-EADEAE_numcg
-EADEAF_numcg
-EADRW_numcg
-EADUS_numcg
)*((EAB_pex*EADEAB_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
// Price of the consumption good (import)
EAD_pimcg^(1-EAD_mumcg) =
+EADEAA_numcg * (EAA_pex*EADEAA_rer)^(1-EAD_mumcg)
+EADEAC_numcg * (EAC_pex*EADEAC_rer)^(1-EAD_mumcg)
+EADEAE_numcg * (EAE_pex*EADEAE_rer)^(1-EAD_mumcg)
+EADEAF_numcg * (EAF_pex*EADEAF_rer)^(1-EAD_mumcg)
+EADRW_numcg * (RW_pex*EADRW_rer)^(1-EAD_mumcg)
+EADUS_numcg * (US_pex*EADUS_rer)^(1-EAD_mumcg)
+(1
-EADEAA_numcg
-EADEAC_numcg
-EADEAE_numcg
-EADEAF_numcg
-EADRW_numcg
-EADUS_numcg
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumcg);
// Private consumption good (import) inflation
EAD_piimcg = EAD_pimcg/EAD_pimcg(-1)*EAD_pic;
// Private consumption good (import)
EAD_imig^((EAD_mumig-1)/EAD_mumig) =
+EADEAA_numig ^(1/EAD_mumig)*EADEAA_imig^(1-1/EAD_mumig)
+EADEAC_numig ^(1/EAD_mumig)*EADEAC_imig^(1-1/EAD_mumig)
+EADEAE_numig ^(1/EAD_mumig)*EADEAE_imig^(1-1/EAD_mumig)
+EADEAF_numig ^(1/EAD_mumig)*EADEAF_imig^(1-1/EAD_mumig)
+EADRW_numig ^(1/EAD_mumig)*EADRW_imig^(1-1/EAD_mumig)
+EADUS_numig ^(1/EAD_mumig)*EADUS_imig^(1-1/EAD_mumig)
+(1
-EADEAA_numig
-EADEAC_numig
-EADEAE_numig
-EADEAF_numig
-EADRW_numig
-EADUS_numig
)^(1/EAD_mumig)*EADEAB_imig^(1-1/EAD_mumig);
// Demand for bilateral consumption import goods
EADEAA_imig = EADEAA_numig*((EAA_pex*EADEAA_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADEAC_imig = EADEAC_numig*((EAC_pex*EADEAC_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADEAF_imig = EADEAF_numig*((EAF_pex*EADEAF_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADRW_imig = EADRW_numig*((RW_pex*EADRW_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Demand for bilateral consumption import goods
EADUS_imig = EADUS_numig*((US_pex*EADUS_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
EADEAB_imig = (1
-EADEAA_numig
-EADEAC_numig
-EADEAE_numig
-EADEAF_numig
-EADRW_numig
-EADUS_numig
)*((EAB_pex*EADEAB_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
// Price of the consumption good (import)
EAD_pimig^(1-EAD_mumig) =
+EADEAA_numig * (EAA_pex*EADEAA_rer)^(1-EAD_mumig)
+EADEAC_numig * (EAC_pex*EADEAC_rer)^(1-EAD_mumig)
+EADEAE_numig * (EAE_pex*EADEAE_rer)^(1-EAD_mumig)
+EADEAF_numig * (EAF_pex*EADEAF_rer)^(1-EAD_mumig)
+EADRW_numig * (RW_pex*EADRW_rer)^(1-EAD_mumig)
+EADUS_numig * (US_pex*EADUS_rer)^(1-EAD_mumig)
+(1
-EADEAA_numig
-EADEAC_numig
-EADEAE_numig
-EADEAF_numig
-EADRW_numig
-EADUS_numig
)*(EAB_pex*EADEAB_rer)^(1-EAD_mumig);
// Private consumption good (import) inflation
EAD_piimig = EAD_pimig/EAD_pimig(-1)*EAD_pic;
// Private consumption good (import) inflation
EAD_piimc4 = EAD_pimc/EAD_pimc(-4)*EAD_pic4;
// Private consumption good (import) inflation
EAD_piex4 = EAD_pex/EAD_pex(-4)*EAD_pic4;
// Wedge between aggregate demand and production, using EAD_x = EAE_size/EAD_size*EAE_im
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
EADEAE_im = 
+EADEAE_imc
+EADEAE_imi
+EADEAE_imcg
+EADEAE_imig
;
EADEAF_im = 
+EADEAF_imc
+EADEAF_imi
+EADEAF_imcg
+EADEAF_imig
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
EADEAE_gammaimc = 0;
EADEAE_gammaimcdag = 1;
EADEAF_gammaimc = 0;
EADEAF_gammaimcdag = 1;
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
EADEAE_gammaimi = 0;
EADEAE_gammaimidag = 1;
EADEAF_gammaimi = 0;
EADEAF_gammaimidag = 1;
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
EADEAE_gammaimcg = 0;
EADEAE_gammaimcgdag = 1;
EADEAF_gammaimcg = 0;
EADEAF_gammaimcgdag = 1;
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
EADEAE_gammaimig = 0;
EADEAE_gammaimigdag = 1;
EADEAF_gammaimig = 0;
EADEAF_gammaimigdag = 1;
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
+EAD_pex*EAE_size/EAD_size*EAEEAD_im
-EAE_pex*EADEAE_rer*EADEAE_im
+EAD_pex*EAF_size/EAD_size*EAFEAD_im
-EAF_pex*EADEAF_rer*EADEAF_im
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
+EAE_size/EAD_size*EAEEAD_im
+EAF_size/EAD_size*EAFEAD_im
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
	EAD_r = EAF_r;
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
+EAD_pex*EAE_size/EAD_size*EAEEAD_im
-(EAE_pex*EADEAE_rer)*EADEAE_imc
-(EAE_pex*EADEAE_rer)*EADEAE_imi
-(EAE_pex*EADEAE_rer)*EADEAE_imcg
-(EAE_pex*EADEAE_rer)*EADEAE_imig
+EAD_pex*EAF_size/EAD_size*EAFEAD_im
-(EAF_pex*EADEAF_rer)*EADEAF_imc
-(EAF_pex*EADEAF_rer)*EADEAF_imi
-(EAF_pex*EADEAF_rer)*EADEAF_imcg
-(EAF_pex*EADEAF_rer)*EADEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
EADEAE_imcy = (EAE_pex*EADEAE_rer)*EADEAE_imc/(EAD_py*EAD_y);
EADEAE_imiy = (EAE_pex*EADEAE_rer)*EADEAE_imi/(EAD_py*EAD_y);
EADEAE_imcgy = (EAE_pex*EADEAE_rer)*EADEAE_imcg/(EAD_py*EAD_y);
EADEAE_imigy = (EAE_pex*EADEAE_rer)*EADEAE_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAE_excy  = EAE_size/EAD_size*EAD_pex*EAEEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAE_exiy  = EAE_size/EAD_size*EAD_pex*EAEEAD_imi/(EAD_py*EAD_y);
// Bilateral shares
EADEAF_imcy = (EAF_pex*EADEAF_rer)*EADEAF_imc/(EAD_py*EAD_y);
EADEAF_imiy = (EAF_pex*EADEAF_rer)*EADEAF_imi/(EAD_py*EAD_y);
EADEAF_imcgy = (EAF_pex*EADEAF_rer)*EADEAF_imcg/(EAD_py*EAD_y);
EADEAF_imigy = (EAF_pex*EADEAF_rer)*EADEAF_imig/(EAD_py*EAD_y);
// Exports of consumption goods to gdp
EADEAF_excy  = EAF_size/EAD_size*EAD_pex*EAFEAD_imc/(EAD_py*EAD_y);
// Exports of investment goods to gdp
EADEAF_exiy  = EAF_size/EAD_size*EAD_pex*EAFEAD_imi/(EAD_py*EAD_y);
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
// Utility
EAE_utili = 
EAE_zcon*log(EAE_ci-EAE_kappa*EAE_ci(-1))-1/(1+EAE_zeta)*(EAE_ni)^(1+EAE_zeta)+EAE_beta*EAE_utili(+1)
;
// Marginal utility of consumption
EAE_lambdai*(1+EAE_tauc+EAE_gammavi+EAE_vi*EAE_gammavider) = EAE_zcon*(EAE_ci-EAE_kappa*EAE_ci(-1))^(-EAE_sigma);
// Euler equation for government bonds
EAE_r                   = EAE_beta^(-1)*EAE_lambdai/EAE_lambdai    *EAE_pic;
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
EAE_zcon*log(EAE_cj-EAE_kappa*EAE_cj(-1))-1/(1+EAE_zeta)*EAE_nj^(1+EAE_zeta)+EAE_beta*EAE_utilj(+1)
;
// Marginal utility of consumption
EAE_lambdaj*(1+EAE_tauc+EAE_gammavj+EAE_vj*EAE_gammavjder) = EAE_zcon*(EAE_cj-EAE_kappa*EAE_cj(-1))^(-EAE_sigma);
// Budget constraint
(1+EAE_tauc+EAE_gammavj)*EAE_cj+EAE_mj = (1-EAE_taun-EAE_tauwh)*EAE_wj*EAE_nj+EAE_trj-EAE_tj+EAE_mj(-1)*EAE_pic^(-1);
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
EAE_yst = EA_z*EAE_zt*EAE_kdt^EAE_alphat*EAE_ndt^(1-EAE_alphat)-EAE_psitbar;
// Production function nontradable
EAE_ysn = EA_z*EAE_zn*EAE_kdn^EAE_alphan*EAE_ndn^(1-EAE_alphan)-EAE_psinbar;
// Real marginal cost tradable
EAE_mct = 1/(EA_z*EAE_zt*(EAE_alphat)^(EAE_alphat)*(1-EAE_alphat)^(1-EAE_alphat))*EAE_rk^(EAE_alphat)*((1+EAE_tauwf)*EAE_w)^(1-EAE_alphat);
// Real marginal cost nontradable
EAE_mcn = 1/(EA_z*EAE_zn*(EAE_alphan)^(EAE_alphan)*(1-EAE_alphan)^(1-EAE_alphan))*EAE_rk^(EAE_alphan)*((1+EAE_tauwf)*EAE_w)^(1-EAE_alphan);
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
+EAE_pex*EAE_ex
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
// Optimal price contract set in domestic markets (FOC)
EAE_pextilde/EAE_pex = EAE_thetat/(EAE_thetat-1)*EAE_fx/EAE_gx;
// Definition of fh
EAE_fx = EAE_mct*EAE_ex+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_piex(+1)/(EAE_piex^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAE_fx(+1);
// Definition of gh
EAE_gx = EAE_pex*EAE_ex+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAE_piex(+1)/(EAE_piex^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAE_gx(+1);
// Aggregate intermediate-good price dynamics
EAE_pex^(1-EAE_thetat) = (1-EAE_xix)*EAE_pextilde^(1-EAE_thetat)+EAE_xix*(EAE_pex(-1)/EAE_pic)^(1-EAE_thetat)*(EAE_piex(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix)))^(1-EAE_thetat);
// Intermediate-good price inflation
EAE_piex = EAE_pex/EAE_pex(-1)*EAE_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAA_pimtilde
// EAAEAE_pimtilde/EAAEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAA_fx/EAEEAA_gx;
// Definition of fx
// EAEEAA_fx = EAA_size/EAE_size*EAAEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAAEAE_piim(+1)/(EAAEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAA_fx(+1);
// Definition of gx   
// EAEEAA_gx = EAEEAA_rer*EAAEAE_pim*EAA_size/EAE_size*EAAEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAAEAE_piim(+1)/(EAAEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAA_pim
// EAAEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EAAEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EAAEAE_pim(-1)/EAA_pic)^(1-EAE_thetat)*(EAAEAE_piim(-1)^EAE_chix*EAA_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAA_piim
// EAAEAE_piim = EAAEAE_pim/EAAEAE_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EAEEAA_rer = EAE_rer/EAA_rer;
// Auxiliary equation for steady-state output
EAEEAA_rerbar = EAEEAA_rer;
//Terms of Trade
EAEEAA_tot = EAA_pex*EAEEAA_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAB_pimtilde
// EABEAE_pimtilde/EABEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAB_fx/EAEEAB_gx;
// Definition of fx
// EAEEAB_fx = EAB_size/EAE_size*EABEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EABEAE_piim(+1)/(EABEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAB_fx(+1);
// Definition of gx   
// EAEEAB_gx = EAEEAB_rer*EABEAE_pim*EAB_size/EAE_size*EABEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EABEAE_piim(+1)/(EABEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAB_pim
// EABEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EABEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EABEAE_pim(-1)/EAB_pic)^(1-EAE_thetat)*(EABEAE_piim(-1)^EAE_chix*EAB_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAB_piim
// EABEAE_piim = EABEAE_pim/EABEAE_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EAEEAB_rer = EAE_rer/EAB_rer;
// Auxiliary equation for steady-state output
EAEEAB_rerbar = EAEEAB_rer;
//Terms of Trade
EAEEAB_tot = EAB_pex*EAEEAB_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAC_pimtilde
// EACEAE_pimtilde/EACEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAC_fx/EAEEAC_gx;
// Definition of fx
// EAEEAC_fx = EAC_size/EAE_size*EACEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EACEAE_piim(+1)/(EACEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAC_fx(+1);
// Definition of gx   
// EAEEAC_gx = EAEEAC_rer*EACEAE_pim*EAC_size/EAE_size*EACEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EACEAE_piim(+1)/(EACEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAC_pim
// EACEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EACEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EACEAE_pim(-1)/EAC_pic)^(1-EAE_thetat)*(EACEAE_piim(-1)^EAE_chix*EAC_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAC_piim
// EACEAE_piim = EACEAE_pim/EACEAE_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EAEEAC_rer = EAE_rer/EAC_rer;
// Auxiliary equation for steady-state output
EAEEAC_rerbar = EAEEAC_rer;
//Terms of Trade
EAEEAC_tot = EAC_pex*EAEEAC_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAD_pimtilde
// EADEAE_pimtilde/EADEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAD_fx/EAEEAD_gx;
// Definition of fx
// EAEEAD_fx = EAD_size/EAE_size*EADEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EADEAE_piim(+1)/(EADEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAD_fx(+1);
// Definition of gx   
// EAEEAD_gx = EAEEAD_rer*EADEAE_pim*EAD_size/EAE_size*EADEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EADEAE_piim(+1)/(EADEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAD_pim
// EADEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EADEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EADEAE_pim(-1)/EAD_pic)^(1-EAE_thetat)*(EADEAE_piim(-1)^EAE_chix*EAD_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAD_piim
// EADEAE_piim = EADEAE_pim/EADEAE_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EAEEAD_rer = EAE_rer/EAD_rer;
// Auxiliary equation for steady-state output
EAEEAD_rerbar = EAEEAD_rer;
//Terms of Trade
EAEEAD_tot = EAD_pex*EAEEAD_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = EAF_pimtilde
// EAFEAE_pimtilde/EAFEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEEAF_fx/EAEEAF_gx;
// Definition of fx
// EAEEAF_fx = EAF_size/EAE_size*EAFEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAFEAE_piim(+1)/(EAFEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEEAF_fx(+1);
// Definition of gx   
// EAEEAF_gx = EAEEAF_rer*EAFEAE_pim*EAF_size/EAE_size*EAFEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(EAFEAE_piim(+1)/(EAFEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = EAF_pim
// EAFEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*EAFEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(EAFEAE_pim(-1)/EAF_pic)^(1-EAE_thetat)*(EAFEAE_piim(-1)^EAE_chix*EAF_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = EAF_piim
// EAFEAE_piim = EAFEAE_pim/EAFEAE_pim(-1)*EAF_pic;
// Bilateral real exchange rate
EAEEAF_rer = EAE_rer/EAF_rer;
// Auxiliary equation for steady-state output
EAEEAF_rerbar = EAEEAF_rer;
//Terms of Trade
EAEEAF_tot = EAF_pex*EAEEAF_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = RW_pimtilde
// RWEAE_pimtilde/RWEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAERW_fx/EAERW_gx;
// Definition of fx
// EAERW_fx = RW_size/EAE_size*RWEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(RWEAE_piim(+1)/(RWEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAERW_fx(+1);
// Definition of gx   
// EAERW_gx = EAERW_rer*RWEAE_pim*RW_size/EAE_size*RWEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(RWEAE_piim(+1)/(RWEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAERW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = RW_pim
// RWEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*RWEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(RWEAE_pim(-1)/RW_pic)^(1-EAE_thetat)*(RWEAE_piim(-1)^EAE_chix*RW_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = RW_piim
// RWEAE_piim = RWEAE_pim/RWEAE_pim(-1)*RW_pic;
// Bilateral real exchange rate
EAERW_rer = EAE_rer/RW_rer;
// Auxiliary equation for steady-state output
EAERW_rerbar = EAERW_rer;
//Terms of Trade
EAERW_tot = RW_pex*EAERW_rer/EAE_pex;
// Optimal price contract set in foreign markets (FOC), using EAE_pxtilde = US_pimtilde
// USEAE_pimtilde/USEAE_pim = EAE_cpim*EAE_thetat/(EAE_thetat-1)*EAEUS_fx/EAEUS_gx;
// Definition of fx
// EAEUS_fx = US_size/EAE_size*USEAE_im*EAE_mct+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(USEAE_piim(+1)/(USEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAEUS_fx(+1);
// Definition of gx   
// EAEUS_gx = EAEUS_rer*USEAE_pim*US_size/EAE_size*USEAE_im+EAE_xix*EAE_beta*EAE_lambdai(+1)/EAE_lambdai*(USEAE_piim(+1)/(USEAE_piim^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^(EAE_thetat-1)*EAEUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAE_px = US_pim
// USEAE_pim^(1-EAE_thetat) = (1-EAE_xix)*USEAE_pimtilde^(1-EAE_thetat)+EAE_xix*(USEAE_pim(-1)/US_pic)^(1-EAE_thetat)*(USEAE_piim(-1)^EAE_chix*US_pi4target^(1/4*(1-EAE_chih)))^(1-EAE_thetat);
// Intermediate-good price inflation, using EAE_pix = US_piim
// USEAE_piim = USEAE_pim/USEAE_pim(-1)*US_pic;
// Bilateral real exchange rate
EAEUS_rer = EAE_rer/US_rer;
// Auxiliary equation for steady-state output
EAEUS_rerbar = EAEUS_rer;
//Terms of Trade
EAEUS_tot = US_pex*EAEUS_rer/EAE_pex;
// Total imports 
EAE_im = 
+EAE_imc
+EAE_imi
+EAE_imcg
+EAE_imig
;
// Total import deflator
EAE_im*EAE_pim  = 
+EAE_pimc*EAE_imc
+EAE_pimi*EAE_imi
+EAE_pimcg*EAE_imcg
+EAE_pimig*EAE_imig
;
// Effective real exchange rate: double weighting (imports)
EAEEAA_weightim = EAEEAA_rer*EAA_pex*EAEEAA_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAA_weightex = EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAA_rer*EAA_py*EAA_y/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EABEAA_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EACEAA_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EADEAA_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*EAFEAA_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*RWEAA_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAA_rer*EAA_pex*USEAA_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
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
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EAAEAB_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EACEAB_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EADEAB_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*EAFEAB_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*RWEAB_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAB_rer*EAB_pex*USEAB_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
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
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EAAEAC_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EABEAC_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EADEAC_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*EAFEAC_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*RWEAC_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAC_rer*EAC_pex*USEAC_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
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
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EAAEAD_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EABEAD_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EACEAD_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*EAFEAD_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*RWEAD_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAD_rer*EAD_pex*USEAD_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAD_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAD_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EAEEAF_weightim = EAEEAF_rer*EAF_pex*EAEEAF_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAEEAF_weightex = EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEEAF_rer*EAF_py*EAF_y/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*EAAEAF_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*EABEAF_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*EACEAF_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*EADEAF_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*RWEAF_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAEEAF_rer*EAF_pex*USEAF_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
+EAERW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAEEAF_weight = EAE_pim*EAE_im/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAF_weightim+EAE_pex*EAE_ex/(EAE_pim*EAE_im+EAE_pex*EAE_ex)*EAEEAF_weightex;
// Effective real exchange rate: double weighting (imports)
EAERW_weightim = EAERW_rer*RW_pex*EAERW_im/(EAE_pim*EAE_im);
// Effective real exchange rate: double weighting (exports)
EAERW_weightex = RW_size/EAE_size*RWEAE_im/EAE_ex*EAERW_rer*RW_py*RW_y/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
+EAEUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAERW_rer*RW_pex*EAARW_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAERW_rer*RW_pex*EABRW_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAERW_rer*RW_pex*EACRW_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAERW_rer*RW_pex*EADRW_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAERW_rer*RW_pex*EAFRW_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+US_size/EAE_size*USEAE_im/EAE_ex*EAERW_rer*RW_pex*USRW_im/(EAEUS_rer*US_py*US_y
+EAEEAA_rer*EAA_pex*USEAA_im
+EAEEAB_rer*EAB_pex*USEAB_im
+EAEEAC_rer*EAC_pex*USEAC_im
+EAEEAD_rer*EAD_pex*USEAD_im
+EAEEAF_rer*EAF_pex*USEAF_im
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
+EAEEAF_rer*EAF_pex*USEAF_im
+EAERW_rer*RW_pex*USRW_im
)+
+EAA_size/EAE_size*EAAEAE_im/EAE_ex*EAEUS_rer*US_pex*EAAUS_im/(EAEEAA_rer*EAA_py*EAA_y
+EAEEAB_rer*EAB_pex*EAAEAB_im
+EAEEAC_rer*EAC_pex*EAAEAC_im
+EAEEAD_rer*EAD_pex*EAAEAD_im
+EAEEAF_rer*EAF_pex*EAAEAF_im
+EAERW_rer*RW_pex*EAARW_im
+EAEUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAE_size*EABEAE_im/EAE_ex*EAEUS_rer*US_pex*EABUS_im/(EAEEAB_rer*EAB_py*EAB_y
+EAEEAA_rer*EAA_pex*EABEAA_im
+EAEEAC_rer*EAC_pex*EABEAC_im
+EAEEAD_rer*EAD_pex*EABEAD_im
+EAEEAF_rer*EAF_pex*EABEAF_im
+EAERW_rer*RW_pex*EABRW_im
+EAEUS_rer*US_pex*EABUS_im
)
+EAC_size/EAE_size*EACEAE_im/EAE_ex*EAEUS_rer*US_pex*EACUS_im/(EAEEAC_rer*EAC_py*EAC_y
+EAEEAA_rer*EAA_pex*EACEAA_im
+EAEEAB_rer*EAB_pex*EACEAB_im
+EAEEAD_rer*EAD_pex*EACEAD_im
+EAEEAF_rer*EAF_pex*EACEAF_im
+EAERW_rer*RW_pex*EACRW_im
+EAEUS_rer*US_pex*EACUS_im
)
+EAD_size/EAE_size*EADEAE_im/EAE_ex*EAEUS_rer*US_pex*EADUS_im/(EAEEAD_rer*EAD_py*EAD_y
+EAEEAA_rer*EAA_pex*EADEAA_im
+EAEEAB_rer*EAB_pex*EADEAB_im
+EAEEAC_rer*EAC_pex*EADEAC_im
+EAEEAF_rer*EAF_pex*EADEAF_im
+EAERW_rer*RW_pex*EADRW_im
+EAEUS_rer*US_pex*EADUS_im
)
+EAF_size/EAE_size*EAFEAE_im/EAE_ex*EAEUS_rer*US_pex*EAFUS_im/(EAEEAF_rer*EAF_py*EAF_y
+EAEEAA_rer*EAA_pex*EAFEAA_im
+EAEEAB_rer*EAB_pex*EAFEAB_im
+EAEEAC_rer*EAC_pex*EAFEAC_im
+EAEEAD_rer*EAD_pex*EAFEAD_im
+EAERW_rer*RW_pex*EAFRW_im
+EAEUS_rer*US_pex*EAFUS_im
)
+RW_size/EAE_size*RWEAE_im/EAE_ex*EAEUS_rer*US_pex*RWUS_im/(EAERW_rer*RW_py*RW_y
+EAEEAA_rer*EAA_pex*RWEAA_im
+EAEEAB_rer*EAB_pex*RWEAB_im
+EAEEAC_rer*EAC_pex*RWEAC_im
+EAEEAD_rer*EAD_pex*RWEAD_im
+EAEEAF_rer*EAF_pex*RWEAF_im
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
*EAEEAF_rer^EAEEAF_weight
*EAERW_rer^EAERW_weight
*EAEUS_rer^EAEUS_weight
;
// Effective terms of trade
EAE_etot = 1
*EAEEAA_tot^EAEEAA_weight
*EAEEAB_tot^EAEEAB_weight
*EAEEAC_tot^EAEEAC_weight
*EAEEAD_tot^EAEEAD_weight
*EAEEAF_tot^EAEEAF_weight
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
+EAEEAF_numc ^(1/EAE_mumc)*EAEEAF_imc^(1-1/EAE_mumc)
+EAERW_numc ^(1/EAE_mumc)*EAERW_imc^(1-1/EAE_mumc)
+EAEUS_numc ^(1/EAE_mumc)*EAEUS_imc^(1-1/EAE_mumc)
+(1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAEEAF_numc
-EAERW_numc
-EAEUS_numc
)^(1/EAE_mumc)*EAEEAC_imc^(1-1/EAE_mumc);
// Demand for bilateral consumption import goods
EAEEAA_imc = EAEEAA_numc*((EAA_pex*EAEEAA_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Demand for bilateral consumption import goods
EAEEAB_imc = EAEEAB_numc*((EAB_pex*EAEEAB_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Demand for bilateral consumption import goods
EAEEAD_imc = EAEEAD_numc*((EAD_pex*EAEEAD_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Demand for bilateral consumption import goods
EAERW_imc = EAERW_numc*((RW_pex*EAERW_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Demand for bilateral consumption import goods
EAEUS_imc = EAEUS_numc*((US_pex*EAEUS_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
EAEEAC_imc = (1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAEEAF_numc
-EAERW_numc
-EAEUS_numc
)*((EAC_pex*EAEEAC_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
// Price of the consumption good (import)
EAE_pimc^(1-EAE_mumc) =
+EAEEAA_numc * (EAA_pex*EAEEAA_rer)^(1-EAE_mumc)
+EAEEAB_numc * (EAB_pex*EAEEAB_rer)^(1-EAE_mumc)
+EAEEAD_numc * (EAD_pex*EAEEAD_rer)^(1-EAE_mumc)
+EAEEAF_numc * (EAF_pex*EAEEAF_rer)^(1-EAE_mumc)
+EAERW_numc * (RW_pex*EAERW_rer)^(1-EAE_mumc)
+EAEUS_numc * (US_pex*EAEUS_rer)^(1-EAE_mumc)
+(1
-EAEEAA_numc
-EAEEAB_numc
-EAEEAD_numc
-EAEEAF_numc
-EAERW_numc
-EAEUS_numc
)*(EAC_pex*EAEEAC_rer)^(1-EAE_mumc);
// Private consumption good (import) inflation
EAE_piimc = EAE_pimc/EAE_pimc(-1)*EAE_pic;
// Private consumption good (import)
EAE_imi^((EAE_mumi-1)/EAE_mumi) =
+EAEEAA_numi ^(1/EAE_mumi)*EAEEAA_imi^(1-1/EAE_mumi)
+EAEEAB_numi ^(1/EAE_mumi)*EAEEAB_imi^(1-1/EAE_mumi)
+EAEEAD_numi ^(1/EAE_mumi)*EAEEAD_imi^(1-1/EAE_mumi)
+EAEEAF_numi ^(1/EAE_mumi)*EAEEAF_imi^(1-1/EAE_mumi)
+EAERW_numi ^(1/EAE_mumi)*EAERW_imi^(1-1/EAE_mumi)
+EAEUS_numi ^(1/EAE_mumi)*EAEUS_imi^(1-1/EAE_mumi)
+(1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAEEAF_numi
-EAERW_numi
-EAEUS_numi
)^(1/EAE_mumi)*EAEEAC_imi^(1-1/EAE_mumi);
// Demand for bilateral consumption import goods
EAEEAA_imi = EAEEAA_numi*((EAA_pex*EAEEAA_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral consumption import goods
EAEEAB_imi = EAEEAB_numi*((EAB_pex*EAEEAB_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral consumption import goods
EAEEAD_imi = EAEEAD_numi*((EAD_pex*EAEEAD_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral consumption import goods
EAERW_imi = EAERW_numi*((RW_pex*EAERW_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Demand for bilateral consumption import goods
EAEUS_imi = EAEUS_numi*((US_pex*EAEUS_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
EAEEAC_imi = (1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAEEAF_numi
-EAERW_numi
-EAEUS_numi
)*((EAC_pex*EAEEAC_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
// Price of the consumption good (import)
EAE_pimi^(1-EAE_mumi) =
+EAEEAA_numi * (EAA_pex*EAEEAA_rer)^(1-EAE_mumi)
+EAEEAB_numi * (EAB_pex*EAEEAB_rer)^(1-EAE_mumi)
+EAEEAD_numi * (EAD_pex*EAEEAD_rer)^(1-EAE_mumi)
+EAEEAF_numi * (EAF_pex*EAEEAF_rer)^(1-EAE_mumi)
+EAERW_numi * (RW_pex*EAERW_rer)^(1-EAE_mumi)
+EAEUS_numi * (US_pex*EAEUS_rer)^(1-EAE_mumi)
+(1
-EAEEAA_numi
-EAEEAB_numi
-EAEEAD_numi
-EAEEAF_numi
-EAERW_numi
-EAEUS_numi
)*(EAC_pex*EAEEAC_rer)^(1-EAE_mumi);
// Private consumption good (import) inflation
EAE_piimi = EAE_pimi/EAE_pimi(-1)*EAE_pic;
// Private consumption good (import)
EAE_imcg^((EAE_mumcg-1)/EAE_mumcg) =
+EAEEAA_numcg ^(1/EAE_mumcg)*EAEEAA_imcg^(1-1/EAE_mumcg)
+EAEEAB_numcg ^(1/EAE_mumcg)*EAEEAB_imcg^(1-1/EAE_mumcg)
+EAEEAD_numcg ^(1/EAE_mumcg)*EAEEAD_imcg^(1-1/EAE_mumcg)
+EAEEAF_numcg ^(1/EAE_mumcg)*EAEEAF_imcg^(1-1/EAE_mumcg)
+EAERW_numcg ^(1/EAE_mumcg)*EAERW_imcg^(1-1/EAE_mumcg)
+EAEUS_numcg ^(1/EAE_mumcg)*EAEUS_imcg^(1-1/EAE_mumcg)
+(1
-EAEEAA_numcg
-EAEEAB_numcg
-EAEEAD_numcg
-EAEEAF_numcg
-EAERW_numcg
-EAEUS_numcg
)^(1/EAE_mumcg)*EAEEAC_imcg^(1-1/EAE_mumcg);
// Demand for bilateral consumption import goods
EAEEAA_imcg = EAEEAA_numcg*((EAA_pex*EAEEAA_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
// Demand for bilateral consumption import goods
EAEEAB_imcg = EAEEAB_numcg*((EAB_pex*EAEEAB_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
// Demand for bilateral consumption import goods
EAEEAD_imcg = EAEEAD_numcg*((EAD_pex*EAEEAD_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
// Demand for bilateral consumption import goods
EAERW_imcg = EAERW_numcg*((RW_pex*EAERW_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
// Demand for bilateral consumption import goods
EAEUS_imcg = EAEUS_numcg*((US_pex*EAEUS_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
EAEEAC_imcg = (1
-EAEEAA_numcg
-EAEEAB_numcg
-EAEEAD_numcg
-EAEEAF_numcg
-EAERW_numcg
-EAEUS_numcg
)*((EAC_pex*EAEEAC_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
// Price of the consumption good (import)
EAE_pimcg^(1-EAE_mumcg) =
+EAEEAA_numcg * (EAA_pex*EAEEAA_rer)^(1-EAE_mumcg)
+EAEEAB_numcg * (EAB_pex*EAEEAB_rer)^(1-EAE_mumcg)
+EAEEAD_numcg * (EAD_pex*EAEEAD_rer)^(1-EAE_mumcg)
+EAEEAF_numcg * (EAF_pex*EAEEAF_rer)^(1-EAE_mumcg)
+EAERW_numcg * (RW_pex*EAERW_rer)^(1-EAE_mumcg)
+EAEUS_numcg * (US_pex*EAEUS_rer)^(1-EAE_mumcg)
+(1
-EAEEAA_numcg
-EAEEAB_numcg
-EAEEAD_numcg
-EAEEAF_numcg
-EAERW_numcg
-EAEUS_numcg
)*(EAC_pex*EAEEAC_rer)^(1-EAE_mumcg);
// Private consumption good (import) inflation
EAE_piimcg = EAE_pimcg/EAE_pimcg(-1)*EAE_pic;
// Private consumption good (import)
EAE_imig^((EAE_mumig-1)/EAE_mumig) =
+EAEEAA_numig ^(1/EAE_mumig)*EAEEAA_imig^(1-1/EAE_mumig)
+EAEEAB_numig ^(1/EAE_mumig)*EAEEAB_imig^(1-1/EAE_mumig)
+EAEEAD_numig ^(1/EAE_mumig)*EAEEAD_imig^(1-1/EAE_mumig)
+EAEEAF_numig ^(1/EAE_mumig)*EAEEAF_imig^(1-1/EAE_mumig)
+EAERW_numig ^(1/EAE_mumig)*EAERW_imig^(1-1/EAE_mumig)
+EAEUS_numig ^(1/EAE_mumig)*EAEUS_imig^(1-1/EAE_mumig)
+(1
-EAEEAA_numig
-EAEEAB_numig
-EAEEAD_numig
-EAEEAF_numig
-EAERW_numig
-EAEUS_numig
)^(1/EAE_mumig)*EAEEAC_imig^(1-1/EAE_mumig);
// Demand for bilateral consumption import goods
EAEEAA_imig = EAEEAA_numig*((EAA_pex*EAEEAA_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
// Demand for bilateral consumption import goods
EAEEAB_imig = EAEEAB_numig*((EAB_pex*EAEEAB_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
// Demand for bilateral consumption import goods
EAEEAD_imig = EAEEAD_numig*((EAD_pex*EAEEAD_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
// Demand for bilateral consumption import goods
EAERW_imig = EAERW_numig*((RW_pex*EAERW_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
// Demand for bilateral consumption import goods
EAEUS_imig = EAEUS_numig*((US_pex*EAEUS_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
EAEEAC_imig = (1
-EAEEAA_numig
-EAEEAB_numig
-EAEEAD_numig
-EAEEAF_numig
-EAERW_numig
-EAEUS_numig
)*((EAC_pex*EAEEAC_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
// Price of the consumption good (import)
EAE_pimig^(1-EAE_mumig) =
+EAEEAA_numig * (EAA_pex*EAEEAA_rer)^(1-EAE_mumig)
+EAEEAB_numig * (EAB_pex*EAEEAB_rer)^(1-EAE_mumig)
+EAEEAD_numig * (EAD_pex*EAEEAD_rer)^(1-EAE_mumig)
+EAEEAF_numig * (EAF_pex*EAEEAF_rer)^(1-EAE_mumig)
+EAERW_numig * (RW_pex*EAERW_rer)^(1-EAE_mumig)
+EAEUS_numig * (US_pex*EAEUS_rer)^(1-EAE_mumig)
+(1
-EAEEAA_numig
-EAEEAB_numig
-EAEEAD_numig
-EAEEAF_numig
-EAERW_numig
-EAEUS_numig
)*(EAC_pex*EAEEAC_rer)^(1-EAE_mumig);
// Private consumption good (import) inflation
EAE_piimig = EAE_pimig/EAE_pimig(-1)*EAE_pic;
// Private consumption good (import) inflation
EAE_piimc4 = EAE_pimc/EAE_pimc(-4)*EAE_pic4;
// Private consumption good (import) inflation
EAE_piex4 = EAE_pex/EAE_pex(-4)*EAE_pic4;
// Wedge between aggregate demand and production, using EAE_x = EAF_size/EAE_size*EAF_im
EAE_yst = EAE_sh*EAE_ht+EAE_sx*EAE_ex;
// Aggregate demand for bilateral imported intermediate goods
EAEEAA_im = 
+EAEEAA_imc
+EAEEAA_imi
+EAEEAA_imcg
+EAEEAA_imig
;
EAEEAB_im = 
+EAEEAB_imc
+EAEEAB_imi
+EAEEAB_imcg
+EAEEAB_imig
;
EAEEAC_im = 
+EAEEAC_imc
+EAEEAC_imi
+EAEEAC_imcg
+EAEEAC_imig
;
EAEEAD_im = 
+EAEEAD_imc
+EAEEAD_imi
+EAEEAD_imcg
+EAEEAD_imig
;
EAEEAF_im = 
+EAEEAF_imc
+EAEEAF_imi
+EAEEAF_imcg
+EAEEAF_imig
;
EAERW_im = 
+EAERW_imc
+EAERW_imi
+EAERW_imcg
+EAERW_imig
;
EAEUS_im = 
+EAEUS_imc
+EAEUS_imi
+EAEUS_imcg
+EAEUS_imig
;
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
EAEEAF_gammaimc = 0;
EAEEAF_gammaimcdag = 1;
EAERW_gammaimc = 0;
EAERW_gammaimcdag = 1;
EAEUS_gammaimc = 0;
EAEUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAE_tti^((EAE_muti-1)/EAE_muti) = (EAE_nuti)^(1/EAE_muti)*EAE_hti^(1-1/EAE_muti)+(1-EAE_nuti)^(1/EAE_muti)*EAE_imi^(1-1/EAE_muti);
// Private consumption good  (total)
EAE_qi^((EAE_mui-1)/EAE_mui) = (EAE_nui)^(1/EAE_mui)*EAE_tti^(1-1/EAE_mui)+(1-EAE_nui)^(1/EAE_mui)*EAE_nti^(1-1/EAE_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAE_nti = (1-EAE_nui)*(EAE_pnt/EAE_pi)^(-EAE_mui)*EAE_qi;
// Price of the consumption good (tradable)  
EAE_ptti^(1-EAE_muti) = (EAE_nuti)*EAE_pht^(1-EAE_muti)+(1-EAE_nuti)*EAE_pimi^(1-EAE_muti);
// Price of the consumption good 
EAE_pi^(1-EAE_mui) = (EAE_nui)*EAE_ptti^(1-EAE_mui)+(1-EAE_nui)*EAE_pnt^(1-EAE_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
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
EAEEAF_gammaimi = 0;
EAEEAF_gammaimidag = 1;
EAERW_gammaimi = 0;
EAERW_gammaimidag = 1;
EAEUS_gammaimi = 0;
EAEUS_gammaimidag = 1;
// Private consumption good (tradable)
EAE_ttcg^((EAE_mutcg-1)/EAE_mutcg) = (EAE_nutcg)^(1/EAE_mutcg)*EAE_htcg^(1-1/EAE_mutcg)+(1-EAE_nutcg)^(1/EAE_mutcg)*EAE_imcg^(1-1/EAE_mutcg);
// Private consumption good  (total)
EAE_qcg^((EAE_mucg-1)/EAE_mucg) = (EAE_nucg)^(1/EAE_mucg)*EAE_ttcg^(1-1/EAE_mucg)+(1-EAE_nucg)^(1/EAE_mucg)*EAE_ntcg^(1-1/EAE_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAE_ntcg = (1-EAE_nucg)*(EAE_pnt/EAE_pcg)^(-EAE_mucg)*EAE_qcg;
// Price of the consumption good (tradable)  
EAE_pttcg^(1-EAE_mutcg) = (EAE_nutcg)*EAE_pht^(1-EAE_mutcg)+(1-EAE_nutcg)*EAE_pimcg^(1-EAE_mutcg);
// Price of the consumption good 
EAE_pcg^(1-EAE_mucg) = (EAE_nucg)*EAE_pttcg^(1-EAE_mucg)+(1-EAE_nucg)*EAE_pnt^(1-EAE_mucg);
// Demand for domestic intermediate goods
EAE_htcg = EAE_nutcg*(EAE_pht/EAE_pttcg)^(-EAE_mutcg)*EAE_ttcg;
EAEEAA_gammaimcg = 0;
EAEEAA_gammaimcgdag = 1;
EAEEAB_gammaimcg = 0;
EAEEAB_gammaimcgdag = 1;
EAEEAC_gammaimcg = 0;
EAEEAC_gammaimcgdag = 1;
EAEEAD_gammaimcg = 0;
EAEEAD_gammaimcgdag = 1;
EAEEAF_gammaimcg = 0;
EAEEAF_gammaimcgdag = 1;
EAERW_gammaimcg = 0;
EAERW_gammaimcgdag = 1;
EAEUS_gammaimcg = 0;
EAEUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAE_ttig^((EAE_mutig-1)/EAE_mutig) = (EAE_nutig)^(1/EAE_mutig)*EAE_htig^(1-1/EAE_mutig)+(1-EAE_nutig)^(1/EAE_mutig)*EAE_imig^(1-1/EAE_mutig);
// Private consumption good  (total)
EAE_qig^((EAE_muig-1)/EAE_muig) = (EAE_nuig)^(1/EAE_muig)*EAE_ttig^(1-1/EAE_muig)+(1-EAE_nuig)^(1/EAE_muig)*EAE_ntig^(1-1/EAE_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAE_ntig = (1-EAE_nuig)*(EAE_pnt/EAE_pig)^(-EAE_muig)*EAE_qig;
// Price of the consumption good (tradable)  
EAE_pttig^(1-EAE_mutig) = (EAE_nutig)*EAE_pht^(1-EAE_mutig)+(1-EAE_nutig)*EAE_pimig^(1-EAE_mutig);
// Price of the consumption good 
EAE_pig^(1-EAE_muig) = (EAE_nuig)*EAE_pttig^(1-EAE_muig)+(1-EAE_nuig)*EAE_pnt^(1-EAE_muig);
// Demand for domestic intermediate goods
EAE_htig = EAE_nutig*(EAE_pht/EAE_pttig)^(-EAE_mutig)*EAE_ttig;
EAEEAA_gammaimig = 0;
EAEEAA_gammaimigdag = 1;
EAEEAB_gammaimig = 0;
EAEEAB_gammaimigdag = 1;
EAEEAC_gammaimig = 0;
EAEEAC_gammaimigdag = 1;
EAEEAD_gammaimig = 0;
EAEEAD_gammaimigdag = 1;
EAEEAF_gammaimig = 0;
EAEEAF_gammaimigdag = 1;
EAERW_gammaimig = 0;
EAERW_gammaimigdag = 1;
EAEUS_gammaimig = 0;
EAEUS_gammaimigdag = 1;
// Trade balance
EAE_tb =
+EAE_pex*EAA_size/EAE_size*EAAEAE_im
-EAA_pex*EAEEAA_rer*EAEEAA_im
+EAE_pex*EAB_size/EAE_size*EABEAE_im
-EAB_pex*EAEEAB_rer*EAEEAB_im
+EAE_pex*EAC_size/EAE_size*EACEAE_im
-EAC_pex*EAEEAC_rer*EAEEAC_im
+EAE_pex*EAD_size/EAE_size*EADEAE_im
-EAD_pex*EAEEAD_rer*EAEEAD_im
+EAE_pex*EAF_size/EAE_size*EAFEAE_im
-EAF_pex*EAEEAF_rer*EAEEAF_im
+EAE_pex*RW_size/EAE_size*RWEAE_im
-RW_pex*EAERW_rer*EAERW_im
+EAE_pex*US_size/EAE_size*USEAE_im
-US_pex*EAEUS_rer*EAEUS_im
;
// Aggregate exports (volume)
EAE_ex =
+EAA_size/EAE_size*EAAEAE_im
+EAB_size/EAE_size*EABEAE_im
+EAC_size/EAE_size*EACEAE_im
+EAD_size/EAE_size*EADEAE_im
+EAF_size/EAE_size*EAFEAE_im
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
// TODO: check the (1-EAE_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAE_pcg(-1)*EAE_cg(-1)+EAE_pig(-1)*EAE_ig(-1)+EAE_tr(-1)
	+EAE_b(-1)*EAE_pic(-1)^(-1)+EAE_m(-2)*EAE_pic(-1)^(-1) = EAE_tauc(-1)*EAE_c(-1)+(EAE_taun(-1)+EAE_tauwh(-1))*(EAE_wi(-1)*EAE_ndi(-1)+EAE_wj(-1)*EAE_ndj(-1))+EAE_tauwf(-1)*EAE_w(-1)*EAE_nd(-1)+EAE_tauk(-1)*(EAE_rk(-1)*EAE_u(-1)-(EAE_gammau(-1)+EAE_delta)*EAE_pi(-1))*EAE_k(-1)+EAE_taud(-1)*EAE_d(-1)+EAE_t(-1)+(EAE_r(-1)*(1-EAE_gammab(-1)))^(-1)*EAE_b+EAE_m(-1);
// Government spending, using EAE_pg = EAE_pht
EAE_pcg*EAE_cg = EAE_cgy*EAE_pybar*EAE_ybar;
EAE_pig*EAE_ig = EAE_igy*EAE_pybar*EAE_ybar;
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
	EAE_r = EAF_r;
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
// Wedge between aggregate demand and production, using EAE_x = EAF_size/EAE_size*EAF_im
EAE_ysn = EAE_snt*EAE_nt;
//  nontradables aggregate demand
EAE_nt = 
+EAE_ntc
+EAE_nti
+EAE_ntcg
+EAE_ntig
;
// Aggregate demand for domestic intermediate goods, using EAE_hg = EAE_cg
EAE_ht =
+EAE_htc
+EAE_hti
+EAE_htcg
+EAE_htig
;
// Price dispersion in the domestic markets
EAE_sh = (1-EAE_xih)*(EAE_phttilde/EAE_pht)^(-EAE_thetat)+EAE_xih*(EAE_piht/(EAE_piht(-1)^EAE_chih*EAE_pi4target^(1/4*(1-EAE_chih))))^EAE_thetat*EAE_sh(-1);
// Price dispersion in the foreign markets
EAE_sx = (1-EAE_xix)*(EAE_pextilde/EAE_pex)^(-EAE_thetat)+EAE_xix*(EAE_piex/(EAE_piex(-1)^EAE_chix*EAE_pi4target^(1/4*(1-EAE_chix))))^EAE_thetat*EAE_sx(-1);
// Price dispersion in the domestic markets
EAE_snt = (1-EAE_xin)*(EAE_pnttilde/EAE_pnt)^(-EAE_thetan)+EAE_xin*(EAE_pint/(EAE_pint(-1)^EAE_chin*EAE_pi4target^(1/4*(1-EAE_chin))))^EAE_thetan*EAE_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAE_qc = EAE_c+EAE_gammav;
// Aggregate investment and capital utilisation cost
EAE_qi = EAE_i+EAE_k*EAE_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAE_qcg = EAE_cg;
EAE_qig = EAE_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAE_py*EAE_y = 
+EAE_qc
+EAE_pi*EAE_qi
+EAE_pcg*EAE_qcg
+EAE_pig*EAE_qig
+EAE_pex*EAA_size/EAE_size*EAAEAE_im
-(EAA_pex*EAEEAA_rer)*EAEEAA_imc
-(EAA_pex*EAEEAA_rer)*EAEEAA_imi
-(EAA_pex*EAEEAA_rer)*EAEEAA_imcg
-(EAA_pex*EAEEAA_rer)*EAEEAA_imig
+EAE_pex*EAB_size/EAE_size*EABEAE_im
-(EAB_pex*EAEEAB_rer)*EAEEAB_imc
-(EAB_pex*EAEEAB_rer)*EAEEAB_imi
-(EAB_pex*EAEEAB_rer)*EAEEAB_imcg
-(EAB_pex*EAEEAB_rer)*EAEEAB_imig
+EAE_pex*EAC_size/EAE_size*EACEAE_im
-(EAC_pex*EAEEAC_rer)*EAEEAC_imc
-(EAC_pex*EAEEAC_rer)*EAEEAC_imi
-(EAC_pex*EAEEAC_rer)*EAEEAC_imcg
-(EAC_pex*EAEEAC_rer)*EAEEAC_imig
+EAE_pex*EAD_size/EAE_size*EADEAE_im
-(EAD_pex*EAEEAD_rer)*EAEEAD_imc
-(EAD_pex*EAEEAD_rer)*EAEEAD_imi
-(EAD_pex*EAEEAD_rer)*EAEEAD_imcg
-(EAD_pex*EAEEAD_rer)*EAEEAD_imig
+EAE_pex*EAF_size/EAE_size*EAFEAE_im
-(EAF_pex*EAEEAF_rer)*EAEEAF_imc
-(EAF_pex*EAEEAF_rer)*EAEEAF_imi
-(EAF_pex*EAEEAF_rer)*EAEEAF_imcg
-(EAF_pex*EAEEAF_rer)*EAEEAF_imig
+EAE_pex*RW_size/EAE_size*RWEAE_im
-(RW_pex*EAERW_rer)*EAERW_imc
-(RW_pex*EAERW_rer)*EAERW_imi
-(RW_pex*EAERW_rer)*EAERW_imcg
-(RW_pex*EAERW_rer)*EAERW_imig
+EAE_pex*US_size/EAE_size*USEAE_im
-(US_pex*EAEUS_rer)*EAEUS_imc
-(US_pex*EAEUS_rer)*EAEUS_imi
-(US_pex*EAEUS_rer)*EAEUS_imcg
-(US_pex*EAEUS_rer)*EAEUS_imig
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
EAE_cgy = (1-EAE_rhocg)*EAE_cgybar+EAE_rhocg*EAE_cgy(-1)+EAE_epsgc;
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
EAE_imy = (
+EAE_pimc*EAE_imc
+EAE_pimi*EAE_imi
+EAE_pimcg*EAE_imcg
+EAE_pimig*EAE_imig
)/(EAE_py*EAE_y);
// Aggregate nominal import share
EAE_imcy = EAE_pimc*EAE_imc/(EAE_py*EAE_y);
EAE_imiy = EAE_pimi*EAE_imi/(EAE_py*EAE_y);
EAE_imcgy = EAE_pimcg*EAE_imcg/(EAE_py*EAE_y);
EAE_imigy = EAE_pimig*EAE_imig/(EAE_py*EAE_y);
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
+EAF_size*EAF_py*EAF_y/EAF_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAE_epsilonm = -1/8*1/(EAE_r*(EAE_gammav2*EAE_r+EAE_r-1));
// Trade balance-to-GDP ratio
EAE_tby = EAE_tb/(EAE_py*EAE_y);
// Bilateral shares
EAEEAA_imcy = (EAA_pex*EAEEAA_rer)*EAEEAA_imc/(EAE_py*EAE_y);
EAEEAA_imiy = (EAA_pex*EAEEAA_rer)*EAEEAA_imi/(EAE_py*EAE_y);
EAEEAA_imcgy = (EAA_pex*EAEEAA_rer)*EAEEAA_imcg/(EAE_py*EAE_y);
EAEEAA_imigy = (EAA_pex*EAEEAA_rer)*EAEEAA_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAA_excy  = EAA_size/EAE_size*EAE_pex*EAAEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAA_exiy  = EAA_size/EAE_size*EAE_pex*EAAEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAEEAB_imcy = (EAB_pex*EAEEAB_rer)*EAEEAB_imc/(EAE_py*EAE_y);
EAEEAB_imiy = (EAB_pex*EAEEAB_rer)*EAEEAB_imi/(EAE_py*EAE_y);
EAEEAB_imcgy = (EAB_pex*EAEEAB_rer)*EAEEAB_imcg/(EAE_py*EAE_y);
EAEEAB_imigy = (EAB_pex*EAEEAB_rer)*EAEEAB_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAB_excy  = EAB_size/EAE_size*EAE_pex*EABEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAB_exiy  = EAB_size/EAE_size*EAE_pex*EABEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAEEAC_imcy = (EAC_pex*EAEEAC_rer)*EAEEAC_imc/(EAE_py*EAE_y);
EAEEAC_imiy = (EAC_pex*EAEEAC_rer)*EAEEAC_imi/(EAE_py*EAE_y);
EAEEAC_imcgy = (EAC_pex*EAEEAC_rer)*EAEEAC_imcg/(EAE_py*EAE_y);
EAEEAC_imigy = (EAC_pex*EAEEAC_rer)*EAEEAC_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAC_excy  = EAC_size/EAE_size*EAE_pex*EACEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAC_exiy  = EAC_size/EAE_size*EAE_pex*EACEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAEEAD_imcy = (EAD_pex*EAEEAD_rer)*EAEEAD_imc/(EAE_py*EAE_y);
EAEEAD_imiy = (EAD_pex*EAEEAD_rer)*EAEEAD_imi/(EAE_py*EAE_y);
EAEEAD_imcgy = (EAD_pex*EAEEAD_rer)*EAEEAD_imcg/(EAE_py*EAE_y);
EAEEAD_imigy = (EAD_pex*EAEEAD_rer)*EAEEAD_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAD_excy  = EAD_size/EAE_size*EAE_pex*EADEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAD_exiy  = EAD_size/EAE_size*EAE_pex*EADEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAEEAF_imcy = (EAF_pex*EAEEAF_rer)*EAEEAF_imc/(EAE_py*EAE_y);
EAEEAF_imiy = (EAF_pex*EAEEAF_rer)*EAEEAF_imi/(EAE_py*EAE_y);
EAEEAF_imcgy = (EAF_pex*EAEEAF_rer)*EAEEAF_imcg/(EAE_py*EAE_y);
EAEEAF_imigy = (EAF_pex*EAEEAF_rer)*EAEEAF_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEEAF_excy  = EAF_size/EAE_size*EAE_pex*EAFEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEEAF_exiy  = EAF_size/EAE_size*EAE_pex*EAFEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAERW_imcy = (RW_pex*EAERW_rer)*EAERW_imc/(EAE_py*EAE_y);
EAERW_imiy = (RW_pex*EAERW_rer)*EAERW_imi/(EAE_py*EAE_y);
EAERW_imcgy = (RW_pex*EAERW_rer)*EAERW_imcg/(EAE_py*EAE_y);
EAERW_imigy = (RW_pex*EAERW_rer)*EAERW_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAERW_excy  = RW_size/EAE_size*EAE_pex*RWEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAERW_exiy  = RW_size/EAE_size*EAE_pex*RWEAE_imi/(EAE_py*EAE_y);
// Bilateral shares
EAEUS_imcy = (US_pex*EAEUS_rer)*EAEUS_imc/(EAE_py*EAE_y);
EAEUS_imiy = (US_pex*EAEUS_rer)*EAEUS_imi/(EAE_py*EAE_y);
EAEUS_imcgy = (US_pex*EAEUS_rer)*EAEUS_imcg/(EAE_py*EAE_y);
EAEUS_imigy = (US_pex*EAEUS_rer)*EAEUS_imig/(EAE_py*EAE_y);
// Exports of consumption goods to gdp
EAEUS_excy  = US_size/EAE_size*EAE_pex*USEAE_imc/(EAE_py*EAE_y);
// Exports of investment goods to gdp
EAEUS_exiy  = US_size/EAE_size*EAE_pex*USEAE_imi/(EAE_py*EAE_y);
// Internal real exchange rate
EAE_internalrer = EAE_pnt/EAE_pttc;
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
EAF_utili = 
EAF_zcon*log(EAF_ci-EAF_kappa*EAF_ci(-1))-1/(1+EAF_zeta)*(EAF_ni)^(1+EAF_zeta)+EAF_beta*EAF_utili(+1)
;
// Marginal utility of consumption
EAF_lambdai*(1+EAF_tauc+EAF_gammavi+EAF_vi*EAF_gammavider) = EAF_zcon*(EAF_ci-EAF_kappa*EAF_ci(-1))^(-EAF_sigma);
// Euler equation for government bonds
EAF_r = EAF_beta^(-1)*EAF_lambdai/EAF_lambdai(+1)*EAF_pic(+1);
// Euler equation for money
EAF_vi^(2)*EAF_gammavider = 1-EAF_beta*EAF_lambdai(+1)/(EAF_lambdai*EAF_pic(+1));
// Consumption-based velocity
EAF_vi = EAF_ci/EAF_mi;
// Transaction cost
EAF_gammavi = EAF_gammav1*EAF_vi+EAF_gammav2/EAF_vi-2*(EAF_gammav1*EAF_gammav2)^(1/2);
// Derivative of transaction cost
EAF_gammavider = EAF_gammav1-EAF_gammav2*EAF_vi^(-2);
EAF_delta = EAF_ii/EAF_ki;
EAF_gammai = 0;
EAF_gammaider = 0;
EAF_gammau = 0;
EAF_gammauder = ((EAF_beta^(-1)-1+EAF_delta)*EAF_qbar-EAF_delta*EAF_taukbar*EAF_pibar)/((1-EAF_taukbar)*EAF_pibar);
EAF_u = 1;
EAF_pi = EAF_q;
// Auxiliary equation for Tobin's Q in steady state
EAF_qbar = EAF_q;
// Rate of return on capital
EAF_q = EAF_beta*((1-EAF_tauk)*EAF_rk+(EAF_tauk*EAF_delta)*EAF_pi+(1-EAF_delta)*EAF_q);
// Optimal wage contract (FOC)
EAF_witilde^(1+EAF_etai*EAF_zeta) = EAF_etai/(EAF_etai-1)*EAF_fi/EAF_gi+EAF_wcst;
// Definition of fi
EAF_fi = EAF_wi^(EAF_etai*(1+EAF_zeta))*EAF_ndi^(1+EAF_zeta)+EAF_xii*EAF_beta*(EAF_pic(+1)/(EAF_pic^EAF_chii*EAF_pi4target^(1/4*(1-EAF_chii))))^(EAF_etai*(1+EAF_zeta))*EAF_fi(+1);
// Definition of gi
EAF_gi = EAF_lambdai*(1-EAF_taun-EAF_tauwh)*EAF_wi^EAF_etai*EAF_ndi+EAF_xii*EAF_beta*(EAF_pic(+1)/(EAF_pic^EAF_chii*EAF_pi4target^(1/4*(1-EAF_chii))))^(EAF_etai-1)*EAF_gi(+1);
// Aggregate wage rate
EAF_wi^(1-EAF_etai) = (1-EAF_xii)*EAF_witilde^(1-EAF_etai)+EAF_xii*EAF_wi(-1)^(1-EAF_etai)*(EAF_pic(-1)^EAF_chii*EAF_pi4target^(1/4*(1-EAF_chii))/EAF_pic)^(1-EAF_etai);
//-------------
// Household J
//-------------
// Utility
EAF_utilj = 
EAF_zcon*log(EAF_cj-EAF_kappa*EAF_cj(-1))-1/(1+EAF_zeta)*EAF_nj^(1+EAF_zeta)+EAF_beta*EAF_utilj(+1)
;
// Marginal utility of consumption
EAF_lambdaj*(1+EAF_tauc+EAF_gammavj+EAF_vj*EAF_gammavjder) = EAF_zcon*(EAF_cj-EAF_kappa*EAF_cj(-1))^(-EAF_sigma);
// Budget constraint
(1+EAF_tauc+EAF_gammavj)*EAF_cj+EAF_mj = (1-EAF_taun-EAF_tauwh)*EAF_wj*EAF_nj+EAF_trj-EAF_tj+EAF_mj(-1)*EAF_pic^(-1);
// Euler equation for money
EAF_vj^(2)*EAF_gammavjder = 1-EAF_beta*EAF_lambdaj(+1)/(EAF_lambdaj*EAF_pic(+1));
// Consumption-based velocity
EAF_vj = EAF_cj/EAF_mj;
// Transaction technology
EAF_gammavj = EAF_gammav1*EAF_vj+EAF_gammav2/EAF_vj-2*(EAF_gammav1*EAF_gammav2)^(1/2);
// Derivative of transaction technology
EAF_gammavjder = EAF_gammav1-EAF_gammav2*EAF_vj^(-2);
// Optimal wage contract (FOC)
EAF_wjtilde^(1+EAF_etaj*EAF_zeta) = EAF_etaj/(EAF_etaj-1)*EAF_fj/EAF_gj+EAF_wcst;
// Definition of fj
EAF_fj = EAF_wj^(EAF_etaj*(1+EAF_zeta))*EAF_ndj^(1+EAF_zeta)+EAF_xij*EAF_beta*(EAF_pic(+1)/(EAF_pic^EAF_chij*EAF_pi4target^(1/4*(1-EAF_chij))))^(EAF_etaj*(1+EAF_zeta))*EAF_fj(+1);
// Definition of gj
EAF_gj = EAF_lambdaj*(1-EAF_taun-EAF_tauwh)*EAF_wj^EAF_etaj*EAF_ndj+EAF_xij*EAF_beta*(EAF_pic(+1)/(EAF_pic^EAF_chij*EAF_pi4target^(1/4*(1-EAF_chij))))^(EAF_etaj-1)*EAF_gj(+1);
// Aggregate wage rate
EAF_wj^(1-EAF_etaj) = (1-EAF_xij)*EAF_wjtilde^(1-EAF_etaj)+EAF_xij*EAF_wj(-1)^(1-EAF_etaj)*(EAF_pic(-1)^EAF_chij*EAF_pi4target^(1/4*(1-EAF_chij))/EAF_pic)^(1-EAF_etaj);
//-------------
//-------------
// Firms
//-------------
//-------------
//-------------
// Intermediate-good firms
//-------------
// Production function tradable
EAF_yst = EAF_zt*EAF_kdt^EAF_alphat*EAF_ndt^(1-EAF_alphat)-EAF_psitbar;
// Production function nontradable
EAF_ysn = EAF_zn*EAF_kdn^EAF_alphan*EAF_ndn^(1-EAF_alphan)-EAF_psinbar;
// Real marginal cost tradable
EAF_mct = 1/(EAF_zt*(EAF_alphat)^(EAF_alphat)*(1-EAF_alphat)^(1-EAF_alphat))*EAF_rk^(EAF_alphat)*((1+EAF_tauwf)*EAF_w)^(1-EAF_alphat);
// Real marginal cost nontradable
EAF_mcn = 1/(EAF_zn*(EAF_alphan)^(EAF_alphan)*(1-EAF_alphan)^(1-EAF_alphan))*EAF_rk^(EAF_alphan)*((1+EAF_tauwf)*EAF_w)^(1-EAF_alphan);
// Wage Inflation (qoq)
EAF_piw = EAF_w/EAF_w(-1)*EAF_pic;
// Wage Inflation (yoy)
EAF_piw4 = EAF_pic4;
// Auxiliary equation for steady-state fixed cost
EAF_psitbar = EAF_psit*EAF_ytbar;
// Auxiliary equation for steady-state fixed cost
EAF_psinbar = EAF_psin*EAF_ynbar;
// Capital input (FOC)
EAF_rk = EAF_alphat*(EAF_yst+EAF_psitbar)/EAF_kdt*EAF_mct;
// Capital input (FOC)
EAF_rk = EAF_alphan*(EAF_ysn+EAF_psinbar)/EAF_kdn*EAF_mcn;
// Total capital demand
EAF_kd = EAF_kdt+EAF_kdn;
// Demand for labour services by household I
EAF_ndi = 
(1-EAF_omega)*(EAF_wi/EAF_w)^(-EAF_eta)*EAF_nd
;
// Demand for labour services by household J
EAF_ndj = 
EAF_omega*(EAF_wj/EAF_w)^(-EAF_eta)*EAF_nd
;
// Aggregate labour demand
EAF_nd^(1-1/EAF_eta) = 
(1-EAF_omega)^(1/EAF_eta)*EAF_ndi^(1-1/EAF_eta)+EAF_omega^(1/EAF_eta)*EAF_ndj^(1-1/EAF_eta)
;
// Total demand 
EAF_nd = EAF_ndt+EAF_ndn;
// Aggregate dividends
EAF_d = EAF_py*EAF_y-EAF_rk*EAF_kd-(1+EAF_tauwf)*EAF_w*EAF_nd;
// Non-tradable sector dividends
EAF_dn = EAF_pnt*EAF_ysn-EAF_rk*EAF_kdn-(1+EAF_tauwf)*EAF_w*EAF_ndn;
// Tradable sector dividends
EAF_dt = EAF_pht*EAF_ht
+EAF_pex*EAF_ex
-EAF_rk*EAF_kdt-(1+EAF_tauwf)*EAF_w*EAF_ndt;
// Optimal price contract set in domestic markets (FOC)
EAF_phttilde/EAF_pht = EAF_thetat/(EAF_thetat-1)*EAF_fh/EAF_gh;
// Definition of fh
EAF_fh = EAF_mct*EAF_ht+EAF_xih*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_piht(+1)/(EAF_piht^EAF_chih*EAF_pi4target^(1/4*(1-EAF_chih))))^EAF_thetat*EAF_fh(+1);
// Definition of gh
EAF_gh = EAF_pht*EAF_ht+EAF_xih*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_piht(+1)/(EAF_piht^EAF_chih*EAF_pi4target^(1/4*(1-EAF_chih))))^(EAF_thetat-1)*EAF_gh(+1);
// Aggregate intermediate-good price dynamics
EAF_pht^(1-EAF_thetat) = (1-EAF_xih)*EAF_phttilde^(1-EAF_thetat)+EAF_xih*(EAF_pht(-1)/EAF_pic)^(1-EAF_thetat)*(EAF_piht(-1)^EAF_chih*EAF_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation
EAF_piht = EAF_pht/EAF_pht(-1)*EAF_pic;
// Optimal price contract set in domestic markets (FOC)
EAF_pnttilde/EAF_pnt = EAF_thetan/(EAF_thetan-1)*EAF_fn/EAF_gn;
// Definition of fn
EAF_fn = EAF_mcn*EAF_nt+EAF_xin*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_pint(+1)/(EAF_pint^EAF_chin*EAF_pi4target^(1/4*(1-EAF_chin))))^EAF_thetan*EAF_fn(+1);
// Definition of gn
EAF_gn = EAF_pnt*EAF_nt+EAF_xin*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_pint(+1)/(EAF_pint^EAF_chin*EAF_pi4target^(1/4*(1-EAF_chin))))^(EAF_thetan-1)*EAF_gn(+1);
// Aggregate intermediate-good price dynamics
EAF_pnt^(1-EAF_thetan) = (1-EAF_xin)*EAF_pnttilde^(1-EAF_thetan)+EAF_xin*(EAF_pnt(-1)/EAF_pic)^(1-EAF_thetan)*(EAF_pint(-1)^EAF_chin*EAF_pi4target^(1/4*(1-EAF_chin)))^(1-EAF_thetan);
// Intermediate-good price inflation
EAF_pint = EAF_pnt/EAF_pnt(-1)*EAF_pic;
// Optimal price contract set in domestic markets (FOC)
EAF_pextilde/EAF_pex = EAF_thetat/(EAF_thetat-1)*EAF_fx/EAF_gx;
// Definition of fh
EAF_fx = EAF_mct*EAF_ex+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_piex(+1)/(EAF_piex^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAF_fx(+1);
// Definition of gh
EAF_gx = EAF_pex*EAF_ex+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAF_piex(+1)/(EAF_piex^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAF_gx(+1);
// Aggregate intermediate-good price dynamics
EAF_pex^(1-EAF_thetat) = (1-EAF_xix)*EAF_pextilde^(1-EAF_thetat)+EAF_xix*(EAF_pex(-1)/EAF_pic)^(1-EAF_thetat)*(EAF_piex(-1)^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix)))^(1-EAF_thetat);
// Intermediate-good price inflation
EAF_piex = EAF_pex/EAF_pex(-1)*EAF_pic;
//---------------
// import pricing
//---------------
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = EAA_pimtilde
// EAAEAF_pimtilde/EAAEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFEAA_fx/EAFEAA_gx;
// Definition of fx
// EAFEAA_fx = EAA_size/EAF_size*EAAEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAAEAF_piim(+1)/(EAAEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFEAA_fx(+1);
// Definition of gx   
// EAFEAA_gx = EAFEAA_rer*EAAEAF_pim*EAA_size/EAF_size*EAAEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAAEAF_piim(+1)/(EAAEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFEAA_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = EAA_pim
// EAAEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*EAAEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(EAAEAF_pim(-1)/EAA_pic)^(1-EAF_thetat)*(EAAEAF_piim(-1)^EAF_chix*EAA_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = EAA_piim
// EAAEAF_piim = EAAEAF_pim/EAAEAF_pim(-1)*EAA_pic;
// Bilateral real exchange rate
EAFEAA_rer = EAF_rer/EAA_rer;
// Auxiliary equation for steady-state output
EAFEAA_rerbar = EAFEAA_rer;
//Terms of Trade
EAFEAA_tot = EAA_pex*EAFEAA_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = EAB_pimtilde
// EABEAF_pimtilde/EABEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFEAB_fx/EAFEAB_gx;
// Definition of fx
// EAFEAB_fx = EAB_size/EAF_size*EABEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EABEAF_piim(+1)/(EABEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFEAB_fx(+1);
// Definition of gx   
// EAFEAB_gx = EAFEAB_rer*EABEAF_pim*EAB_size/EAF_size*EABEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EABEAF_piim(+1)/(EABEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFEAB_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = EAB_pim
// EABEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*EABEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(EABEAF_pim(-1)/EAB_pic)^(1-EAF_thetat)*(EABEAF_piim(-1)^EAF_chix*EAB_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = EAB_piim
// EABEAF_piim = EABEAF_pim/EABEAF_pim(-1)*EAB_pic;
// Bilateral real exchange rate
EAFEAB_rer = EAF_rer/EAB_rer;
// Auxiliary equation for steady-state output
EAFEAB_rerbar = EAFEAB_rer;
//Terms of Trade
EAFEAB_tot = EAB_pex*EAFEAB_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = EAC_pimtilde
// EACEAF_pimtilde/EACEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFEAC_fx/EAFEAC_gx;
// Definition of fx
// EAFEAC_fx = EAC_size/EAF_size*EACEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EACEAF_piim(+1)/(EACEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFEAC_fx(+1);
// Definition of gx   
// EAFEAC_gx = EAFEAC_rer*EACEAF_pim*EAC_size/EAF_size*EACEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EACEAF_piim(+1)/(EACEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFEAC_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = EAC_pim
// EACEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*EACEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(EACEAF_pim(-1)/EAC_pic)^(1-EAF_thetat)*(EACEAF_piim(-1)^EAF_chix*EAC_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = EAC_piim
// EACEAF_piim = EACEAF_pim/EACEAF_pim(-1)*EAC_pic;
// Bilateral real exchange rate
EAFEAC_rer = EAF_rer/EAC_rer;
// Auxiliary equation for steady-state output
EAFEAC_rerbar = EAFEAC_rer;
//Terms of Trade
EAFEAC_tot = EAC_pex*EAFEAC_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = EAD_pimtilde
// EADEAF_pimtilde/EADEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFEAD_fx/EAFEAD_gx;
// Definition of fx
// EAFEAD_fx = EAD_size/EAF_size*EADEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EADEAF_piim(+1)/(EADEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFEAD_fx(+1);
// Definition of gx   
// EAFEAD_gx = EAFEAD_rer*EADEAF_pim*EAD_size/EAF_size*EADEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EADEAF_piim(+1)/(EADEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFEAD_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = EAD_pim
// EADEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*EADEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(EADEAF_pim(-1)/EAD_pic)^(1-EAF_thetat)*(EADEAF_piim(-1)^EAF_chix*EAD_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = EAD_piim
// EADEAF_piim = EADEAF_pim/EADEAF_pim(-1)*EAD_pic;
// Bilateral real exchange rate
EAFEAD_rer = EAF_rer/EAD_rer;
// Auxiliary equation for steady-state output
EAFEAD_rerbar = EAFEAD_rer;
//Terms of Trade
EAFEAD_tot = EAD_pex*EAFEAD_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = EAE_pimtilde
// EAEEAF_pimtilde/EAEEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFEAE_fx/EAFEAE_gx;
// Definition of fx
// EAFEAE_fx = EAE_size/EAF_size*EAEEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAEEAF_piim(+1)/(EAEEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFEAE_fx(+1);
// Definition of gx   
// EAFEAE_gx = EAFEAE_rer*EAEEAF_pim*EAE_size/EAF_size*EAEEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(EAEEAF_piim(+1)/(EAEEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = EAE_pim
// EAEEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*EAEEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(EAEEAF_pim(-1)/EAE_pic)^(1-EAF_thetat)*(EAEEAF_piim(-1)^EAF_chix*EAE_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = EAE_piim
// EAEEAF_piim = EAEEAF_pim/EAEEAF_pim(-1)*EAE_pic;
// Bilateral real exchange rate
EAFEAE_rer = EAF_rer/EAE_rer;
// Auxiliary equation for steady-state output
EAFEAE_rerbar = EAFEAE_rer;
//Terms of Trade
EAFEAE_tot = EAE_pex*EAFEAE_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = RW_pimtilde
// RWEAF_pimtilde/RWEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFRW_fx/EAFRW_gx;
// Definition of fx
// EAFRW_fx = RW_size/EAF_size*RWEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(RWEAF_piim(+1)/(RWEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFRW_fx(+1);
// Definition of gx   
// EAFRW_gx = EAFRW_rer*RWEAF_pim*RW_size/EAF_size*RWEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(RWEAF_piim(+1)/(RWEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFRW_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = RW_pim
// RWEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*RWEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(RWEAF_pim(-1)/RW_pic)^(1-EAF_thetat)*(RWEAF_piim(-1)^EAF_chix*RW_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = RW_piim
// RWEAF_piim = RWEAF_pim/RWEAF_pim(-1)*RW_pic;
// Bilateral real exchange rate
EAFRW_rer = EAF_rer/RW_rer;
// Auxiliary equation for steady-state output
EAFRW_rerbar = EAFRW_rer;
//Terms of Trade
EAFRW_tot = RW_pex*EAFRW_rer/EAF_pex;
// Optimal price contract set in foreign markets (FOC), using EAF_pxtilde = US_pimtilde
// USEAF_pimtilde/USEAF_pim = EAF_cpim*EAF_thetat/(EAF_thetat-1)*EAFUS_fx/EAFUS_gx;
// Definition of fx
// EAFUS_fx = US_size/EAF_size*USEAF_im*EAF_mct+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(USEAF_piim(+1)/(USEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAFUS_fx(+1);
// Definition of gx   
// EAFUS_gx = EAFUS_rer*USEAF_pim*US_size/EAF_size*USEAF_im+EAF_xix*EAF_beta*EAF_lambdai(+1)/EAF_lambdai*(USEAF_piim(+1)/(USEAF_piim^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^(EAF_thetat-1)*EAFUS_gx(+1);
// Aggregate intermediate-good price dynamics, using EAF_px = US_pim
// USEAF_pim^(1-EAF_thetat) = (1-EAF_xix)*USEAF_pimtilde^(1-EAF_thetat)+EAF_xix*(USEAF_pim(-1)/US_pic)^(1-EAF_thetat)*(USEAF_piim(-1)^EAF_chix*US_pi4target^(1/4*(1-EAF_chih)))^(1-EAF_thetat);
// Intermediate-good price inflation, using EAF_pix = US_piim
// USEAF_piim = USEAF_pim/USEAF_pim(-1)*US_pic;
// Bilateral real exchange rate
EAFUS_rer = EAF_rer/US_rer;
// Auxiliary equation for steady-state output
EAFUS_rerbar = EAFUS_rer;
//Terms of Trade
EAFUS_tot = US_pex*EAFUS_rer/EAF_pex;
// Total imports 
EAF_im = 
+EAF_imc
+EAF_imi
+EAF_imcg
+EAF_imig
;
// Total import deflator
EAF_im*EAF_pim  = 
+EAF_pimc*EAF_imc
+EAF_pimi*EAF_imi
+EAF_pimcg*EAF_imcg
+EAF_pimig*EAF_imig
;
// Effective real exchange rate: double weighting (imports)
EAFEAA_weightim = EAFEAA_rer*EAA_pex*EAFEAA_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFEAA_weightex = EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFEAA_rer*EAA_py*EAA_y/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)+
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*EABEAA_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*EACEAA_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*EADEAA_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*EAEEAA_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*RWEAA_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFEAA_rer*EAA_pex*USEAA_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFEAA_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAA_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAA_weightex;
// Effective real exchange rate: double weighting (imports)
EAFEAB_weightim = EAFEAB_rer*EAB_pex*EAFEAB_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFEAB_weightex = EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFEAB_rer*EAB_py*EAB_y/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*EAAEAB_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*EACEAB_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*EADEAB_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*EAEEAB_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*RWEAB_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFEAB_rer*EAB_pex*USEAB_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFEAB_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAB_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAB_weightex;
// Effective real exchange rate: double weighting (imports)
EAFEAC_weightim = EAFEAC_rer*EAC_pex*EAFEAC_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFEAC_weightex = EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFEAC_rer*EAC_py*EAC_y/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*EAAEAC_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*EABEAC_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*EADEAC_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*EAEEAC_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*RWEAC_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFEAC_rer*EAC_pex*USEAC_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFEAC_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAC_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAC_weightex;
// Effective real exchange rate: double weighting (imports)
EAFEAD_weightim = EAFEAD_rer*EAD_pex*EAFEAD_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFEAD_weightex = EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFEAD_rer*EAD_py*EAD_y/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*EAAEAD_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*EABEAD_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*EACEAD_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*EAEEAD_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*RWEAD_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFEAD_rer*EAD_pex*USEAD_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFEAD_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAD_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAD_weightex;
// Effective real exchange rate: double weighting (imports)
EAFEAE_weightim = EAFEAE_rer*EAE_pex*EAFEAE_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFEAE_weightex = EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFEAE_rer*EAE_py*EAE_y/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*EAAEAE_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*EABEAE_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*EACEAE_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*EADEAE_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*RWEAE_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFEAE_rer*EAE_pex*USEAE_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFEAE_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAE_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFEAE_weightex;
// Effective real exchange rate: double weighting (imports)
EAFRW_weightim = EAFRW_rer*RW_pex*EAFRW_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFRW_weightex = RW_size/EAF_size*RWEAF_im/EAF_ex*EAFRW_rer*RW_py*RW_y/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFRW_rer*RW_pex*EAARW_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFRW_rer*RW_pex*EABRW_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFRW_rer*RW_pex*EACRW_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFRW_rer*RW_pex*EADRW_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFRW_rer*RW_pex*EAERW_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+US_size/EAF_size*USEAF_im/EAF_ex*EAFRW_rer*RW_pex*USRW_im/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFRW_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFRW_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFRW_weightex;
// Effective real exchange rate: double weighting (imports)
EAFUS_weightim = EAFUS_rer*US_pex*EAFUS_im/(EAF_pim*EAF_im);
// Effective real exchange rate: double weighting (exports)
EAFUS_weightex = US_size/EAF_size*USEAF_im/EAF_ex*EAFUS_rer*US_py*US_y/(EAFUS_rer*US_py*US_y
+EAFEAA_rer*EAA_pex*USEAA_im
+EAFEAB_rer*EAB_pex*USEAB_im
+EAFEAC_rer*EAC_pex*USEAC_im
+EAFEAD_rer*EAD_pex*USEAD_im
+EAFEAE_rer*EAE_pex*USEAE_im
+EAFRW_rer*RW_pex*USRW_im
)+
+EAA_size/EAF_size*EAAEAF_im/EAF_ex*EAFUS_rer*US_pex*EAAUS_im/(EAFEAA_rer*EAA_py*EAA_y
+EAFEAB_rer*EAB_pex*EAAEAB_im
+EAFEAC_rer*EAC_pex*EAAEAC_im
+EAFEAD_rer*EAD_pex*EAAEAD_im
+EAFEAE_rer*EAE_pex*EAAEAE_im
+EAFRW_rer*RW_pex*EAARW_im
+EAFUS_rer*US_pex*EAAUS_im
)
+EAB_size/EAF_size*EABEAF_im/EAF_ex*EAFUS_rer*US_pex*EABUS_im/(EAFEAB_rer*EAB_py*EAB_y
+EAFEAA_rer*EAA_pex*EABEAA_im
+EAFEAC_rer*EAC_pex*EABEAC_im
+EAFEAD_rer*EAD_pex*EABEAD_im
+EAFEAE_rer*EAE_pex*EABEAE_im
+EAFRW_rer*RW_pex*EABRW_im
+EAFUS_rer*US_pex*EABUS_im
)
+EAC_size/EAF_size*EACEAF_im/EAF_ex*EAFUS_rer*US_pex*EACUS_im/(EAFEAC_rer*EAC_py*EAC_y
+EAFEAA_rer*EAA_pex*EACEAA_im
+EAFEAB_rer*EAB_pex*EACEAB_im
+EAFEAD_rer*EAD_pex*EACEAD_im
+EAFEAE_rer*EAE_pex*EACEAE_im
+EAFRW_rer*RW_pex*EACRW_im
+EAFUS_rer*US_pex*EACUS_im
)
+EAD_size/EAF_size*EADEAF_im/EAF_ex*EAFUS_rer*US_pex*EADUS_im/(EAFEAD_rer*EAD_py*EAD_y
+EAFEAA_rer*EAA_pex*EADEAA_im
+EAFEAB_rer*EAB_pex*EADEAB_im
+EAFEAC_rer*EAC_pex*EADEAC_im
+EAFEAE_rer*EAE_pex*EADEAE_im
+EAFRW_rer*RW_pex*EADRW_im
+EAFUS_rer*US_pex*EADUS_im
)
+EAE_size/EAF_size*EAEEAF_im/EAF_ex*EAFUS_rer*US_pex*EAEUS_im/(EAFEAE_rer*EAE_py*EAE_y
+EAFEAA_rer*EAA_pex*EAEEAA_im
+EAFEAB_rer*EAB_pex*EAEEAB_im
+EAFEAC_rer*EAC_pex*EAEEAC_im
+EAFEAD_rer*EAD_pex*EAEEAD_im
+EAFRW_rer*RW_pex*EAERW_im
+EAFUS_rer*US_pex*EAEUS_im
)
+RW_size/EAF_size*RWEAF_im/EAF_ex*EAFUS_rer*US_pex*RWUS_im/(EAFRW_rer*RW_py*RW_y
+EAFEAA_rer*EAA_pex*RWEAA_im
+EAFEAB_rer*EAB_pex*RWEAB_im
+EAFEAC_rer*EAC_pex*RWEAC_im
+EAFEAD_rer*EAD_pex*RWEAD_im
+EAFEAE_rer*EAE_pex*RWEAE_im
+EAFUS_rer*US_pex*RWUS_im
)
;
// Effective real exchange rate: double weighting (overall)
EAFUS_weight = EAF_pim*EAF_im/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFUS_weightim+EAF_pex*EAF_ex/(EAF_pim*EAF_im+EAF_pex*EAF_ex)*EAFUS_weightex;
// Effective real exchange rate
EAF_reer = 1
*EAFEAA_rer^EAFEAA_weight
*EAFEAB_rer^EAFEAB_weight
*EAFEAC_rer^EAFEAC_weight
*EAFEAD_rer^EAFEAD_weight
*EAFEAE_rer^EAFEAE_weight
*EAFRW_rer^EAFRW_weight
*EAFUS_rer^EAFUS_weight
;
// Effective terms of trade
EAF_etot = 1
*EAFEAA_tot^EAFEAA_weight
*EAFEAB_tot^EAFEAB_weight
*EAFEAC_tot^EAFEAC_weight
*EAFEAD_tot^EAFEAD_weight
*EAFEAE_tot^EAFEAE_weight
*EAFRW_tot^EAFRW_weight
*EAFUS_tot^EAFUS_weight
;
//-----------------
// Final-good firms
//-----------------
// Private consumption good (import)
EAF_imc^((EAF_mumc-1)/EAF_mumc) =
+EAFEAA_numc ^(1/EAF_mumc)*EAFEAA_imc^(1-1/EAF_mumc)
+EAFEAB_numc ^(1/EAF_mumc)*EAFEAB_imc^(1-1/EAF_mumc)
+EAFEAC_numc ^(1/EAF_mumc)*EAFEAC_imc^(1-1/EAF_mumc)
+EAFEAE_numc ^(1/EAF_mumc)*EAFEAE_imc^(1-1/EAF_mumc)
+EAFRW_numc ^(1/EAF_mumc)*EAFRW_imc^(1-1/EAF_mumc)
+EAFUS_numc ^(1/EAF_mumc)*EAFUS_imc^(1-1/EAF_mumc)
+(1
-EAFEAA_numc
-EAFEAB_numc
-EAFEAC_numc
-EAFEAE_numc
-EAFRW_numc
-EAFUS_numc
)^(1/EAF_mumc)*EAFEAD_imc^(1-1/EAF_mumc);
// Demand for bilateral consumption import goods
EAFEAA_imc = EAFEAA_numc*((EAA_pex*EAFEAA_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
// Demand for bilateral consumption import goods
EAFEAB_imc = EAFEAB_numc*((EAB_pex*EAFEAB_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
// Demand for bilateral consumption import goods
EAFEAC_imc = EAFEAC_numc*((EAC_pex*EAFEAC_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
// Demand for bilateral consumption import goods
EAFEAE_imc = EAFEAE_numc*((EAE_pex*EAFEAE_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
// Demand for bilateral consumption import goods
EAFUS_imc = EAFUS_numc*((US_pex*EAFUS_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
EAFEAD_imc = (1
-EAFEAA_numc
-EAFEAB_numc
-EAFEAC_numc
-EAFEAE_numc
-EAFRW_numc
-EAFUS_numc
)*((EAD_pex*EAFEAD_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
// Price of the consumption good (import)
EAF_pimc^(1-EAF_mumc) =
+EAFEAA_numc * (EAA_pex*EAFEAA_rer)^(1-EAF_mumc)
+EAFEAB_numc * (EAB_pex*EAFEAB_rer)^(1-EAF_mumc)
+EAFEAC_numc * (EAC_pex*EAFEAC_rer)^(1-EAF_mumc)
+EAFEAE_numc * (EAE_pex*EAFEAE_rer)^(1-EAF_mumc)
+EAFRW_numc * (RW_pex*EAFRW_rer)^(1-EAF_mumc)
+EAFUS_numc * (US_pex*EAFUS_rer)^(1-EAF_mumc)
+(1
-EAFEAA_numc
-EAFEAB_numc
-EAFEAC_numc
-EAFEAE_numc
-EAFRW_numc
-EAFUS_numc
)*(EAD_pex*EAFEAD_rer)^(1-EAF_mumc);
// Private consumption good (import) inflation
EAF_piimc = EAF_pimc/EAF_pimc(-1)*EAF_pic;
// Private consumption good (import)
EAF_imi^((EAF_mumi-1)/EAF_mumi) =
+EAFEAA_numi ^(1/EAF_mumi)*EAFEAA_imi^(1-1/EAF_mumi)
+EAFEAB_numi ^(1/EAF_mumi)*EAFEAB_imi^(1-1/EAF_mumi)
+EAFEAC_numi ^(1/EAF_mumi)*EAFEAC_imi^(1-1/EAF_mumi)
+EAFEAE_numi ^(1/EAF_mumi)*EAFEAE_imi^(1-1/EAF_mumi)
+EAFRW_numi ^(1/EAF_mumi)*EAFRW_imi^(1-1/EAF_mumi)
+EAFUS_numi ^(1/EAF_mumi)*EAFUS_imi^(1-1/EAF_mumi)
+(1
-EAFEAA_numi
-EAFEAB_numi
-EAFEAC_numi
-EAFEAE_numi
-EAFRW_numi
-EAFUS_numi
)^(1/EAF_mumi)*EAFEAD_imi^(1-1/EAF_mumi);
// Demand for bilateral consumption import goods
EAFEAA_imi = EAFEAA_numi*((EAA_pex*EAFEAA_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
// Demand for bilateral consumption import goods
EAFEAB_imi = EAFEAB_numi*((EAB_pex*EAFEAB_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
// Demand for bilateral consumption import goods
EAFEAC_imi = EAFEAC_numi*((EAC_pex*EAFEAC_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
// Demand for bilateral consumption import goods
EAFEAE_imi = EAFEAE_numi*((EAE_pex*EAFEAE_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
// Demand for bilateral consumption import goods
EAFUS_imi = EAFUS_numi*((US_pex*EAFUS_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
EAFEAD_imi = (1
-EAFEAA_numi
-EAFEAB_numi
-EAFEAC_numi
-EAFEAE_numi
-EAFRW_numi
-EAFUS_numi
)*((EAD_pex*EAFEAD_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
// Price of the consumption good (import)
EAF_pimi^(1-EAF_mumi) =
+EAFEAA_numi * (EAA_pex*EAFEAA_rer)^(1-EAF_mumi)
+EAFEAB_numi * (EAB_pex*EAFEAB_rer)^(1-EAF_mumi)
+EAFEAC_numi * (EAC_pex*EAFEAC_rer)^(1-EAF_mumi)
+EAFEAE_numi * (EAE_pex*EAFEAE_rer)^(1-EAF_mumi)
+EAFRW_numi * (RW_pex*EAFRW_rer)^(1-EAF_mumi)
+EAFUS_numi * (US_pex*EAFUS_rer)^(1-EAF_mumi)
+(1
-EAFEAA_numi
-EAFEAB_numi
-EAFEAC_numi
-EAFEAE_numi
-EAFRW_numi
-EAFUS_numi
)*(EAD_pex*EAFEAD_rer)^(1-EAF_mumi);
// Private consumption good (import) inflation
EAF_piimi = EAF_pimi/EAF_pimi(-1)*EAF_pic;
// Private consumption good (import)
EAF_imcg^((EAF_mumcg-1)/EAF_mumcg) =
+EAFEAA_numcg ^(1/EAF_mumcg)*EAFEAA_imcg^(1-1/EAF_mumcg)
+EAFEAB_numcg ^(1/EAF_mumcg)*EAFEAB_imcg^(1-1/EAF_mumcg)
+EAFEAC_numcg ^(1/EAF_mumcg)*EAFEAC_imcg^(1-1/EAF_mumcg)
+EAFEAE_numcg ^(1/EAF_mumcg)*EAFEAE_imcg^(1-1/EAF_mumcg)
+EAFRW_numcg ^(1/EAF_mumcg)*EAFRW_imcg^(1-1/EAF_mumcg)
+EAFUS_numcg ^(1/EAF_mumcg)*EAFUS_imcg^(1-1/EAF_mumcg)
+(1
-EAFEAA_numcg
-EAFEAB_numcg
-EAFEAC_numcg
-EAFEAE_numcg
-EAFRW_numcg
-EAFUS_numcg
)^(1/EAF_mumcg)*EAFEAD_imcg^(1-1/EAF_mumcg);
// Demand for bilateral consumption import goods
EAFEAA_imcg = EAFEAA_numcg*((EAA_pex*EAFEAA_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
// Demand for bilateral consumption import goods
EAFEAB_imcg = EAFEAB_numcg*((EAB_pex*EAFEAB_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
// Demand for bilateral consumption import goods
EAFEAC_imcg = EAFEAC_numcg*((EAC_pex*EAFEAC_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
// Demand for bilateral consumption import goods
EAFEAE_imcg = EAFEAE_numcg*((EAE_pex*EAFEAE_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
// Demand for bilateral consumption import goods
EAFUS_imcg = EAFUS_numcg*((US_pex*EAFUS_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
EAFEAD_imcg = (1
-EAFEAA_numcg
-EAFEAB_numcg
-EAFEAC_numcg
-EAFEAE_numcg
-EAFRW_numcg
-EAFUS_numcg
)*((EAD_pex*EAFEAD_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
// Price of the consumption good (import)
EAF_pimcg^(1-EAF_mumcg) =
+EAFEAA_numcg * (EAA_pex*EAFEAA_rer)^(1-EAF_mumcg)
+EAFEAB_numcg * (EAB_pex*EAFEAB_rer)^(1-EAF_mumcg)
+EAFEAC_numcg * (EAC_pex*EAFEAC_rer)^(1-EAF_mumcg)
+EAFEAE_numcg * (EAE_pex*EAFEAE_rer)^(1-EAF_mumcg)
+EAFRW_numcg * (RW_pex*EAFRW_rer)^(1-EAF_mumcg)
+EAFUS_numcg * (US_pex*EAFUS_rer)^(1-EAF_mumcg)
+(1
-EAFEAA_numcg
-EAFEAB_numcg
-EAFEAC_numcg
-EAFEAE_numcg
-EAFRW_numcg
-EAFUS_numcg
)*(EAD_pex*EAFEAD_rer)^(1-EAF_mumcg);
// Private consumption good (import) inflation
EAF_piimcg = EAF_pimcg/EAF_pimcg(-1)*EAF_pic;
// Private consumption good (import)
EAF_imig^((EAF_mumig-1)/EAF_mumig) =
+EAFEAA_numig ^(1/EAF_mumig)*EAFEAA_imig^(1-1/EAF_mumig)
+EAFEAB_numig ^(1/EAF_mumig)*EAFEAB_imig^(1-1/EAF_mumig)
+EAFEAC_numig ^(1/EAF_mumig)*EAFEAC_imig^(1-1/EAF_mumig)
+EAFEAE_numig ^(1/EAF_mumig)*EAFEAE_imig^(1-1/EAF_mumig)
+EAFRW_numig ^(1/EAF_mumig)*EAFRW_imig^(1-1/EAF_mumig)
+EAFUS_numig ^(1/EAF_mumig)*EAFUS_imig^(1-1/EAF_mumig)
+(1
-EAFEAA_numig
-EAFEAB_numig
-EAFEAC_numig
-EAFEAE_numig
-EAFRW_numig
-EAFUS_numig
)^(1/EAF_mumig)*EAFEAD_imig^(1-1/EAF_mumig);
// Demand for bilateral consumption import goods
EAFEAA_imig = EAFEAA_numig*((EAA_pex*EAFEAA_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
// Demand for bilateral consumption import goods
EAFEAB_imig = EAFEAB_numig*((EAB_pex*EAFEAB_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
// Demand for bilateral consumption import goods
EAFEAC_imig = EAFEAC_numig*((EAC_pex*EAFEAC_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
// Demand for bilateral consumption import goods
EAFEAE_imig = EAFEAE_numig*((EAE_pex*EAFEAE_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
// Demand for bilateral consumption import goods
EAFUS_imig = EAFUS_numig*((US_pex*EAFUS_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
EAFEAD_imig = (1
-EAFEAA_numig
-EAFEAB_numig
-EAFEAC_numig
-EAFEAE_numig
-EAFRW_numig
-EAFUS_numig
)*((EAD_pex*EAFEAD_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
// Price of the consumption good (import)
EAF_pimig^(1-EAF_mumig) =
+EAFEAA_numig * (EAA_pex*EAFEAA_rer)^(1-EAF_mumig)
+EAFEAB_numig * (EAB_pex*EAFEAB_rer)^(1-EAF_mumig)
+EAFEAC_numig * (EAC_pex*EAFEAC_rer)^(1-EAF_mumig)
+EAFEAE_numig * (EAE_pex*EAFEAE_rer)^(1-EAF_mumig)
+EAFRW_numig * (RW_pex*EAFRW_rer)^(1-EAF_mumig)
+EAFUS_numig * (US_pex*EAFUS_rer)^(1-EAF_mumig)
+(1
-EAFEAA_numig
-EAFEAB_numig
-EAFEAC_numig
-EAFEAE_numig
-EAFRW_numig
-EAFUS_numig
)*(EAD_pex*EAFEAD_rer)^(1-EAF_mumig);
// Private consumption good (import) inflation
EAF_piimig = EAF_pimig/EAF_pimig(-1)*EAF_pic;
// Private consumption good (import) inflation
EAF_piimc4 = EAF_pimc/EAF_pimc(-4)*EAF_pic4;
// Private consumption good (import) inflation
EAF_piex4 = EAF_pex/EAF_pex(-4)*EAF_pic4;
// Wedge between aggregate demand and production, using EAF_x = RW_size/EAF_size*RW_im
EAF_yst = EAF_sh*EAF_ht+EAF_sx*EAF_ex;
// Aggregate demand for bilateral imported intermediate goods
EAFEAA_im = 
+EAFEAA_imc
+EAFEAA_imi
+EAFEAA_imcg
+EAFEAA_imig
;
EAFEAB_im = 
+EAFEAB_imc
+EAFEAB_imi
+EAFEAB_imcg
+EAFEAB_imig
;
EAFEAC_im = 
+EAFEAC_imc
+EAFEAC_imi
+EAFEAC_imcg
+EAFEAC_imig
;
EAFEAD_im = 
+EAFEAD_imc
+EAFEAD_imi
+EAFEAD_imcg
+EAFEAD_imig
;
EAFEAE_im = 
+EAFEAE_imc
+EAFEAE_imi
+EAFEAE_imcg
+EAFEAE_imig
;
EAFRW_im = 
+EAFRW_imc
+EAFRW_imi
+EAFRW_imcg
+EAFRW_imig
;
EAFUS_im = 
+EAFUS_imc
+EAFUS_imi
+EAFUS_imcg
+EAFUS_imig
;
// Private consumption good firm
// Private consumption good (tradable)
EAF_ttc^((EAF_mutc-1)/EAF_mutc) = (EAF_nutc)^(1/EAF_mutc)*EAF_htc^(1-1/EAF_mutc)+(1-EAF_nutc)^(1/EAF_mutc)*EAF_imc^(1-1/EAF_mutc);
// Private consumption good  (total)
EAF_qc^((EAF_muc-1)/EAF_muc) = (EAF_nuc)^(1/EAF_muc)*EAF_ttc^(1-1/EAF_muc)+(1-EAF_nuc)^(1/EAF_muc)*EAF_ntc^(1-1/EAF_muc);
// Demand for domestic intermediate goods - NONTRADABLE
EAF_ntc = (1-EAF_nuc)*(EAF_pnt)^(-EAF_muc)*EAF_qc;
// Price of the consumption good (tradable)  
EAF_pttc^(1-EAF_mutc) = (EAF_nutc)*EAF_pht^(1-EAF_mutc)+(1-EAF_nutc)*EAF_pimc^(1-EAF_mutc);
// Price of the consumption good 
1^(1-EAF_muc) = (EAF_nuc)*EAF_pttc^(1-EAF_muc)+(1-EAF_nuc)*EAF_pnt^(1-EAF_muc);
// Demand for domestic intermediate goods
EAF_htc = EAF_nutc*(EAF_pht/EAF_pttc)^(-EAF_mutc)*EAF_ttc;
EAFEAA_gammaimc = 0;
EAFEAA_gammaimcdag = 1;
EAFEAB_gammaimc = 0;
EAFEAB_gammaimcdag = 1;
EAFEAC_gammaimc = 0;
EAFEAC_gammaimcdag = 1;
EAFEAD_gammaimc = 0;
EAFEAD_gammaimcdag = 1;
EAFEAE_gammaimc = 0;
EAFEAE_gammaimcdag = 1;
EAFRW_gammaimc = 0;
EAFRW_gammaimcdag = 1;
EAFUS_gammaimc = 0;
EAFUS_gammaimcdag = 1;
// Private consumption good (tradable)
EAF_tti^((EAF_muti-1)/EAF_muti) = (EAF_nuti)^(1/EAF_muti)*EAF_hti^(1-1/EAF_muti)+(1-EAF_nuti)^(1/EAF_muti)*EAF_imi^(1-1/EAF_muti);
// Private consumption good  (total)
EAF_qi^((EAF_mui-1)/EAF_mui) = (EAF_nui)^(1/EAF_mui)*EAF_tti^(1-1/EAF_mui)+(1-EAF_nui)^(1/EAF_mui)*EAF_nti^(1-1/EAF_mui);
// Demand for domestic intermediate goods - NONTRADABLE
EAF_nti = (1-EAF_nui)*(EAF_pnt/EAF_pi)^(-EAF_mui)*EAF_qi;
// Price of the consumption good (tradable)  
EAF_ptti^(1-EAF_muti) = (EAF_nuti)*EAF_pht^(1-EAF_muti)+(1-EAF_nuti)*EAF_pimi^(1-EAF_muti);
// Price of the consumption good 
EAF_pi^(1-EAF_mui) = (EAF_nui)*EAF_ptti^(1-EAF_mui)+(1-EAF_nui)*EAF_pnt^(1-EAF_mui);
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
EAF_pibar = EAF_pi;
// Demand for domestic intermediate goods
EAF_hti = EAF_nuti*(EAF_pht/EAF_ptti)^(-EAF_muti)*EAF_tti;
EAFEAA_gammaimi = 0;
EAFEAA_gammaimidag = 1;
EAFEAB_gammaimi = 0;
EAFEAB_gammaimidag = 1;
EAFEAC_gammaimi = 0;
EAFEAC_gammaimidag = 1;
EAFEAD_gammaimi = 0;
EAFEAD_gammaimidag = 1;
EAFEAE_gammaimi = 0;
EAFEAE_gammaimidag = 1;
EAFRW_gammaimi = 0;
EAFRW_gammaimidag = 1;
EAFUS_gammaimi = 0;
EAFUS_gammaimidag = 1;
// Private consumption good (tradable)
EAF_ttcg^((EAF_mutcg-1)/EAF_mutcg) = (EAF_nutcg)^(1/EAF_mutcg)*EAF_htcg^(1-1/EAF_mutcg)+(1-EAF_nutcg)^(1/EAF_mutcg)*EAF_imcg^(1-1/EAF_mutcg);
// Private consumption good  (total)
EAF_qcg^((EAF_mucg-1)/EAF_mucg) = (EAF_nucg)^(1/EAF_mucg)*EAF_ttcg^(1-1/EAF_mucg)+(1-EAF_nucg)^(1/EAF_mucg)*EAF_ntcg^(1-1/EAF_mucg);
// Demand for domestic intermediate goods - NONTRADABLE
EAF_ntcg = (1-EAF_nucg)*(EAF_pnt/EAF_pcg)^(-EAF_mucg)*EAF_qcg;
// Price of the consumption good (tradable)  
EAF_pttcg^(1-EAF_mutcg) = (EAF_nutcg)*EAF_pht^(1-EAF_mutcg)+(1-EAF_nutcg)*EAF_pimcg^(1-EAF_mutcg);
// Price of the consumption good 
EAF_pcg^(1-EAF_mucg) = (EAF_nucg)*EAF_pttcg^(1-EAF_mucg)+(1-EAF_nucg)*EAF_pnt^(1-EAF_mucg);
// Demand for domestic intermediate goods
EAF_htcg = EAF_nutcg*(EAF_pht/EAF_pttcg)^(-EAF_mutcg)*EAF_ttcg;
EAFEAA_gammaimcg = 0;
EAFEAA_gammaimcgdag = 1;
EAFEAB_gammaimcg = 0;
EAFEAB_gammaimcgdag = 1;
EAFEAC_gammaimcg = 0;
EAFEAC_gammaimcgdag = 1;
EAFEAD_gammaimcg = 0;
EAFEAD_gammaimcgdag = 1;
EAFEAE_gammaimcg = 0;
EAFEAE_gammaimcgdag = 1;
EAFRW_gammaimcg = 0;
EAFRW_gammaimcgdag = 1;
EAFUS_gammaimcg = 0;
EAFUS_gammaimcgdag = 1;
// Private consumption good (tradable)
EAF_ttig^((EAF_mutig-1)/EAF_mutig) = (EAF_nutig)^(1/EAF_mutig)*EAF_htig^(1-1/EAF_mutig)+(1-EAF_nutig)^(1/EAF_mutig)*EAF_imig^(1-1/EAF_mutig);
// Private consumption good  (total)
EAF_qig^((EAF_muig-1)/EAF_muig) = (EAF_nuig)^(1/EAF_muig)*EAF_ttig^(1-1/EAF_muig)+(1-EAF_nuig)^(1/EAF_muig)*EAF_ntig^(1-1/EAF_muig);
// Demand for domestic intermediate goods - NONTRADABLE
EAF_ntig = (1-EAF_nuig)*(EAF_pnt/EAF_pig)^(-EAF_muig)*EAF_qig;
// Price of the consumption good (tradable)  
EAF_pttig^(1-EAF_mutig) = (EAF_nutig)*EAF_pht^(1-EAF_mutig)+(1-EAF_nutig)*EAF_pimig^(1-EAF_mutig);
// Price of the consumption good 
EAF_pig^(1-EAF_muig) = (EAF_nuig)*EAF_pttig^(1-EAF_muig)+(1-EAF_nuig)*EAF_pnt^(1-EAF_muig);
// Demand for domestic intermediate goods
EAF_htig = EAF_nutig*(EAF_pht/EAF_pttig)^(-EAF_mutig)*EAF_ttig;
EAFEAA_gammaimig = 0;
EAFEAA_gammaimigdag = 1;
EAFEAB_gammaimig = 0;
EAFEAB_gammaimigdag = 1;
EAFEAC_gammaimig = 0;
EAFEAC_gammaimigdag = 1;
EAFEAD_gammaimig = 0;
EAFEAD_gammaimigdag = 1;
EAFEAE_gammaimig = 0;
EAFEAE_gammaimigdag = 1;
EAFRW_gammaimig = 0;
EAFRW_gammaimigdag = 1;
EAFUS_gammaimig = 0;
EAFUS_gammaimigdag = 1;
// Trade balance
EAF_tb =
+EAF_pex*EAA_size/EAF_size*EAAEAF_im
-EAA_pex*EAFEAA_rer*EAFEAA_im
+EAF_pex*EAB_size/EAF_size*EABEAF_im
-EAB_pex*EAFEAB_rer*EAFEAB_im
+EAF_pex*EAC_size/EAF_size*EACEAF_im
-EAC_pex*EAFEAC_rer*EAFEAC_im
+EAF_pex*EAD_size/EAF_size*EADEAF_im
-EAD_pex*EAFEAD_rer*EAFEAD_im
+EAF_pex*EAE_size/EAF_size*EAEEAF_im
-EAE_pex*EAFEAE_rer*EAFEAE_im
+EAF_pex*RW_size/EAF_size*RWEAF_im
-RW_pex*EAFRW_rer*EAFRW_im
+EAF_pex*US_size/EAF_size*USEAF_im
-US_pex*EAFUS_rer*EAFUS_im
;
// Aggregate exports (volume)
EAF_ex =
+EAA_size/EAF_size*EAAEAF_im
+EAB_size/EAF_size*EABEAF_im
+EAC_size/EAF_size*EACEAF_im
+EAD_size/EAF_size*EADEAF_im
+EAE_size/EAF_size*EAEEAF_im
+RW_size/EAF_size*RWEAF_im
+US_size/EAF_size*USEAF_im
;
//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------
//-------------
// Fiscal authority
//-------------
// Government budget constraint, using EAF_pg = EAF_pht
// TODO: check the (1-EAF_gammab(-1)) adjustment here, which is not in the fiscal extention
	EAF_pcg(-1)*EAF_cg(-1)+EAF_pig(-1)*EAF_ig(-1)+EAF_tr(-1)
	+EAF_b(-1)*EAF_pic(-1)^(-1)+EAF_m(-2)*EAF_pic(-1)^(-1) = EAF_tauc(-1)*EAF_c(-1)+(EAF_taun(-1)+EAF_tauwh(-1))*(EAF_wi(-1)*EAF_ndi(-1)+EAF_wj(-1)*EAF_ndj(-1))+EAF_tauwf(-1)*EAF_w(-1)*EAF_nd(-1)+EAF_tauk(-1)*(EAF_rk(-1)*EAF_u(-1)-(EAF_gammau(-1)+EAF_delta)*EAF_pi(-1))*EAF_k(-1)+EAF_taud(-1)*EAF_d(-1)+EAF_t(-1)+(EAF_r(-1)*(1-EAF_gammab(-1)))^(-1)*EAF_b+EAF_m(-1);
// Government spending, using EAF_pg = EAF_pht
EAF_pcg*EAF_cg = EAF_cgy*EAF_pybar*EAF_ybar;
EAF_pig*EAF_ig = EAF_igy*EAF_pybar*EAF_ybar;
EAF_t = 0;
EAF_b = EAF_bytarget*EAF_pybar*EAF_ybar;
// Auxiliary equation for steady-state output
EAF_ybar = EAF_y;
// Auxiliary equation for steady-state output
EAF_ytbar = EAF_yst;
// Auxiliary equation for steady-state output
EAF_ynbar = EAF_ysn;
// Auxiliary equation for steady-state output deflator
EAF_pybar = EAF_py;
// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
EAF_trybar = EAF_tr/(EAF_pybar*EAF_ybar);
// Auxiliary equation for determining the distribution of lump-sum taxes
EAF_ti = EAF_upsilont*EAF_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */
// Auxiliary equation for determining the distribution of lump-sum transfers
EAF_tri = EAF_upsilontr*EAF_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */
//-------------
// Monetary authority
//-------------
	EAF_r^4-1 = EAF_rrstar^4*EAF_pi4target-1;
EAF_pic4 = EAF_pi4target;
EAF_rr-1 = EAF_r/EAF_pi4target^(1/4)-1;
// Equilibrium real interest rate
EAF_rrstar-1 = 1/EAF_beta-1;
//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------
//-------------
// Aggregation
//-------------
// Aggregate consumption
EAF_c = (1-EAF_omega)*EAF_ci+EAF_omega*EAF_cj;
// Aggregate money holdings
EAF_m = (1-EAF_omega)*EAF_mi+EAF_omega*EAF_mj;
// Aggregate capital stock
EAF_k = (1-EAF_omega)*EAF_ki;
// Aggregate investment
EAF_i = (1-EAF_omega)*EAF_ii;
// Aggregate lump-sum transfers
EAF_trj = 
1/EAF_omega*EAF_tr-(1-EAF_omega)/EAF_omega*EAF_tri
;
// Aggregate lump-sum taxes
EAF_tj = 
1/EAF_omega*EAF_t-(1-EAF_omega)/EAF_omega*EAF_ti
;
// Aggregate transaction costs
EAF_gammav = (1-EAF_omega)*EAF_ci*EAF_gammavi+EAF_omega*EAF_cj*EAF_gammavj;
//-------------
// Market clearing
//-------------
// Labour markets for household I
// Wedge between labour demand/hours worked and labour supply
EAF_ni = EAF_si*EAF_ndi;
// Wage dispersion
EAF_si = (1-EAF_xii)*(EAF_witilde/EAF_wi)^(-EAF_etai)+EAF_xii*(EAF_wi(-1)/EAF_wi)^(-EAF_etai)*(EAF_pic/(EAF_pic(-1)^EAF_chii*EAF_pi4target^(1/4*(1-EAF_chii))))^(EAF_etai)*EAF_si(-1);
// Labour markets for household J
// Wedge between labour demand/hours worked and labour supply
EAF_nj = EAF_sj*EAF_ndj;
// Wage dispersion
EAF_sj = (1-EAF_xij)*(EAF_wjtilde/EAF_wj)^(-EAF_etaj)+EAF_xij*(EAF_wj(-1)/EAF_wj)^(-EAF_etaj)*(EAF_pic/(EAF_pic(-1)^EAF_chij*EAF_pi4target^(1/4*(1-EAF_chij))))^(EAF_etaj)*EAF_sj(-1);
// Rental market for capital
// Equality of capital input and effective capital services
EAF_u*EAF_k = EAF_kd;
// Intermediate-good markets
// Wedge between aggregate demand and production, using EAF_x = RW_size/EAF_size*RW_im
EAF_ysn = EAF_snt*EAF_nt;
//  nontradables aggregate demand
EAF_nt = 
+EAF_ntc
+EAF_nti
+EAF_ntcg
+EAF_ntig
;
// Aggregate demand for domestic intermediate goods, using EAF_hg = EAF_cg
EAF_ht =
+EAF_htc
+EAF_hti
+EAF_htcg
+EAF_htig
;
// Price dispersion in the domestic markets
EAF_sh = (1-EAF_xih)*(EAF_phttilde/EAF_pht)^(-EAF_thetat)+EAF_xih*(EAF_piht/(EAF_piht(-1)^EAF_chih*EAF_pi4target^(1/4*(1-EAF_chih))))^EAF_thetat*EAF_sh(-1);
// Price dispersion in the foreign markets
EAF_sx = (1-EAF_xix)*(EAF_pextilde/EAF_pex)^(-EAF_thetat)+EAF_xix*(EAF_piex/(EAF_piex(-1)^EAF_chix*EAF_pi4target^(1/4*(1-EAF_chix))))^EAF_thetat*EAF_sx(-1);
// Price dispersion in the domestic markets
EAF_snt = (1-EAF_xin)*(EAF_pnttilde/EAF_pnt)^(-EAF_thetan)+EAF_xin*(EAF_pint/(EAF_pint(-1)^EAF_chin*EAF_pi4target^(1/4*(1-EAF_chin))))^EAF_thetan*EAF_snt(-1);
// Final-good markets
// Aggregate consumption and transaction cost
EAF_qc = EAF_c+EAF_gammav;
// Aggregate investment and capital utilisation cost
EAF_qi = EAF_i+EAF_k*EAF_gammau;
// Aggregate gov demand components added to use the same structure like in private components
EAF_qcg = EAF_cg;
EAF_qig = EAF_ig;
//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
EAF_py*EAF_y = 
+EAF_qc
+EAF_pi*EAF_qi
+EAF_pcg*EAF_qcg
+EAF_pig*EAF_qig
+EAF_pex*EAA_size/EAF_size*EAAEAF_im
-(EAA_pex*EAFEAA_rer)*EAFEAA_imc
-(EAA_pex*EAFEAA_rer)*EAFEAA_imi
-(EAA_pex*EAFEAA_rer)*EAFEAA_imcg
-(EAA_pex*EAFEAA_rer)*EAFEAA_imig
+EAF_pex*EAB_size/EAF_size*EABEAF_im
-(EAB_pex*EAFEAB_rer)*EAFEAB_imc
-(EAB_pex*EAFEAB_rer)*EAFEAB_imi
-(EAB_pex*EAFEAB_rer)*EAFEAB_imcg
-(EAB_pex*EAFEAB_rer)*EAFEAB_imig
+EAF_pex*EAC_size/EAF_size*EACEAF_im
-(EAC_pex*EAFEAC_rer)*EAFEAC_imc
-(EAC_pex*EAFEAC_rer)*EAFEAC_imi
-(EAC_pex*EAFEAC_rer)*EAFEAC_imcg
-(EAC_pex*EAFEAC_rer)*EAFEAC_imig
+EAF_pex*EAD_size/EAF_size*EADEAF_im
-(EAD_pex*EAFEAD_rer)*EAFEAD_imc
-(EAD_pex*EAFEAD_rer)*EAFEAD_imi
-(EAD_pex*EAFEAD_rer)*EAFEAD_imcg
-(EAD_pex*EAFEAD_rer)*EAFEAD_imig
+EAF_pex*EAE_size/EAF_size*EAEEAF_im
-(EAE_pex*EAFEAE_rer)*EAFEAE_imc
-(EAE_pex*EAFEAE_rer)*EAFEAE_imi
-(EAE_pex*EAFEAE_rer)*EAFEAE_imcg
-(EAE_pex*EAFEAE_rer)*EAFEAE_imig
+EAF_pex*RW_size/EAF_size*RWEAF_im
-(RW_pex*EAFRW_rer)*EAFRW_imc
-(RW_pex*EAFRW_rer)*EAFRW_imi
-(RW_pex*EAFRW_rer)*EAFRW_imcg
-(RW_pex*EAFRW_rer)*EAFRW_imig
+EAF_pex*US_size/EAF_size*USEAF_im
-(US_pex*EAFUS_rer)*EAFUS_imc
-(US_pex*EAFUS_rer)*EAFUS_imi
-(US_pex*EAFUS_rer)*EAFUS_imcg
-(US_pex*EAFUS_rer)*EAFUS_imig
;
// Aggregate real demand
EAF_y = EAF_yst+EAF_ysn;
//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------
// Productivity shocks
log(EAF_zt) = (1-EAF_rhozt)*log(EAF_ztbar)+EAF_rhozt*log(EAF_zt(-1))+EAF_epszt;
log(EAF_zn) = (1-EAF_rhozn)*log(EAF_znbar)+EAF_rhozn*log(EAF_zn(-1))+EAF_epszn;
// Government spending shock
EAF_cgy = (1-EAF_rhocg)*EAF_cgybar+EAF_rhocg*EAF_cgy(-1)+EAF_epsgc;
EAF_igy = (1-EAF_rhoig)*EAF_igybar+EAF_rhoig*EAF_igy(-1)+EAF_epsgi;
// Transfer shock
EAF_try = (1-EAF_rhotr)*EAF_trybar+EAF_rhotr*EAF_try(-1)+EAF_epstr;
// Consumption tax shock
EAF_tauc = (1-EAF_rhotauc)*EAF_taucbar+EAF_rhotauc*EAF_tauc(-1)+EAF_epstauc;
// Dividend income tax shock
EAF_taud = (1-EAF_rhotaud)*EAF_taudbar+EAF_rhotaud*EAF_taud(-1)+EAF_epstaud;
// Capital income tax shock
EAF_tauk = (1-EAF_rhotauk)*EAF_taukbar+EAF_rhotauk*EAF_tauk(-1)+EAF_epstauk;
// Labour income tax shock
EAF_taun = (1-EAF_rhotaun)*EAF_taunbar+EAF_rhotaun*EAF_taun(-1)+EAF_epstaun;
// Payroll tax shock: households
EAF_tauwh = (1-EAF_rhotauwh)*EAF_tauwhbar+EAF_rhotauwh*EAF_tauwh(-1)+EAF_epstauwh;
// Payroll tax shock: firms
EAF_tauwf = (1-EAF_rhotauwf)*EAF_tauwfbar+EAF_rhotauwf*EAF_tauwf(-1)+EAF_epstauwf;
// Wage cost push shock
EAF_wcst = (1-EAF_rhowcst)*EAF_wcstbar+EAF_rhowcst*EAF_wcst(-1)+EAF_epswcst;
// Preference shock
log(EAF_zcon) = (1-EAF_rhozcon)*log(EAF_zconbar)+EAF_rhozcon*log(EAF_zcon(-1))+EAF_epszcon;
// Investment specific shock
log(EAF_zinv) = (1-EAF_rhozinv)*log(EAF_zinvbar)+EAF_rhozinv*log(EAF_zinv(-1))+EAF_epszinv;
//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------
// Aggregate nominal consumption share
EAF_cy = EAF_c/(EAF_py*EAF_y);
// Aggregate nominal investment share
EAF_iy = EAF_pi*EAF_i/(EAF_py*EAF_y);
// Aggregate nominal import share  
EAF_imy = (
+EAF_pimc*EAF_imc
+EAF_pimi*EAF_imi
+EAF_pimcg*EAF_imcg
+EAF_pimig*EAF_imig
)/(EAF_py*EAF_y);
// Aggregate nominal import share
EAF_imcy = EAF_pimc*EAF_imc/(EAF_py*EAF_y);
EAF_imiy = EAF_pimi*EAF_imi/(EAF_py*EAF_y);
EAF_imcgy = EAF_pimcg*EAF_imcg/(EAF_py*EAF_y);
EAF_imigy = EAF_pimig*EAF_imig/(EAF_py*EAF_y);
// Aggregate debt-to-output ratio
EAF_by = EAF_b/(EAF_pybar*EAF_ybar);
// Aggregate lump-sum tax-to-output ratio
EAF_ty = EAF_t/(EAF_pybar*EAF_ybar);
// Aggregate labour cost share
EAF_lcy = ((1+EAF_tauwf)*EAF_w*EAF_nd)/(EAF_py*EAF_y);
// Aggregate nominal Wage share
EAF_wy = (EAF_w*EAF_nd)/(EAF_py*EAF_y);
// NT sector nominal Wage share
EAF_wnty = (EAF_w*EAF_ndn)/(EAF_pnt*EAF_ysn);
// T sector nominal Wage share
EAF_whty = (EAF_w*EAF_ndt)/(EAF_pht*EAF_yst);
// T sector share
EAF_yhty = EAF_pht*EAF_yst/(EAF_py*EAF_y);
// NT sector share
EAF_ynty = EAF_pnt*EAF_ysn/(EAF_py*EAF_y);
// Output gap
EAF_ygap = 0;
// Output growth (gross rate)
EAF_ygrowth = EAF_y/EAF_y(-1);
// Output growth (gross rate yoy)
EAF_ygrowth4 = EAF_y/EAF_y(-4);
// Domestic nominal output as a share of world nominal output
EAF_yshare  = EAF_size*EAF_py*EAF_y/EAF_rer/(
+EAA_size*EAA_py*EAA_y/EAA_rer
+EAB_size*EAB_py*EAB_y/EAB_rer
+EAC_size*EAC_py*EAC_y/EAC_rer
+EAD_size*EAD_py*EAD_y/EAD_rer
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
+RW_size*RW_py*RW_y/RW_rer
+US_size*US_py*US_y/US_rer
);
// Interest (semi-)elasticity of money demand
EAF_epsilonm = -1/8*1/(EAF_r*(EAF_gammav2*EAF_r+EAF_r-1));
// Trade balance-to-GDP ratio
EAF_tby = EAF_tb/(EAF_py*EAF_y);
// Bilateral shares
EAFEAA_imcy = (EAA_pex*EAFEAA_rer)*EAFEAA_imc/(EAF_py*EAF_y);
EAFEAA_imiy = (EAA_pex*EAFEAA_rer)*EAFEAA_imi/(EAF_py*EAF_y);
EAFEAA_imcgy = (EAA_pex*EAFEAA_rer)*EAFEAA_imcg/(EAF_py*EAF_y);
EAFEAA_imigy = (EAA_pex*EAFEAA_rer)*EAFEAA_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFEAA_excy  = EAA_size/EAF_size*EAF_pex*EAAEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFEAA_exiy  = EAA_size/EAF_size*EAF_pex*EAAEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFEAB_imcy = (EAB_pex*EAFEAB_rer)*EAFEAB_imc/(EAF_py*EAF_y);
EAFEAB_imiy = (EAB_pex*EAFEAB_rer)*EAFEAB_imi/(EAF_py*EAF_y);
EAFEAB_imcgy = (EAB_pex*EAFEAB_rer)*EAFEAB_imcg/(EAF_py*EAF_y);
EAFEAB_imigy = (EAB_pex*EAFEAB_rer)*EAFEAB_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFEAB_excy  = EAB_size/EAF_size*EAF_pex*EABEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFEAB_exiy  = EAB_size/EAF_size*EAF_pex*EABEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFEAC_imcy = (EAC_pex*EAFEAC_rer)*EAFEAC_imc/(EAF_py*EAF_y);
EAFEAC_imiy = (EAC_pex*EAFEAC_rer)*EAFEAC_imi/(EAF_py*EAF_y);
EAFEAC_imcgy = (EAC_pex*EAFEAC_rer)*EAFEAC_imcg/(EAF_py*EAF_y);
EAFEAC_imigy = (EAC_pex*EAFEAC_rer)*EAFEAC_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFEAC_excy  = EAC_size/EAF_size*EAF_pex*EACEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFEAC_exiy  = EAC_size/EAF_size*EAF_pex*EACEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFEAD_imcy = (EAD_pex*EAFEAD_rer)*EAFEAD_imc/(EAF_py*EAF_y);
EAFEAD_imiy = (EAD_pex*EAFEAD_rer)*EAFEAD_imi/(EAF_py*EAF_y);
EAFEAD_imcgy = (EAD_pex*EAFEAD_rer)*EAFEAD_imcg/(EAF_py*EAF_y);
EAFEAD_imigy = (EAD_pex*EAFEAD_rer)*EAFEAD_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFEAD_excy  = EAD_size/EAF_size*EAF_pex*EADEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFEAD_exiy  = EAD_size/EAF_size*EAF_pex*EADEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFEAE_imcy = (EAE_pex*EAFEAE_rer)*EAFEAE_imc/(EAF_py*EAF_y);
EAFEAE_imiy = (EAE_pex*EAFEAE_rer)*EAFEAE_imi/(EAF_py*EAF_y);
EAFEAE_imcgy = (EAE_pex*EAFEAE_rer)*EAFEAE_imcg/(EAF_py*EAF_y);
EAFEAE_imigy = (EAE_pex*EAFEAE_rer)*EAFEAE_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFEAE_excy  = EAE_size/EAF_size*EAF_pex*EAEEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFEAE_exiy  = EAE_size/EAF_size*EAF_pex*EAEEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFRW_imcy = (RW_pex*EAFRW_rer)*EAFRW_imc/(EAF_py*EAF_y);
EAFRW_imiy = (RW_pex*EAFRW_rer)*EAFRW_imi/(EAF_py*EAF_y);
EAFRW_imcgy = (RW_pex*EAFRW_rer)*EAFRW_imcg/(EAF_py*EAF_y);
EAFRW_imigy = (RW_pex*EAFRW_rer)*EAFRW_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFRW_excy  = RW_size/EAF_size*EAF_pex*RWEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFRW_exiy  = RW_size/EAF_size*EAF_pex*RWEAF_imi/(EAF_py*EAF_y);
// Bilateral shares
EAFUS_imcy = (US_pex*EAFUS_rer)*EAFUS_imc/(EAF_py*EAF_y);
EAFUS_imiy = (US_pex*EAFUS_rer)*EAFUS_imi/(EAF_py*EAF_y);
EAFUS_imcgy = (US_pex*EAFUS_rer)*EAFUS_imcg/(EAF_py*EAF_y);
EAFUS_imigy = (US_pex*EAFUS_rer)*EAFUS_imig/(EAF_py*EAF_y);
// Exports of consumption goods to gdp
EAFUS_excy  = US_size/EAF_size*EAF_pex*USEAF_imc/(EAF_py*EAF_y);
// Exports of investment goods to gdp
EAFUS_exiy  = US_size/EAF_size*EAF_pex*USEAF_imi/(EAF_py*EAF_y);
// Internal real exchange rate
EAF_internalrer = EAF_pnt/EAF_pttc;
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
// Marginal utility of consumption
RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder) = RW_zcon*(RW_cj-RW_kappa*RW_cj(-1))^(-RW_sigma);
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
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAE_pimtilde
// EAERW_pimtilde/EAERW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAE_fx/RWEAE_gx;
// Definition of fx
// RWEAE_fx = EAE_size/RW_size*EAERW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAERW_piim(+1)/(EAERW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAE_fx(+1);
// Definition of gx   
// RWEAE_gx = RWEAE_rer*EAERW_pim*EAE_size/RW_size*EAERW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAERW_piim(+1)/(EAERW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAE_pim
// EAERW_pim^(1-RW_thetat) = (1-RW_xix)*EAERW_pimtilde^(1-RW_thetat)+RW_xix*(EAERW_pim(-1)/EAE_pic)^(1-RW_thetat)*(EAERW_piim(-1)^RW_chix*EAE_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAE_piim
// EAERW_piim = EAERW_pim/EAERW_pim(-1)*EAE_pic;
// Bilateral real exchange rate
RWEAE_rer = RW_rer/EAE_rer;
// Auxiliary equation for steady-state output
RWEAE_rerbar = RWEAE_rer;
//Terms of Trade
RWEAE_tot = EAE_pex*RWEAE_rer/RW_pex;
// Optimal price contract set in foreign markets (FOC), using RW_pxtilde = EAF_pimtilde
// EAFRW_pimtilde/EAFRW_pim = RW_cpim*RW_thetat/(RW_thetat-1)*RWEAF_fx/RWEAF_gx;
// Definition of fx
// RWEAF_fx = EAF_size/RW_size*EAFRW_im*RW_mct+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAFRW_piim(+1)/(EAFRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^RW_thetat*RWEAF_fx(+1);
// Definition of gx   
// RWEAF_gx = RWEAF_rer*EAFRW_pim*EAF_size/RW_size*EAFRW_im+RW_xix*RW_beta*RW_lambdai(+1)/RW_lambdai*(EAFRW_piim(+1)/(EAFRW_piim^RW_chix*RW_pi4target^(1/4*(1-RW_chix))))^(RW_thetat-1)*RWEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using RW_px = EAF_pim
// EAFRW_pim^(1-RW_thetat) = (1-RW_xix)*EAFRW_pimtilde^(1-RW_thetat)+RW_xix*(EAFRW_pim(-1)/EAF_pic)^(1-RW_thetat)*(EAFRW_piim(-1)^RW_chix*EAF_pi4target^(1/4*(1-RW_chih)))^(1-RW_thetat);
// Intermediate-good price inflation, using RW_pix = EAF_piim
// EAFRW_piim = EAFRW_pim/EAFRW_pim(-1)*EAF_pic;
// Bilateral real exchange rate
RWEAF_rer = RW_rer/EAF_rer;
// Auxiliary equation for steady-state output
RWEAF_rerbar = RWEAF_rer;
//Terms of Trade
RWEAF_tot = EAF_pex*RWEAF_rer/RW_pex;
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
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)+
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAA_rer*EAA_pex*EABEAA_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAA_rer*EAA_pex*EACEAA_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAA_rer*EAA_pex*EADEAA_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAA_rer*EAA_pex*EAEEAA_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWEAA_rer*EAA_pex*EAFEAA_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAA_rer*EAA_pex*USEAA_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
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
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAB_rer*EAB_pex*EAAEAB_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAB_rer*EAB_pex*EACEAB_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAB_rer*EAB_pex*EADEAB_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAB_rer*EAB_pex*EAEEAB_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWEAB_rer*EAB_pex*EAFEAB_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAB_rer*EAB_pex*USEAB_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
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
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAC_rer*EAC_pex*EAAEAC_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAC_rer*EAC_pex*EABEAC_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAC_rer*EAC_pex*EADEAC_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAC_rer*EAC_pex*EAEEAC_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWEAC_rer*EAC_pex*EAFEAC_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAC_rer*EAC_pex*USEAC_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
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
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAD_rer*EAD_pex*EAAEAD_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAD_rer*EAD_pex*EABEAD_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAD_rer*EAD_pex*EACEAD_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAD_rer*EAD_pex*EAEEAD_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWEAD_rer*EAD_pex*EAFEAD_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAD_rer*EAD_pex*USEAD_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
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
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAE_rer*EAE_pex*EAAEAE_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAE_rer*EAE_pex*EABEAE_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAE_rer*EAE_pex*EACEAE_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAE_rer*EAE_pex*EADEAE_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWEAE_rer*EAE_pex*EAFEAE_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAE_rer*EAE_pex*USEAE_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAE_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAE_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAE_weightex;
// Effective real exchange rate: double weighting (imports)
RWEAF_weightim = RWEAF_rer*EAF_pex*RWEAF_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWEAF_weightex = EAF_size/RW_size*EAFRW_im/RW_ex*RWEAF_rer*EAF_py*EAF_y/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWEAF_rer*EAF_pex*EAAEAF_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWEAF_rer*EAF_pex*EABEAF_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWEAF_rer*EAF_pex*EACEAF_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWEAF_rer*EAF_pex*EADEAF_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWEAF_rer*EAF_pex*EAEEAF_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+US_size/RW_size*USRW_im/RW_ex*RWEAF_rer*EAF_pex*USEAF_im/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
)
;
// Effective real exchange rate: double weighting (overall)
RWEAF_weight = RW_pim*RW_im/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAF_weightim+RW_pex*RW_ex/(RW_pim*RW_im+RW_pex*RW_ex)*RWEAF_weightex;
// Effective real exchange rate: double weighting (imports)
RWUS_weightim = RWUS_rer*US_pex*RWUS_im/(RW_pim*RW_im);
// Effective real exchange rate: double weighting (exports)
RWUS_weightex = US_size/RW_size*USRW_im/RW_ex*RWUS_rer*US_py*US_y/(RWUS_rer*US_py*US_y
+RWEAA_rer*EAA_pex*USEAA_im
+RWEAB_rer*EAB_pex*USEAB_im
+RWEAC_rer*EAC_pex*USEAC_im
+RWEAD_rer*EAD_pex*USEAD_im
+RWEAE_rer*EAE_pex*USEAE_im
+RWEAF_rer*EAF_pex*USEAF_im
)+
+EAA_size/RW_size*EAARW_im/RW_ex*RWUS_rer*US_pex*EAAUS_im/(RWEAA_rer*EAA_py*EAA_y
+RWEAB_rer*EAB_pex*EAAEAB_im
+RWEAC_rer*EAC_pex*EAAEAC_im
+RWEAD_rer*EAD_pex*EAAEAD_im
+RWEAE_rer*EAE_pex*EAAEAE_im
+RWEAF_rer*EAF_pex*EAAEAF_im
+RWUS_rer*US_pex*EAAUS_im
)
+EAB_size/RW_size*EABRW_im/RW_ex*RWUS_rer*US_pex*EABUS_im/(RWEAB_rer*EAB_py*EAB_y
+RWEAA_rer*EAA_pex*EABEAA_im
+RWEAC_rer*EAC_pex*EABEAC_im
+RWEAD_rer*EAD_pex*EABEAD_im
+RWEAE_rer*EAE_pex*EABEAE_im
+RWEAF_rer*EAF_pex*EABEAF_im
+RWUS_rer*US_pex*EABUS_im
)
+EAC_size/RW_size*EACRW_im/RW_ex*RWUS_rer*US_pex*EACUS_im/(RWEAC_rer*EAC_py*EAC_y
+RWEAA_rer*EAA_pex*EACEAA_im
+RWEAB_rer*EAB_pex*EACEAB_im
+RWEAD_rer*EAD_pex*EACEAD_im
+RWEAE_rer*EAE_pex*EACEAE_im
+RWEAF_rer*EAF_pex*EACEAF_im
+RWUS_rer*US_pex*EACUS_im
)
+EAD_size/RW_size*EADRW_im/RW_ex*RWUS_rer*US_pex*EADUS_im/(RWEAD_rer*EAD_py*EAD_y
+RWEAA_rer*EAA_pex*EADEAA_im
+RWEAB_rer*EAB_pex*EADEAB_im
+RWEAC_rer*EAC_pex*EADEAC_im
+RWEAE_rer*EAE_pex*EADEAE_im
+RWEAF_rer*EAF_pex*EADEAF_im
+RWUS_rer*US_pex*EADUS_im
)
+EAE_size/RW_size*EAERW_im/RW_ex*RWUS_rer*US_pex*EAEUS_im/(RWEAE_rer*EAE_py*EAE_y
+RWEAA_rer*EAA_pex*EAEEAA_im
+RWEAB_rer*EAB_pex*EAEEAB_im
+RWEAC_rer*EAC_pex*EAEEAC_im
+RWEAD_rer*EAD_pex*EAEEAD_im
+RWEAF_rer*EAF_pex*EAEEAF_im
+RWUS_rer*US_pex*EAEUS_im
)
+EAF_size/RW_size*EAFRW_im/RW_ex*RWUS_rer*US_pex*EAFUS_im/(RWEAF_rer*EAF_py*EAF_y
+RWEAA_rer*EAA_pex*EAFEAA_im
+RWEAB_rer*EAB_pex*EAFEAB_im
+RWEAC_rer*EAC_pex*EAFEAC_im
+RWEAD_rer*EAD_pex*EAFEAD_im
+RWEAE_rer*EAE_pex*EAFEAE_im
+RWUS_rer*US_pex*EAFUS_im
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
*RWEAF_rer^RWEAF_weight
*RWUS_rer^RWUS_weight
;
// Effective terms of trade
RW_etot = 1
*RWEAA_tot^RWEAA_weight
*RWEAB_tot^RWEAB_weight
*RWEAC_tot^RWEAC_weight
*RWEAD_tot^RWEAD_weight
*RWEAE_tot^RWEAE_weight
*RWEAF_tot^RWEAF_weight
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
+RWEAD_numc ^(1/RW_mumc)*RWEAD_imc^(1-1/RW_mumc)
+RWEAF_numc ^(1/RW_mumc)*RWEAF_imc^(1-1/RW_mumc)
+RWUS_numc ^(1/RW_mumc)*RWUS_imc^(1-1/RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAD_numc
-RWEAF_numc
-RWUS_numc
)^(1/RW_mumc)*RWEAE_imc^(1-1/RW_mumc);
// Demand for bilateral consumption import goods
RWEAA_imc = RWEAA_numc*((EAA_pex*RWEAA_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAB_imc = RWEAB_numc*((EAB_pex*RWEAB_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAC_imc = RWEAC_numc*((EAC_pex*RWEAC_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAD_imc = RWEAD_numc*((EAD_pex*RWEAD_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Demand for bilateral consumption import goods
RWEAF_imc = RWEAF_numc*((EAF_pex*RWEAF_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
RWEAE_imc = (1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAD_numc
-RWEAF_numc
-RWUS_numc
)*((EAE_pex*RWEAE_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
// Price of the consumption good (import)
RW_pimc^(1-RW_mumc) =
+RWEAA_numc * (EAA_pex*RWEAA_rer)^(1-RW_mumc)
+RWEAB_numc * (EAB_pex*RWEAB_rer)^(1-RW_mumc)
+RWEAC_numc * (EAC_pex*RWEAC_rer)^(1-RW_mumc)
+RWEAD_numc * (EAD_pex*RWEAD_rer)^(1-RW_mumc)
+RWEAF_numc * (EAF_pex*RWEAF_rer)^(1-RW_mumc)
+RWUS_numc * (US_pex*RWUS_rer)^(1-RW_mumc)
+(1
-RWEAA_numc
-RWEAB_numc
-RWEAC_numc
-RWEAD_numc
-RWEAF_numc
-RWUS_numc
)*(EAE_pex*RWEAE_rer)^(1-RW_mumc);
// Private consumption good (import) inflation
RW_piimc = RW_pimc/RW_pimc(-1)*RW_pic;
// Private consumption good (import)
RW_imi^((RW_mumi-1)/RW_mumi) =
+RWEAA_numi ^(1/RW_mumi)*RWEAA_imi^(1-1/RW_mumi)
+RWEAB_numi ^(1/RW_mumi)*RWEAB_imi^(1-1/RW_mumi)
+RWEAC_numi ^(1/RW_mumi)*RWEAC_imi^(1-1/RW_mumi)
+RWEAD_numi ^(1/RW_mumi)*RWEAD_imi^(1-1/RW_mumi)
+RWEAF_numi ^(1/RW_mumi)*RWEAF_imi^(1-1/RW_mumi)
+RWUS_numi ^(1/RW_mumi)*RWUS_imi^(1-1/RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAD_numi
-RWEAF_numi
-RWUS_numi
)^(1/RW_mumi)*RWEAE_imi^(1-1/RW_mumi);
// Demand for bilateral consumption import goods
RWEAA_imi = RWEAA_numi*((EAA_pex*RWEAA_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAB_imi = RWEAB_numi*((EAB_pex*RWEAB_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAC_imi = RWEAC_numi*((EAC_pex*RWEAC_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAD_imi = RWEAD_numi*((EAD_pex*RWEAD_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Demand for bilateral consumption import goods
RWEAF_imi = RWEAF_numi*((EAF_pex*RWEAF_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
RWEAE_imi = (1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAD_numi
-RWEAF_numi
-RWUS_numi
)*((EAE_pex*RWEAE_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
// Price of the consumption good (import)
RW_pimi^(1-RW_mumi) =
+RWEAA_numi * (EAA_pex*RWEAA_rer)^(1-RW_mumi)
+RWEAB_numi * (EAB_pex*RWEAB_rer)^(1-RW_mumi)
+RWEAC_numi * (EAC_pex*RWEAC_rer)^(1-RW_mumi)
+RWEAD_numi * (EAD_pex*RWEAD_rer)^(1-RW_mumi)
+RWEAF_numi * (EAF_pex*RWEAF_rer)^(1-RW_mumi)
+RWUS_numi * (US_pex*RWUS_rer)^(1-RW_mumi)
+(1
-RWEAA_numi
-RWEAB_numi
-RWEAC_numi
-RWEAD_numi
-RWEAF_numi
-RWUS_numi
)*(EAE_pex*RWEAE_rer)^(1-RW_mumi);
// Private consumption good (import) inflation
RW_piimi = RW_pimi/RW_pimi(-1)*RW_pic;
// Private consumption good (import)
RW_imcg^((RW_mumcg-1)/RW_mumcg) =
+RWEAA_numcg ^(1/RW_mumcg)*RWEAA_imcg^(1-1/RW_mumcg)
+RWEAB_numcg ^(1/RW_mumcg)*RWEAB_imcg^(1-1/RW_mumcg)
+RWEAC_numcg ^(1/RW_mumcg)*RWEAC_imcg^(1-1/RW_mumcg)
+RWEAD_numcg ^(1/RW_mumcg)*RWEAD_imcg^(1-1/RW_mumcg)
+RWEAF_numcg ^(1/RW_mumcg)*RWEAF_imcg^(1-1/RW_mumcg)
+RWUS_numcg ^(1/RW_mumcg)*RWUS_imcg^(1-1/RW_mumcg)
+(1
-RWEAA_numcg
-RWEAB_numcg
-RWEAC_numcg
-RWEAD_numcg
-RWEAF_numcg
-RWUS_numcg
)^(1/RW_mumcg)*RWEAE_imcg^(1-1/RW_mumcg);
// Demand for bilateral consumption import goods
RWEAA_imcg = RWEAA_numcg*((EAA_pex*RWEAA_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAB_imcg = RWEAB_numcg*((EAB_pex*RWEAB_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAC_imcg = RWEAC_numcg*((EAC_pex*RWEAC_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAD_imcg = RWEAD_numcg*((EAD_pex*RWEAD_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Demand for bilateral consumption import goods
RWEAF_imcg = RWEAF_numcg*((EAF_pex*RWEAF_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
RWEAE_imcg = (1
-RWEAA_numcg
-RWEAB_numcg
-RWEAC_numcg
-RWEAD_numcg
-RWEAF_numcg
-RWUS_numcg
)*((EAE_pex*RWEAE_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
// Price of the consumption good (import)
RW_pimcg^(1-RW_mumcg) =
+RWEAA_numcg * (EAA_pex*RWEAA_rer)^(1-RW_mumcg)
+RWEAB_numcg * (EAB_pex*RWEAB_rer)^(1-RW_mumcg)
+RWEAC_numcg * (EAC_pex*RWEAC_rer)^(1-RW_mumcg)
+RWEAD_numcg * (EAD_pex*RWEAD_rer)^(1-RW_mumcg)
+RWEAF_numcg * (EAF_pex*RWEAF_rer)^(1-RW_mumcg)
+RWUS_numcg * (US_pex*RWUS_rer)^(1-RW_mumcg)
+(1
-RWEAA_numcg
-RWEAB_numcg
-RWEAC_numcg
-RWEAD_numcg
-RWEAF_numcg
-RWUS_numcg
)*(EAE_pex*RWEAE_rer)^(1-RW_mumcg);
// Private consumption good (import) inflation
RW_piimcg = RW_pimcg/RW_pimcg(-1)*RW_pic;
// Private consumption good (import)
RW_imig^((RW_mumig-1)/RW_mumig) =
+RWEAA_numig ^(1/RW_mumig)*RWEAA_imig^(1-1/RW_mumig)
+RWEAB_numig ^(1/RW_mumig)*RWEAB_imig^(1-1/RW_mumig)
+RWEAC_numig ^(1/RW_mumig)*RWEAC_imig^(1-1/RW_mumig)
+RWEAD_numig ^(1/RW_mumig)*RWEAD_imig^(1-1/RW_mumig)
+RWEAF_numig ^(1/RW_mumig)*RWEAF_imig^(1-1/RW_mumig)
+RWUS_numig ^(1/RW_mumig)*RWUS_imig^(1-1/RW_mumig)
+(1
-RWEAA_numig
-RWEAB_numig
-RWEAC_numig
-RWEAD_numig
-RWEAF_numig
-RWUS_numig
)^(1/RW_mumig)*RWEAE_imig^(1-1/RW_mumig);
// Demand for bilateral consumption import goods
RWEAA_imig = RWEAA_numig*((EAA_pex*RWEAA_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAB_imig = RWEAB_numig*((EAB_pex*RWEAB_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAC_imig = RWEAC_numig*((EAC_pex*RWEAC_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAD_imig = RWEAD_numig*((EAD_pex*RWEAD_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Demand for bilateral consumption import goods
RWEAF_imig = RWEAF_numig*((EAF_pex*RWEAF_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
RWEAE_imig = (1
-RWEAA_numig
-RWEAB_numig
-RWEAC_numig
-RWEAD_numig
-RWEAF_numig
-RWUS_numig
)*((EAE_pex*RWEAE_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
// Price of the consumption good (import)
RW_pimig^(1-RW_mumig) =
+RWEAA_numig * (EAA_pex*RWEAA_rer)^(1-RW_mumig)
+RWEAB_numig * (EAB_pex*RWEAB_rer)^(1-RW_mumig)
+RWEAC_numig * (EAC_pex*RWEAC_rer)^(1-RW_mumig)
+RWEAD_numig * (EAD_pex*RWEAD_rer)^(1-RW_mumig)
+RWEAF_numig * (EAF_pex*RWEAF_rer)^(1-RW_mumig)
+RWUS_numig * (US_pex*RWUS_rer)^(1-RW_mumig)
+(1
-RWEAA_numig
-RWEAB_numig
-RWEAC_numig
-RWEAD_numig
-RWEAF_numig
-RWUS_numig
)*(EAE_pex*RWEAE_rer)^(1-RW_mumig);
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
RWEAE_im = 
+RWEAE_imc
+RWEAE_imi
+RWEAE_imcg
+RWEAE_imig
;
RWEAF_im = 
+RWEAF_imc
+RWEAF_imi
+RWEAF_imcg
+RWEAF_imig
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
RWEAE_gammaimc = 0;
RWEAE_gammaimcdag = 1;
RWEAF_gammaimc = 0;
RWEAF_gammaimcdag = 1;
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
RWEAE_gammaimi = 0;
RWEAE_gammaimidag = 1;
RWEAF_gammaimi = 0;
RWEAF_gammaimidag = 1;
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
RWEAE_gammaimcg = 0;
RWEAE_gammaimcgdag = 1;
RWEAF_gammaimcg = 0;
RWEAF_gammaimcgdag = 1;
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
RWEAE_gammaimig = 0;
RWEAE_gammaimigdag = 1;
RWEAF_gammaimig = 0;
RWEAF_gammaimigdag = 1;
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
+RW_pex*EAE_size/RW_size*EAERW_im
-EAE_pex*RWEAE_rer*RWEAE_im
+RW_pex*EAF_size/RW_size*EAFRW_im
-EAF_pex*RWEAF_rer*RWEAF_im
+RW_pex*US_size/RW_size*USRW_im
-US_pex*RWUS_rer*RWUS_im
;
// Aggregate exports (volume)
RW_ex =
+EAA_size/RW_size*EAARW_im
+EAB_size/RW_size*EABRW_im
+EAC_size/RW_size*EACRW_im
+EAD_size/RW_size*EADRW_im
+EAE_size/RW_size*EAERW_im
+EAF_size/RW_size*EAFRW_im
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
+RW_pex*EAE_size/RW_size*EAERW_im
-(EAE_pex*RWEAE_rer)*RWEAE_imc
-(EAE_pex*RWEAE_rer)*RWEAE_imi
-(EAE_pex*RWEAE_rer)*RWEAE_imcg
-(EAE_pex*RWEAE_rer)*RWEAE_imig
+RW_pex*EAF_size/RW_size*EAFRW_im
-(EAF_pex*RWEAF_rer)*RWEAF_imc
-(EAF_pex*RWEAF_rer)*RWEAF_imi
-(EAF_pex*RWEAF_rer)*RWEAF_imcg
-(EAF_pex*RWEAF_rer)*RWEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
RWEAE_imcy = (EAE_pex*RWEAE_rer)*RWEAE_imc/(RW_py*RW_y);
RWEAE_imiy = (EAE_pex*RWEAE_rer)*RWEAE_imi/(RW_py*RW_y);
RWEAE_imcgy = (EAE_pex*RWEAE_rer)*RWEAE_imcg/(RW_py*RW_y);
RWEAE_imigy = (EAE_pex*RWEAE_rer)*RWEAE_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAE_excy  = EAE_size/RW_size*RW_pex*EAERW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAE_exiy  = EAE_size/RW_size*RW_pex*EAERW_imi/(RW_py*RW_y);
// Bilateral shares
RWEAF_imcy = (EAF_pex*RWEAF_rer)*RWEAF_imc/(RW_py*RW_y);
RWEAF_imiy = (EAF_pex*RWEAF_rer)*RWEAF_imi/(RW_py*RW_y);
RWEAF_imcgy = (EAF_pex*RWEAF_rer)*RWEAF_imcg/(RW_py*RW_y);
RWEAF_imigy = (EAF_pex*RWEAF_rer)*RWEAF_imig/(RW_py*RW_y);
// Exports of consumption goods to gdp
RWEAF_excy  = EAF_size/RW_size*RW_pex*EAFRW_imc/(RW_py*RW_y);
// Exports of investment goods to gdp
RWEAF_exiy  = EAF_size/RW_size*RW_pex*EAFRW_imi/(RW_py*RW_y);
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
// Marginal utility of consumption
US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder) = US_zcon*(US_cj-US_kappa*US_cj(-1))^(-US_sigma);
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
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAE_pimtilde
// EAEUS_pimtilde/EAEUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAE_fx/USEAE_gx;
// Definition of fx
// USEAE_fx = EAE_size/US_size*EAEUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAEUS_piim(+1)/(EAEUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAE_fx(+1);
// Definition of gx   
// USEAE_gx = USEAE_rer*EAEUS_pim*EAE_size/US_size*EAEUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAEUS_piim(+1)/(EAEUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAE_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAE_pim
// EAEUS_pim^(1-US_thetat) = (1-US_xix)*EAEUS_pimtilde^(1-US_thetat)+US_xix*(EAEUS_pim(-1)/EAE_pic)^(1-US_thetat)*(EAEUS_piim(-1)^US_chix*EAE_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAE_piim
// EAEUS_piim = EAEUS_pim/EAEUS_pim(-1)*EAE_pic;
// Bilateral real exchange rate
USEAE_rer = US_rer/EAE_rer;
// Auxiliary equation for steady-state output
USEAE_rerbar = USEAE_rer;
//Terms of Trade
USEAE_tot = EAE_pex*USEAE_rer/US_pex;
// Optimal price contract set in foreign markets (FOC), using US_pxtilde = EAF_pimtilde
// EAFUS_pimtilde/EAFUS_pim = US_cpim*US_thetat/(US_thetat-1)*USEAF_fx/USEAF_gx;
// Definition of fx
// USEAF_fx = EAF_size/US_size*EAFUS_im*US_mct+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAFUS_piim(+1)/(EAFUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^US_thetat*USEAF_fx(+1);
// Definition of gx   
// USEAF_gx = USEAF_rer*EAFUS_pim*EAF_size/US_size*EAFUS_im+US_xix*US_beta*US_lambdai(+1)/US_lambdai*(EAFUS_piim(+1)/(EAFUS_piim^US_chix*US_pi4target^(1/4*(1-US_chix))))^(US_thetat-1)*USEAF_gx(+1);
// Aggregate intermediate-good price dynamics, using US_px = EAF_pim
// EAFUS_pim^(1-US_thetat) = (1-US_xix)*EAFUS_pimtilde^(1-US_thetat)+US_xix*(EAFUS_pim(-1)/EAF_pic)^(1-US_thetat)*(EAFUS_piim(-1)^US_chix*EAF_pi4target^(1/4*(1-US_chih)))^(1-US_thetat);
// Intermediate-good price inflation, using US_pix = EAF_piim
// EAFUS_piim = EAFUS_pim/EAFUS_pim(-1)*EAF_pic;
// Bilateral real exchange rate
USEAF_rer = US_rer/EAF_rer;
// Auxiliary equation for steady-state output
USEAF_rerbar = USEAF_rer;
//Terms of Trade
USEAF_tot = EAF_pex*USEAF_rer/US_pex;
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
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)+
+EAB_size/US_size*EABUS_im/US_ex*USEAA_rer*EAA_pex*EABEAA_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAA_rer*EAA_pex*EACEAA_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAA_rer*EAA_pex*EADEAA_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAA_rer*EAA_pex*EAEEAA_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USEAA_rer*EAA_pex*EAFEAA_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAA_rer*EAA_pex*RWEAA_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
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
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAB_rer*EAB_pex*EAAEAB_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAB_rer*EAB_pex*EACEAB_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAB_rer*EAB_pex*EADEAB_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAB_rer*EAB_pex*EAEEAB_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USEAB_rer*EAB_pex*EAFEAB_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAB_rer*EAB_pex*RWEAB_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
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
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAC_rer*EAC_pex*EAAEAC_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAC_rer*EAC_pex*EABEAC_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAC_rer*EAC_pex*EADEAC_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAC_rer*EAC_pex*EAEEAC_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USEAC_rer*EAC_pex*EAFEAC_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAC_rer*EAC_pex*RWEAC_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
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
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAD_rer*EAD_pex*EAAEAD_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAD_rer*EAD_pex*EABEAD_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAD_rer*EAD_pex*EACEAD_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAD_rer*EAD_pex*EAEEAD_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USEAD_rer*EAD_pex*EAFEAD_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAD_rer*EAD_pex*RWEAD_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
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
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAE_rer*EAE_pex*EAAEAE_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAE_rer*EAE_pex*EABEAE_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAE_rer*EAE_pex*EACEAE_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAE_rer*EAE_pex*EADEAE_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USEAE_rer*EAE_pex*EAFEAE_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAE_rer*EAE_pex*RWEAE_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAE_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAE_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAE_weightex;
// Effective real exchange rate: double weighting (imports)
USEAF_weightim = USEAF_rer*EAF_pex*USEAF_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USEAF_weightex = EAF_size/US_size*EAFUS_im/US_ex*USEAF_rer*EAF_py*EAF_y/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USEAF_rer*EAF_pex*EAAEAF_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USEAF_rer*EAF_pex*EABEAF_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USEAF_rer*EAF_pex*EACEAF_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USEAF_rer*EAF_pex*EADEAF_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USEAF_rer*EAF_pex*EAEEAF_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+RW_size/US_size*RWUS_im/US_ex*USEAF_rer*EAF_pex*RWEAF_im/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
)
;
// Effective real exchange rate: double weighting (overall)
USEAF_weight = US_pim*US_im/(US_pim*US_im+US_pex*US_ex)*USEAF_weightim+US_pex*US_ex/(US_pim*US_im+US_pex*US_ex)*USEAF_weightex;
// Effective real exchange rate: double weighting (imports)
USRW_weightim = USRW_rer*RW_pex*USRW_im/(US_pim*US_im);
// Effective real exchange rate: double weighting (exports)
USRW_weightex = RW_size/US_size*RWUS_im/US_ex*USRW_rer*RW_py*RW_y/(USRW_rer*RW_py*RW_y
+USEAA_rer*EAA_pex*RWEAA_im
+USEAB_rer*EAB_pex*RWEAB_im
+USEAC_rer*EAC_pex*RWEAC_im
+USEAD_rer*EAD_pex*RWEAD_im
+USEAE_rer*EAE_pex*RWEAE_im
+USEAF_rer*EAF_pex*RWEAF_im
)+
+EAA_size/US_size*EAAUS_im/US_ex*USRW_rer*RW_pex*EAARW_im/(USEAA_rer*EAA_py*EAA_y
+USEAB_rer*EAB_pex*EAAEAB_im
+USEAC_rer*EAC_pex*EAAEAC_im
+USEAD_rer*EAD_pex*EAAEAD_im
+USEAE_rer*EAE_pex*EAAEAE_im
+USEAF_rer*EAF_pex*EAAEAF_im
+USRW_rer*RW_pex*EAARW_im
)
+EAB_size/US_size*EABUS_im/US_ex*USRW_rer*RW_pex*EABRW_im/(USEAB_rer*EAB_py*EAB_y
+USEAA_rer*EAA_pex*EABEAA_im
+USEAC_rer*EAC_pex*EABEAC_im
+USEAD_rer*EAD_pex*EABEAD_im
+USEAE_rer*EAE_pex*EABEAE_im
+USEAF_rer*EAF_pex*EABEAF_im
+USRW_rer*RW_pex*EABRW_im
)
+EAC_size/US_size*EACUS_im/US_ex*USRW_rer*RW_pex*EACRW_im/(USEAC_rer*EAC_py*EAC_y
+USEAA_rer*EAA_pex*EACEAA_im
+USEAB_rer*EAB_pex*EACEAB_im
+USEAD_rer*EAD_pex*EACEAD_im
+USEAE_rer*EAE_pex*EACEAE_im
+USEAF_rer*EAF_pex*EACEAF_im
+USRW_rer*RW_pex*EACRW_im
)
+EAD_size/US_size*EADUS_im/US_ex*USRW_rer*RW_pex*EADRW_im/(USEAD_rer*EAD_py*EAD_y
+USEAA_rer*EAA_pex*EADEAA_im
+USEAB_rer*EAB_pex*EADEAB_im
+USEAC_rer*EAC_pex*EADEAC_im
+USEAE_rer*EAE_pex*EADEAE_im
+USEAF_rer*EAF_pex*EADEAF_im
+USRW_rer*RW_pex*EADRW_im
)
+EAE_size/US_size*EAEUS_im/US_ex*USRW_rer*RW_pex*EAERW_im/(USEAE_rer*EAE_py*EAE_y
+USEAA_rer*EAA_pex*EAEEAA_im
+USEAB_rer*EAB_pex*EAEEAB_im
+USEAC_rer*EAC_pex*EAEEAC_im
+USEAD_rer*EAD_pex*EAEEAD_im
+USEAF_rer*EAF_pex*EAEEAF_im
+USRW_rer*RW_pex*EAERW_im
)
+EAF_size/US_size*EAFUS_im/US_ex*USRW_rer*RW_pex*EAFRW_im/(USEAF_rer*EAF_py*EAF_y
+USEAA_rer*EAA_pex*EAFEAA_im
+USEAB_rer*EAB_pex*EAFEAB_im
+USEAC_rer*EAC_pex*EAFEAC_im
+USEAD_rer*EAD_pex*EAFEAD_im
+USEAE_rer*EAE_pex*EAFEAE_im
+USRW_rer*RW_pex*EAFRW_im
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
*USEAF_rer^USEAF_weight
*USRW_rer^USRW_weight
;
// Effective terms of trade
US_etot = 1
*USEAA_tot^USEAA_weight
*USEAB_tot^USEAB_weight
*USEAC_tot^USEAC_weight
*USEAD_tot^USEAD_weight
*USEAE_tot^USEAE_weight
*USEAF_tot^USEAF_weight
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
+USEAE_numc ^(1/US_mumc)*USEAE_imc^(1-1/US_mumc)
+USRW_numc ^(1/US_mumc)*USRW_imc^(1-1/US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USEAE_numc
-USRW_numc
)^(1/US_mumc)*USEAF_imc^(1-1/US_mumc);
// Demand for bilateral consumption import goods
USEAB_imc = USEAB_numc*((EAB_pex*USEAB_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USEAC_imc = USEAC_numc*((EAC_pex*USEAC_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USEAD_imc = USEAD_numc*((EAD_pex*USEAD_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USEAE_imc = USEAE_numc*((EAE_pex*USEAE_rer)/US_pimc)^(-US_mumc)*US_imc;
// Demand for bilateral consumption import goods
USRW_imc = USRW_numc*((RW_pex*USRW_rer)/US_pimc)^(-US_mumc)*US_imc;
USEAF_imc = (1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USEAE_numc
-USRW_numc
)*((EAF_pex*USEAF_rer)/US_pimc)^(-US_mumc)*US_imc;
// Price of the consumption good (import)
US_pimc^(1-US_mumc) =
+USEAA_numc * (EAA_pex*USEAA_rer)^(1-US_mumc)
+USEAB_numc * (EAB_pex*USEAB_rer)^(1-US_mumc)
+USEAC_numc * (EAC_pex*USEAC_rer)^(1-US_mumc)
+USEAD_numc * (EAD_pex*USEAD_rer)^(1-US_mumc)
+USEAE_numc * (EAE_pex*USEAE_rer)^(1-US_mumc)
+USRW_numc * (RW_pex*USRW_rer)^(1-US_mumc)
+(1
-USEAA_numc
-USEAB_numc
-USEAC_numc
-USEAD_numc
-USEAE_numc
-USRW_numc
)*(EAF_pex*USEAF_rer)^(1-US_mumc);
// Private consumption good (import) inflation
US_piimc = US_pimc/US_pimc(-1)*US_pic;
// Private consumption good (import)
US_imi^((US_mumi-1)/US_mumi) =
+USEAA_numi ^(1/US_mumi)*USEAA_imi^(1-1/US_mumi)
+USEAB_numi ^(1/US_mumi)*USEAB_imi^(1-1/US_mumi)
+USEAC_numi ^(1/US_mumi)*USEAC_imi^(1-1/US_mumi)
+USEAD_numi ^(1/US_mumi)*USEAD_imi^(1-1/US_mumi)
+USEAE_numi ^(1/US_mumi)*USEAE_imi^(1-1/US_mumi)
+USRW_numi ^(1/US_mumi)*USRW_imi^(1-1/US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USEAE_numi
-USRW_numi
)^(1/US_mumi)*USEAF_imi^(1-1/US_mumi);
// Demand for bilateral consumption import goods
USEAB_imi = USEAB_numi*((EAB_pex*USEAB_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USEAC_imi = USEAC_numi*((EAC_pex*USEAC_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USEAD_imi = USEAD_numi*((EAD_pex*USEAD_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USEAE_imi = USEAE_numi*((EAE_pex*USEAE_rer)/US_pimi)^(-US_mumi)*US_imi;
// Demand for bilateral consumption import goods
USRW_imi = USRW_numi*((RW_pex*USRW_rer)/US_pimi)^(-US_mumi)*US_imi;
USEAF_imi = (1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USEAE_numi
-USRW_numi
)*((EAF_pex*USEAF_rer)/US_pimi)^(-US_mumi)*US_imi;
// Price of the consumption good (import)
US_pimi^(1-US_mumi) =
+USEAA_numi * (EAA_pex*USEAA_rer)^(1-US_mumi)
+USEAB_numi * (EAB_pex*USEAB_rer)^(1-US_mumi)
+USEAC_numi * (EAC_pex*USEAC_rer)^(1-US_mumi)
+USEAD_numi * (EAD_pex*USEAD_rer)^(1-US_mumi)
+USEAE_numi * (EAE_pex*USEAE_rer)^(1-US_mumi)
+USRW_numi * (RW_pex*USRW_rer)^(1-US_mumi)
+(1
-USEAA_numi
-USEAB_numi
-USEAC_numi
-USEAD_numi
-USEAE_numi
-USRW_numi
)*(EAF_pex*USEAF_rer)^(1-US_mumi);
// Private consumption good (import) inflation
US_piimi = US_pimi/US_pimi(-1)*US_pic;
// Private consumption good (import)
US_imcg^((US_mumcg-1)/US_mumcg) =
+USEAA_numcg ^(1/US_mumcg)*USEAA_imcg^(1-1/US_mumcg)
+USEAB_numcg ^(1/US_mumcg)*USEAB_imcg^(1-1/US_mumcg)
+USEAC_numcg ^(1/US_mumcg)*USEAC_imcg^(1-1/US_mumcg)
+USEAD_numcg ^(1/US_mumcg)*USEAD_imcg^(1-1/US_mumcg)
+USEAE_numcg ^(1/US_mumcg)*USEAE_imcg^(1-1/US_mumcg)
+USRW_numcg ^(1/US_mumcg)*USRW_imcg^(1-1/US_mumcg)
+(1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USEAD_numcg
-USEAE_numcg
-USRW_numcg
)^(1/US_mumcg)*USEAF_imcg^(1-1/US_mumcg);
// Demand for bilateral consumption import goods
USEAB_imcg = USEAB_numcg*((EAB_pex*USEAB_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USEAC_imcg = USEAC_numcg*((EAC_pex*USEAC_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USEAD_imcg = USEAD_numcg*((EAD_pex*USEAD_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USEAE_imcg = USEAE_numcg*((EAE_pex*USEAE_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Demand for bilateral consumption import goods
USRW_imcg = USRW_numcg*((RW_pex*USRW_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
USEAF_imcg = (1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USEAD_numcg
-USEAE_numcg
-USRW_numcg
)*((EAF_pex*USEAF_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
// Price of the consumption good (import)
US_pimcg^(1-US_mumcg) =
+USEAA_numcg * (EAA_pex*USEAA_rer)^(1-US_mumcg)
+USEAB_numcg * (EAB_pex*USEAB_rer)^(1-US_mumcg)
+USEAC_numcg * (EAC_pex*USEAC_rer)^(1-US_mumcg)
+USEAD_numcg * (EAD_pex*USEAD_rer)^(1-US_mumcg)
+USEAE_numcg * (EAE_pex*USEAE_rer)^(1-US_mumcg)
+USRW_numcg * (RW_pex*USRW_rer)^(1-US_mumcg)
+(1
-USEAA_numcg
-USEAB_numcg
-USEAC_numcg
-USEAD_numcg
-USEAE_numcg
-USRW_numcg
)*(EAF_pex*USEAF_rer)^(1-US_mumcg);
// Private consumption good (import) inflation
US_piimcg = US_pimcg/US_pimcg(-1)*US_pic;
// Private consumption good (import)
US_imig^((US_mumig-1)/US_mumig) =
+USEAA_numig ^(1/US_mumig)*USEAA_imig^(1-1/US_mumig)
+USEAB_numig ^(1/US_mumig)*USEAB_imig^(1-1/US_mumig)
+USEAC_numig ^(1/US_mumig)*USEAC_imig^(1-1/US_mumig)
+USEAD_numig ^(1/US_mumig)*USEAD_imig^(1-1/US_mumig)
+USEAE_numig ^(1/US_mumig)*USEAE_imig^(1-1/US_mumig)
+USRW_numig ^(1/US_mumig)*USRW_imig^(1-1/US_mumig)
+(1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USEAD_numig
-USEAE_numig
-USRW_numig
)^(1/US_mumig)*USEAF_imig^(1-1/US_mumig);
// Demand for bilateral consumption import goods
USEAB_imig = USEAB_numig*((EAB_pex*USEAB_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USEAC_imig = USEAC_numig*((EAC_pex*USEAC_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USEAD_imig = USEAD_numig*((EAD_pex*USEAD_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USEAE_imig = USEAE_numig*((EAE_pex*USEAE_rer)/US_pimig)^(-US_mumig)*US_imig;
// Demand for bilateral consumption import goods
USRW_imig = USRW_numig*((RW_pex*USRW_rer)/US_pimig)^(-US_mumig)*US_imig;
USEAF_imig = (1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USEAD_numig
-USEAE_numig
-USRW_numig
)*((EAF_pex*USEAF_rer)/US_pimig)^(-US_mumig)*US_imig;
// Price of the consumption good (import)
US_pimig^(1-US_mumig) =
+USEAA_numig * (EAA_pex*USEAA_rer)^(1-US_mumig)
+USEAB_numig * (EAB_pex*USEAB_rer)^(1-US_mumig)
+USEAC_numig * (EAC_pex*USEAC_rer)^(1-US_mumig)
+USEAD_numig * (EAD_pex*USEAD_rer)^(1-US_mumig)
+USEAE_numig * (EAE_pex*USEAE_rer)^(1-US_mumig)
+USRW_numig * (RW_pex*USRW_rer)^(1-US_mumig)
+(1
-USEAA_numig
-USEAB_numig
-USEAC_numig
-USEAD_numig
-USEAE_numig
-USRW_numig
)*(EAF_pex*USEAF_rer)^(1-US_mumig);
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
USEAE_im = 
+USEAE_imc
+USEAE_imi
+USEAE_imcg
+USEAE_imig
;
USEAF_im = 
+USEAF_imc
+USEAF_imi
+USEAF_imcg
+USEAF_imig
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
USEAE_gammaimc = 0;
USEAE_gammaimcdag = 1;
USEAF_gammaimc = 0;
USEAF_gammaimcdag = 1;
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
USEAE_gammaimi = 0;
USEAE_gammaimidag = 1;
USEAF_gammaimi = 0;
USEAF_gammaimidag = 1;
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
USEAE_gammaimcg = 0;
USEAE_gammaimcgdag = 1;
USEAF_gammaimcg = 0;
USEAF_gammaimcgdag = 1;
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
USEAE_gammaimig = 0;
USEAE_gammaimigdag = 1;
USEAF_gammaimig = 0;
USEAF_gammaimigdag = 1;
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
+US_pex*EAE_size/US_size*EAEUS_im
-EAE_pex*USEAE_rer*USEAE_im
+US_pex*EAF_size/US_size*EAFUS_im
-EAF_pex*USEAF_rer*USEAF_im
+US_pex*RW_size/US_size*RWUS_im
-RW_pex*USRW_rer*USRW_im
;
// Aggregate exports (volume)
US_ex =
+EAA_size/US_size*EAAUS_im
+EAB_size/US_size*EABUS_im
+EAC_size/US_size*EACUS_im
+EAD_size/US_size*EADUS_im
+EAE_size/US_size*EAEUS_im
+EAF_size/US_size*EAFUS_im
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
+US_pex*EAE_size/US_size*EAEUS_im
-(EAE_pex*USEAE_rer)*USEAE_imc
-(EAE_pex*USEAE_rer)*USEAE_imi
-(EAE_pex*USEAE_rer)*USEAE_imcg
-(EAE_pex*USEAE_rer)*USEAE_imig
+US_pex*EAF_size/US_size*EAFUS_im
-(EAF_pex*USEAF_rer)*USEAF_imc
-(EAF_pex*USEAF_rer)*USEAF_imi
-(EAF_pex*USEAF_rer)*USEAF_imcg
-(EAF_pex*USEAF_rer)*USEAF_imig
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
+EAE_size*EAE_py*EAE_y/EAE_rer
+EAF_size*EAF_py*EAF_y/EAF_rer
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
USEAE_imcy = (EAE_pex*USEAE_rer)*USEAE_imc/(US_py*US_y);
USEAE_imiy = (EAE_pex*USEAE_rer)*USEAE_imi/(US_py*US_y);
USEAE_imcgy = (EAE_pex*USEAE_rer)*USEAE_imcg/(US_py*US_y);
USEAE_imigy = (EAE_pex*USEAE_rer)*USEAE_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAE_excy  = EAE_size/US_size*US_pex*EAEUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAE_exiy  = EAE_size/US_size*US_pex*EAEUS_imi/(US_py*US_y);
// Bilateral shares
USEAF_imcy = (EAF_pex*USEAF_rer)*USEAF_imc/(US_py*US_y);
USEAF_imiy = (EAF_pex*USEAF_rer)*USEAF_imi/(US_py*US_y);
USEAF_imcgy = (EAF_pex*USEAF_rer)*USEAF_imcg/(US_py*US_y);
USEAF_imigy = (EAF_pex*USEAF_rer)*USEAF_imig/(US_py*US_y);
// Exports of consumption goods to gdp
USEAF_excy  = EAF_size/US_size*US_pex*EAFUS_imc/(US_py*US_y);
// Exports of investment goods to gdp
USEAF_exiy  = EAF_size/US_size*US_pex*EAFUS_imi/(US_py*US_y);
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
EAE_gammab = 0;
// International transaction cost ('risk premium')
EAE_bf = (EAE_bfytarget*EAE_py*EAE_y)/EAE_rer*US_pic;
// Risk premium shock
EAE_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAE_rerdep = EAE_rer/EAE_rer(-1);
// Definition of the terms of trade
EAE_tot = US_pex*EAE_rer/EAE_pex;
//-------------
// Bilateral equations versus country N
//-------------
// Euler equation for internationally traded bonds
EAF_gammab = 0;
// International transaction cost ('risk premium')
EAF_bf = (EAF_bfytarget*EAF_py*EAF_y)/EAF_rer*US_pic;
// Risk premium shock
EAF_rp = 0;
// Definition of the rate of real exchange-rate depreciation
EAF_rerdep = EAF_rer/EAF_rer(-1);
// Definition of the terms of trade
EAF_tot = US_pex*EAF_rer/EAF_pex;
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
-EAE_size*EAE_bf
-EAF_size*EAF_bf
-RW_size*RW_bf
;
// Net foreign asset position
	
		
			EAA_bf/US_r(-1) = -EAA_bh/EAF_r(-1)*EAAEAF_rer(-1)/EAA_rer(-1) + EAA_bh(-1)*EAAEAF_rer(-2) / EAA_rer(-2) + EAA_bf(-1) + EAA_tb(-1)/EAA_rer(-1);
		
	
	
		
			EAB_bf/US_r(-1) = -EAB_bh/EAF_r(-1)*EABEAF_rer(-1)/EAB_rer(-1) + EAB_bh(-1)*EABEAF_rer(-2) / EAB_rer(-2) + EAB_bf(-1) + EAB_tb(-1)/EAB_rer(-1);
		
	
	
		
			EAC_bf/US_r(-1) = -EAC_bh/EAF_r(-1)*EACEAF_rer(-1)/EAC_rer(-1) + EAC_bh(-1)*EACEAF_rer(-2) / EAC_rer(-2) + EAC_bf(-1) + EAC_tb(-1)/EAC_rer(-1);
		
	
	
		
			EAD_bf/US_r(-1) = -EAD_bh/EAF_r(-1)*EADEAF_rer(-1)/EAD_rer(-1) + EAD_bh(-1)*EADEAF_rer(-2) / EAD_rer(-2) + EAD_bf(-1) + EAD_tb(-1)/EAD_rer(-1);
		
	
	
		
			EAE_bf/US_r(-1) = -EAE_bh/EAF_r(-1)*EAEEAF_rer(-1)/EAE_rer(-1) + EAE_bh(-1)*EAEEAF_rer(-2) / EAE_rer(-2) + EAE_bf(-1) + EAE_tb(-1)/EAE_rer(-1);
		
	
	
			EAF_bf/US_r(-1) = -EAF_bh/EAA_r(-1) / EAF_rer(-1) + EAF_bh(-1) / EAF_rer(-2) + EAF_bf(-1) + EAF_tb(-1)/EAF_rer(-1);
		
	
		RW_bf/US_r(-1) = RW_bf(-1)+RW_tb(-1)/RW_rer(-1);
	
US_rer = 1;
		EAAEAF_nerdep = EAA_rerdep/EAF_rerdep*EAA_pic/EAF_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAA_gammabh = 0;
			EAA_bh = (EAA_bhytarget*EAA_py*EAA_y)/EAAEAF_rer*EAF_pic;
		EABEAF_nerdep = EAB_rerdep/EAF_rerdep*EAB_pic/EAF_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAB_gammabh = 0;
			EAB_bh = (EAB_bhytarget*EAB_py*EAB_y)/EABEAF_rer*EAF_pic;
		EACEAF_nerdep = EAC_rerdep/EAF_rerdep*EAC_pic/EAF_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAC_gammabh = 0;
			EAC_bh = (EAC_bhytarget*EAC_py*EAC_y)/EACEAF_rer*EAF_pic;
		EADEAF_nerdep = EAD_rerdep/EAF_rerdep*EAD_pic/EAF_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAD_gammabh = 0;
			EAD_bh = (EAD_bhytarget*EAD_py*EAD_y)/EADEAF_rer*EAF_pic;
		EAEEAF_nerdep = EAE_rerdep/EAF_rerdep*EAE_pic/EAF_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
			EAE_gammabh = 0;
			EAE_bh = (EAE_bhytarget*EAE_py*EAE_y)/EAEEAF_rer*EAF_pic;
0 =
	+ EAA_size*EAA_bh
	+ EAB_size*EAB_bh
	+ EAC_size*EAC_bh
	+ EAD_size*EAD_bh
	+ EAE_size*EAE_bh
	+ EAF_size*EAF_bh
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
			+ EAE_size*EAAEAE_rerbar*EAE_pybar *EAE_y	
			+ EAF_size*EAAEAF_rerbar*EAF_pybar *EAF_y	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
	+ EAE_size
	+ EAF_size
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
			+ EAE_size*EAAEAE_rerbar*EAE_m	
			+ EAF_size*EAAEAF_rerbar*EAF_m	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
	+ EAE_size
	+ EAF_size
);
	
EA_bf = 
	(
		+ EAA_size*EAA_bf	
		+ EAB_size*EAB_bf	
		+ EAC_size*EAC_bf	
		+ EAD_size*EAD_bf	
		+ EAE_size*EAE_bf	
		+ EAF_size*EAF_bf	
	)
	/
	(
	+ EAA_size
	+ EAB_size
	+ EAC_size
	+ EAD_size
	+ EAE_size
	+ EAF_size
);
// Annual inflation
EA_pic4 = 1 
		* EAA_pic4^(EAA_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
		* EAB_pic4^(EAB_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
		* EAC_pic4^(EAC_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
		* EAD_pic4^(EAD_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
		* EAE_pic4^(EAE_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
		* EAF_pic4^(EAF_size/(
				+ EAA_size
				+ EAB_size
				+ EAC_size
				+ EAD_size
				+ EAE_size
				+ EAF_size
			)) 
;
// Productivity
log(EA_z) = (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;
// Auxiliary equation for steady-state output
EA_ybar = EA_y;
end;
load("paramsToBeSaved", 'ctryNumberDouble')
  disp('Creating data for EAA');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAA', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAA_omega       = 0.25;
// Utility function
   EAA_beta        = 0.99;
   EAA_sigma       = 1.00;
   EAA_kappa       = 0.00;
   EAA_zeta        = 2.00;
// Capital accumulation
   EAA_delta       = 0.025;
// Wage setting
   EAA_eta         = 1.10;
   EAA_etai        = 1.10;
   EAA_etaj        = 1.10;
   EAA_xii         = 0.10;
   EAA_xij         = 0.10;
   EAA_chii        = 0.00;
   EAA_chij        = 0.00;
// Intermediate-good technology
   EAA_alphat       = 0.10;
   EAA_alphan       = 0.10;
   EAA_nukt         = 0.01;
   EAA_nukn         = 0.01;
   EAA_mut          = 0.999;
   EAA_mun          = 0.999;
   EAA_psit         = 0.00;
   EAA_psin         = 0.00;
// Price setting
   EAA_thetat      = 1.10;
   EAA_thetan      = 1.10;
   EAA_xin         = 0.10;
   EAA_xih         = 0.10;
   EAA_xix         = 0.10;
   EAA_chin        = 0.00;
   EAA_chih        = 0.00;
   EAA_chix        = 0.00;
// Final-good technologies
   EAA_mumc        = 1.001;
   EAA_nutc        = 0.5;
   EAA_mutc        = 1.001;
   EAA_nuc         = 0.5;
   EAA_muc         = 1.001;
   EAA_mumi        = 1.001;
   EAA_nuti        = 0.5;
   EAA_muti        = 1.001;
   EAA_nui         = 0.5;
   EAA_mui         = 1.001;
   EAA_mumcg        = 1.001;
   EAA_nutcg        = 0.5;
   EAA_mutcg        = 1.001;
   EAA_nucg         = 0.5;
   EAA_mucg         = 1.001;
   EAA_mumig        = 1.001;
   EAA_nutig        = 0.5;
   EAA_mutig        = 1.001;
   EAA_nuig         = 0.5;
   EAA_muig         = 1.001;
// Adjustment and transaction cost
   EAA_gammav1     = 0.02;
   EAA_gammav2     = 0.10;
   EAA_gammai1     = 1.00;
   EAA_gammau2     = 1.00;
   EAA_gammaimc1   = 1.00;
   EAA_gammaimi1   = 1.00;
   EAA_gammaimcg1   = 1.00;
   EAA_gammaimig1   = 1.00;
   EAA_gammab1     = 0.20;
// Fiscal policy
   EAA_bytarget    = 0.00;
   EAA_phitb       = 0.10;
   EAA_upsilont    = 1.00;
   EAA_upsilontr   = 1.00;
// Monetary policy
  EAA_pi4target   = 1.00;
// Net foreign asset position
    EAA_bfytarget   = 0.00;
    EAA_bhytarget   = 0.00;
// Autoregressive shocks
   EAA_rhoz        = 0.90;
   EAA_rhorp       = 0.90;
   EAA_rhocg        = 0.90;
   EAA_rhoig        = 0.90;
   EAA_rhotr       = 0.90;
   EAA_rhotauc     = 0.90;
   EAA_rhotauk     = 0.90;
   EAA_rhotaun     = 0.90;
   EAA_rhotaud     = 0.90;
   EAA_rhotauwh    = 0.90;
   EAA_rhotauwf    = 0.90;
   EAA_rhozt       = 0.90;
   EAA_rhozn       = 0.90;
   EAA_rhozinv     = 0.90;
   EAA_rhozq       = 0.90;
   EAA_rhowcst     = 0.90;
   EAA_rhozcon     = 0.90;
  disp('Creating data for EAB');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAB', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAB_omega       = 0.25;
// Utility function
   EAB_beta        = 0.99;
   EAB_sigma       = 1.00;
   EAB_kappa       = 0.00;
   EAB_zeta        = 2.00;
// Capital accumulation
   EAB_delta       = 0.025;
// Wage setting
   EAB_eta         = 1.10;
   EAB_etai        = 1.10;
   EAB_etaj        = 1.10;
   EAB_xii         = 0.10;
   EAB_xij         = 0.10;
   EAB_chii        = 0.00;
   EAB_chij        = 0.00;
// Intermediate-good technology
   EAB_alphat       = 0.10;
   EAB_alphan       = 0.10;
   EAB_nukt         = 0.01;
   EAB_nukn         = 0.01;
   EAB_mut          = 0.999;
   EAB_mun          = 0.999;
   EAB_psit         = 0.00;
   EAB_psin         = 0.00;
// Price setting
   EAB_thetat      = 1.10;
   EAB_thetan      = 1.10;
   EAB_xin         = 0.10;
   EAB_xih         = 0.10;
   EAB_xix         = 0.10;
   EAB_chin        = 0.00;
   EAB_chih        = 0.00;
   EAB_chix        = 0.00;
// Final-good technologies
   EAB_mumc        = 1.001;
   EAB_nutc        = 0.5;
   EAB_mutc        = 1.001;
   EAB_nuc         = 0.5;
   EAB_muc         = 1.001;
   EAB_mumi        = 1.001;
   EAB_nuti        = 0.5;
   EAB_muti        = 1.001;
   EAB_nui         = 0.5;
   EAB_mui         = 1.001;
   EAB_mumcg        = 1.001;
   EAB_nutcg        = 0.5;
   EAB_mutcg        = 1.001;
   EAB_nucg         = 0.5;
   EAB_mucg         = 1.001;
   EAB_mumig        = 1.001;
   EAB_nutig        = 0.5;
   EAB_mutig        = 1.001;
   EAB_nuig         = 0.5;
   EAB_muig         = 1.001;
// Adjustment and transaction cost
   EAB_gammav1     = 0.02;
   EAB_gammav2     = 0.10;
   EAB_gammai1     = 1.00;
   EAB_gammau2     = 1.00;
   EAB_gammaimc1   = 1.00;
   EAB_gammaimi1   = 1.00;
   EAB_gammaimcg1   = 1.00;
   EAB_gammaimig1   = 1.00;
   EAB_gammab1     = 0.20;
// Fiscal policy
   EAB_bytarget    = 0.00;
   EAB_phitb       = 0.10;
   EAB_upsilont    = 1.00;
   EAB_upsilontr   = 1.00;
// Monetary policy
  EAB_pi4target   = 1.00;
// Net foreign asset position
    EAB_bfytarget   = 0.00;
    EAB_bhytarget   = 0.00;
// Autoregressive shocks
   EAB_rhoz        = 0.90;
   EAB_rhorp       = 0.90;
   EAB_rhocg        = 0.90;
   EAB_rhoig        = 0.90;
   EAB_rhotr       = 0.90;
   EAB_rhotauc     = 0.90;
   EAB_rhotauk     = 0.90;
   EAB_rhotaun     = 0.90;
   EAB_rhotaud     = 0.90;
   EAB_rhotauwh    = 0.90;
   EAB_rhotauwf    = 0.90;
   EAB_rhozt       = 0.90;
   EAB_rhozn       = 0.90;
   EAB_rhozinv     = 0.90;
   EAB_rhozq       = 0.90;
   EAB_rhowcst     = 0.90;
   EAB_rhozcon     = 0.90;
  disp('Creating data for EAC');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAC', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAC_omega       = 0.25;
// Utility function
   EAC_beta        = 0.99;
   EAC_sigma       = 1.00;
   EAC_kappa       = 0.00;
   EAC_zeta        = 2.00;
// Capital accumulation
   EAC_delta       = 0.025;
// Wage setting
   EAC_eta         = 1.10;
   EAC_etai        = 1.10;
   EAC_etaj        = 1.10;
   EAC_xii         = 0.10;
   EAC_xij         = 0.10;
   EAC_chii        = 0.00;
   EAC_chij        = 0.00;
// Intermediate-good technology
   EAC_alphat       = 0.10;
   EAC_alphan       = 0.10;
   EAC_nukt         = 0.01;
   EAC_nukn         = 0.01;
   EAC_mut          = 0.999;
   EAC_mun          = 0.999;
   EAC_psit         = 0.00;
   EAC_psin         = 0.00;
// Price setting
   EAC_thetat      = 1.10;
   EAC_thetan      = 1.10;
   EAC_xin         = 0.10;
   EAC_xih         = 0.10;
   EAC_xix         = 0.10;
   EAC_chin        = 0.00;
   EAC_chih        = 0.00;
   EAC_chix        = 0.00;
// Final-good technologies
   EAC_mumc        = 1.001;
   EAC_nutc        = 0.5;
   EAC_mutc        = 1.001;
   EAC_nuc         = 0.5;
   EAC_muc         = 1.001;
   EAC_mumi        = 1.001;
   EAC_nuti        = 0.5;
   EAC_muti        = 1.001;
   EAC_nui         = 0.5;
   EAC_mui         = 1.001;
   EAC_mumcg        = 1.001;
   EAC_nutcg        = 0.5;
   EAC_mutcg        = 1.001;
   EAC_nucg         = 0.5;
   EAC_mucg         = 1.001;
   EAC_mumig        = 1.001;
   EAC_nutig        = 0.5;
   EAC_mutig        = 1.001;
   EAC_nuig         = 0.5;
   EAC_muig         = 1.001;
// Adjustment and transaction cost
   EAC_gammav1     = 0.02;
   EAC_gammav2     = 0.10;
   EAC_gammai1     = 1.00;
   EAC_gammau2     = 1.00;
   EAC_gammaimc1   = 1.00;
   EAC_gammaimi1   = 1.00;
   EAC_gammaimcg1   = 1.00;
   EAC_gammaimig1   = 1.00;
   EAC_gammab1     = 0.20;
// Fiscal policy
   EAC_bytarget    = 0.00;
   EAC_phitb       = 0.10;
   EAC_upsilont    = 1.00;
   EAC_upsilontr   = 1.00;
// Monetary policy
  EAC_pi4target   = 1.00;
// Net foreign asset position
    EAC_bfytarget   = 0.00;
    EAC_bhytarget   = 0.00;
// Autoregressive shocks
   EAC_rhoz        = 0.90;
   EAC_rhorp       = 0.90;
   EAC_rhocg        = 0.90;
   EAC_rhoig        = 0.90;
   EAC_rhotr       = 0.90;
   EAC_rhotauc     = 0.90;
   EAC_rhotauk     = 0.90;
   EAC_rhotaun     = 0.90;
   EAC_rhotaud     = 0.90;
   EAC_rhotauwh    = 0.90;
   EAC_rhotauwf    = 0.90;
   EAC_rhozt       = 0.90;
   EAC_rhozn       = 0.90;
   EAC_rhozinv     = 0.90;
   EAC_rhozq       = 0.90;
   EAC_rhowcst     = 0.90;
   EAC_rhozcon     = 0.90;
  disp('Creating data for EAD');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAD', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAD_omega       = 0.25;
// Utility function
   EAD_beta        = 0.99;
   EAD_sigma       = 1.00;
   EAD_kappa       = 0.00;
   EAD_zeta        = 2.00;
// Capital accumulation
   EAD_delta       = 0.025;
// Wage setting
   EAD_eta         = 1.10;
   EAD_etai        = 1.10;
   EAD_etaj        = 1.10;
   EAD_xii         = 0.10;
   EAD_xij         = 0.10;
   EAD_chii        = 0.00;
   EAD_chij        = 0.00;
// Intermediate-good technology
   EAD_alphat       = 0.10;
   EAD_alphan       = 0.10;
   EAD_nukt         = 0.01;
   EAD_nukn         = 0.01;
   EAD_mut          = 0.999;
   EAD_mun          = 0.999;
   EAD_psit         = 0.00;
   EAD_psin         = 0.00;
// Price setting
   EAD_thetat      = 1.10;
   EAD_thetan      = 1.10;
   EAD_xin         = 0.10;
   EAD_xih         = 0.10;
   EAD_xix         = 0.10;
   EAD_chin        = 0.00;
   EAD_chih        = 0.00;
   EAD_chix        = 0.00;
// Final-good technologies
   EAD_mumc        = 1.001;
   EAD_nutc        = 0.5;
   EAD_mutc        = 1.001;
   EAD_nuc         = 0.5;
   EAD_muc         = 1.001;
   EAD_mumi        = 1.001;
   EAD_nuti        = 0.5;
   EAD_muti        = 1.001;
   EAD_nui         = 0.5;
   EAD_mui         = 1.001;
   EAD_mumcg        = 1.001;
   EAD_nutcg        = 0.5;
   EAD_mutcg        = 1.001;
   EAD_nucg         = 0.5;
   EAD_mucg         = 1.001;
   EAD_mumig        = 1.001;
   EAD_nutig        = 0.5;
   EAD_mutig        = 1.001;
   EAD_nuig         = 0.5;
   EAD_muig         = 1.001;
// Adjustment and transaction cost
   EAD_gammav1     = 0.02;
   EAD_gammav2     = 0.10;
   EAD_gammai1     = 1.00;
   EAD_gammau2     = 1.00;
   EAD_gammaimc1   = 1.00;
   EAD_gammaimi1   = 1.00;
   EAD_gammaimcg1   = 1.00;
   EAD_gammaimig1   = 1.00;
   EAD_gammab1     = 0.20;
// Fiscal policy
   EAD_bytarget    = 0.00;
   EAD_phitb       = 0.10;
   EAD_upsilont    = 1.00;
   EAD_upsilontr   = 1.00;
// Monetary policy
  EAD_pi4target   = 1.00;
// Net foreign asset position
    EAD_bfytarget   = 0.00;
    EAD_bhytarget   = 0.00;
// Autoregressive shocks
   EAD_rhoz        = 0.90;
   EAD_rhorp       = 0.90;
   EAD_rhocg        = 0.90;
   EAD_rhoig        = 0.90;
   EAD_rhotr       = 0.90;
   EAD_rhotauc     = 0.90;
   EAD_rhotauk     = 0.90;
   EAD_rhotaun     = 0.90;
   EAD_rhotaud     = 0.90;
   EAD_rhotauwh    = 0.90;
   EAD_rhotauwf    = 0.90;
   EAD_rhozt       = 0.90;
   EAD_rhozn       = 0.90;
   EAD_rhozinv     = 0.90;
   EAD_rhozq       = 0.90;
   EAD_rhowcst     = 0.90;
   EAD_rhozcon     = 0.90;
  disp('Creating data for EAE');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAE', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAE_omega       = 0.25;
// Utility function
   EAE_beta        = 0.99;
   EAE_sigma       = 1.00;
   EAE_kappa       = 0.00;
   EAE_zeta        = 2.00;
// Capital accumulation
   EAE_delta       = 0.025;
// Wage setting
   EAE_eta         = 1.10;
   EAE_etai        = 1.10;
   EAE_etaj        = 1.10;
   EAE_xii         = 0.10;
   EAE_xij         = 0.10;
   EAE_chii        = 0.00;
   EAE_chij        = 0.00;
// Intermediate-good technology
   EAE_alphat       = 0.10;
   EAE_alphan       = 0.10;
   EAE_nukt         = 0.01;
   EAE_nukn         = 0.01;
   EAE_mut          = 0.999;
   EAE_mun          = 0.999;
   EAE_psit         = 0.00;
   EAE_psin         = 0.00;
// Price setting
   EAE_thetat      = 1.10;
   EAE_thetan      = 1.10;
   EAE_xin         = 0.10;
   EAE_xih         = 0.10;
   EAE_xix         = 0.10;
   EAE_chin        = 0.00;
   EAE_chih        = 0.00;
   EAE_chix        = 0.00;
// Final-good technologies
   EAE_mumc        = 1.001;
   EAE_nutc        = 0.5;
   EAE_mutc        = 1.001;
   EAE_nuc         = 0.5;
   EAE_muc         = 1.001;
   EAE_mumi        = 1.001;
   EAE_nuti        = 0.5;
   EAE_muti        = 1.001;
   EAE_nui         = 0.5;
   EAE_mui         = 1.001;
   EAE_mumcg        = 1.001;
   EAE_nutcg        = 0.5;
   EAE_mutcg        = 1.001;
   EAE_nucg         = 0.5;
   EAE_mucg         = 1.001;
   EAE_mumig        = 1.001;
   EAE_nutig        = 0.5;
   EAE_mutig        = 1.001;
   EAE_nuig         = 0.5;
   EAE_muig         = 1.001;
// Adjustment and transaction cost
   EAE_gammav1     = 0.02;
   EAE_gammav2     = 0.10;
   EAE_gammai1     = 1.00;
   EAE_gammau2     = 1.00;
   EAE_gammaimc1   = 1.00;
   EAE_gammaimi1   = 1.00;
   EAE_gammaimcg1   = 1.00;
   EAE_gammaimig1   = 1.00;
   EAE_gammab1     = 0.20;
// Fiscal policy
   EAE_bytarget    = 0.00;
   EAE_phitb       = 0.10;
   EAE_upsilont    = 1.00;
   EAE_upsilontr   = 1.00;
// Monetary policy
  EAE_pi4target   = 1.00;
// Net foreign asset position
    EAE_bfytarget   = 0.00;
    EAE_bhytarget   = 0.00;
// Autoregressive shocks
   EAE_rhoz        = 0.90;
   EAE_rhorp       = 0.90;
   EAE_rhocg        = 0.90;
   EAE_rhoig        = 0.90;
   EAE_rhotr       = 0.90;
   EAE_rhotauc     = 0.90;
   EAE_rhotauk     = 0.90;
   EAE_rhotaun     = 0.90;
   EAE_rhotaud     = 0.90;
   EAE_rhotauwh    = 0.90;
   EAE_rhotauwf    = 0.90;
   EAE_rhozt       = 0.90;
   EAE_rhozn       = 0.90;
   EAE_rhozinv     = 0.90;
   EAE_rhozq       = 0.90;
   EAE_rhowcst     = 0.90;
   EAE_rhozcon     = 0.90;
  disp('Creating data for EAF');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['EAF', '_size'], 1/ctryNumberDouble);
// Size of household J
   EAF_omega       = 0.25;
// Utility function
   EAF_beta        = 0.99;
   EAF_sigma       = 1.00;
   EAF_kappa       = 0.00;
   EAF_zeta        = 2.00;
// Capital accumulation
   EAF_delta       = 0.025;
// Wage setting
   EAF_eta         = 1.10;
   EAF_etai        = 1.10;
   EAF_etaj        = 1.10;
   EAF_xii         = 0.10;
   EAF_xij         = 0.10;
   EAF_chii        = 0.00;
   EAF_chij        = 0.00;
// Intermediate-good technology
   EAF_alphat       = 0.10;
   EAF_alphan       = 0.10;
   EAF_nukt         = 0.01;
   EAF_nukn         = 0.01;
   EAF_mut          = 0.999;
   EAF_mun          = 0.999;
   EAF_psit         = 0.00;
   EAF_psin         = 0.00;
// Price setting
   EAF_thetat      = 1.10;
   EAF_thetan      = 1.10;
   EAF_xin         = 0.10;
   EAF_xih         = 0.10;
   EAF_xix         = 0.10;
   EAF_chin        = 0.00;
   EAF_chih        = 0.00;
   EAF_chix        = 0.00;
// Final-good technologies
   EAF_mumc        = 1.001;
   EAF_nutc        = 0.5;
   EAF_mutc        = 1.001;
   EAF_nuc         = 0.5;
   EAF_muc         = 1.001;
   EAF_mumi        = 1.001;
   EAF_nuti        = 0.5;
   EAF_muti        = 1.001;
   EAF_nui         = 0.5;
   EAF_mui         = 1.001;
   EAF_mumcg        = 1.001;
   EAF_nutcg        = 0.5;
   EAF_mutcg        = 1.001;
   EAF_nucg         = 0.5;
   EAF_mucg         = 1.001;
   EAF_mumig        = 1.001;
   EAF_nutig        = 0.5;
   EAF_mutig        = 1.001;
   EAF_nuig         = 0.5;
   EAF_muig         = 1.001;
// Adjustment and transaction cost
   EAF_gammav1     = 0.02;
   EAF_gammav2     = 0.10;
   EAF_gammai1     = 1.00;
// must equal steady-state value of rk
     EAF_gammau1     = 0.00;  
   EAF_gammau2     = 1.00;
   EAF_gammaimc1   = 1.00;
   EAF_gammaimi1   = 1.00;
   EAF_gammaimcg1   = 1.00;
   EAF_gammaimig1   = 1.00;
   EAF_gammab1     = 0.20;
// Fiscal policy
   EAF_bytarget    = 0.00;
   EAF_phitb       = 0.10;
   EAF_upsilont    = 1.00;
   EAF_upsilontr   = 1.00;
// Monetary policy
  EAF_pi4target   = 1.00;
    EAF_phirr       = 0.75;
    EAF_phirgy      = 0.00;
    EAF_phirpi      = 1.50;
// Net foreign asset position
    EAF_bfytarget   = 0.00;
    EAF_bhytarget   = 0.00;
// Autoregressive shocks
   EAF_rhoz        = 0.90;
   EAF_rhorp       = 0.90;
   EAF_rhocg        = 0.90;
   EAF_rhoig        = 0.90;
   EAF_rhotr       = 0.90;
   EAF_rhotauc     = 0.90;
   EAF_rhotauk     = 0.90;
   EAF_rhotaun     = 0.90;
   EAF_rhotaud     = 0.90;
   EAF_rhotauwh    = 0.90;
   EAF_rhotauwf    = 0.90;
   EAF_rhozt       = 0.90;
   EAF_rhozn       = 0.90;
   EAF_rhozinv     = 0.90;
   EAF_rhozq       = 0.90;
   EAF_rhowcst     = 0.90;
   EAF_rhozcon     = 0.90;
  disp('Creating data for RW');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['RW', '_size'], 1/ctryNumberDouble);
// Size of household J
   RW_omega       = 0.25;
// Utility function
   RW_beta        = 0.99;
   RW_sigma       = 1.00;
   RW_kappa       = 0.00;
   RW_zeta        = 2.00;
// Capital accumulation
   RW_delta       = 0.025;
// Wage setting
   RW_eta         = 1.10;
   RW_etai        = 1.10;
   RW_etaj        = 1.10;
   RW_xii         = 0.10;
   RW_xij         = 0.10;
   RW_chii        = 0.00;
   RW_chij        = 0.00;
// Intermediate-good technology
   RW_alphat       = 0.10;
   RW_alphan       = 0.10;
   RW_nukt         = 0.01;
   RW_nukn         = 0.01;
   RW_mut          = 0.999;
   RW_mun          = 0.999;
   RW_psit         = 0.00;
   RW_psin         = 0.00;
// Price setting
   RW_thetat      = 1.10;
   RW_thetan      = 1.10;
   RW_xin         = 0.10;
   RW_xih         = 0.10;
   RW_xix         = 0.10;
   RW_chin        = 0.00;
   RW_chih        = 0.00;
   RW_chix        = 0.00;
// Final-good technologies
   RW_mumc        = 1.001;
   RW_nutc        = 0.5;
   RW_mutc        = 1.001;
   RW_nuc         = 0.5;
   RW_muc         = 1.001;
   RW_mumi        = 1.001;
   RW_nuti        = 0.5;
   RW_muti        = 1.001;
   RW_nui         = 0.5;
   RW_mui         = 1.001;
   RW_mumcg        = 1.001;
   RW_nutcg        = 0.5;
   RW_mutcg        = 1.001;
   RW_nucg         = 0.5;
   RW_mucg         = 1.001;
   RW_mumig        = 1.001;
   RW_nutig        = 0.5;
   RW_mutig        = 1.001;
   RW_nuig         = 0.5;
   RW_muig         = 1.001;
// Adjustment and transaction cost
   RW_gammav1     = 0.02;
   RW_gammav2     = 0.10;
   RW_gammai1     = 1.00;
// must equal steady-state value of rk
     RW_gammau1     = 0.00;  
   RW_gammau2     = 1.00;
   RW_gammaimc1   = 1.00;
   RW_gammaimi1   = 1.00;
   RW_gammaimcg1   = 1.00;
   RW_gammaimig1   = 1.00;
   RW_gammab1     = 0.20;
// Fiscal policy
   RW_bytarget    = 0.00;
   RW_phitb       = 0.10;
   RW_upsilont    = 1.00;
   RW_upsilontr   = 1.00;
// Monetary policy
  RW_pi4target   = 1.00;
    RW_phirr       = 0.75;
    RW_phirgy      = 0.00;
    RW_phirpi      = 1.50;
// Net foreign asset position
    RW_bfytarget   = 0.00;
    RW_bhytarget   = 0.00;
// Autoregressive shocks
   RW_rhoz        = 0.90;
   RW_rhorp       = 0.90;
   RW_rhocg        = 0.90;
   RW_rhoig        = 0.90;
   RW_rhotr       = 0.90;
   RW_rhotauc     = 0.90;
   RW_rhotauk     = 0.90;
   RW_rhotaun     = 0.90;
   RW_rhotaud     = 0.90;
   RW_rhotauwh    = 0.90;
   RW_rhotauwf    = 0.90;
   RW_rhozt       = 0.90;
   RW_rhozn       = 0.90;
   RW_rhozinv     = 0.90;
   RW_rhozq       = 0.90;
   RW_rhowcst     = 0.90;
   RW_rhozcon     = 0.90;
  disp('Creating data for US');
// ------------------ //
// Parameter values   //
// ------------------ //
// Country size (population)
   set_param_value(['US', '_size'], 1/ctryNumberDouble);
// Size of household J
   US_omega       = 0.25;
// Utility function
   US_beta        = 0.99;
   US_sigma       = 1.00;
   US_kappa       = 0.00;
   US_zeta        = 2.00;
// Capital accumulation
   US_delta       = 0.025;
// Wage setting
   US_eta         = 1.10;
   US_etai        = 1.10;
   US_etaj        = 1.10;
   US_xii         = 0.10;
   US_xij         = 0.10;
   US_chii        = 0.00;
   US_chij        = 0.00;
// Intermediate-good technology
   US_alphat       = 0.10;
   US_alphan       = 0.10;
   US_nukt         = 0.01;
   US_nukn         = 0.01;
   US_mut          = 0.999;
   US_mun          = 0.999;
   US_psit         = 0.00;
   US_psin         = 0.00;
// Price setting
   US_thetat      = 1.10;
   US_thetan      = 1.10;
   US_xin         = 0.10;
   US_xih         = 0.10;
   US_xix         = 0.10;
   US_chin        = 0.00;
   US_chih        = 0.00;
   US_chix        = 0.00;
// Final-good technologies
   US_mumc        = 1.001;
   US_nutc        = 0.5;
   US_mutc        = 1.001;
   US_nuc         = 0.5;
   US_muc         = 1.001;
   US_mumi        = 1.001;
   US_nuti        = 0.5;
   US_muti        = 1.001;
   US_nui         = 0.5;
   US_mui         = 1.001;
   US_mumcg        = 1.001;
   US_nutcg        = 0.5;
   US_mutcg        = 1.001;
   US_nucg         = 0.5;
   US_mucg         = 1.001;
   US_mumig        = 1.001;
   US_nutig        = 0.5;
   US_mutig        = 1.001;
   US_nuig         = 0.5;
   US_muig         = 1.001;
// Adjustment and transaction cost
   US_gammav1     = 0.02;
   US_gammav2     = 0.10;
   US_gammai1     = 1.00;
// must equal steady-state value of rk
     US_gammau1     = 0.00;  
   US_gammau2     = 1.00;
   US_gammaimc1   = 1.00;
   US_gammaimi1   = 1.00;
   US_gammaimcg1   = 1.00;
   US_gammaimig1   = 1.00;
   US_gammab1     = 0.20;
// Fiscal policy
   US_bytarget    = 0.00;
   US_phitb       = 0.10;
   US_upsilont    = 1.00;
   US_upsilontr   = 1.00;
// Monetary policy
  US_pi4target   = 1.00;
    US_phirr       = 0.75;
    US_phirgy      = 0.00;
    US_phirpi      = 1.50;
// Net foreign asset position
// Autoregressive shocks
   US_rhoz        = 0.90;
   US_rhorp       = 0.90;
   US_rhocg        = 0.90;
   US_rhoig        = 0.90;
   US_rhotr       = 0.90;
   US_rhotauc     = 0.90;
   US_rhotauk     = 0.90;
   US_rhotaun     = 0.90;
   US_rhotaud     = 0.90;
   US_rhotauwh    = 0.90;
   US_rhotauwf    = 0.90;
   US_rhozt       = 0.90;
   US_rhozn       = 0.90;
   US_rhozinv     = 0.90;
   US_rhozq       = 0.90;
   US_rhowcst     = 0.90;
   US_rhozcon     = 0.90;
 // Bilateral and asymmetric
            set_param_value(['EAA', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAA', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAB', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAC', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAD', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAE', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['EAF', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'EAF', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['RW', 'US', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAA', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAB', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAC', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAD', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'EAE', '_num', 'ig'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'c'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'i'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'cg'], 1/(ctryNumberDouble-1));
            set_param_value(['US', 'RW', '_num', 'ig'], 1/(ctryNumberDouble-1));
// Euro area
 EA_phirr       = 0.75;
 EA_phirgy      = 0.00;
 EA_phirpi      = 1.50;
 EA_rhoz        = 0.90;
 EA_zbar        = 1; 
load("paramsToBeSaved", 'ctryNumberDouble')
initval;
  
  EAA_b = 0;
  EAA_bf = 0;
  EAA_by = 0;
  EAA_c = 0.32158748924289;
  EAA_ci = 0.426239346856029;
  EAA_cj = 0.00763191640347169;
  EAA_cy = 0.993424266061439;
 
  EAA_d = 0.294287418715;
  EAA_dn = 0.15107;
  EAA_dt = 0.15107;
  EAA_epsilonm = -1.11375;
  EAA_etot = 1;
  EAA_ex = 0.081148;
  EAA_fh = 0.008;
  EAA_fx = 0.008;
  EAA_fi = 3.92463692108248E-006;
  EAA_fj = 1.45356923003055E-007;
  EAA_fn = 0.015;
    EAA_gammab = 0;
  EAA_gammai = 0;
  EAA_gammaider = 0;
  EAA_gammau = 0;
  EAA_gammauder = 0.0351010101010102;
  EAA_gammav = 3.26674261628783E-005;
  EAA_gammavi = 0.000101581769364806;
  EAA_gammavider = 0.00181818181818182;
  EAA_gammavj = 0.000101581769364808;
  EAA_gammavjder = 0.00181818181818184;
  EAA_gh = 0.09;
  EAA_gx = 0.09;
  EAA_gi = 0.0394976510764103;
  EAA_gj = 0.735309110981097;
  EAA_gn = 0.18;
  EAA_cgy = 0.01/10;
EAA_igy = 0.01/10;
  EAA_ht = 0.08;
  EAA_i = 0.00209600391746659;
  EAA_ii = 0.00279467188995545;
  EAA_im = 0.08;
  EAA_imy = 0.25;
  EAA_internalrer = 1;
  EAA_iy = 0.00647482014388443;
  EAA_k = 0.0838401566986634;
  EAA_kd = 0.0838401566986634;
  EAA_kdn =  0.0838401566986638/2;
  EAA_kdt =  0.0838401566986638/2;
  EAA_ki = 0.111786875598218;
 
  EAA_lambdai = 2.33590208608626;
  EAA_lambdaj = 130.459156895394;
  EAA_lcy = 0.081818; 
  EAA_m = 0.137125366155172;
  EAA_mcn =  0.0909090909090843;
  EAA_mct = 0.0909090909090905;
  EAA_mi = 0.181749068177306;
  EAA_mj = 0.0032542600887726;
  EAA_nd = 0.376144431057379;
  EAA_ndi = 0.158787199981097;
  EAA_ndj = 0.449007091712631;
  EAA_ndn = 0.376144431057384/2;
  EAA_ndt = 0.376144431057384/2;
  EAA_ni = 0.158787199981097;
  EAA_nj = 0.449007091712631;
  EAA_nt = 0.162;
  EAA_pex = 1;
  EAA_pht = 0.999999999999995;
  EAA_phttilde = 0.999999999999995;
  EAA_pextilde = 0.999999999999995;
  EAA_pi = 0.999999999999969;
  EAA_pcg = 0.999999999999969;
  EAA_pig = 0.999999999999969;
  EAA_pibar = 0.999999999999969;
  EAA_pic = 1;
  EAA_pic4 = 1;
  EAA_piex4 = 1;
  EAA_piht = 1;
  EAA_piex = 1;
  EAA_piimc = 1;
  EAA_piimi = 1;
  EAA_piimcg = 1;
  EAA_piimig = 1;
  
  EAA_piimc4 = 1;
  EAA_pim = 1;
  EAA_pimc = 1;
  EAA_pimi = 1;
  EAA_pimcg = 1;
  EAA_pimig = 1;
  EAA_pint = 1;
  EAA_piw = 1;
  EAA_piw4  = 1;
  EAA_pnt = 0.999999999999924;
  EAA_pnttilde =  0.999999999999926;
  EAA_psitbar = 0;
  EAA_psinbar = 0;
  EAA_pttc = 0.999999999999924;
  EAA_ptti = 0.999999999999924;
  EAA_pttcg = 0.999999999999924;
  EAA_pttig = 0.999999999999924;
  
  EAA_py = 1.00000000000005;
  EAA_pybar = 1.00000000000005; 
  EAA_q = 0.999999999999969;
  EAA_qbar = 0.999999999999969;
  EAA_r = 1.01010101010101;
  EAA_reer = 1;
  EAA_rer = 0.999999999944949;
    EAA_rerdep = 1;
    EAA_rp = 0;
  EAA_rk = 0.0351010101010111;
  
  EAA_rr = 1.01010101010101;
  EAA_rrstar = 1.01010101010101;
  EAA_sh = 1;
  EAA_sx = 1;
  EAA_si = 1;
  EAA_sj = 1;
  EAA_snt = 0.999999999999999;
  EAA_t = 0;
  EAA_tauc = 0;
  EAA_taud = 0;
  EAA_tauk = 0;
  EAA_taun = 0;
  EAA_tauwf = 0;
  EAA_tauwh = 0;
  EAA_tb = 0;
  EAA_tby= 0;
  EAA_ti = 0;
  EAA_tj = 0;
    EAA_tot = 1;
  EAA_tr = 7.1529038134542E-031;
  EAA_tri = 7.1529038134542E-031;
  EAA_trj = 7.1529038134542E-031;
  EAA_try = 2.20962209625084E-030;
  EAA_trybar = 2.20962209625084E-030;
  EAA_ty = 0;
  EAA_u = 1;
  EAA_utili = -85.4088763809503;
  EAA_utilj = -490.559067770525; 
  EAA_vi = 2.34520787991171;
  EAA_vj = 2.34520787991172;
  EAA_w = 0.0704140896354543;
  EAA_wcst = 0;
  EAA_whty = 0.081818;
  EAA_wi = 0.118732341269019;
  EAA_witilde = 0.118732341269019;
  EAA_wj = 0.0169990447988928;
  EAA_wjtilde = 0.0169990447988928;
  EAA_wnty = 0.081818;
  EAA_wy = 0.081818;
  EAA_y = 0.32;
  EAA_ybar = 0.32;
  EAA_ygap = 0;
  EAA_ygrowth = 1;
  EAA_ygrowth4 = 1;
  EAA_yhty = 0.499988;
  EAA_ynbar = 0.161;
  EAA_ytbar = 0.161;
  EAA_ynty = 0.499988;
  EAA_ysn =  0.161;
  EAA_yst = 0.161;
  EAA_yshare = 0.25;
  EAA_cg = EAA_cgy*EAA_pybar*EAA_ybar/EAA_pnt;
  EAA_ig = EAA_igy*EAA_pybar*EAA_ybar/EAA_pnt;
  EAA_zcon = 1;
  EAA_zinv = 1;
  EAA_zn = 1;
  EAA_zt = 1;
    
  
  EAA_cgybar = 0.01/10;
  EAA_igybar = 0.01/10;
  EAA_taucbar = 0;
  EAA_taudbar = 0;
  EAA_taukbar = 0;
  EAA_taunbar = 0;
  EAA_tauwfbar = 0;
  EAA_tauwhbar = 0;
  EAA_wcstbar = 0;
  EAA_zconbar = 1;
  EAA_zinvbar = 1;
  EAA_znbar = 1;
  EAA_ztbar = 1;
  EAA_epsgc = 0;
  EAA_epsgi = 0;
  EAA_epstauc = 0;
  EAA_epstaud = 0;
  EAA_epstauk = 0;
  EAA_epstaun = 0;
  EAA_epstauwh = 0;
  EAA_epstauwf = 0;
  EAA_epstr = 0;
  EAA_epswcst = 0;
  EAA_epszcon = 0;
  EAA_epszinv = 0;
  EAA_epszn = 0;
  EAA_epszt = 0;
      EAAEAB_rer = 1;
      EAAEAB_rerbar = 1;
      EAAEAB_im = 0.03;
      EAAEAB_gammaimc = 0;
      EAAEAB_gammaimcdag = 1;
      EAAEAB_gammaimi = 0;
      EAAEAB_gammaimidag = 1;
      EAAEAB_gammaimcg = 0;
      EAAEAB_gammaimcgdag = 1;
      EAAEAB_gammaimig = 0;
      EAAEAB_gammaimigdag = 1;
      EAAEAB_tot = 1;
      EAAEAB_weight = 0.35;
      EAAEAB_weightex = 0.35;
      EAAEAB_weightim = 0.35;
      EAAEAC_rer = 1;
      EAAEAC_rerbar = 1;
      EAAEAC_im = 0.03;
      EAAEAC_gammaimc = 0;
      EAAEAC_gammaimcdag = 1;
      EAAEAC_gammaimi = 0;
      EAAEAC_gammaimidag = 1;
      EAAEAC_gammaimcg = 0;
      EAAEAC_gammaimcgdag = 1;
      EAAEAC_gammaimig = 0;
      EAAEAC_gammaimigdag = 1;
      EAAEAC_tot = 1;
      EAAEAC_weight = 0.35;
      EAAEAC_weightex = 0.35;
      EAAEAC_weightim = 0.35;
      EAAEAD_rer = 1;
      EAAEAD_rerbar = 1;
      EAAEAD_im = 0.03;
      EAAEAD_gammaimc = 0;
      EAAEAD_gammaimcdag = 1;
      EAAEAD_gammaimi = 0;
      EAAEAD_gammaimidag = 1;
      EAAEAD_gammaimcg = 0;
      EAAEAD_gammaimcgdag = 1;
      EAAEAD_gammaimig = 0;
      EAAEAD_gammaimigdag = 1;
      EAAEAD_tot = 1;
      EAAEAD_weight = 0.35;
      EAAEAD_weightex = 0.35;
      EAAEAD_weightim = 0.35;
      EAAEAE_rer = 1;
      EAAEAE_rerbar = 1;
      EAAEAE_im = 0.03;
      EAAEAE_gammaimc = 0;
      EAAEAE_gammaimcdag = 1;
      EAAEAE_gammaimi = 0;
      EAAEAE_gammaimidag = 1;
      EAAEAE_gammaimcg = 0;
      EAAEAE_gammaimcgdag = 1;
      EAAEAE_gammaimig = 0;
      EAAEAE_gammaimigdag = 1;
      EAAEAE_tot = 1;
      EAAEAE_weight = 0.35;
      EAAEAE_weightex = 0.35;
      EAAEAE_weightim = 0.35;
      EAAEAF_rer = 1;
      EAAEAF_rerbar = 1;
      EAAEAF_im = 0.03;
      EAAEAF_gammaimc = 0;
      EAAEAF_gammaimcdag = 1;
      EAAEAF_gammaimi = 0;
      EAAEAF_gammaimidag = 1;
      EAAEAF_gammaimcg = 0;
      EAAEAF_gammaimcgdag = 1;
      EAAEAF_gammaimig = 0;
      EAAEAF_gammaimigdag = 1;
      EAAEAF_tot = 1;
      EAAEAF_weight = 0.35;
      EAAEAF_weightex = 0.35;
      EAAEAF_weightim = 0.35;
      EAARW_rer = 1;
      EAARW_rerbar = 1;
      EAARW_im = 0.03;
      EAARW_gammaimc = 0;
      EAARW_gammaimcdag = 1;
      EAARW_gammaimi = 0;
      EAARW_gammaimidag = 1;
      EAARW_gammaimcg = 0;
      EAARW_gammaimcgdag = 1;
      EAARW_gammaimig = 0;
      EAARW_gammaimigdag = 1;
      EAARW_tot = 1;
      EAARW_weight = 0.35;
      EAARW_weightex = 0.35;
      EAARW_weightim = 0.35;
      EAAUS_rer = 1;
      EAAUS_rerbar = 1;
      EAAUS_im = 0.03;
      EAAUS_gammaimc = 0;
      EAAUS_gammaimcdag = 1;
      EAAUS_gammaimi = 0;
      EAAUS_gammaimidag = 1;
      EAAUS_gammaimcg = 0;
      EAAUS_gammaimcgdag = 1;
      EAAUS_gammaimig = 0;
      EAAUS_gammaimigdag = 1;
      EAAUS_tot = 1;
      EAAUS_weight = 0.35;
      EAAUS_weightex = 0.35;
      EAAUS_weightim = 0.35;
  
  EAB_b = 0;
  EAB_bf = 0;
  EAB_by = 0;
  EAB_c = 0.32158748924289;
  EAB_ci = 0.426239346856029;
  EAB_cj = 0.00763191640347169;
  EAB_cy = 0.993424266061439;
 
  EAB_d = 0.294287418715;
  EAB_dn = 0.15107;
  EAB_dt = 0.15107;
  EAB_epsilonm = -1.11375;
  EAB_etot = 1;
  EAB_ex = 0.081148;
  EAB_fh = 0.008;
  EAB_fx = 0.008;
  EAB_fi = 3.92463692108248E-006;
  EAB_fj = 1.45356923003055E-007;
  EAB_fn = 0.015;
    EAB_gammab = 0;
  EAB_gammai = 0;
  EAB_gammaider = 0;
  EAB_gammau = 0;
  EAB_gammauder = 0.0351010101010102;
  EAB_gammav = 3.26674261628783E-005;
  EAB_gammavi = 0.000101581769364806;
  EAB_gammavider = 0.00181818181818182;
  EAB_gammavj = 0.000101581769364808;
  EAB_gammavjder = 0.00181818181818184;
  EAB_gh = 0.09;
  EAB_gx = 0.09;
  EAB_gi = 0.0394976510764103;
  EAB_gj = 0.735309110981097;
  EAB_gn = 0.18;
  EAB_cgy = 0.01/10;
EAB_igy = 0.01/10;
  EAB_ht = 0.08;
  EAB_i = 0.00209600391746659;
  EAB_ii = 0.00279467188995545;
  EAB_im = 0.08;
  EAB_imy = 0.25;
  EAB_internalrer = 1;
  EAB_iy = 0.00647482014388443;
  EAB_k = 0.0838401566986634;
  EAB_kd = 0.0838401566986634;
  EAB_kdn =  0.0838401566986638/2;
  EAB_kdt =  0.0838401566986638/2;
  EAB_ki = 0.111786875598218;
 
  EAB_lambdai = 2.33590208608626;
  EAB_lambdaj = 130.459156895394;
  EAB_lcy = 0.081818; 
  EAB_m = 0.137125366155172;
  EAB_mcn =  0.0909090909090843;
  EAB_mct = 0.0909090909090905;
  EAB_mi = 0.181749068177306;
  EAB_mj = 0.0032542600887726;
  EAB_nd = 0.376144431057379;
  EAB_ndi = 0.158787199981097;
  EAB_ndj = 0.449007091712631;
  EAB_ndn = 0.376144431057384/2;
  EAB_ndt = 0.376144431057384/2;
  EAB_ni = 0.158787199981097;
  EAB_nj = 0.449007091712631;
  EAB_nt = 0.162;
  EAB_pex = 1;
  EAB_pht = 0.999999999999995;
  EAB_phttilde = 0.999999999999995;
  EAB_pextilde = 0.999999999999995;
  EAB_pi = 0.999999999999969;
  EAB_pcg = 0.999999999999969;
  EAB_pig = 0.999999999999969;
  EAB_pibar = 0.999999999999969;
  EAB_pic = 1;
  EAB_pic4 = 1;
  EAB_piex4 = 1;
  EAB_piht = 1;
  EAB_piex = 1;
  EAB_piimc = 1;
  EAB_piimi = 1;
  EAB_piimcg = 1;
  EAB_piimig = 1;
  
  EAB_piimc4 = 1;
  EAB_pim = 1;
  EAB_pimc = 1;
  EAB_pimi = 1;
  EAB_pimcg = 1;
  EAB_pimig = 1;
  EAB_pint = 1;
  EAB_piw = 1;
  EAB_piw4  = 1;
  EAB_pnt = 0.999999999999924;
  EAB_pnttilde =  0.999999999999926;
  EAB_psitbar = 0;
  EAB_psinbar = 0;
  EAB_pttc = 0.999999999999924;
  EAB_ptti = 0.999999999999924;
  EAB_pttcg = 0.999999999999924;
  EAB_pttig = 0.999999999999924;
  
  EAB_py = 1.00000000000005;
  EAB_pybar = 1.00000000000005; 
  EAB_q = 0.999999999999969;
  EAB_qbar = 0.999999999999969;
  EAB_r = 1.01010101010101;
  EAB_reer = 1;
  EAB_rer = 0.999999999944949;
    EAB_rerdep = 1;
    EAB_rp = 0;
  EAB_rk = 0.0351010101010111;
  
  EAB_rr = 1.01010101010101;
  EAB_rrstar = 1.01010101010101;
  EAB_sh = 1;
  EAB_sx = 1;
  EAB_si = 1;
  EAB_sj = 1;
  EAB_snt = 0.999999999999999;
  EAB_t = 0;
  EAB_tauc = 0;
  EAB_taud = 0;
  EAB_tauk = 0;
  EAB_taun = 0;
  EAB_tauwf = 0;
  EAB_tauwh = 0;
  EAB_tb = 0;
  EAB_tby= 0;
  EAB_ti = 0;
  EAB_tj = 0;
    EAB_tot = 1;
  EAB_tr = 7.1529038134542E-031;
  EAB_tri = 7.1529038134542E-031;
  EAB_trj = 7.1529038134542E-031;
  EAB_try = 2.20962209625084E-030;
  EAB_trybar = 2.20962209625084E-030;
  EAB_ty = 0;
  EAB_u = 1;
  EAB_utili = -85.4088763809503;
  EAB_utilj = -490.559067770525; 
  EAB_vi = 2.34520787991171;
  EAB_vj = 2.34520787991172;
  EAB_w = 0.0704140896354543;
  EAB_wcst = 0;
  EAB_whty = 0.081818;
  EAB_wi = 0.118732341269019;
  EAB_witilde = 0.118732341269019;
  EAB_wj = 0.0169990447988928;
  EAB_wjtilde = 0.0169990447988928;
  EAB_wnty = 0.081818;
  EAB_wy = 0.081818;
  EAB_y = 0.32;
  EAB_ybar = 0.32;
  EAB_ygap = 0;
  EAB_ygrowth = 1;
  EAB_ygrowth4 = 1;
  EAB_yhty = 0.499988;
  EAB_ynbar = 0.161;
  EAB_ytbar = 0.161;
  EAB_ynty = 0.499988;
  EAB_ysn =  0.161;
  EAB_yst = 0.161;
  EAB_yshare = 0.25;
  EAB_cg = EAB_cgy*EAB_pybar*EAB_ybar/EAB_pnt;
  EAB_ig = EAB_igy*EAB_pybar*EAB_ybar/EAB_pnt;
  EAB_zcon = 1;
  EAB_zinv = 1;
  EAB_zn = 1;
  EAB_zt = 1;
    
  
  EAB_cgybar = 0.01/10;
  EAB_igybar = 0.01/10;
  EAB_taucbar = 0;
  EAB_taudbar = 0;
  EAB_taukbar = 0;
  EAB_taunbar = 0;
  EAB_tauwfbar = 0;
  EAB_tauwhbar = 0;
  EAB_wcstbar = 0;
  EAB_zconbar = 1;
  EAB_zinvbar = 1;
  EAB_znbar = 1;
  EAB_ztbar = 1;
  EAB_epsgc = 0;
  EAB_epsgi = 0;
  EAB_epstauc = 0;
  EAB_epstaud = 0;
  EAB_epstauk = 0;
  EAB_epstaun = 0;
  EAB_epstauwh = 0;
  EAB_epstauwf = 0;
  EAB_epstr = 0;
  EAB_epswcst = 0;
  EAB_epszcon = 0;
  EAB_epszinv = 0;
  EAB_epszn = 0;
  EAB_epszt = 0;
      EABEAA_rer = 1;
      EABEAA_rerbar = 1;
      EABEAA_im = 0.03;
      EABEAA_gammaimc = 0;
      EABEAA_gammaimcdag = 1;
      EABEAA_gammaimi = 0;
      EABEAA_gammaimidag = 1;
      EABEAA_gammaimcg = 0;
      EABEAA_gammaimcgdag = 1;
      EABEAA_gammaimig = 0;
      EABEAA_gammaimigdag = 1;
      EABEAA_tot = 1;
      EABEAA_weight = 0.35;
      EABEAA_weightex = 0.35;
      EABEAA_weightim = 0.35;
      EABEAC_rer = 1;
      EABEAC_rerbar = 1;
      EABEAC_im = 0.03;
      EABEAC_gammaimc = 0;
      EABEAC_gammaimcdag = 1;
      EABEAC_gammaimi = 0;
      EABEAC_gammaimidag = 1;
      EABEAC_gammaimcg = 0;
      EABEAC_gammaimcgdag = 1;
      EABEAC_gammaimig = 0;
      EABEAC_gammaimigdag = 1;
      EABEAC_tot = 1;
      EABEAC_weight = 0.35;
      EABEAC_weightex = 0.35;
      EABEAC_weightim = 0.35;
      EABEAD_rer = 1;
      EABEAD_rerbar = 1;
      EABEAD_im = 0.03;
      EABEAD_gammaimc = 0;
      EABEAD_gammaimcdag = 1;
      EABEAD_gammaimi = 0;
      EABEAD_gammaimidag = 1;
      EABEAD_gammaimcg = 0;
      EABEAD_gammaimcgdag = 1;
      EABEAD_gammaimig = 0;
      EABEAD_gammaimigdag = 1;
      EABEAD_tot = 1;
      EABEAD_weight = 0.35;
      EABEAD_weightex = 0.35;
      EABEAD_weightim = 0.35;
      EABEAE_rer = 1;
      EABEAE_rerbar = 1;
      EABEAE_im = 0.03;
      EABEAE_gammaimc = 0;
      EABEAE_gammaimcdag = 1;
      EABEAE_gammaimi = 0;
      EABEAE_gammaimidag = 1;
      EABEAE_gammaimcg = 0;
      EABEAE_gammaimcgdag = 1;
      EABEAE_gammaimig = 0;
      EABEAE_gammaimigdag = 1;
      EABEAE_tot = 1;
      EABEAE_weight = 0.35;
      EABEAE_weightex = 0.35;
      EABEAE_weightim = 0.35;
      EABEAF_rer = 1;
      EABEAF_rerbar = 1;
      EABEAF_im = 0.03;
      EABEAF_gammaimc = 0;
      EABEAF_gammaimcdag = 1;
      EABEAF_gammaimi = 0;
      EABEAF_gammaimidag = 1;
      EABEAF_gammaimcg = 0;
      EABEAF_gammaimcgdag = 1;
      EABEAF_gammaimig = 0;
      EABEAF_gammaimigdag = 1;
      EABEAF_tot = 1;
      EABEAF_weight = 0.35;
      EABEAF_weightex = 0.35;
      EABEAF_weightim = 0.35;
      EABRW_rer = 1;
      EABRW_rerbar = 1;
      EABRW_im = 0.03;
      EABRW_gammaimc = 0;
      EABRW_gammaimcdag = 1;
      EABRW_gammaimi = 0;
      EABRW_gammaimidag = 1;
      EABRW_gammaimcg = 0;
      EABRW_gammaimcgdag = 1;
      EABRW_gammaimig = 0;
      EABRW_gammaimigdag = 1;
      EABRW_tot = 1;
      EABRW_weight = 0.35;
      EABRW_weightex = 0.35;
      EABRW_weightim = 0.35;
      EABUS_rer = 1;
      EABUS_rerbar = 1;
      EABUS_im = 0.03;
      EABUS_gammaimc = 0;
      EABUS_gammaimcdag = 1;
      EABUS_gammaimi = 0;
      EABUS_gammaimidag = 1;
      EABUS_gammaimcg = 0;
      EABUS_gammaimcgdag = 1;
      EABUS_gammaimig = 0;
      EABUS_gammaimigdag = 1;
      EABUS_tot = 1;
      EABUS_weight = 0.35;
      EABUS_weightex = 0.35;
      EABUS_weightim = 0.35;
  
  EAC_b = 0;
  EAC_bf = 0;
  EAC_by = 0;
  EAC_c = 0.32158748924289;
  EAC_ci = 0.426239346856029;
  EAC_cj = 0.00763191640347169;
  EAC_cy = 0.993424266061439;
 
  EAC_d = 0.294287418715;
  EAC_dn = 0.15107;
  EAC_dt = 0.15107;
  EAC_epsilonm = -1.11375;
  EAC_etot = 1;
  EAC_ex = 0.081148;
  EAC_fh = 0.008;
  EAC_fx = 0.008;
  EAC_fi = 3.92463692108248E-006;
  EAC_fj = 1.45356923003055E-007;
  EAC_fn = 0.015;
    EAC_gammab = 0;
  EAC_gammai = 0;
  EAC_gammaider = 0;
  EAC_gammau = 0;
  EAC_gammauder = 0.0351010101010102;
  EAC_gammav = 3.26674261628783E-005;
  EAC_gammavi = 0.000101581769364806;
  EAC_gammavider = 0.00181818181818182;
  EAC_gammavj = 0.000101581769364808;
  EAC_gammavjder = 0.00181818181818184;
  EAC_gh = 0.09;
  EAC_gx = 0.09;
  EAC_gi = 0.0394976510764103;
  EAC_gj = 0.735309110981097;
  EAC_gn = 0.18;
  EAC_cgy = 0.01/10;
EAC_igy = 0.01/10;
  EAC_ht = 0.08;
  EAC_i = 0.00209600391746659;
  EAC_ii = 0.00279467188995545;
  EAC_im = 0.08;
  EAC_imy = 0.25;
  EAC_internalrer = 1;
  EAC_iy = 0.00647482014388443;
  EAC_k = 0.0838401566986634;
  EAC_kd = 0.0838401566986634;
  EAC_kdn =  0.0838401566986638/2;
  EAC_kdt =  0.0838401566986638/2;
  EAC_ki = 0.111786875598218;
 
  EAC_lambdai = 2.33590208608626;
  EAC_lambdaj = 130.459156895394;
  EAC_lcy = 0.081818; 
  EAC_m = 0.137125366155172;
  EAC_mcn =  0.0909090909090843;
  EAC_mct = 0.0909090909090905;
  EAC_mi = 0.181749068177306;
  EAC_mj = 0.0032542600887726;
  EAC_nd = 0.376144431057379;
  EAC_ndi = 0.158787199981097;
  EAC_ndj = 0.449007091712631;
  EAC_ndn = 0.376144431057384/2;
  EAC_ndt = 0.376144431057384/2;
  EAC_ni = 0.158787199981097;
  EAC_nj = 0.449007091712631;
  EAC_nt = 0.162;
  EAC_pex = 1;
  EAC_pht = 0.999999999999995;
  EAC_phttilde = 0.999999999999995;
  EAC_pextilde = 0.999999999999995;
  EAC_pi = 0.999999999999969;
  EAC_pcg = 0.999999999999969;
  EAC_pig = 0.999999999999969;
  EAC_pibar = 0.999999999999969;
  EAC_pic = 1;
  EAC_pic4 = 1;
  EAC_piex4 = 1;
  EAC_piht = 1;
  EAC_piex = 1;
  EAC_piimc = 1;
  EAC_piimi = 1;
  EAC_piimcg = 1;
  EAC_piimig = 1;
  
  EAC_piimc4 = 1;
  EAC_pim = 1;
  EAC_pimc = 1;
  EAC_pimi = 1;
  EAC_pimcg = 1;
  EAC_pimig = 1;
  EAC_pint = 1;
  EAC_piw = 1;
  EAC_piw4  = 1;
  EAC_pnt = 0.999999999999924;
  EAC_pnttilde =  0.999999999999926;
  EAC_psitbar = 0;
  EAC_psinbar = 0;
  EAC_pttc = 0.999999999999924;
  EAC_ptti = 0.999999999999924;
  EAC_pttcg = 0.999999999999924;
  EAC_pttig = 0.999999999999924;
  
  EAC_py = 1.00000000000005;
  EAC_pybar = 1.00000000000005; 
  EAC_q = 0.999999999999969;
  EAC_qbar = 0.999999999999969;
  EAC_r = 1.01010101010101;
  EAC_reer = 1;
  EAC_rer = 0.999999999944949;
    EAC_rerdep = 1;
    EAC_rp = 0;
  EAC_rk = 0.0351010101010111;
  
  EAC_rr = 1.01010101010101;
  EAC_rrstar = 1.01010101010101;
  EAC_sh = 1;
  EAC_sx = 1;
  EAC_si = 1;
  EAC_sj = 1;
  EAC_snt = 0.999999999999999;
  EAC_t = 0;
  EAC_tauc = 0;
  EAC_taud = 0;
  EAC_tauk = 0;
  EAC_taun = 0;
  EAC_tauwf = 0;
  EAC_tauwh = 0;
  EAC_tb = 0;
  EAC_tby= 0;
  EAC_ti = 0;
  EAC_tj = 0;
    EAC_tot = 1;
  EAC_tr = 7.1529038134542E-031;
  EAC_tri = 7.1529038134542E-031;
  EAC_trj = 7.1529038134542E-031;
  EAC_try = 2.20962209625084E-030;
  EAC_trybar = 2.20962209625084E-030;
  EAC_ty = 0;
  EAC_u = 1;
  EAC_utili = -85.4088763809503;
  EAC_utilj = -490.559067770525; 
  EAC_vi = 2.34520787991171;
  EAC_vj = 2.34520787991172;
  EAC_w = 0.0704140896354543;
  EAC_wcst = 0;
  EAC_whty = 0.081818;
  EAC_wi = 0.118732341269019;
  EAC_witilde = 0.118732341269019;
  EAC_wj = 0.0169990447988928;
  EAC_wjtilde = 0.0169990447988928;
  EAC_wnty = 0.081818;
  EAC_wy = 0.081818;
  EAC_y = 0.32;
  EAC_ybar = 0.32;
  EAC_ygap = 0;
  EAC_ygrowth = 1;
  EAC_ygrowth4 = 1;
  EAC_yhty = 0.499988;
  EAC_ynbar = 0.161;
  EAC_ytbar = 0.161;
  EAC_ynty = 0.499988;
  EAC_ysn =  0.161;
  EAC_yst = 0.161;
  EAC_yshare = 0.25;
  EAC_cg = EAC_cgy*EAC_pybar*EAC_ybar/EAC_pnt;
  EAC_ig = EAC_igy*EAC_pybar*EAC_ybar/EAC_pnt;
  EAC_zcon = 1;
  EAC_zinv = 1;
  EAC_zn = 1;
  EAC_zt = 1;
    
  
  EAC_cgybar = 0.01/10;
  EAC_igybar = 0.01/10;
  EAC_taucbar = 0;
  EAC_taudbar = 0;
  EAC_taukbar = 0;
  EAC_taunbar = 0;
  EAC_tauwfbar = 0;
  EAC_tauwhbar = 0;
  EAC_wcstbar = 0;
  EAC_zconbar = 1;
  EAC_zinvbar = 1;
  EAC_znbar = 1;
  EAC_ztbar = 1;
  EAC_epsgc = 0;
  EAC_epsgi = 0;
  EAC_epstauc = 0;
  EAC_epstaud = 0;
  EAC_epstauk = 0;
  EAC_epstaun = 0;
  EAC_epstauwh = 0;
  EAC_epstauwf = 0;
  EAC_epstr = 0;
  EAC_epswcst = 0;
  EAC_epszcon = 0;
  EAC_epszinv = 0;
  EAC_epszn = 0;
  EAC_epszt = 0;
      EACEAA_rer = 1;
      EACEAA_rerbar = 1;
      EACEAA_im = 0.03;
      EACEAA_gammaimc = 0;
      EACEAA_gammaimcdag = 1;
      EACEAA_gammaimi = 0;
      EACEAA_gammaimidag = 1;
      EACEAA_gammaimcg = 0;
      EACEAA_gammaimcgdag = 1;
      EACEAA_gammaimig = 0;
      EACEAA_gammaimigdag = 1;
      EACEAA_tot = 1;
      EACEAA_weight = 0.35;
      EACEAA_weightex = 0.35;
      EACEAA_weightim = 0.35;
      EACEAB_rer = 1;
      EACEAB_rerbar = 1;
      EACEAB_im = 0.03;
      EACEAB_gammaimc = 0;
      EACEAB_gammaimcdag = 1;
      EACEAB_gammaimi = 0;
      EACEAB_gammaimidag = 1;
      EACEAB_gammaimcg = 0;
      EACEAB_gammaimcgdag = 1;
      EACEAB_gammaimig = 0;
      EACEAB_gammaimigdag = 1;
      EACEAB_tot = 1;
      EACEAB_weight = 0.35;
      EACEAB_weightex = 0.35;
      EACEAB_weightim = 0.35;
      EACEAD_rer = 1;
      EACEAD_rerbar = 1;
      EACEAD_im = 0.03;
      EACEAD_gammaimc = 0;
      EACEAD_gammaimcdag = 1;
      EACEAD_gammaimi = 0;
      EACEAD_gammaimidag = 1;
      EACEAD_gammaimcg = 0;
      EACEAD_gammaimcgdag = 1;
      EACEAD_gammaimig = 0;
      EACEAD_gammaimigdag = 1;
      EACEAD_tot = 1;
      EACEAD_weight = 0.35;
      EACEAD_weightex = 0.35;
      EACEAD_weightim = 0.35;
      EACEAE_rer = 1;
      EACEAE_rerbar = 1;
      EACEAE_im = 0.03;
      EACEAE_gammaimc = 0;
      EACEAE_gammaimcdag = 1;
      EACEAE_gammaimi = 0;
      EACEAE_gammaimidag = 1;
      EACEAE_gammaimcg = 0;
      EACEAE_gammaimcgdag = 1;
      EACEAE_gammaimig = 0;
      EACEAE_gammaimigdag = 1;
      EACEAE_tot = 1;
      EACEAE_weight = 0.35;
      EACEAE_weightex = 0.35;
      EACEAE_weightim = 0.35;
      EACEAF_rer = 1;
      EACEAF_rerbar = 1;
      EACEAF_im = 0.03;
      EACEAF_gammaimc = 0;
      EACEAF_gammaimcdag = 1;
      EACEAF_gammaimi = 0;
      EACEAF_gammaimidag = 1;
      EACEAF_gammaimcg = 0;
      EACEAF_gammaimcgdag = 1;
      EACEAF_gammaimig = 0;
      EACEAF_gammaimigdag = 1;
      EACEAF_tot = 1;
      EACEAF_weight = 0.35;
      EACEAF_weightex = 0.35;
      EACEAF_weightim = 0.35;
      EACRW_rer = 1;
      EACRW_rerbar = 1;
      EACRW_im = 0.03;
      EACRW_gammaimc = 0;
      EACRW_gammaimcdag = 1;
      EACRW_gammaimi = 0;
      EACRW_gammaimidag = 1;
      EACRW_gammaimcg = 0;
      EACRW_gammaimcgdag = 1;
      EACRW_gammaimig = 0;
      EACRW_gammaimigdag = 1;
      EACRW_tot = 1;
      EACRW_weight = 0.35;
      EACRW_weightex = 0.35;
      EACRW_weightim = 0.35;
      EACUS_rer = 1;
      EACUS_rerbar = 1;
      EACUS_im = 0.03;
      EACUS_gammaimc = 0;
      EACUS_gammaimcdag = 1;
      EACUS_gammaimi = 0;
      EACUS_gammaimidag = 1;
      EACUS_gammaimcg = 0;
      EACUS_gammaimcgdag = 1;
      EACUS_gammaimig = 0;
      EACUS_gammaimigdag = 1;
      EACUS_tot = 1;
      EACUS_weight = 0.35;
      EACUS_weightex = 0.35;
      EACUS_weightim = 0.35;
  
  EAD_b = 0;
  EAD_bf = 0;
  EAD_by = 0;
  EAD_c = 0.32158748924289;
  EAD_ci = 0.426239346856029;
  EAD_cj = 0.00763191640347169;
  EAD_cy = 0.993424266061439;
 
  EAD_d = 0.294287418715;
  EAD_dn = 0.15107;
  EAD_dt = 0.15107;
  EAD_epsilonm = -1.11375;
  EAD_etot = 1;
  EAD_ex = 0.081148;
  EAD_fh = 0.008;
  EAD_fx = 0.008;
  EAD_fi = 3.92463692108248E-006;
  EAD_fj = 1.45356923003055E-007;
  EAD_fn = 0.015;
    EAD_gammab = 0;
  EAD_gammai = 0;
  EAD_gammaider = 0;
  EAD_gammau = 0;
  EAD_gammauder = 0.0351010101010102;
  EAD_gammav = 3.26674261628783E-005;
  EAD_gammavi = 0.000101581769364806;
  EAD_gammavider = 0.00181818181818182;
  EAD_gammavj = 0.000101581769364808;
  EAD_gammavjder = 0.00181818181818184;
  EAD_gh = 0.09;
  EAD_gx = 0.09;
  EAD_gi = 0.0394976510764103;
  EAD_gj = 0.735309110981097;
  EAD_gn = 0.18;
  EAD_cgy = 0.01/10;
EAD_igy = 0.01/10;
  EAD_ht = 0.08;
  EAD_i = 0.00209600391746659;
  EAD_ii = 0.00279467188995545;
  EAD_im = 0.08;
  EAD_imy = 0.25;
  EAD_internalrer = 1;
  EAD_iy = 0.00647482014388443;
  EAD_k = 0.0838401566986634;
  EAD_kd = 0.0838401566986634;
  EAD_kdn =  0.0838401566986638/2;
  EAD_kdt =  0.0838401566986638/2;
  EAD_ki = 0.111786875598218;
 
  EAD_lambdai = 2.33590208608626;
  EAD_lambdaj = 130.459156895394;
  EAD_lcy = 0.081818; 
  EAD_m = 0.137125366155172;
  EAD_mcn =  0.0909090909090843;
  EAD_mct = 0.0909090909090905;
  EAD_mi = 0.181749068177306;
  EAD_mj = 0.0032542600887726;
  EAD_nd = 0.376144431057379;
  EAD_ndi = 0.158787199981097;
  EAD_ndj = 0.449007091712631;
  EAD_ndn = 0.376144431057384/2;
  EAD_ndt = 0.376144431057384/2;
  EAD_ni = 0.158787199981097;
  EAD_nj = 0.449007091712631;
  EAD_nt = 0.162;
  EAD_pex = 1;
  EAD_pht = 0.999999999999995;
  EAD_phttilde = 0.999999999999995;
  EAD_pextilde = 0.999999999999995;
  EAD_pi = 0.999999999999969;
  EAD_pcg = 0.999999999999969;
  EAD_pig = 0.999999999999969;
  EAD_pibar = 0.999999999999969;
  EAD_pic = 1;
  EAD_pic4 = 1;
  EAD_piex4 = 1;
  EAD_piht = 1;
  EAD_piex = 1;
  EAD_piimc = 1;
  EAD_piimi = 1;
  EAD_piimcg = 1;
  EAD_piimig = 1;
  
  EAD_piimc4 = 1;
  EAD_pim = 1;
  EAD_pimc = 1;
  EAD_pimi = 1;
  EAD_pimcg = 1;
  EAD_pimig = 1;
  EAD_pint = 1;
  EAD_piw = 1;
  EAD_piw4  = 1;
  EAD_pnt = 0.999999999999924;
  EAD_pnttilde =  0.999999999999926;
  EAD_psitbar = 0;
  EAD_psinbar = 0;
  EAD_pttc = 0.999999999999924;
  EAD_ptti = 0.999999999999924;
  EAD_pttcg = 0.999999999999924;
  EAD_pttig = 0.999999999999924;
  
  EAD_py = 1.00000000000005;
  EAD_pybar = 1.00000000000005; 
  EAD_q = 0.999999999999969;
  EAD_qbar = 0.999999999999969;
  EAD_r = 1.01010101010101;
  EAD_reer = 1;
  EAD_rer = 0.999999999944949;
    EAD_rerdep = 1;
    EAD_rp = 0;
  EAD_rk = 0.0351010101010111;
  
  EAD_rr = 1.01010101010101;
  EAD_rrstar = 1.01010101010101;
  EAD_sh = 1;
  EAD_sx = 1;
  EAD_si = 1;
  EAD_sj = 1;
  EAD_snt = 0.999999999999999;
  EAD_t = 0;
  EAD_tauc = 0;
  EAD_taud = 0;
  EAD_tauk = 0;
  EAD_taun = 0;
  EAD_tauwf = 0;
  EAD_tauwh = 0;
  EAD_tb = 0;
  EAD_tby= 0;
  EAD_ti = 0;
  EAD_tj = 0;
    EAD_tot = 1;
  EAD_tr = 7.1529038134542E-031;
  EAD_tri = 7.1529038134542E-031;
  EAD_trj = 7.1529038134542E-031;
  EAD_try = 2.20962209625084E-030;
  EAD_trybar = 2.20962209625084E-030;
  EAD_ty = 0;
  EAD_u = 1;
  EAD_utili = -85.4088763809503;
  EAD_utilj = -490.559067770525; 
  EAD_vi = 2.34520787991171;
  EAD_vj = 2.34520787991172;
  EAD_w = 0.0704140896354543;
  EAD_wcst = 0;
  EAD_whty = 0.081818;
  EAD_wi = 0.118732341269019;
  EAD_witilde = 0.118732341269019;
  EAD_wj = 0.0169990447988928;
  EAD_wjtilde = 0.0169990447988928;
  EAD_wnty = 0.081818;
  EAD_wy = 0.081818;
  EAD_y = 0.32;
  EAD_ybar = 0.32;
  EAD_ygap = 0;
  EAD_ygrowth = 1;
  EAD_ygrowth4 = 1;
  EAD_yhty = 0.499988;
  EAD_ynbar = 0.161;
  EAD_ytbar = 0.161;
  EAD_ynty = 0.499988;
  EAD_ysn =  0.161;
  EAD_yst = 0.161;
  EAD_yshare = 0.25;
  EAD_cg = EAD_cgy*EAD_pybar*EAD_ybar/EAD_pnt;
  EAD_ig = EAD_igy*EAD_pybar*EAD_ybar/EAD_pnt;
  EAD_zcon = 1;
  EAD_zinv = 1;
  EAD_zn = 1;
  EAD_zt = 1;
    
  
  EAD_cgybar = 0.01/10;
  EAD_igybar = 0.01/10;
  EAD_taucbar = 0;
  EAD_taudbar = 0;
  EAD_taukbar = 0;
  EAD_taunbar = 0;
  EAD_tauwfbar = 0;
  EAD_tauwhbar = 0;
  EAD_wcstbar = 0;
  EAD_zconbar = 1;
  EAD_zinvbar = 1;
  EAD_znbar = 1;
  EAD_ztbar = 1;
  EAD_epsgc = 0;
  EAD_epsgi = 0;
  EAD_epstauc = 0;
  EAD_epstaud = 0;
  EAD_epstauk = 0;
  EAD_epstaun = 0;
  EAD_epstauwh = 0;
  EAD_epstauwf = 0;
  EAD_epstr = 0;
  EAD_epswcst = 0;
  EAD_epszcon = 0;
  EAD_epszinv = 0;
  EAD_epszn = 0;
  EAD_epszt = 0;
      EADEAA_rer = 1;
      EADEAA_rerbar = 1;
      EADEAA_im = 0.03;
      EADEAA_gammaimc = 0;
      EADEAA_gammaimcdag = 1;
      EADEAA_gammaimi = 0;
      EADEAA_gammaimidag = 1;
      EADEAA_gammaimcg = 0;
      EADEAA_gammaimcgdag = 1;
      EADEAA_gammaimig = 0;
      EADEAA_gammaimigdag = 1;
      EADEAA_tot = 1;
      EADEAA_weight = 0.35;
      EADEAA_weightex = 0.35;
      EADEAA_weightim = 0.35;
      EADEAB_rer = 1;
      EADEAB_rerbar = 1;
      EADEAB_im = 0.03;
      EADEAB_gammaimc = 0;
      EADEAB_gammaimcdag = 1;
      EADEAB_gammaimi = 0;
      EADEAB_gammaimidag = 1;
      EADEAB_gammaimcg = 0;
      EADEAB_gammaimcgdag = 1;
      EADEAB_gammaimig = 0;
      EADEAB_gammaimigdag = 1;
      EADEAB_tot = 1;
      EADEAB_weight = 0.35;
      EADEAB_weightex = 0.35;
      EADEAB_weightim = 0.35;
      EADEAC_rer = 1;
      EADEAC_rerbar = 1;
      EADEAC_im = 0.03;
      EADEAC_gammaimc = 0;
      EADEAC_gammaimcdag = 1;
      EADEAC_gammaimi = 0;
      EADEAC_gammaimidag = 1;
      EADEAC_gammaimcg = 0;
      EADEAC_gammaimcgdag = 1;
      EADEAC_gammaimig = 0;
      EADEAC_gammaimigdag = 1;
      EADEAC_tot = 1;
      EADEAC_weight = 0.35;
      EADEAC_weightex = 0.35;
      EADEAC_weightim = 0.35;
      EADEAE_rer = 1;
      EADEAE_rerbar = 1;
      EADEAE_im = 0.03;
      EADEAE_gammaimc = 0;
      EADEAE_gammaimcdag = 1;
      EADEAE_gammaimi = 0;
      EADEAE_gammaimidag = 1;
      EADEAE_gammaimcg = 0;
      EADEAE_gammaimcgdag = 1;
      EADEAE_gammaimig = 0;
      EADEAE_gammaimigdag = 1;
      EADEAE_tot = 1;
      EADEAE_weight = 0.35;
      EADEAE_weightex = 0.35;
      EADEAE_weightim = 0.35;
      EADEAF_rer = 1;
      EADEAF_rerbar = 1;
      EADEAF_im = 0.03;
      EADEAF_gammaimc = 0;
      EADEAF_gammaimcdag = 1;
      EADEAF_gammaimi = 0;
      EADEAF_gammaimidag = 1;
      EADEAF_gammaimcg = 0;
      EADEAF_gammaimcgdag = 1;
      EADEAF_gammaimig = 0;
      EADEAF_gammaimigdag = 1;
      EADEAF_tot = 1;
      EADEAF_weight = 0.35;
      EADEAF_weightex = 0.35;
      EADEAF_weightim = 0.35;
      EADRW_rer = 1;
      EADRW_rerbar = 1;
      EADRW_im = 0.03;
      EADRW_gammaimc = 0;
      EADRW_gammaimcdag = 1;
      EADRW_gammaimi = 0;
      EADRW_gammaimidag = 1;
      EADRW_gammaimcg = 0;
      EADRW_gammaimcgdag = 1;
      EADRW_gammaimig = 0;
      EADRW_gammaimigdag = 1;
      EADRW_tot = 1;
      EADRW_weight = 0.35;
      EADRW_weightex = 0.35;
      EADRW_weightim = 0.35;
      EADUS_rer = 1;
      EADUS_rerbar = 1;
      EADUS_im = 0.03;
      EADUS_gammaimc = 0;
      EADUS_gammaimcdag = 1;
      EADUS_gammaimi = 0;
      EADUS_gammaimidag = 1;
      EADUS_gammaimcg = 0;
      EADUS_gammaimcgdag = 1;
      EADUS_gammaimig = 0;
      EADUS_gammaimigdag = 1;
      EADUS_tot = 1;
      EADUS_weight = 0.35;
      EADUS_weightex = 0.35;
      EADUS_weightim = 0.35;
  
  EAE_b = 0;
  EAE_bf = 0;
  EAE_by = 0;
  EAE_c = 0.32158748924289;
  EAE_ci = 0.426239346856029;
  EAE_cj = 0.00763191640347169;
  EAE_cy = 0.993424266061439;
 
  EAE_d = 0.294287418715;
  EAE_dn = 0.15107;
  EAE_dt = 0.15107;
  EAE_epsilonm = -1.11375;
  EAE_etot = 1;
  EAE_ex = 0.081148;
  EAE_fh = 0.008;
  EAE_fx = 0.008;
  EAE_fi = 3.92463692108248E-006;
  EAE_fj = 1.45356923003055E-007;
  EAE_fn = 0.015;
    EAE_gammab = 0;
  EAE_gammai = 0;
  EAE_gammaider = 0;
  EAE_gammau = 0;
  EAE_gammauder = 0.0351010101010102;
  EAE_gammav = 3.26674261628783E-005;
  EAE_gammavi = 0.000101581769364806;
  EAE_gammavider = 0.00181818181818182;
  EAE_gammavj = 0.000101581769364808;
  EAE_gammavjder = 0.00181818181818184;
  EAE_gh = 0.09;
  EAE_gx = 0.09;
  EAE_gi = 0.0394976510764103;
  EAE_gj = 0.735309110981097;
  EAE_gn = 0.18;
  EAE_cgy = 0.01/10;
EAE_igy = 0.01/10;
  EAE_ht = 0.08;
  EAE_i = 0.00209600391746659;
  EAE_ii = 0.00279467188995545;
  EAE_im = 0.08;
  EAE_imy = 0.25;
  EAE_internalrer = 1;
  EAE_iy = 0.00647482014388443;
  EAE_k = 0.0838401566986634;
  EAE_kd = 0.0838401566986634;
  EAE_kdn =  0.0838401566986638/2;
  EAE_kdt =  0.0838401566986638/2;
  EAE_ki = 0.111786875598218;
 
  EAE_lambdai = 2.33590208608626;
  EAE_lambdaj = 130.459156895394;
  EAE_lcy = 0.081818; 
  EAE_m = 0.137125366155172;
  EAE_mcn =  0.0909090909090843;
  EAE_mct = 0.0909090909090905;
  EAE_mi = 0.181749068177306;
  EAE_mj = 0.0032542600887726;
  EAE_nd = 0.376144431057379;
  EAE_ndi = 0.158787199981097;
  EAE_ndj = 0.449007091712631;
  EAE_ndn = 0.376144431057384/2;
  EAE_ndt = 0.376144431057384/2;
  EAE_ni = 0.158787199981097;
  EAE_nj = 0.449007091712631;
  EAE_nt = 0.162;
  EAE_pex = 1;
  EAE_pht = 0.999999999999995;
  EAE_phttilde = 0.999999999999995;
  EAE_pextilde = 0.999999999999995;
  EAE_pi = 0.999999999999969;
  EAE_pcg = 0.999999999999969;
  EAE_pig = 0.999999999999969;
  EAE_pibar = 0.999999999999969;
  EAE_pic = 1;
  EAE_pic4 = 1;
  EAE_piex4 = 1;
  EAE_piht = 1;
  EAE_piex = 1;
  EAE_piimc = 1;
  EAE_piimi = 1;
  EAE_piimcg = 1;
  EAE_piimig = 1;
  
  EAE_piimc4 = 1;
  EAE_pim = 1;
  EAE_pimc = 1;
  EAE_pimi = 1;
  EAE_pimcg = 1;
  EAE_pimig = 1;
  EAE_pint = 1;
  EAE_piw = 1;
  EAE_piw4  = 1;
  EAE_pnt = 0.999999999999924;
  EAE_pnttilde =  0.999999999999926;
  EAE_psitbar = 0;
  EAE_psinbar = 0;
  EAE_pttc = 0.999999999999924;
  EAE_ptti = 0.999999999999924;
  EAE_pttcg = 0.999999999999924;
  EAE_pttig = 0.999999999999924;
  
  EAE_py = 1.00000000000005;
  EAE_pybar = 1.00000000000005; 
  EAE_q = 0.999999999999969;
  EAE_qbar = 0.999999999999969;
  EAE_r = 1.01010101010101;
  EAE_reer = 1;
  EAE_rer = 0.999999999944949;
    EAE_rerdep = 1;
    EAE_rp = 0;
  EAE_rk = 0.0351010101010111;
  
  EAE_rr = 1.01010101010101;
  EAE_rrstar = 1.01010101010101;
  EAE_sh = 1;
  EAE_sx = 1;
  EAE_si = 1;
  EAE_sj = 1;
  EAE_snt = 0.999999999999999;
  EAE_t = 0;
  EAE_tauc = 0;
  EAE_taud = 0;
  EAE_tauk = 0;
  EAE_taun = 0;
  EAE_tauwf = 0;
  EAE_tauwh = 0;
  EAE_tb = 0;
  EAE_tby= 0;
  EAE_ti = 0;
  EAE_tj = 0;
    EAE_tot = 1;
  EAE_tr = 7.1529038134542E-031;
  EAE_tri = 7.1529038134542E-031;
  EAE_trj = 7.1529038134542E-031;
  EAE_try = 2.20962209625084E-030;
  EAE_trybar = 2.20962209625084E-030;
  EAE_ty = 0;
  EAE_u = 1;
  EAE_utili = -85.4088763809503;
  EAE_utilj = -490.559067770525; 
  EAE_vi = 2.34520787991171;
  EAE_vj = 2.34520787991172;
  EAE_w = 0.0704140896354543;
  EAE_wcst = 0;
  EAE_whty = 0.081818;
  EAE_wi = 0.118732341269019;
  EAE_witilde = 0.118732341269019;
  EAE_wj = 0.0169990447988928;
  EAE_wjtilde = 0.0169990447988928;
  EAE_wnty = 0.081818;
  EAE_wy = 0.081818;
  EAE_y = 0.32;
  EAE_ybar = 0.32;
  EAE_ygap = 0;
  EAE_ygrowth = 1;
  EAE_ygrowth4 = 1;
  EAE_yhty = 0.499988;
  EAE_ynbar = 0.161;
  EAE_ytbar = 0.161;
  EAE_ynty = 0.499988;
  EAE_ysn =  0.161;
  EAE_yst = 0.161;
  EAE_yshare = 0.25;
  EAE_cg = EAE_cgy*EAE_pybar*EAE_ybar/EAE_pnt;
  EAE_ig = EAE_igy*EAE_pybar*EAE_ybar/EAE_pnt;
  EAE_zcon = 1;
  EAE_zinv = 1;
  EAE_zn = 1;
  EAE_zt = 1;
    
  
  EAE_cgybar = 0.01/10;
  EAE_igybar = 0.01/10;
  EAE_taucbar = 0;
  EAE_taudbar = 0;
  EAE_taukbar = 0;
  EAE_taunbar = 0;
  EAE_tauwfbar = 0;
  EAE_tauwhbar = 0;
  EAE_wcstbar = 0;
  EAE_zconbar = 1;
  EAE_zinvbar = 1;
  EAE_znbar = 1;
  EAE_ztbar = 1;
  EAE_epsgc = 0;
  EAE_epsgi = 0;
  EAE_epstauc = 0;
  EAE_epstaud = 0;
  EAE_epstauk = 0;
  EAE_epstaun = 0;
  EAE_epstauwh = 0;
  EAE_epstauwf = 0;
  EAE_epstr = 0;
  EAE_epswcst = 0;
  EAE_epszcon = 0;
  EAE_epszinv = 0;
  EAE_epszn = 0;
  EAE_epszt = 0;
      EAEEAA_rer = 1;
      EAEEAA_rerbar = 1;
      EAEEAA_im = 0.03;
      EAEEAA_gammaimc = 0;
      EAEEAA_gammaimcdag = 1;
      EAEEAA_gammaimi = 0;
      EAEEAA_gammaimidag = 1;
      EAEEAA_gammaimcg = 0;
      EAEEAA_gammaimcgdag = 1;
      EAEEAA_gammaimig = 0;
      EAEEAA_gammaimigdag = 1;
      EAEEAA_tot = 1;
      EAEEAA_weight = 0.35;
      EAEEAA_weightex = 0.35;
      EAEEAA_weightim = 0.35;
      EAEEAB_rer = 1;
      EAEEAB_rerbar = 1;
      EAEEAB_im = 0.03;
      EAEEAB_gammaimc = 0;
      EAEEAB_gammaimcdag = 1;
      EAEEAB_gammaimi = 0;
      EAEEAB_gammaimidag = 1;
      EAEEAB_gammaimcg = 0;
      EAEEAB_gammaimcgdag = 1;
      EAEEAB_gammaimig = 0;
      EAEEAB_gammaimigdag = 1;
      EAEEAB_tot = 1;
      EAEEAB_weight = 0.35;
      EAEEAB_weightex = 0.35;
      EAEEAB_weightim = 0.35;
      EAEEAC_rer = 1;
      EAEEAC_rerbar = 1;
      EAEEAC_im = 0.03;
      EAEEAC_gammaimc = 0;
      EAEEAC_gammaimcdag = 1;
      EAEEAC_gammaimi = 0;
      EAEEAC_gammaimidag = 1;
      EAEEAC_gammaimcg = 0;
      EAEEAC_gammaimcgdag = 1;
      EAEEAC_gammaimig = 0;
      EAEEAC_gammaimigdag = 1;
      EAEEAC_tot = 1;
      EAEEAC_weight = 0.35;
      EAEEAC_weightex = 0.35;
      EAEEAC_weightim = 0.35;
      EAEEAD_rer = 1;
      EAEEAD_rerbar = 1;
      EAEEAD_im = 0.03;
      EAEEAD_gammaimc = 0;
      EAEEAD_gammaimcdag = 1;
      EAEEAD_gammaimi = 0;
      EAEEAD_gammaimidag = 1;
      EAEEAD_gammaimcg = 0;
      EAEEAD_gammaimcgdag = 1;
      EAEEAD_gammaimig = 0;
      EAEEAD_gammaimigdag = 1;
      EAEEAD_tot = 1;
      EAEEAD_weight = 0.35;
      EAEEAD_weightex = 0.35;
      EAEEAD_weightim = 0.35;
      EAEEAF_rer = 1;
      EAEEAF_rerbar = 1;
      EAEEAF_im = 0.03;
      EAEEAF_gammaimc = 0;
      EAEEAF_gammaimcdag = 1;
      EAEEAF_gammaimi = 0;
      EAEEAF_gammaimidag = 1;
      EAEEAF_gammaimcg = 0;
      EAEEAF_gammaimcgdag = 1;
      EAEEAF_gammaimig = 0;
      EAEEAF_gammaimigdag = 1;
      EAEEAF_tot = 1;
      EAEEAF_weight = 0.35;
      EAEEAF_weightex = 0.35;
      EAEEAF_weightim = 0.35;
      EAERW_rer = 1;
      EAERW_rerbar = 1;
      EAERW_im = 0.03;
      EAERW_gammaimc = 0;
      EAERW_gammaimcdag = 1;
      EAERW_gammaimi = 0;
      EAERW_gammaimidag = 1;
      EAERW_gammaimcg = 0;
      EAERW_gammaimcgdag = 1;
      EAERW_gammaimig = 0;
      EAERW_gammaimigdag = 1;
      EAERW_tot = 1;
      EAERW_weight = 0.35;
      EAERW_weightex = 0.35;
      EAERW_weightim = 0.35;
      EAEUS_rer = 1;
      EAEUS_rerbar = 1;
      EAEUS_im = 0.03;
      EAEUS_gammaimc = 0;
      EAEUS_gammaimcdag = 1;
      EAEUS_gammaimi = 0;
      EAEUS_gammaimidag = 1;
      EAEUS_gammaimcg = 0;
      EAEUS_gammaimcgdag = 1;
      EAEUS_gammaimig = 0;
      EAEUS_gammaimigdag = 1;
      EAEUS_tot = 1;
      EAEUS_weight = 0.35;
      EAEUS_weightex = 0.35;
      EAEUS_weightim = 0.35;
  
  EAF_b = 0;
  EAF_bf = 0;
  EAF_by = 0;
  EAF_c = 0.32158748924289;
  EAF_ci = 0.426239346856029;
  EAF_cj = 0.00763191640347169;
  EAF_cy = 0.993424266061439;
 
  EAF_d = 0.294287418715;
  EAF_dn = 0.15107;
  EAF_dt = 0.15107;
  EAF_epsilonm = -1.11375;
  EAF_etot = 1;
  EAF_ex = 0.081148;
  EAF_fh = 0.008;
  EAF_fx = 0.008;
  EAF_fi = 3.92463692108248E-006;
  EAF_fj = 1.45356923003055E-007;
  EAF_fn = 0.015;
    EAF_gammab = 0;
  EAF_gammai = 0;
  EAF_gammaider = 0;
  EAF_gammau = 0;
  EAF_gammauder = 0.0351010101010102;
  EAF_gammav = 3.26674261628783E-005;
  EAF_gammavi = 0.000101581769364806;
  EAF_gammavider = 0.00181818181818182;
  EAF_gammavj = 0.000101581769364808;
  EAF_gammavjder = 0.00181818181818184;
  EAF_gh = 0.09;
  EAF_gx = 0.09;
  EAF_gi = 0.0394976510764103;
  EAF_gj = 0.735309110981097;
  EAF_gn = 0.18;
  EAF_cgy = 0.01/10;
EAF_igy = 0.01/10;
  EAF_ht = 0.08;
  EAF_i = 0.00209600391746659;
  EAF_ii = 0.00279467188995545;
  EAF_im = 0.08;
  EAF_imy = 0.25;
  EAF_internalrer = 1;
  EAF_iy = 0.00647482014388443;
  EAF_k = 0.0838401566986634;
  EAF_kd = 0.0838401566986634;
  EAF_kdn =  0.0838401566986638/2;
  EAF_kdt =  0.0838401566986638/2;
  EAF_ki = 0.111786875598218;
 
  EAF_lambdai = 2.33590208608626;
  EAF_lambdaj = 130.459156895394;
  EAF_lcy = 0.081818; 
  EAF_m = 0.137125366155172;
  EAF_mcn =  0.0909090909090843;
  EAF_mct = 0.0909090909090905;
  EAF_mi = 0.181749068177306;
  EAF_mj = 0.0032542600887726;
  EAF_nd = 0.376144431057379;
  EAF_ndi = 0.158787199981097;
  EAF_ndj = 0.449007091712631;
  EAF_ndn = 0.376144431057384/2;
  EAF_ndt = 0.376144431057384/2;
  EAF_ni = 0.158787199981097;
  EAF_nj = 0.449007091712631;
  EAF_nt = 0.162;
  EAF_pex = 1;
  EAF_pht = 0.999999999999995;
  EAF_phttilde = 0.999999999999995;
  EAF_pextilde = 0.999999999999995;
  EAF_pi = 0.999999999999969;
  EAF_pcg = 0.999999999999969;
  EAF_pig = 0.999999999999969;
  EAF_pibar = 0.999999999999969;
  EAF_pic = 1;
  EAF_pic4 = 1;
  EAF_piex4 = 1;
  EAF_piht = 1;
  EAF_piex = 1;
  EAF_piimc = 1;
  EAF_piimi = 1;
  EAF_piimcg = 1;
  EAF_piimig = 1;
  
  EAF_piimc4 = 1;
  EAF_pim = 1;
  EAF_pimc = 1;
  EAF_pimi = 1;
  EAF_pimcg = 1;
  EAF_pimig = 1;
  EAF_pint = 1;
  EAF_piw = 1;
  EAF_piw4  = 1;
  EAF_pnt = 0.999999999999924;
  EAF_pnttilde =  0.999999999999926;
  EAF_psitbar = 0;
  EAF_psinbar = 0;
  EAF_pttc = 0.999999999999924;
  EAF_ptti = 0.999999999999924;
  EAF_pttcg = 0.999999999999924;
  EAF_pttig = 0.999999999999924;
  
  EAF_py = 1.00000000000005;
  EAF_pybar = 1.00000000000005; 
  EAF_q = 0.999999999999969;
  EAF_qbar = 0.999999999999969;
  EAF_r = 1.01010101010101;
  EAF_reer = 1;
  EAF_rer = 0.999999999944949;
    EAF_rerdep = 1;
    EAF_rp = 0;
  EAF_rk = 0.0351010101010111;
  
  EAF_rr = 1.01010101010101;
  EAF_rrstar = 1.01010101010101;
  EAF_sh = 1;
  EAF_sx = 1;
  EAF_si = 1;
  EAF_sj = 1;
  EAF_snt = 0.999999999999999;
  EAF_t = 0;
  EAF_tauc = 0;
  EAF_taud = 0;
  EAF_tauk = 0;
  EAF_taun = 0;
  EAF_tauwf = 0;
  EAF_tauwh = 0;
  EAF_tb = 0;
  EAF_tby= 0;
  EAF_ti = 0;
  EAF_tj = 0;
    EAF_tot = 1;
  EAF_tr = 7.1529038134542E-031;
  EAF_tri = 7.1529038134542E-031;
  EAF_trj = 7.1529038134542E-031;
  EAF_try = 2.20962209625084E-030;
  EAF_trybar = 2.20962209625084E-030;
  EAF_ty = 0;
  EAF_u = 1;
  EAF_utili = -85.4088763809503;
  EAF_utilj = -490.559067770525; 
  EAF_vi = 2.34520787991171;
  EAF_vj = 2.34520787991172;
  EAF_w = 0.0704140896354543;
  EAF_wcst = 0;
  EAF_whty = 0.081818;
  EAF_wi = 0.118732341269019;
  EAF_witilde = 0.118732341269019;
  EAF_wj = 0.0169990447988928;
  EAF_wjtilde = 0.0169990447988928;
  EAF_wnty = 0.081818;
  EAF_wy = 0.081818;
  EAF_y = 0.32;
  EAF_ybar = 0.32;
  EAF_ygap = 0;
  EAF_ygrowth = 1;
  EAF_ygrowth4 = 1;
  EAF_yhty = 0.499988;
  EAF_ynbar = 0.161;
  EAF_ytbar = 0.161;
  EAF_ynty = 0.499988;
  EAF_ysn =  0.161;
  EAF_yst = 0.161;
  EAF_yshare = 0.25;
  EAF_cg = EAF_cgy*EAF_pybar*EAF_ybar/EAF_pnt;
  EAF_ig = EAF_igy*EAF_pybar*EAF_ybar/EAF_pnt;
  EAF_zcon = 1;
  EAF_zinv = 1;
  EAF_zn = 1;
  EAF_zt = 1;
    
  
  EAF_cgybar = 0.01/10;
  EAF_igybar = 0.01/10;
  EAF_taucbar = 0;
  EAF_taudbar = 0;
  EAF_taukbar = 0;
  EAF_taunbar = 0;
  EAF_tauwfbar = 0;
  EAF_tauwhbar = 0;
  EAF_wcstbar = 0;
  EAF_zconbar = 1;
  EAF_zinvbar = 1;
  EAF_znbar = 1;
  EAF_ztbar = 1;
  EAF_epsgc = 0;
  EAF_epsgi = 0;
  EAF_epstauc = 0;
  EAF_epstaud = 0;
  EAF_epstauk = 0;
  EAF_epstaun = 0;
  EAF_epstauwh = 0;
  EAF_epstauwf = 0;
  EAF_epstr = 0;
  EAF_epswcst = 0;
  EAF_epszcon = 0;
  EAF_epszinv = 0;
  EAF_epszn = 0;
  EAF_epszt = 0;
      EAFEAA_rer = 1;
      EAFEAA_rerbar = 1;
      EAFEAA_im = 0.03;
      EAFEAA_gammaimc = 0;
      EAFEAA_gammaimcdag = 1;
      EAFEAA_gammaimi = 0;
      EAFEAA_gammaimidag = 1;
      EAFEAA_gammaimcg = 0;
      EAFEAA_gammaimcgdag = 1;
      EAFEAA_gammaimig = 0;
      EAFEAA_gammaimigdag = 1;
      EAFEAA_tot = 1;
      EAFEAA_weight = 0.35;
      EAFEAA_weightex = 0.35;
      EAFEAA_weightim = 0.35;
      EAFEAB_rer = 1;
      EAFEAB_rerbar = 1;
      EAFEAB_im = 0.03;
      EAFEAB_gammaimc = 0;
      EAFEAB_gammaimcdag = 1;
      EAFEAB_gammaimi = 0;
      EAFEAB_gammaimidag = 1;
      EAFEAB_gammaimcg = 0;
      EAFEAB_gammaimcgdag = 1;
      EAFEAB_gammaimig = 0;
      EAFEAB_gammaimigdag = 1;
      EAFEAB_tot = 1;
      EAFEAB_weight = 0.35;
      EAFEAB_weightex = 0.35;
      EAFEAB_weightim = 0.35;
      EAFEAC_rer = 1;
      EAFEAC_rerbar = 1;
      EAFEAC_im = 0.03;
      EAFEAC_gammaimc = 0;
      EAFEAC_gammaimcdag = 1;
      EAFEAC_gammaimi = 0;
      EAFEAC_gammaimidag = 1;
      EAFEAC_gammaimcg = 0;
      EAFEAC_gammaimcgdag = 1;
      EAFEAC_gammaimig = 0;
      EAFEAC_gammaimigdag = 1;
      EAFEAC_tot = 1;
      EAFEAC_weight = 0.35;
      EAFEAC_weightex = 0.35;
      EAFEAC_weightim = 0.35;
      EAFEAD_rer = 1;
      EAFEAD_rerbar = 1;
      EAFEAD_im = 0.03;
      EAFEAD_gammaimc = 0;
      EAFEAD_gammaimcdag = 1;
      EAFEAD_gammaimi = 0;
      EAFEAD_gammaimidag = 1;
      EAFEAD_gammaimcg = 0;
      EAFEAD_gammaimcgdag = 1;
      EAFEAD_gammaimig = 0;
      EAFEAD_gammaimigdag = 1;
      EAFEAD_tot = 1;
      EAFEAD_weight = 0.35;
      EAFEAD_weightex = 0.35;
      EAFEAD_weightim = 0.35;
      EAFEAE_rer = 1;
      EAFEAE_rerbar = 1;
      EAFEAE_im = 0.03;
      EAFEAE_gammaimc = 0;
      EAFEAE_gammaimcdag = 1;
      EAFEAE_gammaimi = 0;
      EAFEAE_gammaimidag = 1;
      EAFEAE_gammaimcg = 0;
      EAFEAE_gammaimcgdag = 1;
      EAFEAE_gammaimig = 0;
      EAFEAE_gammaimigdag = 1;
      EAFEAE_tot = 1;
      EAFEAE_weight = 0.35;
      EAFEAE_weightex = 0.35;
      EAFEAE_weightim = 0.35;
      EAFRW_rer = 1;
      EAFRW_rerbar = 1;
      EAFRW_im = 0.03;
      EAFRW_gammaimc = 0;
      EAFRW_gammaimcdag = 1;
      EAFRW_gammaimi = 0;
      EAFRW_gammaimidag = 1;
      EAFRW_gammaimcg = 0;
      EAFRW_gammaimcgdag = 1;
      EAFRW_gammaimig = 0;
      EAFRW_gammaimigdag = 1;
      EAFRW_tot = 1;
      EAFRW_weight = 0.35;
      EAFRW_weightex = 0.35;
      EAFRW_weightim = 0.35;
      EAFUS_rer = 1;
      EAFUS_rerbar = 1;
      EAFUS_im = 0.03;
      EAFUS_gammaimc = 0;
      EAFUS_gammaimcdag = 1;
      EAFUS_gammaimi = 0;
      EAFUS_gammaimidag = 1;
      EAFUS_gammaimcg = 0;
      EAFUS_gammaimcgdag = 1;
      EAFUS_gammaimig = 0;
      EAFUS_gammaimigdag = 1;
      EAFUS_tot = 1;
      EAFUS_weight = 0.35;
      EAFUS_weightex = 0.35;
      EAFUS_weightim = 0.35;
  
  RW_b = 0;
  RW_bf = 0;
  RW_by = 0;
  RW_c = 0.32158748924289;
  RW_ci = 0.426239346856029;
  RW_cj = 0.00763191640347169;
  RW_cy = 0.993424266061439;
 
  RW_d = 0.294287418715;
  RW_dn = 0.15107;
  RW_dt = 0.15107;
  RW_epsilonm = -1.11375;
  RW_etot = 1;
  RW_ex = 0.081148;
  RW_fh = 0.008;
  RW_fx = 0.008;
  RW_fi = 3.92463692108248E-006;
  RW_fj = 1.45356923003055E-007;
  RW_fn = 0.015;
    RW_gammab = 0;
  RW_gammai = 0;
  RW_gammaider = 0;
  RW_gammau = 0;
  RW_gammauder = 0.0351010101010102;
  RW_gammav = 3.26674261628783E-005;
  RW_gammavi = 0.000101581769364806;
  RW_gammavider = 0.00181818181818182;
  RW_gammavj = 0.000101581769364808;
  RW_gammavjder = 0.00181818181818184;
  RW_gh = 0.09;
  RW_gx = 0.09;
  RW_gi = 0.0394976510764103;
  RW_gj = 0.735309110981097;
  RW_gn = 0.18;
  RW_cgy = 0.01/10;
RW_igy = 0.01/10;
  RW_ht = 0.08;
  RW_i = 0.00209600391746659;
  RW_ii = 0.00279467188995545;
  RW_im = 0.08;
  RW_imy = 0.25;
  RW_internalrer = 1;
  RW_iy = 0.00647482014388443;
  RW_k = 0.0838401566986634;
  RW_kd = 0.0838401566986634;
  RW_kdn =  0.0838401566986638/2;
  RW_kdt =  0.0838401566986638/2;
  RW_ki = 0.111786875598218;
 
  RW_lambdai = 2.33590208608626;
  RW_lambdaj = 130.459156895394;
  RW_lcy = 0.081818; 
  RW_m = 0.137125366155172;
  RW_mcn =  0.0909090909090843;
  RW_mct = 0.0909090909090905;
  RW_mi = 0.181749068177306;
  RW_mj = 0.0032542600887726;
  RW_nd = 0.376144431057379;
  RW_ndi = 0.158787199981097;
  RW_ndj = 0.449007091712631;
  RW_ndn = 0.376144431057384/2;
  RW_ndt = 0.376144431057384/2;
  RW_ni = 0.158787199981097;
  RW_nj = 0.449007091712631;
  RW_nt = 0.162;
  RW_pex = 1;
  RW_pht = 0.999999999999995;
  RW_phttilde = 0.999999999999995;
  RW_pextilde = 0.999999999999995;
  RW_pi = 0.999999999999969;
  RW_pcg = 0.999999999999969;
  RW_pig = 0.999999999999969;
  RW_pibar = 0.999999999999969;
  RW_pic = 1;
  RW_pic4 = 1;
  RW_piex4 = 1;
  RW_piht = 1;
  RW_piex = 1;
  RW_piimc = 1;
  RW_piimi = 1;
  RW_piimcg = 1;
  RW_piimig = 1;
  
  RW_piimc4 = 1;
  RW_pim = 1;
  RW_pimc = 1;
  RW_pimi = 1;
  RW_pimcg = 1;
  RW_pimig = 1;
  RW_pint = 1;
  RW_piw = 1;
  RW_piw4  = 1;
  RW_pnt = 0.999999999999924;
  RW_pnttilde =  0.999999999999926;
  RW_psitbar = 0;
  RW_psinbar = 0;
  RW_pttc = 0.999999999999924;
  RW_ptti = 0.999999999999924;
  RW_pttcg = 0.999999999999924;
  RW_pttig = 0.999999999999924;
  
  RW_py = 1.00000000000005;
  RW_pybar = 1.00000000000005; 
  RW_q = 0.999999999999969;
  RW_qbar = 0.999999999999969;
  RW_r = 1.01010101010101;
  RW_reer = 1;
  RW_rer = 0.999999999944949;
    RW_rerdep = 1;
    RW_rp = 0;
  RW_rk = 0.0351010101010111;
  
  RW_rr = 1.01010101010101;
  RW_rrstar = 1.01010101010101;
  RW_sh = 1;
  RW_sx = 1;
  RW_si = 1;
  RW_sj = 1;
  RW_snt = 0.999999999999999;
  RW_t = 0;
  RW_tauc = 0;
  RW_taud = 0;
  RW_tauk = 0;
  RW_taun = 0;
  RW_tauwf = 0;
  RW_tauwh = 0;
  RW_tb = 0;
  RW_tby= 0;
  RW_ti = 0;
  RW_tj = 0;
    RW_tot = 1;
  RW_tr = 7.1529038134542E-031;
  RW_tri = 7.1529038134542E-031;
  RW_trj = 7.1529038134542E-031;
  RW_try = 2.20962209625084E-030;
  RW_trybar = 2.20962209625084E-030;
  RW_ty = 0;
  RW_u = 1;
  RW_utili = -85.4088763809503;
  RW_utilj = -490.559067770525; 
  RW_vi = 2.34520787991171;
  RW_vj = 2.34520787991172;
  RW_w = 0.0704140896354543;
  RW_wcst = 0;
  RW_whty = 0.081818;
  RW_wi = 0.118732341269019;
  RW_witilde = 0.118732341269019;
  RW_wj = 0.0169990447988928;
  RW_wjtilde = 0.0169990447988928;
  RW_wnty = 0.081818;
  RW_wy = 0.081818;
  RW_y = 0.32;
  RW_ybar = 0.32;
  RW_ygap = 0;
  RW_ygrowth = 1;
  RW_ygrowth4 = 1;
  RW_yhty = 0.499988;
  RW_ynbar = 0.161;
  RW_ytbar = 0.161;
  RW_ynty = 0.499988;
  RW_ysn =  0.161;
  RW_yst = 0.161;
  RW_yshare = 0.25;
  RW_cg = RW_cgy*RW_pybar*RW_ybar/RW_pnt;
  RW_ig = RW_igy*RW_pybar*RW_ybar/RW_pnt;
  RW_zcon = 1;
  RW_zinv = 1;
  RW_zn = 1;
  RW_zt = 1;
    
  
  RW_cgybar = 0.01/10;
  RW_igybar = 0.01/10;
  RW_taucbar = 0;
  RW_taudbar = 0;
  RW_taukbar = 0;
  RW_taunbar = 0;
  RW_tauwfbar = 0;
  RW_tauwhbar = 0;
  RW_wcstbar = 0;
  RW_zconbar = 1;
  RW_zinvbar = 1;
  RW_znbar = 1;
  RW_ztbar = 1;
  RW_epsgc = 0;
  RW_epsgi = 0;
  RW_epstauc = 0;
  RW_epstaud = 0;
  RW_epstauk = 0;
  RW_epstaun = 0;
  RW_epstauwh = 0;
  RW_epstauwf = 0;
  RW_epstr = 0;
  RW_epswcst = 0;
  RW_epszcon = 0;
  RW_epszinv = 0;
  RW_epszn = 0;
  RW_epszt = 0;
      RWEAA_rer = 1;
      RWEAA_rerbar = 1;
      RWEAA_im = 0.03;
      RWEAA_gammaimc = 0;
      RWEAA_gammaimcdag = 1;
      RWEAA_gammaimi = 0;
      RWEAA_gammaimidag = 1;
      RWEAA_gammaimcg = 0;
      RWEAA_gammaimcgdag = 1;
      RWEAA_gammaimig = 0;
      RWEAA_gammaimigdag = 1;
      RWEAA_tot = 1;
      RWEAA_weight = 0.35;
      RWEAA_weightex = 0.35;
      RWEAA_weightim = 0.35;
      RWEAB_rer = 1;
      RWEAB_rerbar = 1;
      RWEAB_im = 0.03;
      RWEAB_gammaimc = 0;
      RWEAB_gammaimcdag = 1;
      RWEAB_gammaimi = 0;
      RWEAB_gammaimidag = 1;
      RWEAB_gammaimcg = 0;
      RWEAB_gammaimcgdag = 1;
      RWEAB_gammaimig = 0;
      RWEAB_gammaimigdag = 1;
      RWEAB_tot = 1;
      RWEAB_weight = 0.35;
      RWEAB_weightex = 0.35;
      RWEAB_weightim = 0.35;
      RWEAC_rer = 1;
      RWEAC_rerbar = 1;
      RWEAC_im = 0.03;
      RWEAC_gammaimc = 0;
      RWEAC_gammaimcdag = 1;
      RWEAC_gammaimi = 0;
      RWEAC_gammaimidag = 1;
      RWEAC_gammaimcg = 0;
      RWEAC_gammaimcgdag = 1;
      RWEAC_gammaimig = 0;
      RWEAC_gammaimigdag = 1;
      RWEAC_tot = 1;
      RWEAC_weight = 0.35;
      RWEAC_weightex = 0.35;
      RWEAC_weightim = 0.35;
      RWEAD_rer = 1;
      RWEAD_rerbar = 1;
      RWEAD_im = 0.03;
      RWEAD_gammaimc = 0;
      RWEAD_gammaimcdag = 1;
      RWEAD_gammaimi = 0;
      RWEAD_gammaimidag = 1;
      RWEAD_gammaimcg = 0;
      RWEAD_gammaimcgdag = 1;
      RWEAD_gammaimig = 0;
      RWEAD_gammaimigdag = 1;
      RWEAD_tot = 1;
      RWEAD_weight = 0.35;
      RWEAD_weightex = 0.35;
      RWEAD_weightim = 0.35;
      RWEAE_rer = 1;
      RWEAE_rerbar = 1;
      RWEAE_im = 0.03;
      RWEAE_gammaimc = 0;
      RWEAE_gammaimcdag = 1;
      RWEAE_gammaimi = 0;
      RWEAE_gammaimidag = 1;
      RWEAE_gammaimcg = 0;
      RWEAE_gammaimcgdag = 1;
      RWEAE_gammaimig = 0;
      RWEAE_gammaimigdag = 1;
      RWEAE_tot = 1;
      RWEAE_weight = 0.35;
      RWEAE_weightex = 0.35;
      RWEAE_weightim = 0.35;
      RWEAF_rer = 1;
      RWEAF_rerbar = 1;
      RWEAF_im = 0.03;
      RWEAF_gammaimc = 0;
      RWEAF_gammaimcdag = 1;
      RWEAF_gammaimi = 0;
      RWEAF_gammaimidag = 1;
      RWEAF_gammaimcg = 0;
      RWEAF_gammaimcgdag = 1;
      RWEAF_gammaimig = 0;
      RWEAF_gammaimigdag = 1;
      RWEAF_tot = 1;
      RWEAF_weight = 0.35;
      RWEAF_weightex = 0.35;
      RWEAF_weightim = 0.35;
      RWUS_rer = 1;
      RWUS_rerbar = 1;
      RWUS_im = 0.03;
      RWUS_gammaimc = 0;
      RWUS_gammaimcdag = 1;
      RWUS_gammaimi = 0;
      RWUS_gammaimidag = 1;
      RWUS_gammaimcg = 0;
      RWUS_gammaimcgdag = 1;
      RWUS_gammaimig = 0;
      RWUS_gammaimigdag = 1;
      RWUS_tot = 1;
      RWUS_weight = 0.35;
      RWUS_weightex = 0.35;
      RWUS_weightim = 0.35;
  
  US_b = 0;
  US_bf = 0;
  US_by = 0;
  US_c = 0.32158748924289;
  US_ci = 0.426239346856029;
  US_cj = 0.00763191640347169;
  US_cy = 0.993424266061439;
 
  US_d = 0.294287418715;
  US_dn = 0.15107;
  US_dt = 0.15107;
  US_epsilonm = -1.11375;
  US_etot = 1;
  US_ex = 0.081148;
  US_fh = 0.008;
  US_fx = 0.008;
  US_fi = 3.92463692108248E-006;
  US_fj = 1.45356923003055E-007;
  US_fn = 0.015;
  US_gammai = 0;
  US_gammaider = 0;
  US_gammau = 0;
  US_gammauder = 0.0351010101010102;
  US_gammav = 3.26674261628783E-005;
  US_gammavi = 0.000101581769364806;
  US_gammavider = 0.00181818181818182;
  US_gammavj = 0.000101581769364808;
  US_gammavjder = 0.00181818181818184;
  US_gh = 0.09;
  US_gx = 0.09;
  US_gi = 0.0394976510764103;
  US_gj = 0.735309110981097;
  US_gn = 0.18;
  US_cgy = 0.01/10;
US_igy = 0.01/10;
  US_ht = 0.08;
  US_i = 0.00209600391746659;
  US_ii = 0.00279467188995545;
  US_im = 0.08;
  US_imy = 0.25;
  US_internalrer = 1;
  US_iy = 0.00647482014388443;
  US_k = 0.0838401566986634;
  US_kd = 0.0838401566986634;
  US_kdn =  0.0838401566986638/2;
  US_kdt =  0.0838401566986638/2;
  US_ki = 0.111786875598218;
 
  US_lambdai = 2.33590208608626;
  US_lambdaj = 130.459156895394;
  US_lcy = 0.081818; 
  US_m = 0.137125366155172;
  US_mcn =  0.0909090909090843;
  US_mct = 0.0909090909090905;
  US_mi = 0.181749068177306;
  US_mj = 0.0032542600887726;
  US_nd = 0.376144431057379;
  US_ndi = 0.158787199981097;
  US_ndj = 0.449007091712631;
  US_ndn = 0.376144431057384/2;
  US_ndt = 0.376144431057384/2;
  US_ni = 0.158787199981097;
  US_nj = 0.449007091712631;
  US_nt = 0.162;
  US_pex = 1;
  US_pht = 0.999999999999995;
  US_phttilde = 0.999999999999995;
  US_pextilde = 0.999999999999995;
  US_pi = 0.999999999999969;
  US_pcg = 0.999999999999969;
  US_pig = 0.999999999999969;
  US_pibar = 0.999999999999969;
  US_pic = 1;
  US_pic4 = 1;
  US_piex4 = 1;
  US_piht = 1;
  US_piex = 1;
  US_piimc = 1;
  US_piimi = 1;
  US_piimcg = 1;
  US_piimig = 1;
  
  US_piimc4 = 1;
  US_pim = 1;
  US_pimc = 1;
  US_pimi = 1;
  US_pimcg = 1;
  US_pimig = 1;
  US_pint = 1;
  US_piw = 1;
  US_piw4  = 1;
  US_pnt = 0.999999999999924;
  US_pnttilde =  0.999999999999926;
  US_psitbar = 0;
  US_psinbar = 0;
  US_pttc = 0.999999999999924;
  US_ptti = 0.999999999999924;
  US_pttcg = 0.999999999999924;
  US_pttig = 0.999999999999924;
  
  US_py = 1.00000000000005;
  US_pybar = 1.00000000000005; 
  US_q = 0.999999999999969;
  US_qbar = 0.999999999999969;
  US_r = 1.01010101010101;
  US_reer = 1;
  US_rer = 0.999999999944949;
  US_rk = 0.0351010101010111;
  
  US_rr = 1.01010101010101;
  US_rrstar = 1.01010101010101;
  US_sh = 1;
  US_sx = 1;
  US_si = 1;
  US_sj = 1;
  US_snt = 0.999999999999999;
  US_t = 0;
  US_tauc = 0;
  US_taud = 0;
  US_tauk = 0;
  US_taun = 0;
  US_tauwf = 0;
  US_tauwh = 0;
  US_tb = 0;
  US_tby= 0;
  US_ti = 0;
  US_tj = 0;
  US_tr = 7.1529038134542E-031;
  US_tri = 7.1529038134542E-031;
  US_trj = 7.1529038134542E-031;
  US_try = 2.20962209625084E-030;
  US_trybar = 2.20962209625084E-030;
  US_ty = 0;
  US_u = 1;
  US_utili = -85.4088763809503;
  US_utilj = -490.559067770525; 
  US_vi = 2.34520787991171;
  US_vj = 2.34520787991172;
  US_w = 0.0704140896354543;
  US_wcst = 0;
  US_whty = 0.081818;
  US_wi = 0.118732341269019;
  US_witilde = 0.118732341269019;
  US_wj = 0.0169990447988928;
  US_wjtilde = 0.0169990447988928;
  US_wnty = 0.081818;
  US_wy = 0.081818;
  US_y = 0.32;
  US_ybar = 0.32;
  US_ygap = 0;
  US_ygrowth = 1;
  US_ygrowth4 = 1;
  US_yhty = 0.499988;
  US_ynbar = 0.161;
  US_ytbar = 0.161;
  US_ynty = 0.499988;
  US_ysn =  0.161;
  US_yst = 0.161;
  US_yshare = 0.25;
  US_cg = US_cgy*US_pybar*US_ybar/US_pnt;
  US_ig = US_igy*US_pybar*US_ybar/US_pnt;
  US_zcon = 1;
  US_zinv = 1;
  US_zn = 1;
  US_zt = 1;
    
  
  US_cgybar = 0.01/10;
  US_igybar = 0.01/10;
  US_taucbar = 0;
  US_taudbar = 0;
  US_taukbar = 0;
  US_taunbar = 0;
  US_tauwfbar = 0;
  US_tauwhbar = 0;
  US_wcstbar = 0;
  US_zconbar = 1;
  US_zinvbar = 1;
  US_znbar = 1;
  US_ztbar = 1;
  US_epsgc = 0;
  US_epsgi = 0;
  US_epstauc = 0;
  US_epstaud = 0;
  US_epstauk = 0;
  US_epstaun = 0;
  US_epstauwh = 0;
  US_epstauwf = 0;
  US_epstr = 0;
  US_epswcst = 0;
  US_epszcon = 0;
  US_epszinv = 0;
  US_epszn = 0;
  US_epszt = 0;
      USEAA_rer = 1;
      USEAA_rerbar = 1;
      USEAA_im = 0.03;
      USEAA_gammaimc = 0;
      USEAA_gammaimcdag = 1;
      USEAA_gammaimi = 0;
      USEAA_gammaimidag = 1;
      USEAA_gammaimcg = 0;
      USEAA_gammaimcgdag = 1;
      USEAA_gammaimig = 0;
      USEAA_gammaimigdag = 1;
      USEAA_tot = 1;
      USEAA_weight = 0.35;
      USEAA_weightex = 0.35;
      USEAA_weightim = 0.35;
      USEAB_rer = 1;
      USEAB_rerbar = 1;
      USEAB_im = 0.03;
      USEAB_gammaimc = 0;
      USEAB_gammaimcdag = 1;
      USEAB_gammaimi = 0;
      USEAB_gammaimidag = 1;
      USEAB_gammaimcg = 0;
      USEAB_gammaimcgdag = 1;
      USEAB_gammaimig = 0;
      USEAB_gammaimigdag = 1;
      USEAB_tot = 1;
      USEAB_weight = 0.35;
      USEAB_weightex = 0.35;
      USEAB_weightim = 0.35;
      USEAC_rer = 1;
      USEAC_rerbar = 1;
      USEAC_im = 0.03;
      USEAC_gammaimc = 0;
      USEAC_gammaimcdag = 1;
      USEAC_gammaimi = 0;
      USEAC_gammaimidag = 1;
      USEAC_gammaimcg = 0;
      USEAC_gammaimcgdag = 1;
      USEAC_gammaimig = 0;
      USEAC_gammaimigdag = 1;
      USEAC_tot = 1;
      USEAC_weight = 0.35;
      USEAC_weightex = 0.35;
      USEAC_weightim = 0.35;
      USEAD_rer = 1;
      USEAD_rerbar = 1;
      USEAD_im = 0.03;
      USEAD_gammaimc = 0;
      USEAD_gammaimcdag = 1;
      USEAD_gammaimi = 0;
      USEAD_gammaimidag = 1;
      USEAD_gammaimcg = 0;
      USEAD_gammaimcgdag = 1;
      USEAD_gammaimig = 0;
      USEAD_gammaimigdag = 1;
      USEAD_tot = 1;
      USEAD_weight = 0.35;
      USEAD_weightex = 0.35;
      USEAD_weightim = 0.35;
      USEAE_rer = 1;
      USEAE_rerbar = 1;
      USEAE_im = 0.03;
      USEAE_gammaimc = 0;
      USEAE_gammaimcdag = 1;
      USEAE_gammaimi = 0;
      USEAE_gammaimidag = 1;
      USEAE_gammaimcg = 0;
      USEAE_gammaimcgdag = 1;
      USEAE_gammaimig = 0;
      USEAE_gammaimigdag = 1;
      USEAE_tot = 1;
      USEAE_weight = 0.35;
      USEAE_weightex = 0.35;
      USEAE_weightim = 0.35;
      USEAF_rer = 1;
      USEAF_rerbar = 1;
      USEAF_im = 0.03;
      USEAF_gammaimc = 0;
      USEAF_gammaimcdag = 1;
      USEAF_gammaimi = 0;
      USEAF_gammaimidag = 1;
      USEAF_gammaimcg = 0;
      USEAF_gammaimcgdag = 1;
      USEAF_gammaimig = 0;
      USEAF_gammaimigdag = 1;
      USEAF_tot = 1;
      USEAF_weight = 0.35;
      USEAF_weightex = 0.35;
      USEAF_weightim = 0.35;
      USRW_rer = 1;
      USRW_rerbar = 1;
      USRW_im = 0.03;
      USRW_gammaimc = 0;
      USRW_gammaimcdag = 1;
      USRW_gammaimi = 0;
      USRW_gammaimidag = 1;
      USRW_gammaimcg = 0;
      USRW_gammaimcgdag = 1;
      USRW_gammaimig = 0;
      USRW_gammaimigdag = 1;
      USRW_tot = 1;
      USRW_weight = 0.35;
      USRW_weightex = 0.35;
      USRW_weightim = 0.35;
      
      // Shares
      EAAEAB_excy = 0.09*3/(ctryNumberDouble-1);
      EAAEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAAEAC_excy = 0.09*3/(ctryNumberDouble-1);
      EAAEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAAEAD_excy = 0.09*3/(ctryNumberDouble-1);
      EAAEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAAEAE_excy = 0.09*3/(ctryNumberDouble-1);
      EAAEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAAEAF_excy = 0.09*3/(ctryNumberDouble-1);
      EAAEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAARW_excy = 0.09*3/(ctryNumberDouble-1);
      EAARW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAAUS_excy = 0.09*3/(ctryNumberDouble-1);
      EAAUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAA_qc =  0.321620156669017*2;
  EAA_qi =  0.00209600391746659*2;
  EAA_qcg =  EAA_cg;
  EAA_qig =  EAA_ig;
  EAA_ntc = 0.161;
  EAA_nti = 0.001;
  EAA_ntcg = (1-EAA_nucg)*(EAA_pnt/EAA_pcg)^(-EAA_mucg)*EAA_qcg;
  EAA_ntig = (1-EAA_nuig)*(EAA_pnt/EAA_pig)^(-EAA_muig)*EAA_qig;
  EAA_ttc = 0.16;
  EAA_tti = 0.001;
  EAA_ttcg = EAA_nucg*(EAA_pttcg/EAA_pcg)^(-EAA_mucg)*EAA_qcg;
  EAA_ttig = EAA_nuig*(EAA_pttig/EAA_pig)^(-EAA_muig)*EAA_qig;
  EAA_htc = 0.08;
  EAA_hti =  0.0005;
  EAA_htcg = EAA_nutcg*(EAA_pht/EAA_pttcg)^(-EAA_mutcg)*EAA_ttcg;
  EAA_htig = EAA_nutig*(EAA_pht/EAA_pttig)^(-EAA_mutig)*EAA_ttig;
  EAA_imc = 0.08;
  EAA_imcy = 0.25;
  EAA_imi = 0.0005;
  EAA_imiy = 0.0016;
  EAA_imcg = (1-EAA_nutcg)*(EAA_pimcg/EAA_pttcg)^(-EAA_mutcg)*EAA_ttcg;
  EAA_imcgy = EAA_pimcg*EAA_imcg/(EAA_py*EAA_y);
  EAA_imig = (1-EAA_nutig)*(EAA_pimig/EAA_pttig)^(-EAA_mutig)*EAA_ttig;
  EAA_imigy = EAA_pimig*EAA_imig/(EAA_py*EAA_y);
        EAAEAB_imc = EAAEAB_numc*((EAB_pex*EAAEAB_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAEAB_imcy = (EAB_pex*EAAEAB_rer)*EAAEAB_imc/(EAA_py*EAA_y);
        EAAEAB_imi = EAAEAB_numi*((EAB_pex*EAAEAB_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAEAB_imiy = (EAB_pex*EAAEAB_rer)*EAAEAB_imi/(EAA_py*EAA_y);
        EAAEAB_imcg = EAAEAB_numcg*((EAB_pex*EAAEAB_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAEAB_imcgy = (EAB_pex*EAAEAB_rer)*EAAEAB_imcg/(EAA_py*EAA_y);
        EAAEAB_imig = EAAEAB_numig*((EAB_pex*EAAEAB_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAEAB_imigy = (EAB_pex*EAAEAB_rer)*EAAEAB_imig/(EAA_py*EAA_y);
        EAAEAC_imc = EAAEAC_numc*((EAC_pex*EAAEAC_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAEAC_imcy = (EAC_pex*EAAEAC_rer)*EAAEAC_imc/(EAA_py*EAA_y);
        EAAEAC_imi = EAAEAC_numi*((EAC_pex*EAAEAC_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAEAC_imiy = (EAC_pex*EAAEAC_rer)*EAAEAC_imi/(EAA_py*EAA_y);
        EAAEAC_imcg = EAAEAC_numcg*((EAC_pex*EAAEAC_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAEAC_imcgy = (EAC_pex*EAAEAC_rer)*EAAEAC_imcg/(EAA_py*EAA_y);
        EAAEAC_imig = EAAEAC_numig*((EAC_pex*EAAEAC_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAEAC_imigy = (EAC_pex*EAAEAC_rer)*EAAEAC_imig/(EAA_py*EAA_y);
        EAAEAD_imc = EAAEAD_numc*((EAD_pex*EAAEAD_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAEAD_imcy = (EAD_pex*EAAEAD_rer)*EAAEAD_imc/(EAA_py*EAA_y);
        EAAEAD_imi = EAAEAD_numi*((EAD_pex*EAAEAD_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAEAD_imiy = (EAD_pex*EAAEAD_rer)*EAAEAD_imi/(EAA_py*EAA_y);
        EAAEAD_imcg = EAAEAD_numcg*((EAD_pex*EAAEAD_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAEAD_imcgy = (EAD_pex*EAAEAD_rer)*EAAEAD_imcg/(EAA_py*EAA_y);
        EAAEAD_imig = EAAEAD_numig*((EAD_pex*EAAEAD_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAEAD_imigy = (EAD_pex*EAAEAD_rer)*EAAEAD_imig/(EAA_py*EAA_y);
        EAAEAE_imc = EAAEAE_numc*((EAE_pex*EAAEAE_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAEAE_imcy = (EAE_pex*EAAEAE_rer)*EAAEAE_imc/(EAA_py*EAA_y);
        EAAEAE_imi = EAAEAE_numi*((EAE_pex*EAAEAE_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAEAE_imiy = (EAE_pex*EAAEAE_rer)*EAAEAE_imi/(EAA_py*EAA_y);
        EAAEAE_imcg = EAAEAE_numcg*((EAE_pex*EAAEAE_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAEAE_imcgy = (EAE_pex*EAAEAE_rer)*EAAEAE_imcg/(EAA_py*EAA_y);
        EAAEAE_imig = EAAEAE_numig*((EAE_pex*EAAEAE_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAEAE_imigy = (EAE_pex*EAAEAE_rer)*EAAEAE_imig/(EAA_py*EAA_y);
        EAAEAF_imc = EAAEAF_numc*((EAF_pex*EAAEAF_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAEAF_imcy = (EAF_pex*EAAEAF_rer)*EAAEAF_imc/(EAA_py*EAA_y);
        EAAEAF_imi = EAAEAF_numi*((EAF_pex*EAAEAF_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAEAF_imiy = (EAF_pex*EAAEAF_rer)*EAAEAF_imi/(EAA_py*EAA_y);
        EAAEAF_imcg = EAAEAF_numcg*((EAF_pex*EAAEAF_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAEAF_imcgy = (EAF_pex*EAAEAF_rer)*EAAEAF_imcg/(EAA_py*EAA_y);
        EAAEAF_imig = EAAEAF_numig*((EAF_pex*EAAEAF_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAEAF_imigy = (EAF_pex*EAAEAF_rer)*EAAEAF_imig/(EAA_py*EAA_y);
      EAARW_imc = 
        +(1
        -EAAEAB_numc
        -EAAEAC_numc
        -EAAEAD_numc
        -EAAEAE_numc
        -EAAEAF_numc
        -EAAUS_numc
        )*((RW_pex*EAARW_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAARW_imcy = (RW_pex*EAARW_rer)*EAARW_imc/(EAA_py*EAA_y);
      EAARW_imi = 
        +(1
        -EAAEAB_numi
        -EAAEAC_numi
        -EAAEAD_numi
        -EAAEAE_numi
        -EAAEAF_numi
        -EAAUS_numi
        )*((RW_pex*EAARW_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAARW_imiy = (RW_pex*EAARW_rer)*EAARW_imi/(EAA_py*EAA_y);
      EAARW_imcg = 
        +(1
        -EAAEAB_numcg
        -EAAEAC_numcg
        -EAAEAD_numcg
        -EAAEAE_numcg
        -EAAEAF_numcg
        -EAAUS_numcg
        )*((RW_pex*EAARW_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAARW_imcgy = (RW_pex*EAARW_rer)*EAARW_imcg/(EAA_py*EAA_y);
      EAARW_imig = 
        +(1
        -EAAEAB_numig
        -EAAEAC_numig
        -EAAEAD_numig
        -EAAEAE_numig
        -EAAEAF_numig
        -EAAUS_numig
        )*((RW_pex*EAARW_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAARW_imigy = (RW_pex*EAARW_rer)*EAARW_imig/(EAA_py*EAA_y);
        EAAUS_imc = EAAUS_numc*((US_pex*EAAUS_rer)/EAA_pimc)^(-EAA_mumc)*EAA_imc;
  EAAUS_imcy = (US_pex*EAAUS_rer)*EAAUS_imc/(EAA_py*EAA_y);
        EAAUS_imi = EAAUS_numi*((US_pex*EAAUS_rer)/EAA_pimi)^(-EAA_mumi)*EAA_imi;
  EAAUS_imiy = (US_pex*EAAUS_rer)*EAAUS_imi/(EAA_py*EAA_y);
        EAAUS_imcg = EAAUS_numcg*((US_pex*EAAUS_rer)/EAA_pimcg)^(-EAA_mumcg)*EAA_imcg;
  EAAUS_imcgy = (US_pex*EAAUS_rer)*EAAUS_imcg/(EAA_py*EAA_y);
        EAAUS_imig = EAAUS_numig*((US_pex*EAAUS_rer)/EAA_pimig)^(-EAA_mumig)*EAA_imig;
  EAAUS_imigy = (US_pex*EAAUS_rer)*EAAUS_imig/(EAA_py*EAA_y);
      
      // Shares
      EABEAA_excy = 0.09*3/(ctryNumberDouble-1);
      EABEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABEAC_excy = 0.09*3/(ctryNumberDouble-1);
      EABEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABEAD_excy = 0.09*3/(ctryNumberDouble-1);
      EABEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABEAE_excy = 0.09*3/(ctryNumberDouble-1);
      EABEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABEAF_excy = 0.09*3/(ctryNumberDouble-1);
      EABEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABRW_excy = 0.09*3/(ctryNumberDouble-1);
      EABRW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EABUS_excy = 0.09*3/(ctryNumberDouble-1);
      EABUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAB_qc =  0.321620156669017*2;
  EAB_qi =  0.00209600391746659*2;
  EAB_qcg =  EAB_cg;
  EAB_qig =  EAB_ig;
  EAB_ntc = 0.161;
  EAB_nti = 0.001;
  EAB_ntcg = (1-EAB_nucg)*(EAB_pnt/EAB_pcg)^(-EAB_mucg)*EAB_qcg;
  EAB_ntig = (1-EAB_nuig)*(EAB_pnt/EAB_pig)^(-EAB_muig)*EAB_qig;
  EAB_ttc = 0.16;
  EAB_tti = 0.001;
  EAB_ttcg = EAB_nucg*(EAB_pttcg/EAB_pcg)^(-EAB_mucg)*EAB_qcg;
  EAB_ttig = EAB_nuig*(EAB_pttig/EAB_pig)^(-EAB_muig)*EAB_qig;
  EAB_htc = 0.08;
  EAB_hti =  0.0005;
  EAB_htcg = EAB_nutcg*(EAB_pht/EAB_pttcg)^(-EAB_mutcg)*EAB_ttcg;
  EAB_htig = EAB_nutig*(EAB_pht/EAB_pttig)^(-EAB_mutig)*EAB_ttig;
  EAB_imc = 0.08;
  EAB_imcy = 0.25;
  EAB_imi = 0.0005;
  EAB_imiy = 0.0016;
  EAB_imcg = (1-EAB_nutcg)*(EAB_pimcg/EAB_pttcg)^(-EAB_mutcg)*EAB_ttcg;
  EAB_imcgy = EAB_pimcg*EAB_imcg/(EAB_py*EAB_y);
  EAB_imig = (1-EAB_nutig)*(EAB_pimig/EAB_pttig)^(-EAB_mutig)*EAB_ttig;
  EAB_imigy = EAB_pimig*EAB_imig/(EAB_py*EAB_y);
        EABEAA_imc = EABEAA_numc*((EAA_pex*EABEAA_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABEAA_imcy = (EAA_pex*EABEAA_rer)*EABEAA_imc/(EAB_py*EAB_y);
        EABEAA_imi = EABEAA_numi*((EAA_pex*EABEAA_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABEAA_imiy = (EAA_pex*EABEAA_rer)*EABEAA_imi/(EAB_py*EAB_y);
        EABEAA_imcg = EABEAA_numcg*((EAA_pex*EABEAA_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABEAA_imcgy = (EAA_pex*EABEAA_rer)*EABEAA_imcg/(EAB_py*EAB_y);
        EABEAA_imig = EABEAA_numig*((EAA_pex*EABEAA_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABEAA_imigy = (EAA_pex*EABEAA_rer)*EABEAA_imig/(EAB_py*EAB_y);
        EABEAC_imc = EABEAC_numc*((EAC_pex*EABEAC_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABEAC_imcy = (EAC_pex*EABEAC_rer)*EABEAC_imc/(EAB_py*EAB_y);
        EABEAC_imi = EABEAC_numi*((EAC_pex*EABEAC_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABEAC_imiy = (EAC_pex*EABEAC_rer)*EABEAC_imi/(EAB_py*EAB_y);
        EABEAC_imcg = EABEAC_numcg*((EAC_pex*EABEAC_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABEAC_imcgy = (EAC_pex*EABEAC_rer)*EABEAC_imcg/(EAB_py*EAB_y);
        EABEAC_imig = EABEAC_numig*((EAC_pex*EABEAC_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABEAC_imigy = (EAC_pex*EABEAC_rer)*EABEAC_imig/(EAB_py*EAB_y);
        EABEAD_imc = EABEAD_numc*((EAD_pex*EABEAD_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABEAD_imcy = (EAD_pex*EABEAD_rer)*EABEAD_imc/(EAB_py*EAB_y);
        EABEAD_imi = EABEAD_numi*((EAD_pex*EABEAD_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABEAD_imiy = (EAD_pex*EABEAD_rer)*EABEAD_imi/(EAB_py*EAB_y);
        EABEAD_imcg = EABEAD_numcg*((EAD_pex*EABEAD_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABEAD_imcgy = (EAD_pex*EABEAD_rer)*EABEAD_imcg/(EAB_py*EAB_y);
        EABEAD_imig = EABEAD_numig*((EAD_pex*EABEAD_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABEAD_imigy = (EAD_pex*EABEAD_rer)*EABEAD_imig/(EAB_py*EAB_y);
        EABEAE_imc = EABEAE_numc*((EAE_pex*EABEAE_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABEAE_imcy = (EAE_pex*EABEAE_rer)*EABEAE_imc/(EAB_py*EAB_y);
        EABEAE_imi = EABEAE_numi*((EAE_pex*EABEAE_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABEAE_imiy = (EAE_pex*EABEAE_rer)*EABEAE_imi/(EAB_py*EAB_y);
        EABEAE_imcg = EABEAE_numcg*((EAE_pex*EABEAE_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABEAE_imcgy = (EAE_pex*EABEAE_rer)*EABEAE_imcg/(EAB_py*EAB_y);
        EABEAE_imig = EABEAE_numig*((EAE_pex*EABEAE_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABEAE_imigy = (EAE_pex*EABEAE_rer)*EABEAE_imig/(EAB_py*EAB_y);
        EABEAF_imc = EABEAF_numc*((EAF_pex*EABEAF_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABEAF_imcy = (EAF_pex*EABEAF_rer)*EABEAF_imc/(EAB_py*EAB_y);
        EABEAF_imi = EABEAF_numi*((EAF_pex*EABEAF_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABEAF_imiy = (EAF_pex*EABEAF_rer)*EABEAF_imi/(EAB_py*EAB_y);
        EABEAF_imcg = EABEAF_numcg*((EAF_pex*EABEAF_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABEAF_imcgy = (EAF_pex*EABEAF_rer)*EABEAF_imcg/(EAB_py*EAB_y);
        EABEAF_imig = EABEAF_numig*((EAF_pex*EABEAF_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABEAF_imigy = (EAF_pex*EABEAF_rer)*EABEAF_imig/(EAB_py*EAB_y);
        EABRW_imc = EABRW_numc*((RW_pex*EABRW_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABRW_imcy = (RW_pex*EABRW_rer)*EABRW_imc/(EAB_py*EAB_y);
        EABRW_imi = EABRW_numi*((RW_pex*EABRW_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABRW_imiy = (RW_pex*EABRW_rer)*EABRW_imi/(EAB_py*EAB_y);
        EABRW_imcg = EABRW_numcg*((RW_pex*EABRW_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABRW_imcgy = (RW_pex*EABRW_rer)*EABRW_imcg/(EAB_py*EAB_y);
        EABRW_imig = EABRW_numig*((RW_pex*EABRW_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABRW_imigy = (RW_pex*EABRW_rer)*EABRW_imig/(EAB_py*EAB_y);
      EABUS_imc = 
        +(1
        -EABEAA_numc
        -EABEAC_numc
        -EABEAD_numc
        -EABEAE_numc
        -EABEAF_numc
        -EABRW_numc
        )*((US_pex*EABUS_rer)/EAB_pimc)^(-EAB_mumc)*EAB_imc;
  EABUS_imcy = (US_pex*EABUS_rer)*EABUS_imc/(EAB_py*EAB_y);
      EABUS_imi = 
        +(1
        -EABEAA_numi
        -EABEAC_numi
        -EABEAD_numi
        -EABEAE_numi
        -EABEAF_numi
        -EABRW_numi
        )*((US_pex*EABUS_rer)/EAB_pimi)^(-EAB_mumi)*EAB_imi;
  EABUS_imiy = (US_pex*EABUS_rer)*EABUS_imi/(EAB_py*EAB_y);
      EABUS_imcg = 
        +(1
        -EABEAA_numcg
        -EABEAC_numcg
        -EABEAD_numcg
        -EABEAE_numcg
        -EABEAF_numcg
        -EABRW_numcg
        )*((US_pex*EABUS_rer)/EAB_pimcg)^(-EAB_mumcg)*EAB_imcg;
  EABUS_imcgy = (US_pex*EABUS_rer)*EABUS_imcg/(EAB_py*EAB_y);
      EABUS_imig = 
        +(1
        -EABEAA_numig
        -EABEAC_numig
        -EABEAD_numig
        -EABEAE_numig
        -EABEAF_numig
        -EABRW_numig
        )*((US_pex*EABUS_rer)/EAB_pimig)^(-EAB_mumig)*EAB_imig;
  EABUS_imigy = (US_pex*EABUS_rer)*EABUS_imig/(EAB_py*EAB_y);
      
      // Shares
      EACEAA_excy = 0.09*3/(ctryNumberDouble-1);
      EACEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACEAB_excy = 0.09*3/(ctryNumberDouble-1);
      EACEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACEAD_excy = 0.09*3/(ctryNumberDouble-1);
      EACEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACEAE_excy = 0.09*3/(ctryNumberDouble-1);
      EACEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACEAF_excy = 0.09*3/(ctryNumberDouble-1);
      EACEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACRW_excy = 0.09*3/(ctryNumberDouble-1);
      EACRW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EACUS_excy = 0.09*3/(ctryNumberDouble-1);
      EACUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAC_qc =  0.321620156669017*2;
  EAC_qi =  0.00209600391746659*2;
  EAC_qcg =  EAC_cg;
  EAC_qig =  EAC_ig;
  EAC_ntc = 0.161;
  EAC_nti = 0.001;
  EAC_ntcg = (1-EAC_nucg)*(EAC_pnt/EAC_pcg)^(-EAC_mucg)*EAC_qcg;
  EAC_ntig = (1-EAC_nuig)*(EAC_pnt/EAC_pig)^(-EAC_muig)*EAC_qig;
  EAC_ttc = 0.16;
  EAC_tti = 0.001;
  EAC_ttcg = EAC_nucg*(EAC_pttcg/EAC_pcg)^(-EAC_mucg)*EAC_qcg;
  EAC_ttig = EAC_nuig*(EAC_pttig/EAC_pig)^(-EAC_muig)*EAC_qig;
  EAC_htc = 0.08;
  EAC_hti =  0.0005;
  EAC_htcg = EAC_nutcg*(EAC_pht/EAC_pttcg)^(-EAC_mutcg)*EAC_ttcg;
  EAC_htig = EAC_nutig*(EAC_pht/EAC_pttig)^(-EAC_mutig)*EAC_ttig;
  EAC_imc = 0.08;
  EAC_imcy = 0.25;
  EAC_imi = 0.0005;
  EAC_imiy = 0.0016;
  EAC_imcg = (1-EAC_nutcg)*(EAC_pimcg/EAC_pttcg)^(-EAC_mutcg)*EAC_ttcg;
  EAC_imcgy = EAC_pimcg*EAC_imcg/(EAC_py*EAC_y);
  EAC_imig = (1-EAC_nutig)*(EAC_pimig/EAC_pttig)^(-EAC_mutig)*EAC_ttig;
  EAC_imigy = EAC_pimig*EAC_imig/(EAC_py*EAC_y);
      EACEAA_imc = 
        +(1
        -EACEAB_numc
        -EACEAD_numc
        -EACEAE_numc
        -EACEAF_numc
        -EACRW_numc
        -EACUS_numc
        )*((EAA_pex*EACEAA_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACEAA_imcy = (EAA_pex*EACEAA_rer)*EACEAA_imc/(EAC_py*EAC_y);
      EACEAA_imi = 
        +(1
        -EACEAB_numi
        -EACEAD_numi
        -EACEAE_numi
        -EACEAF_numi
        -EACRW_numi
        -EACUS_numi
        )*((EAA_pex*EACEAA_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACEAA_imiy = (EAA_pex*EACEAA_rer)*EACEAA_imi/(EAC_py*EAC_y);
      EACEAA_imcg = 
        +(1
        -EACEAB_numcg
        -EACEAD_numcg
        -EACEAE_numcg
        -EACEAF_numcg
        -EACRW_numcg
        -EACUS_numcg
        )*((EAA_pex*EACEAA_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACEAA_imcgy = (EAA_pex*EACEAA_rer)*EACEAA_imcg/(EAC_py*EAC_y);
      EACEAA_imig = 
        +(1
        -EACEAB_numig
        -EACEAD_numig
        -EACEAE_numig
        -EACEAF_numig
        -EACRW_numig
        -EACUS_numig
        )*((EAA_pex*EACEAA_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACEAA_imigy = (EAA_pex*EACEAA_rer)*EACEAA_imig/(EAC_py*EAC_y);
        EACEAB_imc = EACEAB_numc*((EAB_pex*EACEAB_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACEAB_imcy = (EAB_pex*EACEAB_rer)*EACEAB_imc/(EAC_py*EAC_y);
        EACEAB_imi = EACEAB_numi*((EAB_pex*EACEAB_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACEAB_imiy = (EAB_pex*EACEAB_rer)*EACEAB_imi/(EAC_py*EAC_y);
        EACEAB_imcg = EACEAB_numcg*((EAB_pex*EACEAB_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACEAB_imcgy = (EAB_pex*EACEAB_rer)*EACEAB_imcg/(EAC_py*EAC_y);
        EACEAB_imig = EACEAB_numig*((EAB_pex*EACEAB_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACEAB_imigy = (EAB_pex*EACEAB_rer)*EACEAB_imig/(EAC_py*EAC_y);
        EACEAD_imc = EACEAD_numc*((EAD_pex*EACEAD_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACEAD_imcy = (EAD_pex*EACEAD_rer)*EACEAD_imc/(EAC_py*EAC_y);
        EACEAD_imi = EACEAD_numi*((EAD_pex*EACEAD_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACEAD_imiy = (EAD_pex*EACEAD_rer)*EACEAD_imi/(EAC_py*EAC_y);
        EACEAD_imcg = EACEAD_numcg*((EAD_pex*EACEAD_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACEAD_imcgy = (EAD_pex*EACEAD_rer)*EACEAD_imcg/(EAC_py*EAC_y);
        EACEAD_imig = EACEAD_numig*((EAD_pex*EACEAD_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACEAD_imigy = (EAD_pex*EACEAD_rer)*EACEAD_imig/(EAC_py*EAC_y);
        EACEAE_imc = EACEAE_numc*((EAE_pex*EACEAE_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACEAE_imcy = (EAE_pex*EACEAE_rer)*EACEAE_imc/(EAC_py*EAC_y);
        EACEAE_imi = EACEAE_numi*((EAE_pex*EACEAE_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACEAE_imiy = (EAE_pex*EACEAE_rer)*EACEAE_imi/(EAC_py*EAC_y);
        EACEAE_imcg = EACEAE_numcg*((EAE_pex*EACEAE_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACEAE_imcgy = (EAE_pex*EACEAE_rer)*EACEAE_imcg/(EAC_py*EAC_y);
        EACEAE_imig = EACEAE_numig*((EAE_pex*EACEAE_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACEAE_imigy = (EAE_pex*EACEAE_rer)*EACEAE_imig/(EAC_py*EAC_y);
        EACEAF_imc = EACEAF_numc*((EAF_pex*EACEAF_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACEAF_imcy = (EAF_pex*EACEAF_rer)*EACEAF_imc/(EAC_py*EAC_y);
        EACEAF_imi = EACEAF_numi*((EAF_pex*EACEAF_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACEAF_imiy = (EAF_pex*EACEAF_rer)*EACEAF_imi/(EAC_py*EAC_y);
        EACEAF_imcg = EACEAF_numcg*((EAF_pex*EACEAF_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACEAF_imcgy = (EAF_pex*EACEAF_rer)*EACEAF_imcg/(EAC_py*EAC_y);
        EACEAF_imig = EACEAF_numig*((EAF_pex*EACEAF_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACEAF_imigy = (EAF_pex*EACEAF_rer)*EACEAF_imig/(EAC_py*EAC_y);
        EACRW_imc = EACRW_numc*((RW_pex*EACRW_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACRW_imcy = (RW_pex*EACRW_rer)*EACRW_imc/(EAC_py*EAC_y);
        EACRW_imi = EACRW_numi*((RW_pex*EACRW_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACRW_imiy = (RW_pex*EACRW_rer)*EACRW_imi/(EAC_py*EAC_y);
        EACRW_imcg = EACRW_numcg*((RW_pex*EACRW_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACRW_imcgy = (RW_pex*EACRW_rer)*EACRW_imcg/(EAC_py*EAC_y);
        EACRW_imig = EACRW_numig*((RW_pex*EACRW_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACRW_imigy = (RW_pex*EACRW_rer)*EACRW_imig/(EAC_py*EAC_y);
        EACUS_imc = EACUS_numc*((US_pex*EACUS_rer)/EAC_pimc)^(-EAC_mumc)*EAC_imc;
  EACUS_imcy = (US_pex*EACUS_rer)*EACUS_imc/(EAC_py*EAC_y);
        EACUS_imi = EACUS_numi*((US_pex*EACUS_rer)/EAC_pimi)^(-EAC_mumi)*EAC_imi;
  EACUS_imiy = (US_pex*EACUS_rer)*EACUS_imi/(EAC_py*EAC_y);
        EACUS_imcg = EACUS_numcg*((US_pex*EACUS_rer)/EAC_pimcg)^(-EAC_mumcg)*EAC_imcg;
  EACUS_imcgy = (US_pex*EACUS_rer)*EACUS_imcg/(EAC_py*EAC_y);
        EACUS_imig = EACUS_numig*((US_pex*EACUS_rer)/EAC_pimig)^(-EAC_mumig)*EAC_imig;
  EACUS_imigy = (US_pex*EACUS_rer)*EACUS_imig/(EAC_py*EAC_y);
      
      // Shares
      EADEAA_excy = 0.09*3/(ctryNumberDouble-1);
      EADEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADEAB_excy = 0.09*3/(ctryNumberDouble-1);
      EADEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADEAC_excy = 0.09*3/(ctryNumberDouble-1);
      EADEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADEAE_excy = 0.09*3/(ctryNumberDouble-1);
      EADEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADEAF_excy = 0.09*3/(ctryNumberDouble-1);
      EADEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADRW_excy = 0.09*3/(ctryNumberDouble-1);
      EADRW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EADUS_excy = 0.09*3/(ctryNumberDouble-1);
      EADUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAD_qc =  0.321620156669017*2;
  EAD_qi =  0.00209600391746659*2;
  EAD_qcg =  EAD_cg;
  EAD_qig =  EAD_ig;
  EAD_ntc = 0.161;
  EAD_nti = 0.001;
  EAD_ntcg = (1-EAD_nucg)*(EAD_pnt/EAD_pcg)^(-EAD_mucg)*EAD_qcg;
  EAD_ntig = (1-EAD_nuig)*(EAD_pnt/EAD_pig)^(-EAD_muig)*EAD_qig;
  EAD_ttc = 0.16;
  EAD_tti = 0.001;
  EAD_ttcg = EAD_nucg*(EAD_pttcg/EAD_pcg)^(-EAD_mucg)*EAD_qcg;
  EAD_ttig = EAD_nuig*(EAD_pttig/EAD_pig)^(-EAD_muig)*EAD_qig;
  EAD_htc = 0.08;
  EAD_hti =  0.0005;
  EAD_htcg = EAD_nutcg*(EAD_pht/EAD_pttcg)^(-EAD_mutcg)*EAD_ttcg;
  EAD_htig = EAD_nutig*(EAD_pht/EAD_pttig)^(-EAD_mutig)*EAD_ttig;
  EAD_imc = 0.08;
  EAD_imcy = 0.25;
  EAD_imi = 0.0005;
  EAD_imiy = 0.0016;
  EAD_imcg = (1-EAD_nutcg)*(EAD_pimcg/EAD_pttcg)^(-EAD_mutcg)*EAD_ttcg;
  EAD_imcgy = EAD_pimcg*EAD_imcg/(EAD_py*EAD_y);
  EAD_imig = (1-EAD_nutig)*(EAD_pimig/EAD_pttig)^(-EAD_mutig)*EAD_ttig;
  EAD_imigy = EAD_pimig*EAD_imig/(EAD_py*EAD_y);
        EADEAA_imc = EADEAA_numc*((EAA_pex*EADEAA_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADEAA_imcy = (EAA_pex*EADEAA_rer)*EADEAA_imc/(EAD_py*EAD_y);
        EADEAA_imi = EADEAA_numi*((EAA_pex*EADEAA_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADEAA_imiy = (EAA_pex*EADEAA_rer)*EADEAA_imi/(EAD_py*EAD_y);
        EADEAA_imcg = EADEAA_numcg*((EAA_pex*EADEAA_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADEAA_imcgy = (EAA_pex*EADEAA_rer)*EADEAA_imcg/(EAD_py*EAD_y);
        EADEAA_imig = EADEAA_numig*((EAA_pex*EADEAA_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADEAA_imigy = (EAA_pex*EADEAA_rer)*EADEAA_imig/(EAD_py*EAD_y);
      EADEAB_imc = 
        +(1
        -EADEAA_numc
        -EADEAC_numc
        -EADEAE_numc
        -EADEAF_numc
        -EADRW_numc
        -EADUS_numc
        )*((EAB_pex*EADEAB_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADEAB_imcy = (EAB_pex*EADEAB_rer)*EADEAB_imc/(EAD_py*EAD_y);
      EADEAB_imi = 
        +(1
        -EADEAA_numi
        -EADEAC_numi
        -EADEAE_numi
        -EADEAF_numi
        -EADRW_numi
        -EADUS_numi
        )*((EAB_pex*EADEAB_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADEAB_imiy = (EAB_pex*EADEAB_rer)*EADEAB_imi/(EAD_py*EAD_y);
      EADEAB_imcg = 
        +(1
        -EADEAA_numcg
        -EADEAC_numcg
        -EADEAE_numcg
        -EADEAF_numcg
        -EADRW_numcg
        -EADUS_numcg
        )*((EAB_pex*EADEAB_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADEAB_imcgy = (EAB_pex*EADEAB_rer)*EADEAB_imcg/(EAD_py*EAD_y);
      EADEAB_imig = 
        +(1
        -EADEAA_numig
        -EADEAC_numig
        -EADEAE_numig
        -EADEAF_numig
        -EADRW_numig
        -EADUS_numig
        )*((EAB_pex*EADEAB_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADEAB_imigy = (EAB_pex*EADEAB_rer)*EADEAB_imig/(EAD_py*EAD_y);
        EADEAC_imc = EADEAC_numc*((EAC_pex*EADEAC_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADEAC_imcy = (EAC_pex*EADEAC_rer)*EADEAC_imc/(EAD_py*EAD_y);
        EADEAC_imi = EADEAC_numi*((EAC_pex*EADEAC_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADEAC_imiy = (EAC_pex*EADEAC_rer)*EADEAC_imi/(EAD_py*EAD_y);
        EADEAC_imcg = EADEAC_numcg*((EAC_pex*EADEAC_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADEAC_imcgy = (EAC_pex*EADEAC_rer)*EADEAC_imcg/(EAD_py*EAD_y);
        EADEAC_imig = EADEAC_numig*((EAC_pex*EADEAC_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADEAC_imigy = (EAC_pex*EADEAC_rer)*EADEAC_imig/(EAD_py*EAD_y);
        EADEAE_imc = EADEAE_numc*((EAE_pex*EADEAE_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADEAE_imcy = (EAE_pex*EADEAE_rer)*EADEAE_imc/(EAD_py*EAD_y);
        EADEAE_imi = EADEAE_numi*((EAE_pex*EADEAE_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADEAE_imiy = (EAE_pex*EADEAE_rer)*EADEAE_imi/(EAD_py*EAD_y);
        EADEAE_imcg = EADEAE_numcg*((EAE_pex*EADEAE_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADEAE_imcgy = (EAE_pex*EADEAE_rer)*EADEAE_imcg/(EAD_py*EAD_y);
        EADEAE_imig = EADEAE_numig*((EAE_pex*EADEAE_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADEAE_imigy = (EAE_pex*EADEAE_rer)*EADEAE_imig/(EAD_py*EAD_y);
        EADEAF_imc = EADEAF_numc*((EAF_pex*EADEAF_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADEAF_imcy = (EAF_pex*EADEAF_rer)*EADEAF_imc/(EAD_py*EAD_y);
        EADEAF_imi = EADEAF_numi*((EAF_pex*EADEAF_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADEAF_imiy = (EAF_pex*EADEAF_rer)*EADEAF_imi/(EAD_py*EAD_y);
        EADEAF_imcg = EADEAF_numcg*((EAF_pex*EADEAF_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADEAF_imcgy = (EAF_pex*EADEAF_rer)*EADEAF_imcg/(EAD_py*EAD_y);
        EADEAF_imig = EADEAF_numig*((EAF_pex*EADEAF_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADEAF_imigy = (EAF_pex*EADEAF_rer)*EADEAF_imig/(EAD_py*EAD_y);
        EADRW_imc = EADRW_numc*((RW_pex*EADRW_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADRW_imcy = (RW_pex*EADRW_rer)*EADRW_imc/(EAD_py*EAD_y);
        EADRW_imi = EADRW_numi*((RW_pex*EADRW_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADRW_imiy = (RW_pex*EADRW_rer)*EADRW_imi/(EAD_py*EAD_y);
        EADRW_imcg = EADRW_numcg*((RW_pex*EADRW_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADRW_imcgy = (RW_pex*EADRW_rer)*EADRW_imcg/(EAD_py*EAD_y);
        EADRW_imig = EADRW_numig*((RW_pex*EADRW_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADRW_imigy = (RW_pex*EADRW_rer)*EADRW_imig/(EAD_py*EAD_y);
        EADUS_imc = EADUS_numc*((US_pex*EADUS_rer)/EAD_pimc)^(-EAD_mumc)*EAD_imc;
  EADUS_imcy = (US_pex*EADUS_rer)*EADUS_imc/(EAD_py*EAD_y);
        EADUS_imi = EADUS_numi*((US_pex*EADUS_rer)/EAD_pimi)^(-EAD_mumi)*EAD_imi;
  EADUS_imiy = (US_pex*EADUS_rer)*EADUS_imi/(EAD_py*EAD_y);
        EADUS_imcg = EADUS_numcg*((US_pex*EADUS_rer)/EAD_pimcg)^(-EAD_mumcg)*EAD_imcg;
  EADUS_imcgy = (US_pex*EADUS_rer)*EADUS_imcg/(EAD_py*EAD_y);
        EADUS_imig = EADUS_numig*((US_pex*EADUS_rer)/EAD_pimig)^(-EAD_mumig)*EAD_imig;
  EADUS_imigy = (US_pex*EADUS_rer)*EADUS_imig/(EAD_py*EAD_y);
      
      // Shares
      EAEEAA_excy = 0.09*3/(ctryNumberDouble-1);
      EAEEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAEEAB_excy = 0.09*3/(ctryNumberDouble-1);
      EAEEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAEEAC_excy = 0.09*3/(ctryNumberDouble-1);
      EAEEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAEEAD_excy = 0.09*3/(ctryNumberDouble-1);
      EAEEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAEEAF_excy = 0.09*3/(ctryNumberDouble-1);
      EAEEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAERW_excy = 0.09*3/(ctryNumberDouble-1);
      EAERW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAEUS_excy = 0.09*3/(ctryNumberDouble-1);
      EAEUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAE_qc =  0.321620156669017*2;
  EAE_qi =  0.00209600391746659*2;
  EAE_qcg =  EAE_cg;
  EAE_qig =  EAE_ig;
  EAE_ntc = 0.161;
  EAE_nti = 0.001;
  EAE_ntcg = (1-EAE_nucg)*(EAE_pnt/EAE_pcg)^(-EAE_mucg)*EAE_qcg;
  EAE_ntig = (1-EAE_nuig)*(EAE_pnt/EAE_pig)^(-EAE_muig)*EAE_qig;
  EAE_ttc = 0.16;
  EAE_tti = 0.001;
  EAE_ttcg = EAE_nucg*(EAE_pttcg/EAE_pcg)^(-EAE_mucg)*EAE_qcg;
  EAE_ttig = EAE_nuig*(EAE_pttig/EAE_pig)^(-EAE_muig)*EAE_qig;
  EAE_htc = 0.08;
  EAE_hti =  0.0005;
  EAE_htcg = EAE_nutcg*(EAE_pht/EAE_pttcg)^(-EAE_mutcg)*EAE_ttcg;
  EAE_htig = EAE_nutig*(EAE_pht/EAE_pttig)^(-EAE_mutig)*EAE_ttig;
  EAE_imc = 0.08;
  EAE_imcy = 0.25;
  EAE_imi = 0.0005;
  EAE_imiy = 0.0016;
  EAE_imcg = (1-EAE_nutcg)*(EAE_pimcg/EAE_pttcg)^(-EAE_mutcg)*EAE_ttcg;
  EAE_imcgy = EAE_pimcg*EAE_imcg/(EAE_py*EAE_y);
  EAE_imig = (1-EAE_nutig)*(EAE_pimig/EAE_pttig)^(-EAE_mutig)*EAE_ttig;
  EAE_imigy = EAE_pimig*EAE_imig/(EAE_py*EAE_y);
        EAEEAA_imc = EAEEAA_numc*((EAA_pex*EAEEAA_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEEAA_imcy = (EAA_pex*EAEEAA_rer)*EAEEAA_imc/(EAE_py*EAE_y);
        EAEEAA_imi = EAEEAA_numi*((EAA_pex*EAEEAA_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEEAA_imiy = (EAA_pex*EAEEAA_rer)*EAEEAA_imi/(EAE_py*EAE_y);
        EAEEAA_imcg = EAEEAA_numcg*((EAA_pex*EAEEAA_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEEAA_imcgy = (EAA_pex*EAEEAA_rer)*EAEEAA_imcg/(EAE_py*EAE_y);
        EAEEAA_imig = EAEEAA_numig*((EAA_pex*EAEEAA_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEEAA_imigy = (EAA_pex*EAEEAA_rer)*EAEEAA_imig/(EAE_py*EAE_y);
        EAEEAB_imc = EAEEAB_numc*((EAB_pex*EAEEAB_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEEAB_imcy = (EAB_pex*EAEEAB_rer)*EAEEAB_imc/(EAE_py*EAE_y);
        EAEEAB_imi = EAEEAB_numi*((EAB_pex*EAEEAB_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEEAB_imiy = (EAB_pex*EAEEAB_rer)*EAEEAB_imi/(EAE_py*EAE_y);
        EAEEAB_imcg = EAEEAB_numcg*((EAB_pex*EAEEAB_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEEAB_imcgy = (EAB_pex*EAEEAB_rer)*EAEEAB_imcg/(EAE_py*EAE_y);
        EAEEAB_imig = EAEEAB_numig*((EAB_pex*EAEEAB_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEEAB_imigy = (EAB_pex*EAEEAB_rer)*EAEEAB_imig/(EAE_py*EAE_y);
      EAEEAC_imc = 
        +(1
        -EAEEAA_numc
        -EAEEAB_numc
        -EAEEAD_numc
        -EAEEAF_numc
        -EAERW_numc
        -EAEUS_numc
        )*((EAC_pex*EAEEAC_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEEAC_imcy = (EAC_pex*EAEEAC_rer)*EAEEAC_imc/(EAE_py*EAE_y);
      EAEEAC_imi = 
        +(1
        -EAEEAA_numi
        -EAEEAB_numi
        -EAEEAD_numi
        -EAEEAF_numi
        -EAERW_numi
        -EAEUS_numi
        )*((EAC_pex*EAEEAC_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEEAC_imiy = (EAC_pex*EAEEAC_rer)*EAEEAC_imi/(EAE_py*EAE_y);
      EAEEAC_imcg = 
        +(1
        -EAEEAA_numcg
        -EAEEAB_numcg
        -EAEEAD_numcg
        -EAEEAF_numcg
        -EAERW_numcg
        -EAEUS_numcg
        )*((EAC_pex*EAEEAC_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEEAC_imcgy = (EAC_pex*EAEEAC_rer)*EAEEAC_imcg/(EAE_py*EAE_y);
      EAEEAC_imig = 
        +(1
        -EAEEAA_numig
        -EAEEAB_numig
        -EAEEAD_numig
        -EAEEAF_numig
        -EAERW_numig
        -EAEUS_numig
        )*((EAC_pex*EAEEAC_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEEAC_imigy = (EAC_pex*EAEEAC_rer)*EAEEAC_imig/(EAE_py*EAE_y);
        EAEEAD_imc = EAEEAD_numc*((EAD_pex*EAEEAD_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEEAD_imcy = (EAD_pex*EAEEAD_rer)*EAEEAD_imc/(EAE_py*EAE_y);
        EAEEAD_imi = EAEEAD_numi*((EAD_pex*EAEEAD_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEEAD_imiy = (EAD_pex*EAEEAD_rer)*EAEEAD_imi/(EAE_py*EAE_y);
        EAEEAD_imcg = EAEEAD_numcg*((EAD_pex*EAEEAD_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEEAD_imcgy = (EAD_pex*EAEEAD_rer)*EAEEAD_imcg/(EAE_py*EAE_y);
        EAEEAD_imig = EAEEAD_numig*((EAD_pex*EAEEAD_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEEAD_imigy = (EAD_pex*EAEEAD_rer)*EAEEAD_imig/(EAE_py*EAE_y);
        EAEEAF_imc = EAEEAF_numc*((EAF_pex*EAEEAF_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEEAF_imcy = (EAF_pex*EAEEAF_rer)*EAEEAF_imc/(EAE_py*EAE_y);
        EAEEAF_imi = EAEEAF_numi*((EAF_pex*EAEEAF_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEEAF_imiy = (EAF_pex*EAEEAF_rer)*EAEEAF_imi/(EAE_py*EAE_y);
        EAEEAF_imcg = EAEEAF_numcg*((EAF_pex*EAEEAF_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEEAF_imcgy = (EAF_pex*EAEEAF_rer)*EAEEAF_imcg/(EAE_py*EAE_y);
        EAEEAF_imig = EAEEAF_numig*((EAF_pex*EAEEAF_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEEAF_imigy = (EAF_pex*EAEEAF_rer)*EAEEAF_imig/(EAE_py*EAE_y);
        EAERW_imc = EAERW_numc*((RW_pex*EAERW_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAERW_imcy = (RW_pex*EAERW_rer)*EAERW_imc/(EAE_py*EAE_y);
        EAERW_imi = EAERW_numi*((RW_pex*EAERW_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAERW_imiy = (RW_pex*EAERW_rer)*EAERW_imi/(EAE_py*EAE_y);
        EAERW_imcg = EAERW_numcg*((RW_pex*EAERW_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAERW_imcgy = (RW_pex*EAERW_rer)*EAERW_imcg/(EAE_py*EAE_y);
        EAERW_imig = EAERW_numig*((RW_pex*EAERW_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAERW_imigy = (RW_pex*EAERW_rer)*EAERW_imig/(EAE_py*EAE_y);
        EAEUS_imc = EAEUS_numc*((US_pex*EAEUS_rer)/EAE_pimc)^(-EAE_mumc)*EAE_imc;
  EAEUS_imcy = (US_pex*EAEUS_rer)*EAEUS_imc/(EAE_py*EAE_y);
        EAEUS_imi = EAEUS_numi*((US_pex*EAEUS_rer)/EAE_pimi)^(-EAE_mumi)*EAE_imi;
  EAEUS_imiy = (US_pex*EAEUS_rer)*EAEUS_imi/(EAE_py*EAE_y);
        EAEUS_imcg = EAEUS_numcg*((US_pex*EAEUS_rer)/EAE_pimcg)^(-EAE_mumcg)*EAE_imcg;
  EAEUS_imcgy = (US_pex*EAEUS_rer)*EAEUS_imcg/(EAE_py*EAE_y);
        EAEUS_imig = EAEUS_numig*((US_pex*EAEUS_rer)/EAE_pimig)^(-EAE_mumig)*EAE_imig;
  EAEUS_imigy = (US_pex*EAEUS_rer)*EAEUS_imig/(EAE_py*EAE_y);
      
      // Shares
      EAFEAA_excy = 0.09*3/(ctryNumberDouble-1);
      EAFEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFEAB_excy = 0.09*3/(ctryNumberDouble-1);
      EAFEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFEAC_excy = 0.09*3/(ctryNumberDouble-1);
      EAFEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFEAD_excy = 0.09*3/(ctryNumberDouble-1);
      EAFEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFEAE_excy = 0.09*3/(ctryNumberDouble-1);
      EAFEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFRW_excy = 0.09*3/(ctryNumberDouble-1);
      EAFRW_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      EAFUS_excy = 0.09*3/(ctryNumberDouble-1);
      EAFUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  EAF_qc =  0.321620156669017*2;
  EAF_qi =  0.00209600391746659*2;
  EAF_qcg =  EAF_cg;
  EAF_qig =  EAF_ig;
  EAF_ntc = 0.161;
  EAF_nti = 0.001;
  EAF_ntcg = (1-EAF_nucg)*(EAF_pnt/EAF_pcg)^(-EAF_mucg)*EAF_qcg;
  EAF_ntig = (1-EAF_nuig)*(EAF_pnt/EAF_pig)^(-EAF_muig)*EAF_qig;
  EAF_ttc = 0.16;
  EAF_tti = 0.001;
  EAF_ttcg = EAF_nucg*(EAF_pttcg/EAF_pcg)^(-EAF_mucg)*EAF_qcg;
  EAF_ttig = EAF_nuig*(EAF_pttig/EAF_pig)^(-EAF_muig)*EAF_qig;
  EAF_htc = 0.08;
  EAF_hti =  0.0005;
  EAF_htcg = EAF_nutcg*(EAF_pht/EAF_pttcg)^(-EAF_mutcg)*EAF_ttcg;
  EAF_htig = EAF_nutig*(EAF_pht/EAF_pttig)^(-EAF_mutig)*EAF_ttig;
  EAF_imc = 0.08;
  EAF_imcy = 0.25;
  EAF_imi = 0.0005;
  EAF_imiy = 0.0016;
  EAF_imcg = (1-EAF_nutcg)*(EAF_pimcg/EAF_pttcg)^(-EAF_mutcg)*EAF_ttcg;
  EAF_imcgy = EAF_pimcg*EAF_imcg/(EAF_py*EAF_y);
  EAF_imig = (1-EAF_nutig)*(EAF_pimig/EAF_pttig)^(-EAF_mutig)*EAF_ttig;
  EAF_imigy = EAF_pimig*EAF_imig/(EAF_py*EAF_y);
        EAFEAA_imc = EAFEAA_numc*((EAA_pex*EAFEAA_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFEAA_imcy = (EAA_pex*EAFEAA_rer)*EAFEAA_imc/(EAF_py*EAF_y);
        EAFEAA_imi = EAFEAA_numi*((EAA_pex*EAFEAA_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFEAA_imiy = (EAA_pex*EAFEAA_rer)*EAFEAA_imi/(EAF_py*EAF_y);
        EAFEAA_imcg = EAFEAA_numcg*((EAA_pex*EAFEAA_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFEAA_imcgy = (EAA_pex*EAFEAA_rer)*EAFEAA_imcg/(EAF_py*EAF_y);
        EAFEAA_imig = EAFEAA_numig*((EAA_pex*EAFEAA_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFEAA_imigy = (EAA_pex*EAFEAA_rer)*EAFEAA_imig/(EAF_py*EAF_y);
        EAFEAB_imc = EAFEAB_numc*((EAB_pex*EAFEAB_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFEAB_imcy = (EAB_pex*EAFEAB_rer)*EAFEAB_imc/(EAF_py*EAF_y);
        EAFEAB_imi = EAFEAB_numi*((EAB_pex*EAFEAB_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFEAB_imiy = (EAB_pex*EAFEAB_rer)*EAFEAB_imi/(EAF_py*EAF_y);
        EAFEAB_imcg = EAFEAB_numcg*((EAB_pex*EAFEAB_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFEAB_imcgy = (EAB_pex*EAFEAB_rer)*EAFEAB_imcg/(EAF_py*EAF_y);
        EAFEAB_imig = EAFEAB_numig*((EAB_pex*EAFEAB_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFEAB_imigy = (EAB_pex*EAFEAB_rer)*EAFEAB_imig/(EAF_py*EAF_y);
        EAFEAC_imc = EAFEAC_numc*((EAC_pex*EAFEAC_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFEAC_imcy = (EAC_pex*EAFEAC_rer)*EAFEAC_imc/(EAF_py*EAF_y);
        EAFEAC_imi = EAFEAC_numi*((EAC_pex*EAFEAC_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFEAC_imiy = (EAC_pex*EAFEAC_rer)*EAFEAC_imi/(EAF_py*EAF_y);
        EAFEAC_imcg = EAFEAC_numcg*((EAC_pex*EAFEAC_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFEAC_imcgy = (EAC_pex*EAFEAC_rer)*EAFEAC_imcg/(EAF_py*EAF_y);
        EAFEAC_imig = EAFEAC_numig*((EAC_pex*EAFEAC_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFEAC_imigy = (EAC_pex*EAFEAC_rer)*EAFEAC_imig/(EAF_py*EAF_y);
      EAFEAD_imc = 
        +(1
        -EAFEAA_numc
        -EAFEAB_numc
        -EAFEAC_numc
        -EAFEAE_numc
        -EAFRW_numc
        -EAFUS_numc
        )*((EAD_pex*EAFEAD_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFEAD_imcy = (EAD_pex*EAFEAD_rer)*EAFEAD_imc/(EAF_py*EAF_y);
      EAFEAD_imi = 
        +(1
        -EAFEAA_numi
        -EAFEAB_numi
        -EAFEAC_numi
        -EAFEAE_numi
        -EAFRW_numi
        -EAFUS_numi
        )*((EAD_pex*EAFEAD_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFEAD_imiy = (EAD_pex*EAFEAD_rer)*EAFEAD_imi/(EAF_py*EAF_y);
      EAFEAD_imcg = 
        +(1
        -EAFEAA_numcg
        -EAFEAB_numcg
        -EAFEAC_numcg
        -EAFEAE_numcg
        -EAFRW_numcg
        -EAFUS_numcg
        )*((EAD_pex*EAFEAD_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFEAD_imcgy = (EAD_pex*EAFEAD_rer)*EAFEAD_imcg/(EAF_py*EAF_y);
      EAFEAD_imig = 
        +(1
        -EAFEAA_numig
        -EAFEAB_numig
        -EAFEAC_numig
        -EAFEAE_numig
        -EAFRW_numig
        -EAFUS_numig
        )*((EAD_pex*EAFEAD_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFEAD_imigy = (EAD_pex*EAFEAD_rer)*EAFEAD_imig/(EAF_py*EAF_y);
        EAFEAE_imc = EAFEAE_numc*((EAE_pex*EAFEAE_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFEAE_imcy = (EAE_pex*EAFEAE_rer)*EAFEAE_imc/(EAF_py*EAF_y);
        EAFEAE_imi = EAFEAE_numi*((EAE_pex*EAFEAE_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFEAE_imiy = (EAE_pex*EAFEAE_rer)*EAFEAE_imi/(EAF_py*EAF_y);
        EAFEAE_imcg = EAFEAE_numcg*((EAE_pex*EAFEAE_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFEAE_imcgy = (EAE_pex*EAFEAE_rer)*EAFEAE_imcg/(EAF_py*EAF_y);
        EAFEAE_imig = EAFEAE_numig*((EAE_pex*EAFEAE_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFEAE_imigy = (EAE_pex*EAFEAE_rer)*EAFEAE_imig/(EAF_py*EAF_y);
        EAFRW_imc = EAFRW_numc*((RW_pex*EAFRW_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFRW_imcy = (RW_pex*EAFRW_rer)*EAFRW_imc/(EAF_py*EAF_y);
        EAFRW_imi = EAFRW_numi*((RW_pex*EAFRW_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFRW_imiy = (RW_pex*EAFRW_rer)*EAFRW_imi/(EAF_py*EAF_y);
        EAFRW_imcg = EAFRW_numcg*((RW_pex*EAFRW_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFRW_imcgy = (RW_pex*EAFRW_rer)*EAFRW_imcg/(EAF_py*EAF_y);
        EAFRW_imig = EAFRW_numig*((RW_pex*EAFRW_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFRW_imigy = (RW_pex*EAFRW_rer)*EAFRW_imig/(EAF_py*EAF_y);
        EAFUS_imc = EAFUS_numc*((US_pex*EAFUS_rer)/EAF_pimc)^(-EAF_mumc)*EAF_imc;
  EAFUS_imcy = (US_pex*EAFUS_rer)*EAFUS_imc/(EAF_py*EAF_y);
        EAFUS_imi = EAFUS_numi*((US_pex*EAFUS_rer)/EAF_pimi)^(-EAF_mumi)*EAF_imi;
  EAFUS_imiy = (US_pex*EAFUS_rer)*EAFUS_imi/(EAF_py*EAF_y);
        EAFUS_imcg = EAFUS_numcg*((US_pex*EAFUS_rer)/EAF_pimcg)^(-EAF_mumcg)*EAF_imcg;
  EAFUS_imcgy = (US_pex*EAFUS_rer)*EAFUS_imcg/(EAF_py*EAF_y);
        EAFUS_imig = EAFUS_numig*((US_pex*EAFUS_rer)/EAF_pimig)^(-EAF_mumig)*EAF_imig;
  EAFUS_imigy = (US_pex*EAFUS_rer)*EAFUS_imig/(EAF_py*EAF_y);
      
      // Shares
      RWEAA_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWEAB_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWEAC_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWEAD_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWEAE_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWEAF_excy = 0.09*3/(ctryNumberDouble-1);
      RWEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      RWUS_excy = 0.09*3/(ctryNumberDouble-1);
      RWUS_exiy = 0.0008*3/(ctryNumberDouble-1);
  RW_qc =  0.321620156669017*2;
  RW_qi =  0.00209600391746659*2;
  RW_qcg =  RW_cg;
  RW_qig =  RW_ig;
  RW_ntc = 0.161;
  RW_nti = 0.001;
  RW_ntcg = (1-RW_nucg)*(RW_pnt/RW_pcg)^(-RW_mucg)*RW_qcg;
  RW_ntig = (1-RW_nuig)*(RW_pnt/RW_pig)^(-RW_muig)*RW_qig;
  RW_ttc = 0.16;
  RW_tti = 0.001;
  RW_ttcg = RW_nucg*(RW_pttcg/RW_pcg)^(-RW_mucg)*RW_qcg;
  RW_ttig = RW_nuig*(RW_pttig/RW_pig)^(-RW_muig)*RW_qig;
  RW_htc = 0.08;
  RW_hti =  0.0005;
  RW_htcg = RW_nutcg*(RW_pht/RW_pttcg)^(-RW_mutcg)*RW_ttcg;
  RW_htig = RW_nutig*(RW_pht/RW_pttig)^(-RW_mutig)*RW_ttig;
  RW_imc = 0.08;
  RW_imcy = 0.25;
  RW_imi = 0.0005;
  RW_imiy = 0.0016;
  RW_imcg = (1-RW_nutcg)*(RW_pimcg/RW_pttcg)^(-RW_mutcg)*RW_ttcg;
  RW_imcgy = RW_pimcg*RW_imcg/(RW_py*RW_y);
  RW_imig = (1-RW_nutig)*(RW_pimig/RW_pttig)^(-RW_mutig)*RW_ttig;
  RW_imigy = RW_pimig*RW_imig/(RW_py*RW_y);
        RWEAA_imc = RWEAA_numc*((EAA_pex*RWEAA_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAA_imcy = (EAA_pex*RWEAA_rer)*RWEAA_imc/(RW_py*RW_y);
        RWEAA_imi = RWEAA_numi*((EAA_pex*RWEAA_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAA_imiy = (EAA_pex*RWEAA_rer)*RWEAA_imi/(RW_py*RW_y);
        RWEAA_imcg = RWEAA_numcg*((EAA_pex*RWEAA_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAA_imcgy = (EAA_pex*RWEAA_rer)*RWEAA_imcg/(RW_py*RW_y);
        RWEAA_imig = RWEAA_numig*((EAA_pex*RWEAA_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAA_imigy = (EAA_pex*RWEAA_rer)*RWEAA_imig/(RW_py*RW_y);
        RWEAB_imc = RWEAB_numc*((EAB_pex*RWEAB_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAB_imcy = (EAB_pex*RWEAB_rer)*RWEAB_imc/(RW_py*RW_y);
        RWEAB_imi = RWEAB_numi*((EAB_pex*RWEAB_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAB_imiy = (EAB_pex*RWEAB_rer)*RWEAB_imi/(RW_py*RW_y);
        RWEAB_imcg = RWEAB_numcg*((EAB_pex*RWEAB_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAB_imcgy = (EAB_pex*RWEAB_rer)*RWEAB_imcg/(RW_py*RW_y);
        RWEAB_imig = RWEAB_numig*((EAB_pex*RWEAB_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAB_imigy = (EAB_pex*RWEAB_rer)*RWEAB_imig/(RW_py*RW_y);
        RWEAC_imc = RWEAC_numc*((EAC_pex*RWEAC_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAC_imcy = (EAC_pex*RWEAC_rer)*RWEAC_imc/(RW_py*RW_y);
        RWEAC_imi = RWEAC_numi*((EAC_pex*RWEAC_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAC_imiy = (EAC_pex*RWEAC_rer)*RWEAC_imi/(RW_py*RW_y);
        RWEAC_imcg = RWEAC_numcg*((EAC_pex*RWEAC_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAC_imcgy = (EAC_pex*RWEAC_rer)*RWEAC_imcg/(RW_py*RW_y);
        RWEAC_imig = RWEAC_numig*((EAC_pex*RWEAC_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAC_imigy = (EAC_pex*RWEAC_rer)*RWEAC_imig/(RW_py*RW_y);
        RWEAD_imc = RWEAD_numc*((EAD_pex*RWEAD_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAD_imcy = (EAD_pex*RWEAD_rer)*RWEAD_imc/(RW_py*RW_y);
        RWEAD_imi = RWEAD_numi*((EAD_pex*RWEAD_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAD_imiy = (EAD_pex*RWEAD_rer)*RWEAD_imi/(RW_py*RW_y);
        RWEAD_imcg = RWEAD_numcg*((EAD_pex*RWEAD_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAD_imcgy = (EAD_pex*RWEAD_rer)*RWEAD_imcg/(RW_py*RW_y);
        RWEAD_imig = RWEAD_numig*((EAD_pex*RWEAD_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAD_imigy = (EAD_pex*RWEAD_rer)*RWEAD_imig/(RW_py*RW_y);
      RWEAE_imc = 
        +(1
        -RWEAA_numc
        -RWEAB_numc
        -RWEAC_numc
        -RWEAD_numc
        -RWEAF_numc
        -RWUS_numc
        )*((EAE_pex*RWEAE_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAE_imcy = (EAE_pex*RWEAE_rer)*RWEAE_imc/(RW_py*RW_y);
      RWEAE_imi = 
        +(1
        -RWEAA_numi
        -RWEAB_numi
        -RWEAC_numi
        -RWEAD_numi
        -RWEAF_numi
        -RWUS_numi
        )*((EAE_pex*RWEAE_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAE_imiy = (EAE_pex*RWEAE_rer)*RWEAE_imi/(RW_py*RW_y);
      RWEAE_imcg = 
        +(1
        -RWEAA_numcg
        -RWEAB_numcg
        -RWEAC_numcg
        -RWEAD_numcg
        -RWEAF_numcg
        -RWUS_numcg
        )*((EAE_pex*RWEAE_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAE_imcgy = (EAE_pex*RWEAE_rer)*RWEAE_imcg/(RW_py*RW_y);
      RWEAE_imig = 
        +(1
        -RWEAA_numig
        -RWEAB_numig
        -RWEAC_numig
        -RWEAD_numig
        -RWEAF_numig
        -RWUS_numig
        )*((EAE_pex*RWEAE_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAE_imigy = (EAE_pex*RWEAE_rer)*RWEAE_imig/(RW_py*RW_y);
        RWEAF_imc = RWEAF_numc*((EAF_pex*RWEAF_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWEAF_imcy = (EAF_pex*RWEAF_rer)*RWEAF_imc/(RW_py*RW_y);
        RWEAF_imi = RWEAF_numi*((EAF_pex*RWEAF_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWEAF_imiy = (EAF_pex*RWEAF_rer)*RWEAF_imi/(RW_py*RW_y);
        RWEAF_imcg = RWEAF_numcg*((EAF_pex*RWEAF_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWEAF_imcgy = (EAF_pex*RWEAF_rer)*RWEAF_imcg/(RW_py*RW_y);
        RWEAF_imig = RWEAF_numig*((EAF_pex*RWEAF_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWEAF_imigy = (EAF_pex*RWEAF_rer)*RWEAF_imig/(RW_py*RW_y);
        RWUS_imc = RWUS_numc*((US_pex*RWUS_rer)/RW_pimc)^(-RW_mumc)*RW_imc;
  RWUS_imcy = (US_pex*RWUS_rer)*RWUS_imc/(RW_py*RW_y);
        RWUS_imi = RWUS_numi*((US_pex*RWUS_rer)/RW_pimi)^(-RW_mumi)*RW_imi;
  RWUS_imiy = (US_pex*RWUS_rer)*RWUS_imi/(RW_py*RW_y);
        RWUS_imcg = RWUS_numcg*((US_pex*RWUS_rer)/RW_pimcg)^(-RW_mumcg)*RW_imcg;
  RWUS_imcgy = (US_pex*RWUS_rer)*RWUS_imcg/(RW_py*RW_y);
        RWUS_imig = RWUS_numig*((US_pex*RWUS_rer)/RW_pimig)^(-RW_mumig)*RW_imig;
  RWUS_imigy = (US_pex*RWUS_rer)*RWUS_imig/(RW_py*RW_y);
      
      // Shares
      USEAA_excy = 0.09*3/(ctryNumberDouble-1);
      USEAA_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USEAB_excy = 0.09*3/(ctryNumberDouble-1);
      USEAB_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USEAC_excy = 0.09*3/(ctryNumberDouble-1);
      USEAC_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USEAD_excy = 0.09*3/(ctryNumberDouble-1);
      USEAD_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USEAE_excy = 0.09*3/(ctryNumberDouble-1);
      USEAE_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USEAF_excy = 0.09*3/(ctryNumberDouble-1);
      USEAF_exiy = 0.0008*3/(ctryNumberDouble-1);
      
      // Shares
      USRW_excy = 0.09*3/(ctryNumberDouble-1);
      USRW_exiy = 0.0008*3/(ctryNumberDouble-1);
  US_qc =  0.321620156669017*2;
  US_qi =  0.00209600391746659*2;
  US_qcg =  US_cg;
  US_qig =  US_ig;
  US_ntc = 0.161;
  US_nti = 0.001;
  US_ntcg = (1-US_nucg)*(US_pnt/US_pcg)^(-US_mucg)*US_qcg;
  US_ntig = (1-US_nuig)*(US_pnt/US_pig)^(-US_muig)*US_qig;
  US_ttc = 0.16;
  US_tti = 0.001;
  US_ttcg = US_nucg*(US_pttcg/US_pcg)^(-US_mucg)*US_qcg;
  US_ttig = US_nuig*(US_pttig/US_pig)^(-US_muig)*US_qig;
  US_htc = 0.08;
  US_hti =  0.0005;
  US_htcg = US_nutcg*(US_pht/US_pttcg)^(-US_mutcg)*US_ttcg;
  US_htig = US_nutig*(US_pht/US_pttig)^(-US_mutig)*US_ttig;
  US_imc = 0.08;
  US_imcy = 0.25;
  US_imi = 0.0005;
  US_imiy = 0.0016;
  US_imcg = (1-US_nutcg)*(US_pimcg/US_pttcg)^(-US_mutcg)*US_ttcg;
  US_imcgy = US_pimcg*US_imcg/(US_py*US_y);
  US_imig = (1-US_nutig)*(US_pimig/US_pttig)^(-US_mutig)*US_ttig;
  US_imigy = US_pimig*US_imig/(US_py*US_y);
        USEAA_imc = USEAA_numc*((EAA_pex*USEAA_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAA_imcy = (EAA_pex*USEAA_rer)*USEAA_imc/(US_py*US_y);
        USEAA_imi = USEAA_numi*((EAA_pex*USEAA_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAA_imiy = (EAA_pex*USEAA_rer)*USEAA_imi/(US_py*US_y);
        USEAA_imcg = USEAA_numcg*((EAA_pex*USEAA_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAA_imcgy = (EAA_pex*USEAA_rer)*USEAA_imcg/(US_py*US_y);
        USEAA_imig = USEAA_numig*((EAA_pex*USEAA_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAA_imigy = (EAA_pex*USEAA_rer)*USEAA_imig/(US_py*US_y);
        USEAB_imc = USEAB_numc*((EAB_pex*USEAB_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAB_imcy = (EAB_pex*USEAB_rer)*USEAB_imc/(US_py*US_y);
        USEAB_imi = USEAB_numi*((EAB_pex*USEAB_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAB_imiy = (EAB_pex*USEAB_rer)*USEAB_imi/(US_py*US_y);
        USEAB_imcg = USEAB_numcg*((EAB_pex*USEAB_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAB_imcgy = (EAB_pex*USEAB_rer)*USEAB_imcg/(US_py*US_y);
        USEAB_imig = USEAB_numig*((EAB_pex*USEAB_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAB_imigy = (EAB_pex*USEAB_rer)*USEAB_imig/(US_py*US_y);
        USEAC_imc = USEAC_numc*((EAC_pex*USEAC_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAC_imcy = (EAC_pex*USEAC_rer)*USEAC_imc/(US_py*US_y);
        USEAC_imi = USEAC_numi*((EAC_pex*USEAC_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAC_imiy = (EAC_pex*USEAC_rer)*USEAC_imi/(US_py*US_y);
        USEAC_imcg = USEAC_numcg*((EAC_pex*USEAC_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAC_imcgy = (EAC_pex*USEAC_rer)*USEAC_imcg/(US_py*US_y);
        USEAC_imig = USEAC_numig*((EAC_pex*USEAC_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAC_imigy = (EAC_pex*USEAC_rer)*USEAC_imig/(US_py*US_y);
        USEAD_imc = USEAD_numc*((EAD_pex*USEAD_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAD_imcy = (EAD_pex*USEAD_rer)*USEAD_imc/(US_py*US_y);
        USEAD_imi = USEAD_numi*((EAD_pex*USEAD_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAD_imiy = (EAD_pex*USEAD_rer)*USEAD_imi/(US_py*US_y);
        USEAD_imcg = USEAD_numcg*((EAD_pex*USEAD_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAD_imcgy = (EAD_pex*USEAD_rer)*USEAD_imcg/(US_py*US_y);
        USEAD_imig = USEAD_numig*((EAD_pex*USEAD_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAD_imigy = (EAD_pex*USEAD_rer)*USEAD_imig/(US_py*US_y);
        USEAE_imc = USEAE_numc*((EAE_pex*USEAE_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAE_imcy = (EAE_pex*USEAE_rer)*USEAE_imc/(US_py*US_y);
        USEAE_imi = USEAE_numi*((EAE_pex*USEAE_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAE_imiy = (EAE_pex*USEAE_rer)*USEAE_imi/(US_py*US_y);
        USEAE_imcg = USEAE_numcg*((EAE_pex*USEAE_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAE_imcgy = (EAE_pex*USEAE_rer)*USEAE_imcg/(US_py*US_y);
        USEAE_imig = USEAE_numig*((EAE_pex*USEAE_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAE_imigy = (EAE_pex*USEAE_rer)*USEAE_imig/(US_py*US_y);
      USEAF_imc = 
        +(1
        -USEAA_numc
        -USEAB_numc
        -USEAC_numc
        -USEAD_numc
        -USEAE_numc
        -USRW_numc
        )*((EAF_pex*USEAF_rer)/US_pimc)^(-US_mumc)*US_imc;
  USEAF_imcy = (EAF_pex*USEAF_rer)*USEAF_imc/(US_py*US_y);
      USEAF_imi = 
        +(1
        -USEAA_numi
        -USEAB_numi
        -USEAC_numi
        -USEAD_numi
        -USEAE_numi
        -USRW_numi
        )*((EAF_pex*USEAF_rer)/US_pimi)^(-US_mumi)*US_imi;
  USEAF_imiy = (EAF_pex*USEAF_rer)*USEAF_imi/(US_py*US_y);
      USEAF_imcg = 
        +(1
        -USEAA_numcg
        -USEAB_numcg
        -USEAC_numcg
        -USEAD_numcg
        -USEAE_numcg
        -USRW_numcg
        )*((EAF_pex*USEAF_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USEAF_imcgy = (EAF_pex*USEAF_rer)*USEAF_imcg/(US_py*US_y);
      USEAF_imig = 
        +(1
        -USEAA_numig
        -USEAB_numig
        -USEAC_numig
        -USEAD_numig
        -USEAE_numig
        -USRW_numig
        )*((EAF_pex*USEAF_rer)/US_pimig)^(-US_mumig)*US_imig;
  USEAF_imigy = (EAF_pex*USEAF_rer)*USEAF_imig/(US_py*US_y);
        USRW_imc = USRW_numc*((RW_pex*USRW_rer)/US_pimc)^(-US_mumc)*US_imc;
  USRW_imcy = (RW_pex*USRW_rer)*USRW_imc/(US_py*US_y);
        USRW_imi = USRW_numi*((RW_pex*USRW_rer)/US_pimi)^(-US_mumi)*US_imi;
  USRW_imiy = (RW_pex*USRW_rer)*USRW_imi/(US_py*US_y);
        USRW_imcg = USRW_numcg*((RW_pex*USRW_rer)/US_pimcg)^(-US_mumcg)*US_imcg;
  USRW_imcgy = (RW_pex*USRW_rer)*USRW_imcg/(US_py*US_y);
        USRW_imig = USRW_numig*((RW_pex*USRW_rer)/US_pimig)^(-US_mumig)*US_imig;
  USRW_imigy = (RW_pex*USRW_rer)*USRW_imig/(US_py*US_y);
 
// Euro Area only
 EAA_bh = 0;
 EAB_bh = 0;
 EAC_bh = 0;
 EAD_bh = 0;
 EAE_bh = 0;
 EAF_bh = 0;
      EAA_gammabh = 0;
      EAAEAF_nerdep = 1;
      EAB_gammabh = 0;
      EABEAF_nerdep = 1;
      EAC_gammabh = 0;
      EACEAF_nerdep = 1;
      EAD_gammabh = 0;
      EADEAF_nerdep = 1;
      EAE_gammabh = 0;
      EAEEAF_nerdep = 1;
EA_bf = 0;
EA_epsz =  0;
EA_m = 0.132518;
EA_pic4 = 1; 
EA_y = 0.312839;
EA_ybar = 0.312839;
EA_z = 1;
EA_ygrowth = 1;
EA_ygrowth4 = 1;
end;
resid(non_zero);
// The same parameter values like in the params.mod; just to check the steady state solution
disp('alphat')
homotopy_setup;
EAA_alphat, 0.1;
EAB_alphat, 0.1;
EAC_alphat, 0.1;
EAD_alphat, 0.1;
EAE_alphat, 0.1;
EAF_alphat, 0.1;
RW_alphat, 0.1;
US_alphat, 0.1;
end;
steady(homotopy_steps = 5);
save_params_and_steady_state('eagle_steady_stage0.txt');
