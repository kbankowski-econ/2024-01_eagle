// --+ options: stochastic json=compute +--

var
	EAAEAB_excy
	EAAEAB_exiy
	EAAEAB_fx
	EAAEAB_gammaimc
	EAAEAB_gammaimcdag
	EAAEAB_gammaimi
	EAAEAB_gammaimidag
	EAAEAB_gx
	EAAEAB_im
	EAAEAB_imcy
	EAAEAB_imiy
	EAAEAB_nerdep
	EAAEAB_piim
	EAAEAB_pim
	EAAEAB_pimtilde
	EAAEAB_rer
	EAAEAB_sx
	EAAEAB_tot
	EAAEAB_weight
	EAAEAB_weightex
	EAAEAB_weightim
	EAARW_excy
	EAARW_exiy
	EAARW_fx
	EAARW_gammaimc
	EAARW_gammaimcdag
	EAARW_gammaimi
	EAARW_gammaimidag
	EAARW_gx
	EAARW_im
	EAARW_imc
	EAARW_imcy
	EAARW_imi
	EAARW_imiy
	EAARW_piim
	EAARW_pim
	EAARW_pimtilde
	EAARW_rer
	EAARW_sx
	EAARW_tot
	EAARW_weight
	EAARW_weightex
	EAARW_weightim
	EAAUS_excy
	EAAUS_exiy
	EAAUS_fx
	EAAUS_gammaimc
	EAAUS_gammaimcdag
	EAAUS_gammaimi
	EAAUS_gammaimidag
	EAAUS_gx
	EAAUS_im
	EAAUS_imc
	EAAUS_imcy
	EAAUS_imi
	EAAUS_imiy
	EAAUS_piim
	EAAUS_pim
	EAAUS_pimtilde
	EAAUS_rer
	EAAUS_sx
	EAAUS_tot
	EAAUS_weight
	EAAUS_weightex
	EAAUS_weightim
	EAA_b
	EAA_bf
	EAA_bh
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
	EAA_gammabh
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
	EABEAA_excy
	EABEAA_exiy
	EABEAA_fx
	EABEAA_gammaimc
	EABEAA_gammaimcdag
	EABEAA_gammaimi
	EABEAA_gammaimidag
	EABEAA_gx
	EABEAA_im
	EABEAA_imc
	EABEAA_imcy
	EABEAA_imi
	EABEAA_imiy
	EABEAA_piim
	EABEAA_pim
	EABEAA_pimtilde
	EABEAA_rer
	EABEAA_sx
	EABEAA_tot
	EABEAA_weight
	EABEAA_weightex
	EABEAA_weightim
	EABRW_excy
	EABRW_exiy
	EABRW_fx
	EABRW_gammaimc
	EABRW_gammaimcdag
	EABRW_gammaimi
	EABRW_gammaimidag
	EABRW_gx
	EABRW_im
	EABRW_imcy
	EABRW_imiy
	EABRW_piim
	EABRW_pim
	EABRW_pimtilde
	EABRW_rer
	EABRW_sx
	EABRW_tot
	EABRW_weight
	EABRW_weightex
	EABRW_weightim
	EABUS_excy
	EABUS_exiy
	EABUS_fx
	EABUS_gammaimc
	EABUS_gammaimcdag
	EABUS_gammaimi
	EABUS_gammaimidag
	EABUS_gx
	EABUS_im
	EABUS_imc
	EABUS_imcy
	EABUS_imi
	EABUS_imiy
	EABUS_piim
	EABUS_pim
	EABUS_pimtilde
	EABUS_rer
	EABUS_sx
	EABUS_tot
	EABUS_weight
	EABUS_weightex
	EABUS_weightim
	EAB_b
	EAB_bf
	EAB_bh
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
	EA_bf
	EA_m
	EA_pic4
	EA_y
	EA_ygrowth
	EA_ygrowth4
	EA_z
	RWEAA_excy
	RWEAA_exiy
	RWEAA_fx
	RWEAA_gammaimc
	RWEAA_gammaimcdag
	RWEAA_gammaimi
	RWEAA_gammaimidag
	RWEAA_gx
	RWEAA_im
	RWEAA_imc
	RWEAA_imcy
	RWEAA_imi
	RWEAA_imiy
	RWEAA_piim
	RWEAA_pim
	RWEAA_pimtilde
	RWEAA_rer
	RWEAA_sx
	RWEAA_tot
	RWEAA_weight
	RWEAA_weightex
	RWEAA_weightim
	RWEAB_excy
	RWEAB_exiy
	RWEAB_fx
	RWEAB_gammaimc
	RWEAB_gammaimcdag
	RWEAB_gammaimi
	RWEAB_gammaimidag
	RWEAB_gx
	RWEAB_im
	RWEAB_imc
	RWEAB_imcy
	RWEAB_imi
	RWEAB_imiy
	RWEAB_piim
	RWEAB_pim
	RWEAB_pimtilde
	RWEAB_rer
	RWEAB_sx
	RWEAB_tot
	RWEAB_weight
	RWEAB_weightex
	RWEAB_weightim
	RWUS_excy
	RWUS_exiy
	RWUS_fx
	RWUS_gammaimc
	RWUS_gammaimcdag
	RWUS_gammaimi
	RWUS_gammaimidag
	RWUS_gx
	RWUS_im
	RWUS_imcy
	RWUS_imiy
	RWUS_piim
	RWUS_pim
	RWUS_pimtilde
	RWUS_rer
	RWUS_sx
	RWUS_tot
	RWUS_weight
	RWUS_weightex
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
	USEAA_excy
	USEAA_exiy
	USEAA_fx
	USEAA_gammaimc
	USEAA_gammaimcdag
	USEAA_gammaimi
	USEAA_gammaimidag
	USEAA_gx
	USEAA_im
	USEAA_imcy
	USEAA_imiy
	USEAA_piim
	USEAA_pim
	USEAA_pimtilde
	USEAA_rer
	USEAA_sx
	USEAA_tot
	USEAA_weight
	USEAA_weightex
	USEAA_weightim
	USEAB_excy
	USEAB_exiy
	USEAB_fx
	USEAB_gammaimc
	USEAB_gammaimcdag
	USEAB_gammaimi
	USEAB_gammaimidag
	USEAB_gx
	USEAB_im
	USEAB_imc
	USEAB_imcy
	USEAB_imi
	USEAB_imiy
	USEAB_piim
	USEAB_pim
	USEAB_pimtilde
	USEAB_rer
	USEAB_sx
	USEAB_tot
	USEAB_weight
	USEAB_weightex
	USEAB_weightim
	USRW_excy
	USRW_exiy
	USRW_fx
	USRW_gammaimc
	USRW_gammaimcdag
	USRW_gammaimi
	USRW_gammaimidag
	USRW_gx
	USRW_im
	USRW_imc
	USRW_imcy
	USRW_imi
	USRW_imiy
	USRW_piim
	USRW_pim
	USRW_pimtilde
	USRW_rer
	USRW_sx
	USRW_tot
	USRW_weight
	USRW_weightex
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
    // my adding
    EAAEAB_imi
	EABRW_imi 
    RWUS_imi
    USEAA_imi 
    EAAEAB_imc    
    EABRW_imc  
    RWUS_imc
    USEAA_imc 
    EAA_pic4	
    EAB_pic4

  ;

parameters
	EAAEAB_numc
	EAAEAB_numi
	EAAEAB_rerbar
	EAAUS_numc
	EAAUS_numi
	EAA_alphan
	EAA_alphat
	EAA_beta
	EAA_bfytarget
	EAA_bhytarget
	EAA_bytarget
	EAA_chih
	EAA_chii
	EAA_chij
	EAA_chin
	EAA_chix
	EAA_delta
	EAA_eta
	EAA_etai
	EAA_etaj
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
	EAA_pibar
	EAA_psinbar
	EAA_psitbar
	EAA_pybar
	EAA_qbar
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
	EAA_thetan
	EAA_thetat
	EAA_trybar
	EAA_upsilont
	EAA_upsilontr
	EAA_xih
	EAA_xii
	EAA_xij
	EAA_xin
	EAA_xix
	EAA_ybar
	EAA_zeta
	EABEAA_numc
	EABEAA_numi
	EABRW_numc
	EABRW_numi
	EAB_alphan
	EAB_alphat
	EAB_beta
	EAB_bfytarget
	EAB_bytarget
	EAB_chih
	EAB_chii
	EAB_chij
	EAB_chin
	EAB_chix
	EAB_delta
	EAB_eta
	EAB_etai
	EAB_etaj
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
	EAB_pibar
	EAB_psinbar
	EAB_psitbar
	EAB_pybar
	EAB_qbar
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
	EAB_thetan
	EAB_thetat
	EAB_trybar
	EAB_upsilont
	EAB_upsilontr
	EAB_xih
	EAB_xii
	EAB_xij
	EAB_xin
	EAB_xix
	EAB_ybar
	EAB_zeta
	EA_phirgy
	EA_phirpi
	EA_phirr
	EA_rhoz
	EA_zbar
	RWEAB_numc
	RWEAB_numi
	RWUS_numc
	RWUS_numi
	RW_alphan
	RW_alphat
	RW_beta
	RW_bfytarget
	RW_bytarget
	RW_chih
	RW_chii
	RW_chij
	RW_chin
	RW_chix
	RW_delta
	RW_eta
	RW_etai
	RW_etaj
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
	RW_pibar
	RW_psinbar
	RW_psitbar
	RW_pybar
	RW_qbar
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
	RW_thetan
	RW_thetat
	RW_trybar
	RW_upsilont
	RW_upsilontr
	RW_xih
	RW_xii
	RW_xij
	RW_xin
	RW_xix
	RW_ybar
	RW_zeta
	USEAA_numc
	USEAA_numi
	USRW_numc
	USRW_numi
	US_alphan
	US_alphat
	US_beta
	US_bytarget
	US_chih
	US_chii
	US_chij
	US_chin
	US_chix
	US_delta
	US_eta
	US_etai
	US_etaj
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
	US_pibar
	US_psinbar
	US_psitbar
	US_pybar
	US_qbar
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
	US_thetan
	US_thetat
	US_trybar
	US_upsilont
	US_upsilontr
	US_xih
	US_xii
	US_xij
	US_xin
	US_xix
	US_ybar
	US_zeta
;


EAAEAB_numc = 0.2109864981592968;
EAAEAB_numi = 0.697192161742923;
EAAEAB_rerbar = 1.076310938191268;
EAAUS_numc = 0.02122411124273316;
EAAUS_numi = 0.1338598732651976;
EAA_alphan = 0.3;
EAA_alphat = 0.3;
EAA_beta = 0.99263754;
EAA_bfytarget = -0.15;
EAA_bhytarget = 0;
EAA_bytarget = 2.4;
EAA_chih = 0.5;
EAA_chii = 0.75;
EAA_chij = 0.75;
EAA_chin = 0.5;
EAA_chix = 0.5;
EAA_delta = 0.025;
EAA_eta = 4.33;
EAA_etai = 4.33;
EAA_etaj = 4.33;
EAA_gammab1 = 0.01;
EAA_gammai1 = 6;
EAA_gammaimc1 = 2;
EAA_gammaimi1 = 1;
EAA_gammau2 = 2000;
EAA_gammav1 = 0.02870610631034056;
EAA_gammav2 = 0.1503383449992962;
EAA_kappa = 0.7;
EAA_muc = 0.5;
EAA_mui = 0.5;
EAA_mumc = 2.5;
EAA_mumi = 2.5;
EAA_mutc = 2.5;
EAA_muti = 2.5;
EAA_nuc = 0.45;
EAA_nui = 0.75;
EAA_nutc = 0.211040459018663;
EAA_nuti = 0.7539498047613039;
EAA_omega = 0.25;
EAA_phitb = 0.1;
EAA_pi4target = 1.02;
EAA_pibar = 0.9770498015356135;
EAA_psinbar = 0.5161881088131332;
EAA_psitbar = 0.2969640037157718;
EAA_pybar = 1.053099940834652;
EAA_qbar = 0.9770498015356135;
EAA_rhog = 0.9;
EAA_rhorp = 0.9;
EAA_rhotauc = 0.9;
EAA_rhotaud = 0.9;
EAA_rhotauk = 0.9;
EAA_rhotaun = 0.9;
EAA_rhotauwf = 0.9;
EAA_rhotauwh = 0.9;
EAA_rhotr = 0.9;
EAA_rhowcst = 0.9;
EAA_rhozcon = 0.9;
EAA_rhozinv = 0.9;
EAA_rhozn = 0.9;
EAA_rhozt = 0.9;
EAA_sigma = 1;
EAA_size = 0.16;
EAA_thetan = 3;
EAA_thetat = 6;
EAA_trybar = 0.147079930698441;
EAA_upsilont = 1.2;
EAA_upsilontr = 0.66666666;
EAA_xih = 0.92;
EAA_xii = 0.75;
EAA_xij = 0.75;
EAA_xin = 0.92;
EAA_xix = 0.75;
EAA_ybar = 3.328348978625763;
EAA_zeta = 2;
EABEAA_numc = 0.5462501511112188;
EABEAA_numi = 0.5459995739706979;
EABRW_numc = 0.4009725711140313;
EABRW_numi = 0.4007886360426133;
EAB_alphan = 0.3;
EAB_alphat = 0.3;
EAB_beta = 0.99263754;
EAB_bfytarget = 0.4;
EAB_bytarget = 2.4;
EAB_chih = 0.5;
EAB_chii = 0.75;
EAB_chij = 0.75;
EAB_chin = 0.5;
EAB_chix = 0.5;
EAB_delta = 0.025;
EAB_eta = 4.33;
EAB_etai = 4.33;
EAB_etaj = 4.33;
EAB_gammab1 = 0.01;
EAB_gammai1 = 6;
EAB_gammaimc1 = 2;
EAB_gammaimi1 = 1;
EAB_gammau2 = 2000;
EAB_gammav1 = 0.02870610631034059;
EAB_gammav2 = 0.1503383449992962;
EAB_kappa = 0.7;
EAB_muc = 0.5;
EAB_mui = 0.5;
EAB_mumc = 2.5;
EAB_mumi = 2.5;
EAB_mutc = 2.5;
EAB_muti = 2.5;
EAB_nuc = 0.45;
EAB_nui = 0.75;
EAB_nutc = 0.3058191204010657;
EAB_nuti = 0.4203918944050848;
EAB_omega = 0.25;
EAB_phitb = 0.1;
EAB_pi4target = 1.02;
EAB_pibar = 0.912057914723195;
EAB_psinbar = 0.5373066879942402;
EAB_psitbar = 0.3006307764915985;
EAB_pybar = 1.058240036715508;
EAB_qbar = 0.912057914723195;
EAB_rhog = 0.9;
EAB_rhorp = 0.9;
EAB_rhotauc = 0.9;
EAB_rhotaud = 0.9;
EAB_rhotauk = 0.9;
EAB_rhotaun = 0.9;
EAB_rhotauwf = 0.9;
EAB_rhotauwh = 0.9;
EAB_rhotr = 0.9;
EAB_rhowcst = 0.9;
EAB_rhozcon = 0.9;
EAB_rhozinv = 0.9;
EAB_rhozn = 0.9;
EAB_rhozt = 0.9;
EAB_sigma = 1;
EAB_size = 0.06;
EAB_thetan = 3;
EAB_thetat = 6;
EAB_trybar = 0.1477880369652599;
EAB_upsilont = 1.2;
EAB_upsilontr = 0.66666666;
EAB_xih = 0.92;
EAB_xii = 0.75;
EAB_xij = 0.75;
EAB_xin = 0.92;
EAB_xix = 0.75;
EAB_ybar = 3.422106339580279;
EAB_zeta = 2;
EA_phirgy = 0.1;
EA_phirpi = 1.7;
EA_phirr = 0.87;
EA_rhoz = 0.9;
EA_zbar = 1;
RWEAB_numc = 0.155299929729267;
RWEAB_numi = 0.1493499252615957;
RWUS_numc = 0.3825623406568358;
RWUS_numi = 0.4514146823024396;
RW_alphan = 0.3;
RW_alphat = 0.3;
RW_beta = 0.99263754;
RW_bfytarget = 0.4;
RW_bytarget = 2.4;
RW_chih = 0.5;
RW_chii = 0.75;
RW_chij = 0.75;
RW_chin = 0.5;
RW_chix = 0.5;
RW_delta = 0.025;
RW_eta = 7.25;
RW_etai = 7.25;
RW_etaj = 7.25;
RW_gammab1 = 0.01;
RW_gammai1 = 4;
RW_gammaimc1 = 2;
RW_gammaimi1 = 1;
RW_gammau2 = 2000;
RW_gammav1 = 0.02870610631034057;
RW_gammav2 = 0.1503383449992962;
RW_kappa = 0.7;
RW_muc = 0.5;
RW_mui = 0.5;
RW_mumc = 2.5;
RW_mumi = 2.5;
RW_mutc = 2.5;
RW_muti = 2.5;
RW_nuc = 0.35;
RW_nui = 0.75;
RW_nutc = 0.5759417882385854;
RW_nuti = 0.542643929481466;
RW_omega = 0.25;
RW_phirgy = 0.1;
RW_phirpi = 1.7;
RW_phirr = 0.87;
RW_phitb = 0.1;
RW_pi4target = 1.02;
RW_pibar = 0.9912874476746926;
RW_psinbar = 0.2109200195934295;
RW_psitbar = 0.3285984166051721;
RW_pybar = 0.982446432707973;
RW_qbar = 0.9912874476746926;
RW_rhog = 0.9;
RW_rhorp = 0.9;
RW_rhotauc = 0.9;
RW_rhotaud = 0.9;
RW_rhotauk = 0.9;
RW_rhotaun = 0.9;
RW_rhotauwf = 0.9;
RW_rhotauwh = 0.9;
RW_rhotr = 0.9;
RW_rhowcst = 0.9;
RW_rhozcon = 0.9;
RW_rhozinv = 0.9;
RW_rhozn = 0.9;
RW_rhozt = 0.9;
RW_sigma = 1;
RW_size = 0.47;
RW_thetan = 4.6;
RW_thetat = 6;
RW_trybar = 0.0593547763880069;
RW_upsilont = 1.2;
RW_upsilontr = 0.66666666;
RW_xih = 0.75;
RW_xii = 0.75;
RW_xij = 0.75;
RW_xin = 0.75;
RW_xix = 0.75;
RW_ybar = 4.279492327943729;
RW_zeta = 2;
USEAA_numc = 0.1353395621549104;
USEAA_numi = 0.1115170317870011;
USRW_numc = 0.8042948981402822;
USRW_numi = 0.8242156307471116;
US_alphan = 0.3;
US_alphat = 0.3;
US_beta = 0.99263754;
US_bytarget = 2.4;
US_chih = 0.5;
US_chii = 0.75;
US_chij = 0.75;
US_chin = 0.5;
US_chix = 0.5;
US_delta = 0.025;
US_eta = 7.25;
US_etai = 7.25;
US_etaj = 7.25;
US_gammai1 = 4;
US_gammaimc1 = 2;
US_gammaimi1 = 1;
US_gammau2 = 2000;
US_gammav1 = 0.02870610631034057;
US_gammav2 = 0.1503383449992962;
US_kappa = 0.7;
US_muc = 0.5;
US_mui = 0.5;
US_mumc = 2.5;
US_mumi = 2.5;
US_mutc = 2.5;
US_muti = 2.5;
US_nuc = 0.35;
US_nui = 0.75;
US_nutc = 0.6491344485633158;
US_nuti = 0.7027896412600797;
US_omega = 0.25;
US_phirgy = 0.1;
US_phirpi = 1.7;
US_phirr = 0.87;
US_phitb = 0.1;
US_pi4target = 1.02;
US_pibar = 0.9795946030508055;
US_psinbar = 0.211626603966881;
US_psitbar = 0.3377995681535669;
US_pybar = 0.9914973186852372;
US_qbar = 0.9795946030508055;
US_rhog = 0.9;
US_rhotauc = 0.9;
US_rhotaud = 0.9;
US_rhotauk = 0.9;
US_rhotaun = 0.9;
US_rhotauwf = 0.9;
US_rhotauwh = 0.9;
US_rhotr = 0.9;
US_rhowcst = 0.9;
US_rhozcon = 0.9;
US_rhozinv = 0.9;
US_rhozn = 0.9;
US_rhozt = 0.9;
US_sigma = 1;
US_size = 0.31;
US_thetan = 4.6;
US_thetat = 6;
US_trybar = 0.058795669297677;
US_upsilont = 1.2;
US_upsilontr = 0.66666666;
US_xih = 0.75;
US_xii = 0.75;
US_xij = 0.75;
US_xin = 0.75;
US_xix = 0.75;
US_ybar = 4.334330390353847;
US_zeta = 2;

varexo
    EAA_cpim
    EAB_cpim
    RW_cpim
    US_cpim
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
	EA_epsr
	EA_epsz
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
;

model;
    
    // Utility function (hh i) (eq.1)
	EAA_utili =  EAA_zcon*log(EAA_ci-EAA_kappa*EAA_ci(-1))-1/(1+EAA_zeta)*EAA_ni^(1+EAA_zeta)+EAA_beta*EAA_utili(1);
    EAB_utili =  EAB_zcon*log(EAB_ci-EAB_kappa*EAB_ci(-1))-1/(1+EAB_zeta)*EAB_ni^(1+EAB_zeta)+EAB_beta*EAB_utili(1);
    RW_utili =  RW_zcon*log(RW_ci-RW_kappa*RW_ci(-1))-1/(1+RW_zeta)*RW_ni^(1+RW_zeta)+RW_beta*RW_utili(1);
    US_utili =  US_zcon*log(US_ci-US_kappa*US_ci(-1))-1/(1+US_zeta)*US_ni^(1+US_zeta)+US_beta*US_utili(1);

    //consumption Lagrange multiplier (hh i) (eq.2)
	EAA_lambdai =  EAA_zcon*(EAA_ci-EAA_kappa*EAA_ci(-1))^(-EAA_sigma)/(1+EAA_tauc+EAA_gammavi+EAA_vi*EAA_gammavider);
    EAB_lambdai =  EAB_zcon*(EAB_ci-EAB_kappa*EAB_ci(-1))^(-EAB_sigma)/(1+EAB_tauc+EAB_gammavi+EAB_vi*EAB_gammavider);
	RW_lambdai =  RW_zcon*(RW_ci-RW_kappa*RW_ci(-1))^(-RW_sigma)/(1+RW_tauc+RW_gammavi+RW_vi*RW_gammavider);
    US_lambdai =  US_zcon*(US_ci-US_kappa*US_ci(-1))^(-US_sigma)/(1+US_tauc+US_gammavi+US_vi*US_gammavider);

    //bond euler equations
    //(eq.3)
    EAA_r =  EAA_lambdai/EAA_lambdai(1)*EAA_pic(1)*EAA_beta^(-1)/(1-EAA_gammabh); //in the paper no _gammabh
	EAB_r =  EAB_lambdai*EAB_beta^(-1)/EAB_lambdai(1)*EAB_pic(1);
	RW_r =  RW_lambdai*RW_beta^(-1)/RW_lambdai(1)*RW_pic(1);
	US_r =  US_lambdai*US_beta^(-1)/US_lambdai(1)*US_pic(1);
    
    //(eq.4)
	EAA_beta*EAB_r*(1-EAA_gammabh)*EAA_lambdai(1)/EAA_lambdai/EAB_pic(1)*EAAEAB_rer(1)/EAAEAB_rer=1;

	//(eq.5)
	EAA_gammab =  EAA_gammab1*(exp(EAA_rer*EAA_bf/US_pic/(EAA_py*EAA_y)-EAA_bfytarget)-1)-EAA_rp;
    EAB_gammab =  EAB_gammab1*(exp(EAB_rer*EAB_bf/US_pic/(EAB_py*EAB_y)-EAB_bfytarget)-1)-EAB_rp;
	RW_gammab =  RW_gammab1*(exp(RW_rer*RW_bf/US_pic/(RW_py*RW_y)-RW_bfytarget)-1)-RW_rp;

    //money holdings euler equations 
    //(eq.6)
    EAA_beta*EAA_lambdai(1)/(EAA_lambdai*EAA_pic(1))=  1 - (EAA_vi)^2 * EAA_gammavider;
    EAB_beta*EAB_lambdai(1)/(EAB_lambdai*EAB_pic(1))=  1 - (EAB_vi)^2 * EAB_gammavider;
    RW_beta*RW_lambdai(1)/(RW_lambdai*RW_pic(1))=  1 - (RW_vi)^2 * RW_gammavider;
    US_beta*US_lambdai(1)/(US_lambdai*US_pic(1))=  1 - (US_vi)^2 * US_gammavider;
	
    //(eq.7)
    EAA_mi =  EAA_ci/EAA_vi;
    EAB_mi =  EAB_ci/EAB_vi;
    RW_mi =  RW_ci/RW_vi; 
	US_mi =  US_ci/US_vi;

    //(eq.8)
	EAA_gammavi =  EAA_vi*EAA_gammav1+EAA_gammav2/EAA_vi-2*(EAA_gammav1*EAA_gammav2)^0.5;
    EAB_gammavi =  EAB_vi*EAB_gammav1+EAB_gammav2/EAB_vi-2*(EAB_gammav1*EAB_gammav2)^0.5;
    RW_gammavi =  RW_vi*RW_gammav1+RW_gammav2/RW_vi-2*(RW_gammav1*RW_gammav2)^0.5;
    US_gammavi =  US_vi*US_gammav1+US_gammav2/US_vi-2*(US_gammav1*US_gammav2)^0.5;

	//(eq.9)
	EAA_gammavider =  EAA_gammav1-EAA_gammav2*EAA_vi^(-2);
	EAB_gammavider =  EAB_gammav1-EAB_gammav2*EAB_vi^(-2);
	RW_gammavider =  RW_gammav1-RW_gammav2*RW_vi^(-2);
	US_gammavider =  US_gammav1-US_gammav2*US_vi^(-2);

    //physical capital accumulation 
    //(eq.10)
	EAA_ki =  (1-EAA_delta)*EAA_ki(-1)+(1-EAA_gammai(-1))*EAA_ii(-1)*EAA_zinv;
	EAB_ki =  (1-EAB_delta)*EAB_ki(-1)+(1-EAB_gammai(-1))*EAB_ii(-1)*EAB_zinv;
	RW_ki =  (1-RW_delta)*RW_ki(-1)+(1-RW_gammai(-1))*RW_ii(-1)*RW_zinv;
	US_ki =  (1-US_delta)*US_ki(-1)+(1-US_gammai(-1))*US_ii(-1)*US_zinv;

    //(eq.11)
	EAA_gammai =  EAA_gammai1/2*(EAA_ii/EAA_ii(-1)-1)^2;
    EAB_gammai =  EAB_gammai1/2*(EAB_ii/EAB_ii(-1)-1)^2;
    RW_gammai =  RW_gammai1/2*(RW_ii/RW_ii(-1)-1)^2;
	US_gammai =  US_gammai1/2*(US_ii/US_ii(-1)-1)^2;
   
    //(eq.12)
	EAA_gammaider =  EAA_gammai1*(EAA_ii/EAA_ii(-1)-1)/EAA_ii(-1);
    EAB_gammaider =  EAB_gammai1*(EAB_ii/EAB_ii(-1)-1)/EAB_ii(-1);
    RW_gammaider =  RW_gammai1*(RW_ii/RW_ii(-1)-1)/RW_ii(-1);
	US_gammaider =  US_gammai1*(US_ii/US_ii(-1)-1)/US_ii(-1);

    //capital capacity utilization 
    //(eq.13)
	EAA_rk =  EAA_gammauder*EAA_pi;
	EAB_rk =  EAB_gammauder*EAB_pi;
	RW_rk =  RW_gammauder*RW_pi;
	US_rk =  US_gammauder*US_pi;

    //(eq.14)
  	EAA_gammau =  ((EAA_delta+EAA_beta^(-1)-1)*EAA_qbar-EAA_delta*EAA_taukbar*EAA_pibar)/(EAA_pibar*(1-EAA_taukbar))*(EAA_u-1)+EAA_gammau2/2*(EAA_u-1)^2;
    EAB_gammau =  ((EAB_delta+EAB_beta^(-1)-1)*EAB_qbar-EAB_delta*EAB_taukbar*EAB_pibar)/(EAB_pibar*(1-EAB_taukbar))*(EAB_u-1)+EAB_gammau2/2*(EAB_u-1)^2;
    RW_gammau =  ((RW_delta+RW_beta^(-1)-1)*RW_qbar-RW_delta*RW_taukbar*RW_pibar)/(RW_pibar*(1-RW_taukbar))*(RW_u-1)+RW_gammau2/2*(RW_u-1)^2;
    US_gammau =  ((US_delta+US_beta^(-1)-1)*US_qbar-US_delta*US_taukbar*US_pibar)/(US_pibar*(1-US_taukbar))*(US_u-1)+US_gammau2/2*(US_u-1)^2;

    //(eq.15)
	EAA_gammauder =  ((EAA_delta+EAA_beta^(-1)-1)*EAA_qbar-EAA_delta*EAA_taukbar*EAA_pibar)/(EAA_pibar*(1-EAA_taukbar))+(EAA_u-1)*EAA_gammau2;
	EAB_gammauder =  ((EAB_delta+EAB_beta^(-1)-1)*EAB_qbar-EAB_delta*EAB_taukbar*EAB_pibar)/(EAB_pibar*(1-EAB_taukbar))+(EAB_u-1)*EAB_gammau2;
	RW_gammauder =  ((RW_delta+RW_beta^(-1)-1)*RW_qbar-RW_delta*RW_taukbar*RW_pibar)/(RW_pibar*(1-RW_taukbar))+(RW_u-1)*RW_gammau2;
	US_gammauder =  ((US_delta+US_beta^(-1)-1)*US_qbar-US_delta*US_taukbar*US_pibar)/(US_pibar*(1-US_taukbar))+(US_u-1)*US_gammau2;

	//investment in physical capital FOC (eq.16)
	EAA_pi =  EAA_zinv*EAA_q*(1-EAA_gammai-EAA_ii*EAA_gammaider)+EAA_beta*EAA_lambdai(1)/EAA_lambdai*EAA_q(1)*EAA_zinv(1)*EAA_gammaider(1)*EAA_ii(1)^2/EAA_ii;
	EAB_pi =  EAB_zinv*EAB_q*(1-EAB_gammai-EAB_ii*EAB_gammaider)+EAB_beta*EAB_lambdai(1)/EAB_lambdai*EAB_q(1)*EAB_zinv(1)*EAB_gammaider(1)*EAB_ii(1)^2/EAB_ii;
	RW_pi =  RW_zinv*RW_q*(1-RW_gammai-RW_ii*RW_gammaider)+RW_beta*RW_lambdai(1)/RW_lambdai*RW_q(1)*RW_zinv(1)*RW_gammaider(1)*RW_ii(1)^2/RW_ii;
	US_pi =  US_zinv*US_q*(1-US_gammai-US_ii*US_gammaider)+US_beta*US_lambdai(1)/US_lambdai*US_q(1)*US_zinv(1)*US_gammaider(1)*US_ii(1)^2/US_ii;

    //Physical capital FOC (eq.17)
	EAA_q =  EAA_beta*EAA_lambdai(1)/EAA_lambdai*((1-EAA_tauk(1))*(EAA_rk(1)*EAA_u(1)-EAA_gammau(1)*EAA_pi(1))+EAA_pi(1)*EAA_delta*EAA_tauk(1)+(1-EAA_delta)*EAA_q(1));
	EAB_q =  EAB_beta*EAB_lambdai(1)/EAB_lambdai*((1-EAB_tauk(1))*(EAB_rk(1)*EAB_u(1)-EAB_gammau(1)*EAB_pi(1))+EAB_pi(1)*EAB_delta*EAB_tauk(1)+(1-EAB_delta)*EAB_q(1));
	RW_q =  RW_beta*RW_lambdai(1)/RW_lambdai*((1-RW_tauk(1))*(RW_rk(1)*RW_u(1)-RW_gammau(1)*RW_pi(1))+RW_pi(1)*RW_delta*RW_tauk(1)+(1-RW_delta)*RW_q(1));
	US_q =  US_beta*US_lambdai(1)/US_lambdai*((1-US_tauk(1))*(US_rk(1)*US_u(1)-US_gammau(1)*US_pi(1))+US_pi(1)*US_delta*US_tauk(1)+(1-US_delta)*US_q(1));

    //wage FOC
    //(eq.18)
    EAA_witilde =  (EAA_etai/(EAA_etai-1)*EAA_fi/EAA_gi+EAA_wcst)^(1/(1+EAA_zeta*EAA_etai));
    EAB_witilde =  (EAB_etai/(EAB_etai-1)*EAB_fi/EAB_gi+EAB_wcst)^(1/(1+EAB_zeta*EAB_etai));
    RW_witilde =  (RW_etai/(RW_etai-1)*RW_fi/RW_gi+RW_wcst)^(1/(1+RW_zeta*RW_etai));
    US_witilde =  (US_etai/(US_etai-1)*US_fi/US_gi+US_wcst)^(1/(1+US_zeta*US_etai));

    //(eq.19)
	EAA_fi =  EAA_wi^((1+EAA_zeta)*EAA_etai)*EAA_ndi^(1+EAA_zeta)+EAA_beta*EAA_xii*(EAA_pic(1)/(EAA_pic^EAA_chii*EAA_pi4target^(0.25*(1-EAA_chii))))^((1+EAA_zeta)*EAA_etai)*EAA_fi(1);
	EAB_fi =  EAB_wi^((1+EAB_zeta)*EAB_etai)*EAB_ndi^(1+EAB_zeta)+EAB_beta*EAB_xii*(EAB_pic(1)/(EAB_pic^EAB_chii*EAB_pi4target^(0.25*(1-EAB_chii))))^((1+EAB_zeta)*EAB_etai)*EAB_fi(1);
	RW_fi =  RW_wi^((1+RW_zeta)*RW_etai)*RW_ndi^(1+RW_zeta)+RW_beta*RW_xii*(RW_pic(1)/(RW_pic^RW_chii*RW_pi4target^(0.25*(1-RW_chii))))^((1+RW_zeta)*RW_etai)*RW_fi(1);
	US_fi =  US_wi^((1+US_zeta)*US_etai)*US_ndi^(1+US_zeta)+US_beta*US_xii*(US_pic(1)/(US_pic^US_chii*US_pi4target^(0.25*(1-US_chii))))^((1+US_zeta)*US_etai)*US_fi(1);

    //(eq.20)
	EAA_gi =  EAA_ndi*EAA_lambdai*(1-EAA_taun-EAA_tauwh)*EAA_wi^EAA_etai+EAA_beta*EAA_xii*(EAA_pic(1)/(EAA_pic^EAA_chii*EAA_pi4target^(0.25*(1-EAA_chii))))^(EAA_etai-1)*EAA_gi(1);
	EAB_gi =  EAB_ndi*EAB_lambdai*(1-EAB_taun-EAB_tauwh)*EAB_wi^EAB_etai+EAB_beta*EAB_xii*(EAB_pic(1)/(EAB_pic^EAB_chii*EAB_pi4target^(0.25*(1-EAB_chii))))^(EAB_etai-1)*EAB_gi(1);
	RW_gi =  RW_ndi*RW_lambdai*(1-RW_taun-RW_tauwh)*RW_wi^RW_etai+RW_beta*RW_xii*(RW_pic(1)/(RW_pic^RW_chii*RW_pi4target^(0.25*(1-RW_chii))))^(RW_etai-1)*RW_gi(1);
	US_gi =  US_ndi*US_lambdai*(1-US_taun-US_tauwh)*US_wi^US_etai+US_beta*US_xii*(US_pic(1)/(US_pic^US_chii*US_pi4target^(0.25*(1-US_chii))))^(US_etai-1)*US_gi(1);

    //(eq.21)
	EAB_wi =  ((1-EAB_xii)*EAB_witilde^(1-EAB_etai)+EAB_xii*EAB_wi(-1)^(1-EAB_etai)*(EAB_pi4target^(0.25*(1-EAB_chii))*EAB_pic(-1)^EAB_chii/EAB_pic)^(1-EAB_etai))^(1/(1-EAB_etai));
	EAA_wi =  ((1-EAA_xii)*EAA_witilde^(1-EAA_etai)+EAA_xii*EAA_wi(-1)^(1-EAA_etai)*(EAA_pi4target^(0.25*(1-EAA_chii))*EAA_pic(-1)^EAA_chii/EAA_pic)^(1-EAA_etai))^(1/(1-EAA_etai));
	RW_wi =  ((1-RW_xii)*RW_witilde^(1-RW_etai)+RW_xii*RW_wi(-1)^(1-RW_etai)*(RW_pi4target^(0.25*(1-RW_chii))*RW_pic(-1)^RW_chii/RW_pic)^(1-RW_etai))^(1/(1-RW_etai));
	US_wi =  ((1-US_xii)*US_witilde^(1-US_etai)+US_xii*US_wi(-1)^(1-US_etai)*(US_pi4target^(0.25*(1-US_chii))*US_pic(-1)^US_chii/US_pic)^(1-US_etai))^(1/(1-US_etai));
	
    //(eq.22) missing (inflation)

	// Utility function (hh j) (eq.23)
	EAA_utilj =  EAA_zcon*log(EAA_cj-EAA_kappa*EAA_cj(-1))-1/(1+EAA_zeta)*EAA_nj^(1+EAA_zeta)+EAA_beta*EAA_utilj(1);
	EAB_utilj =  EAB_zcon*log(EAB_cj-EAB_kappa*EAB_cj(-1))-1/(1+EAB_zeta)*EAB_nj^(1+EAB_zeta)+EAB_beta*EAB_utilj(1);
	RW_utilj =  RW_zcon*log(RW_cj-RW_kappa*RW_cj(-1))-1/(1+RW_zeta)*RW_nj^(1+RW_zeta)+RW_beta*RW_utilj(1);
	US_utilj =  US_zcon*log(US_cj-US_kappa*US_cj(-1))-1/(1+US_zeta)*US_nj^(1+US_zeta)+US_beta*US_utilj(1);

    //budget constraint (eq.24)
	EAA_mj =  EAA_nj*(1-EAA_taun-EAA_tauwh)*EAA_wj+EAA_trj-EAA_tj+EAA_mj(-1)*EAA_pic^(-1)-EAA_cj*(1+EAA_tauc+EAA_gammavj);
	EAB_mj =  EAB_nj*(1-EAB_taun-EAB_tauwh)*EAB_wj+EAB_trj-EAB_tj+EAB_mj(-1)*EAB_pic^(-1)-EAB_cj*(1+EAB_tauc+EAB_gammavj);
	US_mj =  US_nj*(1-US_taun-US_tauwh)*US_wj+US_trj-US_tj+US_mj(-1)*US_pic^(-1)-US_cj*(1+US_tauc+US_gammavj);
	RW_mj =  RW_nj*(1-RW_taun-RW_tauwh)*RW_wj+RW_trj-RW_tj+RW_mj(-1)*RW_pic^(-1)-RW_cj*(1+RW_tauc+RW_gammavj);

    //consumption Lagrange multiplier (hh j) (eq.25)
	EAA_cj =  EAA_kappa*EAA_cj(-1)+(EAA_lambdaj*(1+EAA_tauc+EAA_gammavj+EAA_vj*EAA_gammavjder))^(1/EAA_sigma)/EAA_zcon;
	EAB_cj =  EAB_kappa*EAB_cj(-1)+(EAB_lambdaj*(1+EAB_tauc+EAB_gammavj+EAB_vj*EAB_gammavjder))^(1/EAB_sigma)/EAB_zcon;
	RW_cj =  RW_kappa*RW_cj(-1)+(RW_lambdaj*(1+RW_tauc+RW_gammavj+RW_vj*RW_gammavjder))^(1/RW_sigma)/RW_zcon;
	US_cj =  US_kappa*US_cj(-1)+(US_lambdaj*(1+US_tauc+US_gammavj+US_vj*US_gammavjder))^(1/US_sigma)/US_zcon;
 
    //money holding euler equation 
    //(eq.26)
	EAA_lambdaj =  EAA_beta*EAA_lambdaj(1)/(1-EAA_gammavjder*EAA_vj^2)/EAA_pic(1);
	EAB_lambdaj =  EAB_beta*EAB_lambdaj(1)/(1-EAB_gammavjder*EAB_vj^2)/EAB_pic(1);
    RW_lambdaj =  RW_beta*RW_lambdaj(1)/(1-RW_gammavjder*RW_vj^2)/RW_pic(1);
	US_lambdaj =  US_beta*US_lambdaj(1)/(1-US_gammavjder*US_vj^2)/US_pic(1);

    //(eq.27)
	EAA_vj =  EAA_cj/EAA_mj;
	EAB_vj =  EAB_cj/EAB_mj;
	RW_vj =  RW_cj/RW_mj;
	US_vj =  US_cj/US_mj;
    
    //(eq.28)
	EAA_gammavj =  EAA_gammav1*EAA_vj+EAA_gammav2/EAA_vj-2*(EAA_gammav1*EAA_gammav2)^0.5;
    EAB_gammavj =  EAB_gammav1*EAB_vj+EAB_gammav2/EAB_vj-2*(EAB_gammav1*EAB_gammav2)^0.5;
    RW_gammavj =  RW_gammav1*RW_vj+RW_gammav2/RW_vj-2*(RW_gammav1*RW_gammav2)^0.5;
    US_gammavj =  US_gammav1*US_vj+US_gammav2/US_vj-2*(US_gammav1*US_gammav2)^0.5;

    //(eq.29)
	EAA_gammavjder =  EAA_gammav1-EAA_gammav2*EAA_vj^(-2);
	EAB_gammavjder =  EAB_gammav1-EAB_gammav2*EAB_vj^(-2);
	RW_gammavjder =  RW_gammav1-RW_gammav2*RW_vj^(-2);
	US_gammavjder =  US_gammav1-US_gammav2*US_vj^(-2);

    //wage FOC 
    //(eq.30)
	EAA_wjtilde =  (EAA_wcst+EAA_etaj/(EAA_etaj-1)*EAA_fj/EAA_gj)^(1/(1+EAA_zeta*EAA_etaj));
	EAB_wjtilde =  (EAB_wcst+EAB_etaj/(EAB_etaj-1)*EAB_fj/EAB_gj)^(1/(1+EAB_zeta*EAB_etaj));
	RW_wjtilde =  (RW_wcst+RW_etaj/(RW_etaj-1)*RW_fj/RW_gj)^(1/(1+RW_zeta*RW_etaj));
    US_wjtilde =  (US_wcst+US_etaj/(US_etaj-1)*US_fj/US_gj)^(1/(1+US_zeta*US_etaj));

    //(eq.31)
	EAA_fj =  EAA_wj^((1+EAA_zeta)*EAA_etaj)*EAA_ndj^(1+EAA_zeta)+EAA_beta*EAA_xij*(EAA_pic(1)/(EAA_pic^EAA_chij*EAA_pi4target^(0.25*(1-EAA_chij))))^((1+EAA_zeta)*EAA_etaj)*EAA_fj(1);
    EAB_fj =  EAB_wj^((1+EAB_zeta)*EAB_etaj)*EAB_ndj^(1+EAB_zeta)+EAB_beta*EAB_xij*(EAB_pic(1)/(EAB_pic^EAB_chij*EAB_pi4target^(0.25*(1-EAB_chij))))^((1+EAB_zeta)*EAB_etaj)*EAB_fj(1);
	RW_fj =  RW_wj^((1+RW_zeta)*RW_etaj)*RW_ndj^(1+RW_zeta)+RW_beta*RW_xij*(RW_pic(1)/(RW_pic^RW_chij*RW_pi4target^(0.25*(1-RW_chij))))^((1+RW_zeta)*RW_etaj)*RW_fj(1);
    US_fj =  US_wj^((1+US_zeta)*US_etaj)*US_ndj^(1+US_zeta)+US_beta*US_xij*(US_pic(1)/(US_pic^US_chij*US_pi4target^(0.25*(1-US_chij))))^((1+US_zeta)*US_etaj)*US_fj(1);

    //(eq.32)
	EAA_gj =  EAA_ndj*(1-EAA_taun-EAA_tauwh)*EAA_lambdaj*EAA_wj^EAA_etaj+EAA_beta*EAA_xij*(EAA_pic(1)/(EAA_pic^EAA_chij*EAA_pi4target^(0.25*(1-EAA_chij))))^(EAA_etaj-1)*EAA_gj(1);
	EAB_gj =  EAB_ndj*(1-EAB_taun-EAB_tauwh)*EAB_lambdaj*EAB_wj^EAB_etaj+EAB_beta*EAB_xij*(EAB_pic(1)/(EAB_pic^EAB_chij*EAB_pi4target^(0.25*(1-EAB_chij))))^(EAB_etaj-1)*EAB_gj(1);
	RW_gj =  RW_ndj*(1-RW_taun-RW_tauwh)*RW_lambdaj*RW_wj^RW_etaj+RW_beta*RW_xij*(RW_pic(1)/(RW_pic^RW_chij*RW_pi4target^(0.25*(1-RW_chij))))^(RW_etaj-1)*RW_gj(1);
	US_gj =  US_ndj*(1-US_taun-US_tauwh)*US_lambdaj*US_wj^US_etaj+US_beta*US_xij*(US_pic(1)/(US_pic^US_chij*US_pi4target^(0.25*(1-US_chij))))^(US_etaj-1)*US_gj(1);

	//(eq.33)
	EAA_wj =  ((1-EAA_xij)*EAA_wjtilde^(1-EAA_etaj)+EAA_xij*EAA_wj(-1)^(1-EAA_etaj)*(EAA_pi4target^(0.25*(1-EAA_chij))*EAA_pic(-1)^EAA_chij/EAA_pic)^(1-EAA_etaj))^(1/(1-EAA_etaj));
    EAB_wj =  ((1-EAB_xij)*EAB_wjtilde^(1-EAB_etaj)+EAB_xij*EAB_wj(-1)^(1-EAB_etaj)*(EAB_pi4target^(0.25*(1-EAB_chij))*EAB_pic(-1)^EAB_chij/EAB_pic)^(1-EAB_etaj))^(1/(1-EAB_etaj));
    RW_wj =  ((1-RW_xij)*RW_wjtilde^(1-RW_etaj)+RW_xij*RW_wj(-1)^(1-RW_etaj)*(RW_pi4target^(0.25*(1-RW_chij))*RW_pic(-1)^RW_chij/RW_pic)^(1-RW_etaj))^(1/(1-RW_etaj));
	US_wj =  ((1-US_xij)*US_wjtilde^(1-US_etaj)+US_xij*US_wj(-1)^(1-US_etaj)*(US_pi4target^(0.25*(1-US_chij))*US_pic(-1)^US_chij/US_pic)^(1-US_etaj))^(1/(1-US_etaj));

	//tradables production function 
    //(eq.34)
    EAA_ndt =  ((EAA_yst+EAA_psitbar)/(EA_z*EAA_zt*EAA_kdt^EAA_alphat))^(1/(1-EAA_alphat));
    EAB_ndt =  ((EAB_yst+EAB_psitbar)/(EA_z*EAB_zt*EAB_kdt^EAB_alphat))^(1/(1-EAB_alphat));
    //(eq.35)
    RW_ndt =  ((RW_yst+RW_psitbar)/(RW_zt*RW_kdt^RW_alphat))^(1/(1-RW_alphat));
    US_ndt =  ((US_yst+US_psitbar)/(US_zt*US_kdt^US_alphat))^(1/(1-US_alphat));

	//nontradables production function 
    //(eq.36)
	EAA_ndn =  ((EAA_ysn+EAA_psinbar)/(EA_z*EAA_zn*EAA_kdn^EAA_alphan))^(1/(1-EAA_alphan));
	EAB_ndn =  ((EAB_ysn+EAB_psinbar)/(EA_z*EAB_zn*EAB_kdn^EAB_alphan))^(1/(1-EAB_alphan));
    //(eq.37)
	RW_ndn =  ((RW_ysn+RW_psinbar)/(RW_zn*RW_kdn^RW_alphan))^(1/(1-RW_alphan));
	US_ndn =  ((US_ysn+US_psinbar)/(US_zn*US_kdn^US_alphan))^(1/(1-US_alphan));

	//tradabes marginal costs
    //(eq.38)
    EAA_mct =  1/(EA_z*EAA_zt*EAA_alphat^EAA_alphat*(1-EAA_alphat)^(1-EAA_alphat))*EAA_rk^EAA_alphat*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphat);
    EAB_mct =  1/(EA_z*EAB_zt*EAB_alphat^EAB_alphat*(1-EAB_alphat)^(1-EAB_alphat))*EAB_rk^EAB_alphat*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphat);
    //(eq.39)
	RW_mct =  1/(RW_zt*RW_alphat^RW_alphat*(1-RW_alphat)^(1-RW_alphat))*RW_rk^RW_alphat*((1+RW_tauwf)*RW_w)^(1-RW_alphat);
	US_mct =  1/(US_zt*US_alphat^US_alphat*(1-US_alphat)^(1-US_alphat))*US_rk^US_alphat*((1+US_tauwf)*US_w)^(1-US_alphat);

	//nontradabes marginal costs
    //(eq.40)
	EAA_mcn =  1/(EA_z*EAA_zn*EAA_alphan^EAA_alphan*(1-EAA_alphan)^(1-EAA_alphan))*EAA_rk^EAA_alphan*((1+EAA_tauwf)*EAA_w)^(1-EAA_alphan);
	EAB_mcn =  1/(EA_z*EAB_zn*EAB_alphan^EAB_alphan*(1-EAB_alphan)^(1-EAB_alphan))*EAB_rk^EAB_alphan*((1+EAB_tauwf)*EAB_w)^(1-EAB_alphan);
    //(eq.41)
    RW_mcn =  1/(RW_zn*RW_alphan^RW_alphan*(1-RW_alphan)^(1-RW_alphan))*RW_rk^RW_alphan*((1+RW_tauwf)*RW_w)^(1-RW_alphan);
	US_mcn =  1/(US_zn*US_alphan^US_alphan*(1-US_alphan)^(1-US_alphan))*US_rk^US_alphan*((1+US_tauwf)*US_w)^(1-US_alphan);

	//demand for capital services
    //(eq.42)
	EAA_kdt =  (EAA_yst+EAA_psitbar)*EAA_alphat/(EAA_rk*EAA_mct);
	EAB_kdt =  (EAB_yst+EAB_psitbar)*EAB_alphat/(EAB_rk*EAB_mct);
  	RW_kdt =  (RW_yst+RW_psitbar)*RW_alphat/(RW_rk*RW_mct);
	US_kdt =  (US_yst+US_psitbar)*US_alphat/(US_rk*US_mct);

    //(eq.43)
	EAA_kdn =  (EAA_ysn+EAA_psinbar)*EAA_alphan/(EAA_rk*EAA_mcn);
	EAB_kdn =  (EAB_ysn+EAB_psinbar)*EAB_alphan/(EAB_rk*EAB_mcn);
	RW_kdn =  (RW_ysn+RW_psinbar)*RW_alphan/(RW_rk*RW_mcn);
	US_kdn =  (US_ysn+US_psinbar)*US_alphan/(US_rk*US_mcn);

	//demand for labour
    //(eq.44)
	EAA_w =  EAA_wi/(EAA_ndi/EAA_nd/(1-EAA_omega))^(1/(-EAA_eta));
	EAB_w =  EAB_wi/(EAB_ndi/EAB_nd/(1-EAB_omega))^(1/(-EAB_eta));
	RW_w =  RW_wi/(RW_ndi/RW_nd/(1-RW_omega))^(1/(-RW_eta));
	US_w =  US_wi/(US_ndi/US_nd/(1-US_omega))^(1/(-US_eta));

    //(eq.45)
	EAA_ndj =  EAA_nd*EAA_omega*(EAA_wj/EAA_w)^(-EAA_eta);
	EAB_ndj =  EAB_nd*EAB_omega*(EAB_wj/EAB_w)^(-EAB_eta);
	RW_ndj =  RW_nd*RW_omega*(RW_wj/RW_w)^(-RW_eta);
	US_ndj =  US_nd*US_omega*(US_wj/US_w)^(-US_eta);

    //(eq.46)
	EAA_ndi =  ((EAA_nd^((EAA_eta-1)/EAA_eta)-EAA_omega^(1/EAA_eta)*EAA_ndj^(1-1/EAA_eta))/(1-EAA_omega)^(1/EAA_eta))^(1/(1-1/EAA_eta));
	EAB_ndi =  ((EAB_nd^((EAB_eta-1)/EAB_eta)-EAB_omega^(1/EAB_eta)*EAB_ndj^(1-1/EAB_eta))/(1-EAB_omega)^(1/EAB_eta))^(1/(1-1/EAB_eta));
	RW_ndi =  ((RW_nd^((RW_eta-1)/RW_eta)-RW_omega^(1/RW_eta)*RW_ndj^(1-1/RW_eta))/(1-RW_omega)^(1/RW_eta))^(1/(1-1/RW_eta));
	US_ndi =  ((US_nd^((US_eta-1)/US_eta)-US_omega^(1/US_eta)*US_ndj^(1-1/US_eta))/(1-US_omega)^(1/US_eta))^(1/(1-1/US_eta));

	//tradables pricing (domestic market)
    //(eq.47)
	EAA_phttilde =  EAA_pht*EAA_thetat/(EAA_thetat-1)*EAA_fh/EAA_gh;
	EAB_phttilde =  EAB_pht*EAB_thetat/(EAB_thetat-1)*EAB_fh/EAB_gh;
	RW_phttilde =  RW_pht*RW_thetat/(RW_thetat-1)*RW_fh/RW_gh;
	US_phttilde =  US_pht*US_thetat/(US_thetat-1)*US_fh/US_gh;

    //(eq.48)
    EAA_fh =  EAA_mct*EAA_ht+EAA_lambdai(1)*EAA_beta*EAA_xih/EAA_lambdai*(EAA_piht(1)/(EAA_piht^EAA_chih*EAA_pi4target^(0.25*(1-EAA_chih))))^EAA_thetat*EAA_fh(1);
	EAB_fh =  EAB_mct*EAB_ht+EAB_lambdai(1)*EAB_beta*EAB_xih/EAB_lambdai*(EAB_piht(1)/(EAB_piht^EAB_chih*EAB_pi4target^(0.25*(1-EAB_chih))))^EAB_thetat*EAB_fh(1);
	RW_fh =  RW_mct*RW_ht+RW_lambdai(1)*RW_beta*RW_xih/RW_lambdai*(RW_piht(1)/(RW_piht^RW_chih*RW_pi4target^(0.25*(1-RW_chih))))^RW_thetat*RW_fh(1);
	US_fh =  US_mct*US_ht+US_lambdai(1)*US_beta*US_xih/US_lambdai*(US_piht(1)/(US_piht^US_chih*US_pi4target^(0.25*(1-US_chih))))^US_thetat*US_fh(1);
	
    //(eq.49)
    EAA_gh =  EAA_pht*EAA_ht+EAA_lambdai(1)*EAA_beta*EAA_xih/EAA_lambdai*(EAA_piht(1)/(EAA_piht^EAA_chih*EAA_pi4target^(0.25*(1-EAA_chih))))^(EAA_thetat-1)*EAA_gh(1);
    EAB_gh =  EAB_pht*EAB_ht+EAB_lambdai(1)*EAB_beta*EAB_xih/EAB_lambdai*(EAB_piht(1)/(EAB_piht^EAB_chih*EAB_pi4target^(0.25*(1-EAB_chih))))^(EAB_thetat-1)*EAB_gh(1);
    RW_gh =  RW_pht*RW_ht+RW_lambdai(1)*RW_beta*RW_xih/RW_lambdai*(RW_piht(1)/(RW_piht^RW_chih*RW_pi4target^(0.25*(1-RW_chih))))^(RW_thetat-1)*RW_gh(1);
    US_gh =  US_pht*US_ht+US_lambdai(1)*US_beta*US_xih/US_lambdai*(US_piht(1)/(US_piht^US_chih*US_pi4target^(0.25*(1-US_chih))))^(US_thetat-1)*US_gh(1);
    			
    //(eq.50)
	EAA_pht =  ((1-EAA_xih)*EAA_phttilde^(1-EAA_thetat)+EAA_xih*(EAA_pht(-1)/EAA_pic)^(1-EAA_thetat)*(EAA_pi4target^(0.25*(1-EAA_chih))*EAA_piht(-1)^EAA_chih)^(1-EAA_thetat))^(1/(1-EAA_thetat));
	EAB_pht =  ((1-EAB_xih)*EAB_phttilde^(1-EAB_thetat)+EAB_xih*(EAB_pht(-1)/EAB_pic)^(1-EAB_thetat)*(EAB_pi4target^(0.25*(1-EAB_chih))*EAB_piht(-1)^EAB_chih)^(1-EAB_thetat))^(1/(1-EAB_thetat));
	RW_pht =  ((1-RW_xih)*RW_phttilde^(1-RW_thetat)+RW_xih*(RW_pht(-1)/RW_pic)^(1-RW_thetat)*(RW_pi4target^(0.25*(1-RW_chih))*RW_piht(-1)^RW_chih)^(1-RW_thetat))^(1/(1-RW_thetat));
	US_pht =  ((1-US_xih)*US_phttilde^(1-US_thetat)+US_xih*(US_pht(-1)/US_pic)^(1-US_thetat)*(US_pi4target^(0.25*(1-US_chih))*US_piht(-1)^US_chih)^(1-US_thetat))^(1/(1-US_thetat));

    //(eq.51)
	EAA_piht =  EAA_pic*EAA_pht/EAA_pht(-1);
	EAB_piht =  EAB_pic*EAB_pht/EAB_pht(-1);
	RW_piht =  RW_pic*RW_pht/RW_pht(-1);
	US_piht =  US_pic*US_pht/US_pht(-1);

	//tradables pricing (export)
    //(eq.52)
	EAAEAB_pimtilde =  EAAEAB_pim*EAB_thetat*EAB_cpim/(EAB_thetat-1)*EABEAA_fx/EABEAA_gx;
	EAARW_pimtilde =  EAARW_pim*RW_thetat*RW_cpim/(RW_thetat-1)*RWEAA_fx/RWEAA_gx;
	EAAUS_pimtilde =  EAAUS_pim*US_thetat*US_cpim/(US_thetat-1)*USEAA_fx/USEAA_gx;
	EABEAA_pimtilde =  EABEAA_pim*EAA_thetat*EAA_cpim/(EAA_thetat-1)*EAAEAB_fx/EAAEAB_gx;
	EABRW_pimtilde =  EABRW_pim*RW_thetat*RW_cpim/(RW_thetat-1)*RWEAB_fx/RWEAB_gx;
	EABUS_pimtilde =  EABUS_pim*US_thetat*US_cpim/(US_thetat-1)*USEAB_fx/USEAB_gx;
	RWEAA_pimtilde =  RWEAA_pim*EAA_thetat*EAA_cpim/(EAA_thetat-1)*EAARW_fx/EAARW_gx;
	RWEAB_pimtilde =  RWEAB_pim*EAB_thetat*EAB_cpim/(EAB_thetat-1)*EABRW_fx/EABRW_gx;
	RWUS_pimtilde =  RWUS_pim*US_thetat*US_cpim/(US_thetat-1)*USRW_fx/USRW_gx;
	USEAA_pimtilde =  USEAA_pim*EAA_thetat*EAA_cpim/(EAA_thetat-1)*EAAUS_fx/EAAUS_gx;
	USEAB_pimtilde =  USEAB_pim*EAB_thetat*EAB_cpim/(EAB_thetat-1)*EABUS_fx/EABUS_gx;
	USRW_pimtilde =  USRW_pim*RW_thetat*RW_cpim/(RW_thetat-1)*RWUS_fx/RWUS_gx;
	
    //(eq.53)
	EAAEAB_fx =  EAA_mct*EAB_size/EAA_size*EABEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(EABEAA_piim(1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(0.25*(1-EAA_chix))))^EAA_thetat*EAAEAB_fx(1);
	EAARW_fx =  EAA_mct*RW_size/EAA_size*RWEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(RWEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*RWEAA_piim^EAA_chix))^EAA_thetat*EAARW_fx(1);
	EAAUS_fx =  EAA_mct*US_size/EAA_size*USEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(USEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*USEAA_piim^EAA_chix))^EAA_thetat*EAAUS_fx(1);
	EABEAA_fx =  EAB_mct*EAAEAB_im*EAA_size/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(EAAEAB_piim(1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(0.25*(1-EAB_chix))))^EAB_thetat*EABEAA_fx(1);
	EABRW_fx =  EAB_mct*RWEAB_im*RW_size/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(RWEAB_piim(1)/(EAB_pi4target^(0.25*(1-EAB_chix))*RWEAB_piim^EAB_chix))^EAB_thetat*EABRW_fx(1);
	EABUS_fx =  EAB_mct*USEAB_im*US_size/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(USEAB_piim(1)/(EAB_pi4target^(0.25*(1-EAB_chix))*USEAB_piim^EAB_chix))^EAB_thetat*EABUS_fx(1);
	RWEAA_fx =  RW_mct*EAARW_im*EAA_size/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(EAARW_piim(1)/(EAARW_piim^RW_chix*RW_pi4target^(0.25*(1-RW_chix))))^RW_thetat*RWEAA_fx(1);
	RWEAB_fx =  RW_mct*EABRW_im*EAB_size/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(EABRW_piim(1)/(RW_pi4target^(0.25*(1-RW_chix))*EABRW_piim^RW_chix))^RW_thetat*RWEAB_fx(1);
	RWUS_fx =  RW_mct*USRW_im*US_size/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(USRW_piim(1)/(RW_pi4target^(0.25*(1-RW_chix))*USRW_piim^RW_chix))^RW_thetat*RWUS_fx(1);
	USEAA_fx =  US_mct*EAAUS_im*EAA_size/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(EAAUS_piim(1)/(EAAUS_piim^US_chix*US_pi4target^(0.25*(1-US_chix))))^US_thetat*USEAA_fx(1);
	USEAB_fx =  US_mct*EABUS_im*EAB_size/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(EABUS_piim(1)/(US_pi4target^(0.25*(1-US_chix))*EABUS_piim^US_chix))^US_thetat*USEAB_fx(1);
	USRW_fx =  US_mct*RWUS_im*RW_size/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(RWUS_piim(1)/(US_pi4target^(0.25*(1-US_chix))*RWUS_piim^US_chix))^US_thetat*USRW_fx(1);

    //(eq.54)
	EAAEAB_gx =  EABEAA_im*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(EABEAA_piim(1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(0.25*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAB_gx(1);
    EAARW_gx =  RWEAA_im*RWEAA_pim*EAARW_rer*RW_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(RWEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*RWEAA_piim^EAA_chix))^(EAA_thetat-1)*EAARW_gx(1);
	EAAUS_gx =  USEAA_im*USEAA_pim*EAAUS_rer*US_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(USEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*USEAA_piim^EAA_chix))^(EAA_thetat-1)*EAAUS_gx(1);
	EABEAA_gx =  EAAEAB_im*EAA_size*EAAEAB_pim*EABEAA_rer/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(EAAEAB_piim(1)/(EAAEAB_piim^EAB_chix*EAB_pi4target^(0.25*(1-EAB_chix))))^(EAB_thetat-1)*EABEAA_gx(1);
	EABRW_gx =  RWEAB_im*RW_size*RWEAB_pim*EABRW_rer/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(RWEAB_piim(1)/(EAB_pi4target^(0.25*(1-EAB_chix))*RWEAB_piim^EAB_chix))^(EAB_thetat-1)*EABRW_gx(1);
    EABUS_gx =  USEAB_im*US_size*USEAB_pim*EABUS_rer/EAB_size+EAB_lambdai(1)*EAB_beta*EAB_xix/EAB_lambdai*(USEAB_piim(1)/(EAB_pi4target^(0.25*(1-EAB_chix))*USEAB_piim^EAB_chix))^(EAB_thetat-1)*EABUS_gx(1);
	RWEAA_gx =  EAARW_im*EAA_size*EAARW_pim*RWEAA_rer/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(EAARW_piim(1)/(EAARW_piim^RW_chix*RW_pi4target^(0.25*(1-RW_chix))))^(RW_thetat-1)*RWEAA_gx(1);
	RWUS_gx =  USRW_im*US_size*USRW_pim*RWUS_rer/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(USRW_piim(1)/(RW_pi4target^(0.25*(1-RW_chix))*USRW_piim^RW_chix))^(RW_thetat-1)*RWUS_gx(1);
	RWEAB_gx =  EABRW_im*EAB_size*EABRW_pim*RWEAB_rer/RW_size+RW_lambdai(1)*RW_beta*RW_xix/RW_lambdai*(EABRW_piim(1)/(RW_pi4target^(0.25*(1-RW_chix))*EABRW_piim^RW_chix))^(RW_thetat-1)*RWEAB_gx(1);
	USEAB_gx =  EABUS_im*EAB_size*EABUS_pim*USEAB_rer/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(EABUS_piim(1)/(US_pi4target^(0.25*(1-US_chix))*EABUS_piim^US_chix))^(US_thetat-1)*USEAB_gx(1);
	USEAA_gx =  EAAUS_im*EAA_size*EAAUS_pim*USEAA_rer/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(EAAUS_piim(1)/(EAAUS_piim^US_chix*US_pi4target^(0.25*(1-US_chix))))^(US_thetat-1)*USEAA_gx(1);
	USRW_gx =  RWUS_im*RW_size*RWUS_pim*USRW_rer/US_size+US_lambdai(1)*US_beta*US_xix/US_lambdai*(RWUS_piim(1)/(US_pi4target^(0.25*(1-US_chix))*RWUS_piim^US_chix))^(US_thetat-1)*USRW_gx(1);
	
    //(eq.55)
	EAAEAB_pim =  ((1-EAB_xix)*EAAEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(EAAEAB_pim(-1)/EAA_pic)^(1-EAB_thetat)*(EAAEAB_piim(-1)^EAB_chix*EAA_pi4target^(0.25*(1-EAB_chih)))^(1-EAB_thetat))^((-1)/(1-EAB_thetat));
    EAARW_pim =  ((1-RW_xix)*EAARW_pimtilde^(1-RW_thetat)+RW_xix*(EAARW_pim(-1)/EAA_pic)^(1-RW_thetat)*(EAARW_piim(-1)^RW_chix*EAA_pi4target^(0.25*(1-RW_chih)))^(1-RW_thetat))^((-1)/(1-RW_thetat));
    EAAUS_pim =  ((1-US_xix)*EAAUS_pimtilde^(1-US_thetat)+US_xix*(EAAUS_pim(-1)/EAA_pic)^(1-US_thetat)*(EAAUS_piim(-1)^US_chix*EAA_pi4target^(0.25*(1-US_chih)))^(1-US_thetat))^((-1)/(1-US_thetat));
    EABEAA_pim =  ((1-EAA_xix)*EABEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(EABEAA_pim(-1)/EAB_pic)^(1-EAA_thetat)*(EABEAA_piim(-1)^EAA_chix*EAB_pi4target^(0.25*(1-EAA_chih)))^(1-EAA_thetat))^((-1)/(1-EAA_thetat));
    EABRW_pim =  ((1-RW_xix)*EABRW_pimtilde^(1-RW_thetat)+RW_xix*(EABRW_pim(-1)/EAB_pic)^(1-RW_thetat)*(EABRW_piim(-1)^RW_chix*EAB_pi4target^(0.25*(1-RW_chih)))^(1-RW_thetat))^((-1)/(1-RW_thetat));
    EABUS_pim =  ((1-US_xix)*EABUS_pimtilde^(1-US_thetat)+US_xix*(EABUS_pim(-1)/EAB_pic)^(1-US_thetat)*(EABUS_piim(-1)^US_chix*EAB_pi4target^(0.25*(1-US_chih)))^(1-US_thetat))^((-1)/(1-US_thetat));
    RWEAA_pim =  ((1-EAA_xix)*RWEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(RWEAA_pim(-1)/RW_pic)^(1-EAA_thetat)*(RWEAA_piim(-1)^EAA_chix*RW_pi4target^(0.25*(1-EAA_chih)))^(1-EAA_thetat))^((-1)/(1-EAA_thetat));
    RWEAB_pim =  ((1-EAB_xix)*RWEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(RWEAB_pim(-1)/RW_pic)^(1-EAB_thetat)*(RWEAB_piim(-1)^EAB_chix*RW_pi4target^(0.25*(1-EAB_chih)))^(1-EAB_thetat))^((-1)/(1-EAB_thetat));
    RWUS_pim =  ((1-US_xix)*RWUS_pimtilde^(1-US_thetat)+US_xix*(RWUS_pim(-1)/RW_pic)^(1-US_thetat)*(RWUS_piim(-1)^US_chix*RW_pi4target^(0.25*(1-US_chih)))^(1-US_thetat))^((-1)/(1-US_thetat));
    USEAA_pim =  ((1-EAA_xix)*USEAA_pimtilde^(1-EAA_thetat)+EAA_xix*(USEAA_pim(-1)/US_pic)^(1-EAA_thetat)*(USEAA_piim(-1)^EAA_chix*US_pi4target^(0.25*(1-EAA_chih)))^(1-EAA_thetat))^((-1)/(1-EAA_thetat));
    USEAB_pim =  ((1-EAB_xix)*USEAB_pimtilde^(1-EAB_thetat)+EAB_xix*(USEAB_pim(-1)/US_pic)^(1-EAB_thetat)*(USEAB_piim(-1)^EAB_chix*US_pi4target^(0.25*(1-EAB_chih)))^(1-EAB_thetat))^((-1)/(1-EAB_thetat));
    USRW_pim =  ((1-RW_xix)*USRW_pimtilde^(1-RW_thetat)+RW_xix*(USRW_pim(-1)/US_pic)^(1-RW_thetat)*(USRW_piim(-1)^RW_chix*US_pi4target^(0.25*(1-RW_chih)))^(1-RW_thetat))^((-1)/(1-RW_thetat));

    //(eq.56)
	EAAEAB_piim =  EAA_pic*EAAEAB_pim/EAAEAB_pim(-1);
	EAARW_piim =  EAA_pic*EAARW_pim/EAARW_pim(-1);
    EAAUS_piim =  EAA_pic*EAAUS_pim/EAAUS_pim(-1);
    EABEAA_piim =  EAB_pic*EABEAA_pim/EABEAA_pim(-1);
	EABRW_piim =  EAB_pic*EABRW_pim/EABRW_pim(-1);
    EABUS_piim =  EAB_pic*EABUS_pim/EABUS_pim(-1);
	RWEAA_piim =  RW_pic*RWEAA_pim/RWEAA_pim(-1);
	RWEAB_piim =  RW_pic*RWEAB_pim/RWEAB_pim(-1);
    RWUS_piim =  RW_pic*RWUS_pim/RWUS_pim(-1);
    USEAA_piim =  US_pic*USEAA_pim/USEAA_pim(-1);
    USEAB_piim =  US_pic*USEAB_pim/USEAB_pim(-1);
	USRW_piim =  US_pic*USRW_pim/USRW_pim(-1);

    //nontradable pricing
    //(eq.57)
	EAA_pnttilde =  EAA_pnt*EAA_thetan/(EAA_thetan-1)*EAA_fn/EAA_gn;
	EAB_pnttilde =  EAB_pnt*EAB_thetan/(EAB_thetan-1)*EAB_fn/EAB_gn;
	RW_pnttilde =  RW_pnt*RW_thetan/(RW_thetan-1)*RW_fn/RW_gn;
	US_pnttilde =  US_pnt*US_thetan/(US_thetan-1)*US_fn/US_gn;

    //(eq.58)
	EAA_fn =  EAA_mcn*EAA_nt+EAA_lambdai(1)*EAA_beta*EAA_xin/EAA_lambdai*(EAA_pint(1)/(EAA_pint^EAA_chin*EAA_pi4target^(0.25*(1-EAA_chin))))^EAA_thetan*EAA_fn(1);
	EAB_fn =  EAB_mcn*EAB_nt+EAB_lambdai(1)*EAB_beta*EAB_xin/EAB_lambdai*(EAB_pint(1)/(EAB_pint^EAB_chin*EAB_pi4target^(0.25*(1-EAB_chin))))^EAB_thetan*EAB_fn(1);
	RW_fn =  RW_mcn*RW_nt+RW_lambdai(1)*RW_beta*RW_xin/RW_lambdai*(RW_pint(1)/(RW_pint^RW_chin*RW_pi4target^(0.25*(1-RW_chin))))^RW_thetan*RW_fn(1);
	US_fn =  US_mcn*US_nt+US_lambdai(1)*US_beta*US_xin/US_lambdai*(US_pint(1)/(US_pint^US_chin*US_pi4target^(0.25*(1-US_chin))))^US_thetan*US_fn(1);

	//(eq.59)
	EAA_gn =  EAA_pnt*EAA_nt+EAA_lambdai(1)*EAA_beta*EAA_xin/EAA_lambdai*(EAA_pint(1)/(EAA_pint^EAA_chin*EAA_pi4target^(0.25*(1-EAA_chin))))^(EAA_thetan-1)*EAA_gn(1);
	EAB_gn =  EAB_pnt*EAB_nt+EAB_lambdai(1)*EAB_beta*EAB_xin/EAB_lambdai*(EAB_pint(1)/(EAB_pint^EAB_chin*EAB_pi4target^(0.25*(1-EAB_chin))))^(EAB_thetan-1)*EAB_gn(1);
	RW_gn =  RW_pnt*RW_nt+RW_lambdai(1)*RW_beta*RW_xin/RW_lambdai*(RW_pint(1)/(RW_pint^RW_chin*RW_pi4target^(0.25*(1-RW_chin))))^(RW_thetan-1)*RW_gn(1);
	US_gn =  US_pnt*US_nt+US_lambdai(1)*US_beta*US_xin/US_lambdai*(US_pint(1)/(US_pint^US_chin*US_pi4target^(0.25*(1-US_chin))))^(US_thetan-1)*US_gn(1);

	//(eq.60)
	EAA_pnt =  ((1-EAA_xin)*EAA_pnttilde^(1-EAA_thetan)+EAA_xin*(EAA_pnt(-1)/EAA_pic)^(1-EAA_thetan)*(EAA_pi4target^(0.25*(1-EAA_chin))*EAA_pint(-1)^EAA_chin)^(1-EAA_thetan))^(1/(1-EAA_thetan));
	EAB_pnt =  ((1-EAB_xin)*EAB_pnttilde^(1-EAB_thetan)+EAB_xin*(EAB_pnt(-1)/EAB_pic)^(1-EAB_thetan)*(EAB_pi4target^(0.25*(1-EAB_chin))*EAB_pint(-1)^EAB_chin)^(1-EAB_thetan))^(1/(1-EAB_thetan));
	RW_pnt =  ((1-RW_xin)*RW_pnttilde^(1-RW_thetan)+RW_xin*(RW_pnt(-1)/RW_pic)^(1-RW_thetan)*(RW_pi4target^(0.25*(1-RW_chin))*RW_pint(-1)^RW_chin)^(1-RW_thetan))^(1/(1-RW_thetan));
	US_pnt =  ((1-US_xin)*US_pnttilde^(1-US_thetan)+US_xin*(US_pnt(-1)/US_pic)^(1-US_thetan)*(US_pi4target^(0.25*(1-US_chin))*US_pint(-1)^US_chin)^(1-US_thetan))^(1/(1-US_thetan));

	//(eq.61)
	EAA_pint =  EAA_pic*EAA_pnt/EAA_pnt(-1);
	EAB_pint =  EAB_pic*EAB_pnt/EAB_pnt(-1);
	RW_pint =  RW_pic*RW_pnt/RW_pnt(-1);
	US_pint =  US_pic*US_pnt/US_pnt(-1);

    //final goods consumption bundle
    //(eq.62)
	EAA_qc =  (EAA_nuc^(1/EAA_muc)*EAA_ttc^(1-1/EAA_muc)+(1-EAA_nuc)^(1/EAA_muc)*EAA_ntc^(1-1/EAA_muc))^(EAA_muc/(EAA_muc-1));
	EAB_qc =  (EAB_nuc^(1/EAB_muc)*EAB_ttc^(1-1/EAB_muc)+(1-EAB_nuc)^(1/EAB_muc)*EAB_ntc^(1-1/EAB_muc))^(EAB_muc/(EAB_muc-1));
	RW_qc =  (RW_nuc^(1/RW_muc)*RW_ttc^(1-1/RW_muc)+(1-RW_nuc)^(1/RW_muc)*RW_ntc^(1-1/RW_muc))^(RW_muc/(RW_muc-1));
	US_qc =  (US_nuc^(1/US_muc)*US_ttc^(1-1/US_muc)+(1-US_nuc)^(1/US_muc)*US_ntc^(1-1/US_muc))^(US_muc/(US_muc-1));

    //(eq.63)
	EAA_ntc =  EAA_qc*(1-EAA_nuc)*EAA_pnt^(-EAA_muc);
	EAB_ntc =  EAB_qc*(1-EAB_nuc)*EAB_pnt^(-EAB_muc);
	RW_ntc =  RW_qc*(1-RW_nuc)*RW_pnt^(-RW_muc);
	US_ntc =  US_qc*(1-US_nuc)*US_pnt^(-US_muc);
 
    //(eq.64)
	EAA_ttc =  (EAA_nutc^(1/EAA_mutc)*EAA_htc^(1-1/EAA_mutc)+(1-EAA_nutc)^(1/EAA_mutc)*EAA_imc^(1-1/EAA_mutc))^(EAA_mutc/(EAA_mutc-1));
	EAB_ttc =  (EAB_nutc^(1/EAB_mutc)*EAB_htc^(1-1/EAB_mutc)+(1-EAB_nutc)^(1/EAB_mutc)*EAB_imc^(1-1/EAB_mutc))^(EAB_mutc/(EAB_mutc-1));
	RW_ttc =  (RW_nutc^(1/RW_mutc)*RW_htc^(1-1/RW_mutc)+(1-RW_nutc)^(1/RW_mutc)*RW_imc^(1-1/RW_mutc))^(RW_mutc/(RW_mutc-1));
	US_ttc =  (US_nutc^(1/US_mutc)*US_htc^(1-1/US_mutc)+(1-US_nutc)^(1/US_mutc)*US_imc^(1-1/US_mutc))^(US_mutc/(US_mutc-1));

    //(eq.65)
	EAA_htc =  EAA_ttc*EAA_nutc*(EAA_pht/EAA_pttc)^(-EAA_mutc);
	EAB_htc =  EAB_ttc*EAB_nutc*(EAB_pht/EAB_pttc)^(-EAB_mutc);
	RW_htc =  RW_ttc*RW_nutc*(RW_pht/RW_pttc)^(-RW_mutc);
	US_htc =  US_ttc*US_nutc*(US_pht/US_pttc)^(-US_mutc);

    //(eq.66)
	EAA_imc =  (EAAEAB_numc^(1/EAA_mumc)*((1-EAAEAB_gammaimc)*EAAEAB_imc)^(1-1/EAA_mumc)+EAAUS_numc^(1/EAA_mumc)*((1-EAAUS_gammaimc)*EAAUS_imc)^(1-1/EAA_mumc)+(1-EAAEAB_numc-EAAUS_numc)^(1/EAA_mumc)*((1-EAARW_gammaimc)*EAARW_imc)^(1-1/EAA_mumc))^(EAA_mumc/(EAA_mumc-1));
	EAB_imc =  (EABEAA_numc^(1/EAB_mumc)*(EABEAA_imc*(1-EABEAA_gammaimc))^(1-1/EAB_mumc)+EABRW_numc^(1/EAB_mumc)*((1-EABRW_gammaimc)*EABRW_imc)^(1-1/EAB_mumc)+(1-EABEAA_numc-EABRW_numc)^(1/EAB_mumc)*((1-EABUS_gammaimc)*EABUS_imc)^(1-1/EAB_mumc))^(EAB_mumc/(EAB_mumc-1));
	RW_imc =  (RWEAB_numc^(1/RW_mumc)*(RWEAB_imc*(1-RWEAB_gammaimc))^(1-1/RW_mumc)+RWUS_numc^(1/RW_mumc)*((1-RWUS_gammaimc)*RWUS_imc)^(1-1/RW_mumc)+(1-RWEAB_numc-RWUS_numc)^(1/RW_mumc)*(RWEAA_imc*(1-RWEAA_gammaimc))^(1-1/RW_mumc))^(RW_mumc/(RW_mumc-1));
	US_imc =  (USEAA_numc^(1/US_mumc)*(USEAA_imc*(1-USEAA_gammaimc))^(1-1/US_mumc)+USRW_numc^(1/US_mumc)*(USRW_imc*(1-USRW_gammaimc))^(1-1/US_mumc)+(1-USEAA_numc-USRW_numc)^(1/US_mumc)*(USEAB_imc*(1-USEAB_gammaimc))^(1-1/US_mumc))^(US_mumc/(US_mumc-1));

    //(eq.67)
	EAARW_imc =  EAA_imc*(1-EAAEAB_numc-EAAUS_numc)*(EAARW_pim/(EAA_pimc*EAARW_gammaimcdag))^(-EAA_mumc)/(1-EAARW_gammaimc);
    EAAUS_imc =  EAA_imc*EAAUS_numc*(EAAUS_pim/(EAA_pimc*EAAUS_gammaimcdag))^(-EAA_mumc)/(1-EAAUS_gammaimc);
	EAAEAB_imc = EAA_imc*EAAEAB_numc*(EAAEAB_pim/(EAA_pimc*EAAEAB_gammaimcdag))^(-EAA_mumc)/(1-EAAEAB_gammaimc);    
    EABEAA_imc =  EAB_imc*EABEAA_numc*(EABEAA_pim/(EAB_pimc*EABEAA_gammaimcdag))^(-EAB_mumc)/(1-EABEAA_gammaimc);
	EABRW_imc =  EAB_imc*EABRW_numc*(EABRW_pim/(EAB_pimc*EABRW_gammaimcdag))^(-EAB_mumc)/(1-EABRW_gammaimc); 
    EABUS_imc =  EAB_imc*(1-EABEAA_numc-EABRW_numc)*(EABUS_pim/(EAB_pimc*EABUS_gammaimcdag))^(-EAB_mumc)/(1-EABUS_gammaimc);	
    RWEAA_imc =  RW_imc*(1-RWEAB_numc-RWUS_numc)*(RWEAA_pim/(RW_pimc*RWEAA_gammaimcdag))^(-RW_mumc)/(1-RWEAA_gammaimc);
	RWEAB_imc =  RW_imc*RWEAB_numc*(RWEAB_pim/(RW_pimc*RWEAB_gammaimcdag))^(-RW_mumc)/(1-RWEAB_gammaimc);
	RWUS_imc = RW_imc*RWUS_numc*(RWUS_pim/(RW_pimc*RWUS_gammaimcdag))^(-RW_mumc)/(1-RWUS_gammaimc);
    USEAB_imc =  US_imc*(1-USEAA_numc-USRW_numc)*(USEAB_pim/(US_pimc*USEAB_gammaimcdag))^(-US_mumc)/(1-USEAB_gammaimc);
    USEAA_imc = US_imc*USEAA_numc*(USEAA_pim/(US_pimc*USEAA_gammaimcdag))^(-US_mumc)/(1-USEAA_gammaimc);	
	USRW_imc =  US_imc*USRW_numc*(USRW_pim/(US_pimc*USRW_gammaimcdag))^(-US_mumc)/(1-USRW_gammaimc);

   	//(eq.68)
	EAAEAB_gammaimc =  EAA_gammaimc1/2*(EAAEAB_imc/EAA_qc/(EAAEAB_imc(-1)/EAA_qc(-1))-1)^2;
    EAARW_gammaimc =  EAA_gammaimc1/2*(EAARW_imc/EAA_qc/(EAARW_imc(-1)/EAA_qc(-1))-1)^2;
	EAAUS_gammaimc =  EAA_gammaimc1/2*(EAAUS_imc/EAA_qc/(EAAUS_imc(-1)/EAA_qc(-1))-1)^2;
    EABEAA_gammaimc =  EAB_gammaimc1/2*(EABEAA_imc/EAB_qc/(EABEAA_imc(-1)/EAB_qc(-1))-1)^2;
	EABRW_gammaimc =  EAB_gammaimc1/2*(EABRW_imc/EAB_qc/(EABRW_imc(-1)/EAB_qc(-1))-1)^2;
	USRW_gammaimc =  US_gammaimc1/2*(USRW_imc/US_qc/(USRW_imc(-1)/US_qc(-1))-1)^2;
	USEAB_gammaimc =  US_gammaimc1/2*(USEAB_imc/US_qc/(USEAB_imc(-1)/US_qc(-1))-1)^2;
	USEAA_gammaimc =  US_gammaimc1/2*(USEAA_imc/US_qc/(USEAA_imc(-1)/US_qc(-1))-1)^2;
	RWUS_gammaimc =  RW_gammaimc1/2*(RWUS_imc/RW_qc/(RWUS_imc(-1)/RW_qc(-1))-1)^2;
	RWEAB_gammaimc =  RW_gammaimc1/2*(RWEAB_imc/RW_qc/(RWEAB_imc(-1)/RW_qc(-1))-1)^2;
	RWEAA_gammaimc =  RW_gammaimc1/2*(RWEAA_imc/RW_qc/(RWEAA_imc(-1)/RW_qc(-1))-1)^2;
	EABUS_gammaimc =  EAB_gammaimc1/2*(EABUS_imc/EAB_qc/(EABUS_imc(-1)/EAB_qc(-1))-1)^2;

	//(eq.69)
	EAAEAB_gammaimcdag =  1-EAAEAB_gammaimc-EAAEAB_imc/EAA_qc*EAA_gammaimc1*(EAAEAB_imc/EAA_qc/(EAAEAB_imc(-1)/EAA_qc(-1))-1)/(EAAEAB_imc(-1)/EAA_qc(-1));
	EAARW_gammaimcdag =  1-EAARW_gammaimc-EAARW_imc/EAA_qc*EAA_gammaimc1*(EAARW_imc/EAA_qc/(EAARW_imc(-1)/EAA_qc(-1))-1)/(EAARW_imc(-1)/EAA_qc(-1));
	EABEAA_gammaimcdag =  1-EABEAA_gammaimc-EABEAA_imc/EAB_qc*EAB_gammaimc1*(EABEAA_imc/EAB_qc/(EABEAA_imc(-1)/EAB_qc(-1))-1)/(EABEAA_imc(-1)/EAB_qc(-1));
	EABRW_gammaimcdag =  1-EABRW_gammaimc-EABRW_imc/EAB_qc*EAB_gammaimc1*(EABRW_imc/EAB_qc/(EABRW_imc(-1)/EAB_qc(-1))-1)/(EABRW_imc(-1)/EAB_qc(-1));
	EAAUS_gammaimcdag =  1-EAAUS_gammaimc-EAAUS_imc/EAA_qc*EAA_gammaimc1*(EAAUS_imc/EAA_qc/(EAAUS_imc(-1)/EAA_qc(-1))-1)/(EAAUS_imc(-1)/EAA_qc(-1));
	EABUS_gammaimcdag =  1-EABUS_gammaimc-EABUS_imc/EAB_qc*EAB_gammaimc1*(EABUS_imc/EAB_qc/(EABUS_imc(-1)/EAB_qc(-1))-1)/(EABUS_imc(-1)/EAB_qc(-1));
    RWEAA_gammaimcdag =  1-RWEAA_gammaimc-RWEAA_imc/RW_qc*RW_gammaimc1*(RWEAA_imc/RW_qc/(RWEAA_imc(-1)/RW_qc(-1))-1)/(RWEAA_imc(-1)/RW_qc(-1));
	RWEAB_gammaimcdag =  1-RWEAB_gammaimc-RWEAB_imc/RW_qc*RW_gammaimc1*(RWEAB_imc/RW_qc/(RWEAB_imc(-1)/RW_qc(-1))-1)/(RWEAB_imc(-1)/RW_qc(-1));
    RWUS_gammaimcdag =  1-RWUS_gammaimc-RWUS_imc/RW_qc*RW_gammaimc1*(RWUS_imc/RW_qc/(RWUS_imc(-1)/RW_qc(-1))-1)/(RWUS_imc(-1)/RW_qc(-1));
	USEAA_gammaimcdag =  1-USEAA_gammaimc-USEAA_imc/US_qc*US_gammaimc1*(USEAA_imc/US_qc/(USEAA_imc(-1)/US_qc(-1))-1)/(USEAA_imc(-1)/US_qc(-1));
	USEAB_gammaimcdag =  1-USEAB_gammaimc-USEAB_imc/US_qc*US_gammaimc1*(USEAB_imc/US_qc/(USEAB_imc(-1)/US_qc(-1))-1)/(USEAB_imc(-1)/US_qc(-1));
	USRW_gammaimcdag =  1-USRW_gammaimc-USRW_imc/US_qc*US_gammaimc1*(USRW_imc/US_qc/(USRW_imc(-1)/US_qc(-1))-1)/(USRW_imc(-1)/US_qc(-1));

    //final goods investment bundle
	//(eq.70)
	EAA_qi =  (EAA_nui^(1/EAA_mui)*EAA_tti^(1-1/EAA_mui)+(1-EAA_nui)^(1/EAA_mui)*EAA_nti^(1-1/EAA_mui))^(EAA_mui/(EAA_mui-1));
	EAB_qi =  (EAB_nui^(1/EAB_mui)*EAB_tti^(1-1/EAB_mui)+(1-EAB_nui)^(1/EAB_mui)*EAB_nti^(1-1/EAB_mui))^(EAB_mui/(EAB_mui-1));
	RW_qi =  (RW_nui^(1/RW_mui)*RW_tti^(1-1/RW_mui)+(1-RW_nui)^(1/RW_mui)*RW_nti^(1-1/RW_mui))^(RW_mui/(RW_mui-1));
	US_qi =  (US_nui^(1/US_mui)*US_tti^(1-1/US_mui)+(1-US_nui)^(1/US_mui)*US_nti^(1-1/US_mui))^(US_mui/(US_mui-1));

    //(eq.71)
	EAA_nti =  EAA_qi*(1-EAA_nui)*(EAA_pnt/EAA_pi)^(-EAA_mui);
	EAB_nti =  EAB_qi*(1-EAB_nui)*(EAB_pnt/EAB_pi)^(-EAB_mui);
	RW_nti =  RW_qi*(1-RW_nui)*(RW_pnt/RW_pi)^(-RW_mui);
	US_nti =  US_qi*(1-US_nui)*(US_pnt/US_pi)^(-US_mui);

    //(eq.72)
	EAA_tti =  (EAA_nuti^(1/EAA_muti)*EAA_hti^(1-1/EAA_muti)+(1-EAA_nuti)^(1/EAA_muti)*EAA_imi^(1-1/EAA_muti))^(EAA_muti/(EAA_muti-1));
	EAB_tti =  (EAB_nuti^(1/EAB_muti)*EAB_hti^(1-1/EAB_muti)+(1-EAB_nuti)^(1/EAB_muti)*EAB_imi^(1-1/EAB_muti))^(EAB_muti/(EAB_muti-1));
	RW_tti =  (RW_nuti^(1/RW_muti)*RW_hti^(1-1/RW_muti)+(1-RW_nuti)^(1/RW_muti)*RW_imi^(1-1/RW_muti))^(RW_muti/(RW_muti-1));
	US_tti =  (US_nuti^(1/US_muti)*US_hti^(1-1/US_muti)+(1-US_nuti)^(1/US_muti)*US_imi^(1-1/US_muti))^(US_muti/(US_muti-1));

    //(eq.73)
	EAA_hti =  EAA_tti*EAA_nuti*(EAA_pht/EAA_ptti)^(-EAA_muti);
	EAB_hti =  EAB_tti*EAB_nuti*(EAB_pht/EAB_ptti)^(-EAB_muti);
	RW_hti =  RW_tti*RW_nuti*(RW_pht/RW_ptti)^(-RW_muti);
	US_hti =  US_tti*US_nuti*(US_pht/US_ptti)^(-US_muti);

    //(eq.74)
	EAB_imi =  (EABEAA_numi^(1/EAB_mumi)*(EABEAA_imi*(1-EABEAA_gammaimi))^(1-1/EAB_mumi)+EABRW_numi^(1/EAB_mumi)*((1-EABRW_gammaimi)*EABRW_imi)^(1-1/EAB_mumi)+(1-EABEAA_numi-EABRW_numi)^(1/EAB_mumi)*((1-EABUS_gammaimi)*EABUS_imi)^(1-1/EAB_mumi))^(EAB_mumi/(EAB_mumi-1));
	EAA_imi =  (EAAEAB_numi^(1/EAA_mumi)*((1-EAAEAB_gammaimi)*EAAEAB_imi)^(1-1/EAA_mumi)+EAAUS_numi^(1/EAA_mumi)*((1-EAAUS_gammaimi)*EAAUS_imi)^(1-1/EAA_mumi)+(1-EAAEAB_numi-EAAUS_numi)^(1/EAA_mumi)*((1-EAARW_gammaimi)*EAARW_imi)^(1-1/EAA_mumi))^(EAA_mumi/(EAA_mumi-1));
	RW_imi =  (RWEAB_numi^(1/RW_mumi)*(RWEAB_imi*(1-RWEAB_gammaimi))^(1-1/RW_mumi)+RWUS_numi^(1/RW_mumi)*((1-RWUS_gammaimi)*RWUS_imi)^(1-1/RW_mumi)+(1-RWEAB_numi-RWUS_numi)^(1/RW_mumi)*(RWEAA_imi*(1-RWEAA_gammaimi))^(1-1/RW_mumi))^(RW_mumi/(RW_mumi-1));
	US_imi =  (USEAA_numi^(1/US_mumi)*(USEAA_imi*(1-USEAA_gammaimi))^(1-1/US_mumi)+USRW_numi^(1/US_mumi)*(USRW_imi*(1-USRW_gammaimi))^(1-1/US_mumi)+(1-USEAA_numi-USRW_numi)^(1/US_mumi)*(USEAB_imi*(1-USEAB_gammaimi))^(1-1/US_mumi))^(US_mumi/(US_mumi-1));

	//(eq.75)
	EAARW_imi =  EAA_imi*(1-EAAEAB_numi-EAAUS_numi)*(EAARW_pim/(EAA_pimi*EAARW_gammaimidag))^(-EAA_mumi)/(1-EAARW_gammaimi);
	EAAUS_imi =  EAA_imi*EAAUS_numi*(EAAUS_pim/(EAA_pimi*EAAUS_gammaimidag))^(-EAA_mumi)/(1-EAAUS_gammaimi);
	EABEAA_imi =  EAB_imi*EABEAA_numi*(EABEAA_pim/(EAB_pimi*EABEAA_gammaimidag))^(-EAB_mumi)/(1-EABEAA_gammaimi);
	EABUS_imi =  EAB_imi*(1-EABEAA_numi-EABRW_numi)*(EABUS_pim/(EAB_pimi*EABUS_gammaimidag))^(-EAB_mumi)/(1-EABUS_gammaimi);
	RWEAA_imi =  RW_imi*(1-RWEAB_numi-RWUS_numi)*(RWEAA_pim/(RW_pimi*RWEAA_gammaimidag))^(-RW_mumi)/(1-RWEAA_gammaimi);
	RWEAB_imi =  RW_imi*RWEAB_numi*(RWEAB_pim/(RW_pimi*RWEAB_gammaimidag))^(-RW_mumi)/(1-RWEAB_gammaimi);
	USEAB_imi =  US_imi*(1-USEAA_numi-USRW_numi)*(USEAB_pim/(US_pimi*USEAB_gammaimidag))^(-US_mumi)/(1-USEAB_gammaimi);
    EAAEAB_imi = EAA_imi*EAAEAB_numi*(EAAEAB_pim/(EAA_pimi*EAAEAB_gammaimidag))^(-EAA_mumi)/(1-EAAEAB_gammaimi);
	EABRW_imi = EAB_imi*EABRW_numi*(EABRW_pim/(EAB_pimi*EABRW_gammaimidag))^(-EAB_mumi)/(1-EABRW_gammaimi);
    RWUS_imi = RW_imi*RWUS_numi*(RWUS_pim/(RW_pimi*RWUS_gammaimidag))^(-RW_mumi)/(1-RWUS_gammaimi);
    USEAA_imi = US_imi*USEAA_numi*(USEAA_pim/(US_pimi*USEAA_gammaimidag))^(-US_mumi)/(1-USEAA_gammaimi);
    USRW_imi =  US_imi*USRW_numi*(USRW_pim/(US_pimi*USRW_gammaimidag))^(-US_mumi)/(1-USRW_gammaimi);

    //(eq.76)
	EAAEAB_gammaimi =  EAA_gammaimi1/2*(EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi(-1))-1)^2;
	EAARW_gammaimi =  EAA_gammaimi1/2*(EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi(-1))-1)^2;
	EABEAA_gammaimi =  EAB_gammaimi1/2*(EABEAA_imi/EAB_qi/(EABEAA_imi(-1)/EAB_qi(-1))-1)^2;
	EABRW_gammaimi =  EAB_gammaimi1/2*(EABRW_imi/EAB_qi/(EABRW_imi(-1)/EAB_qi(-1))-1)^2;
	USRW_gammaimi =  US_gammaimi1/2*(USRW_imi/US_qi/(USRW_imi(-1)/US_qi(-1))-1)^2;
	USEAB_gammaimi =  US_gammaimi1/2*(USEAB_imi/US_qi/(USEAB_imi(-1)/US_qi(-1))-1)^2;
	USEAA_gammaimi =  US_gammaimi1/2*(USEAA_imi/US_qi/(USEAA_imi(-1)/US_qi(-1))-1)^2;
	RWUS_gammaimi =  RW_gammaimi1/2*(RWUS_imi/RW_qi/(RWUS_imi(-1)/RW_qi(-1))-1)^2;
	RWEAB_gammaimi =  RW_gammaimi1/2*(RWEAB_imi/RW_qi/(RWEAB_imi(-1)/RW_qi(-1))-1)^2;
	RWEAA_gammaimi =  RW_gammaimi1/2*(RWEAA_imi/RW_qi/(RWEAA_imi(-1)/RW_qi(-1))-1)^2;
	EABUS_gammaimi =  EAB_gammaimi1/2*(EABUS_imi/EAB_qi/(EABUS_imi(-1)/EAB_qi(-1))-1)^2;
	EAAUS_gammaimi =  EAA_gammaimi1/2*(EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi(-1))-1)^2;

	//(eq.77)
	EAAEAB_gammaimidag =  1-EAAEAB_gammaimi-EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi)-1);
	EAARW_gammaimidag =  1-EAARW_gammaimi-EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi)-1);
	EABEAA_gammaimidag =  1-EABEAA_gammaimi-EABEAA_imi/EAB_qi/(EABEAA_imi(-1)/EAB_qi(-1))*EAB_gammaimi1*(EABEAA_imi/EAB_qi/(EABEAA_imi(-1)/EAB_qi)-1);
	EABRW_gammaimidag =  1-EABRW_gammaimi-EABRW_imi/EAB_qi/(EABRW_imi(-1)/EAB_qi(-1))*EAB_gammaimi1*(EABRW_imi/EAB_qi/(EABRW_imi(-1)/EAB_qi)-1);
	EAAUS_gammaimidag =  1-EAAUS_gammaimi-EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi)-1);
	EABUS_gammaimidag =  1-EABUS_gammaimi-EABUS_imi/EAB_qi/(EABUS_imi(-1)/EAB_qi(-1))*EAB_gammaimi1*(EABUS_imi/EAB_qi/(EABUS_imi(-1)/EAB_qi)-1);
	RWEAA_gammaimidag =  1-RWEAA_gammaimi-RWEAA_imi/RW_qi/(RWEAA_imi(-1)/RW_qi(-1))*RW_gammaimi1*(RWEAA_imi/RW_qi/(RWEAA_imi(-1)/RW_qi)-1);
	RWEAB_gammaimidag =  1-RWEAB_gammaimi-RWEAB_imi/RW_qi/(RWEAB_imi(-1)/RW_qi(-1))*RW_gammaimi1*(RWEAB_imi/RW_qi/(RWEAB_imi(-1)/RW_qi)-1);
	RWUS_gammaimidag =  1-RWUS_gammaimi-RWUS_imi/RW_qi/(RWUS_imi(-1)/RW_qi(-1))*RW_gammaimi1*(RWUS_imi/RW_qi/(RWUS_imi(-1)/RW_qi)-1);
	USEAA_gammaimidag =  1-USEAA_gammaimi-USEAA_imi/US_qi/(USEAA_imi(-1)/US_qi(-1))*US_gammaimi1*(USEAA_imi/US_qi/(USEAA_imi(-1)/US_qi)-1);
	USEAB_gammaimidag =  1-USEAB_gammaimi-USEAB_imi/US_qi/(USEAB_imi(-1)/US_qi(-1))*US_gammaimi1*(USEAB_imi/US_qi/(USEAB_imi(-1)/US_qi)-1);
	USRW_gammaimidag =  1-USRW_gammaimi-USRW_imi/US_qi/(USRW_imi(-1)/US_qi(-1))*US_gammaimi1*(USRW_imi/US_qi/(USRW_imi(-1)/US_qi)-1);

    //consumption prices
    //(eq.78)
    // 1^(1-EAA_muc) = (EAA_nuc)*EAA_pttc^(1-EAA_muc)+(1-EAA_nuc)*EAA_pnt^(1-EAA_muc);
    // 1^(1-EAB_muc) = (EAB_nuc)*EAB_pttc^(1-EAB_muc)+(1-EAB_nuc)*EAB_pnt^(1-EAB_muc);
    // 1^(1-RW_muc) = (RW_nuc)*RW_pttc^(1-RW_muc)+(1-RW_nuc)*RW_pnt^(1-RW_muc);
    // 1^(1-US_muc) = (US_nuc)*US_pttc^(1-US_muc)+(1-US_nuc)*US_pnt^(1-US_muc);

    //(eq.79)
	EAA_pttc =  (EAA_nutc*EAA_pht^(1-EAA_mutc)+(1-EAA_nutc)*EAA_pimc^(1-EAA_mutc))^(1/(1-EAA_mutc));
	EAB_pttc =  (EAB_nutc*EAB_pht^(1-EAB_mutc)+(1-EAB_nutc)*EAB_pimc^(1-EAB_mutc))^(1/(1-EAB_mutc));
	RW_pttc =  (RW_nutc*RW_pht^(1-RW_mutc)+(1-RW_nutc)*RW_pimc^(1-RW_mutc))^(1/(1-RW_mutc));	
    US_pttc =  (US_nutc*US_pht^(1-US_mutc)+(1-US_nutc)*US_pimc^(1-US_mutc))^(1/(1-US_mutc));

    //(eq.80)
    EAA_pimc =  (EAAEAB_numc*(EAAEAB_pim/EAAEAB_gammaimcdag)^(1-EAA_mumc)+EAAUS_numc*(EAAUS_pim/EAAUS_gammaimcdag)^(1-EAA_mumc)+(1-EAAEAB_numc-EAAUS_numc)*(EAARW_pim/EAARW_gammaimcdag)^(1-EAA_mumc))^(1/(1-EAA_mumc));
	EAB_pimc =  (EABEAA_numc*(EABEAA_pim/EABEAA_gammaimcdag)^(1-EAB_mumc)+EABRW_numc*(EABRW_pim/EABRW_gammaimcdag)^(1-EAB_mumc)+(1-EABEAA_numc-EABRW_numc)*(EABUS_pim/EABUS_gammaimcdag)^(1-EAB_mumc))^(1/(1-EAB_mumc));
	RW_pimc =  (RWEAB_numc*(RWEAB_pim/RWEAB_gammaimcdag)^(1-RW_mumc)+RWUS_numc*(RWUS_pim/RWUS_gammaimcdag)^(1-RW_mumc)+(1-RWEAB_numc-RWUS_numc)*(RWEAA_pim/RWEAA_gammaimcdag)^(1-RW_mumc))^(1/(1-RW_mumc));
	US_pimc =  (USEAA_numc*(USEAA_pim/USEAA_gammaimcdag)^(1-US_mumc)+USRW_numc*(USRW_pim/USRW_gammaimcdag)^(1-US_mumc)+(1-USEAA_numc-USRW_numc)*(USEAB_pim/USEAB_gammaimcdag)^(1-US_mumc))^(1/(1-US_mumc));

    //(eq.81)
    // EAA_pi = ((EAA_nui)*EAA_ptti^(1-EAA_mui)+(1-EAA_nui)*(EAA_pnt)^(1-EAA_mui))^(1/(1-EAA_mui));
    // EAB_pi = ((EAB_nui)*EAB_ptti^(1-EAB_mui)+(1-EAB_nui)*(EAB_pnt)^(1-EAB_mui))^(1/(1-EAB_mui));
    // RW_pi = ((RW_nui)*RW_ptti^(1-RW_mui)+(1-RW_nui)*(RW_pnt)^(1-RW_mui))^(1/(1-RW_mui));
    // US_pi = ((US_nui)*US_ptti^(1-US_mui)+(1-US_nui)*(US_pnt)^(1-US_mui))^(1/(1-US_mui));

    //(eq.82)
	EAA_ptti =  (EAA_nuti*EAA_pht^(1-EAA_muti)+(1-EAA_nuti)*EAA_pimi^(1-EAA_muti))^(1/(EAA_muti-1));
	EAB_ptti =  (EAB_nuti*EAB_pht^(1-EAB_muti)+(1-EAB_nuti)*EAB_pimi^(1-EAB_muti))^(1/(EAB_muti-1));
	RW_ptti =  (RW_nuti*RW_pht^(1-RW_muti)+(1-RW_nuti)*RW_pimi^(1-RW_muti))^(1/(RW_muti-1));
	US_ptti =  (US_nuti*US_pht^(1-US_muti)+(1-US_nuti)*US_pimi^(1-US_muti))^(1/(US_muti-1));

    //(eq.83)
	EAA_pimi =  (EAAEAB_numi*(EAAEAB_pim/EAAEAB_gammaimidag)^(1-EAA_mumi)+EAAUS_numi*(EAAUS_pim/EAAUS_gammaimidag)^(1-EAA_mumi)+(1-EAAEAB_numi-EAAUS_numi)*(EAARW_pim/EAARW_gammaimidag)^(1-EAA_mumi))^(1/(1-EAA_mumi));
	EAB_pimi =  (EABEAA_numi*(EABEAA_pim/EABEAA_gammaimidag)^(1-EAB_mumi)+EABRW_numi*(EABRW_pim/EABRW_gammaimidag)^(1-EAB_mumi)+(1-EABEAA_numi-EABRW_numi)*(EABUS_pim/EABUS_gammaimidag)^(1-EAB_mumi))^(1/(1-EAB_mumi));
	US_pimi =  (USEAA_numi*(USEAA_pim/USEAA_gammaimidag)^(1-US_mumi)+USRW_numi*(USRW_pim/USRW_gammaimidag)^(1-US_mumi)+(1-USEAA_numi-USRW_numi)*(USEAB_pim/USEAB_gammaimidag)^(1-US_mumi))^(1/(1-US_mumi));
	RW_pimi =  (RWEAB_numi*(RWEAB_pim/RWEAB_gammaimidag)^(1-RW_mumi)+RWUS_numi*(RWUS_pim/RWUS_gammaimidag)^(1-RW_mumi)+(1-RWEAB_numi-RWUS_numi)*(RWEAA_pim/RWEAA_gammaimidag)^(1-RW_mumi))^(1/(1-RW_mumi));

    //monetary authority
    //(eq.84)
    EAA_r^4-1 = EA_phirr*(EAA_r(-1)^4-1)+(1-EA_phirr)*(EAA_rrstar^4*EAA_pi4target-1+EA_phirpi*(EA_pic4-EAA_pi4target))+EA_phirgy*(EA_ygrowth-1)+EA_epsr;
    EAB_r^4-1 = EA_phirr*(EAB_r(-1)^4-1)+(1-EA_phirr)*(EAB_rrstar^4*EAB_pi4target-1+EA_phirpi*(EA_pic4-EAB_pi4target))+EA_phirgy*(EA_ygrowth-1)+EA_epsr;
    //(eq.85)
    US_pic4 =  US_pi4target+(1+(US_r^4-1-US_phirr*(US_r(-1)^4-1)-US_phirgy*(US_ygrowth-1)-US_epsr)/(1-US_phirr)-US_pi4target*US_rrstar^4)/US_phirpi;
	RW_pic4 =  RW_pi4target+(1+(RW_r^4-1-RW_phirr*(RW_r(-1)^4-1)-RW_phirgy*(RW_ygrowth-1)-RW_epsr)/(1-RW_phirr)-RW_pi4target*RW_rrstar^4)/RW_phirpi;
    
    //(eq.86)
    EAA_pic =  EAA_pic4/(EAA_pic(-1)*EAA_pic(-2)*EAA_pic(-3));
    EAB_pic =  EAB_pic4/(EAB_pic(-1)*EAB_pic(-2)*EAB_pic(-3));
	RW_pic =  RW_pic4/(RW_pic(-1)*RW_pic(-2)*RW_pic(-3));
	US_pic =  US_pic4/(US_pic(-1)*US_pic(-2)*US_pic(-3));

    //fiscal authority
    //(eq.87)
    EAA_b =  (-(1/(EAA_r(-1)*(1-EAA_gammab(-1)))^(-1)))*((-EAA_pnt(-1))*EAA_g(-1)-EAA_tr(-1)-EAA_b(-1)*EAA_pic(-1)^(-1)-EAA_pic(-1)^(-1)*EAA_m(-2)+EAA_tauc(-1)*EAA_c(-1)+(EAA_taun(-1)+EAA_tauwh(-1))*(EAA_wi(-1)*EAA_ndi(-1)+EAA_wj(-1)*EAA_ndj(-1))+EAA_w(-1)*EAA_tauwf(-1)*EAA_nd(-1)+EAA_tauk(-1)*(EAA_rk(-1)*EAA_u(-1)-(EAA_delta+EAA_gammau(-1))*EAA_pi(-1))*EAA_k(-1)+EAA_taud(-1)*EAA_d(-1)+EAA_t(-1)+EAA_m(-1));
	EAB_b =  (-(1/(EAB_r(-1)*(1-EAB_gammab(-1)))^(-1)))*((-EAB_pnt(-1))*EAB_g(-1)-EAB_tr(-1)-EAB_b(-1)*EAB_pic(-1)^(-1)-EAB_pic(-1)^(-1)*EAB_m(-2)+EAB_tauc(-1)*EAB_c(-1)+(EAB_taun(-1)+EAB_tauwh(-1))*(EAB_wi(-1)*EAB_ndi(-1)+EAB_wj(-1)*EAB_ndj(-1))+EAB_w(-1)*EAB_tauwf(-1)*EAB_nd(-1)+EAB_tauk(-1)*(EAB_rk(-1)*EAB_u(-1)-(EAB_delta+EAB_gammau(-1))*EAB_pi(-1))*EAB_k(-1)+EAB_taud(-1)*EAB_d(-1)+EAB_t(-1)+EAB_m(-1));
	RW_b =  (-(1/RW_r(-1)^(-1)))*((-RW_pnt(-1))*RW_g(-1)-RW_tr(-1)-RW_b(-1)*RW_pic(-1)^(-1)-RW_pic(-1)^(-1)*RW_m(-2)+RW_tauc(-1)*RW_c(-1)+(RW_taun(-1)+RW_tauwh(-1))*(RW_wi(-1)*RW_ndi(-1)+RW_wj(-1)*RW_ndj(-1))+RW_w(-1)*RW_tauwf(-1)*RW_nd(-1)+RW_tauk(-1)*(RW_rk(-1)*RW_u(-1)-(RW_delta+RW_gammau(-1))*RW_pi(-1))*RW_k(-1)+RW_taud(-1)*RW_d(-1)+RW_t(-1)+RW_m(-1));
	US_b =  (-(1/US_r(-1)^(-1)))*((-US_pnt(-1))*US_g(-1)-US_tr(-1)-US_b(-1)*US_pic(-1)^(-1)-US_pic(-1)^(-1)*US_m(-2)+US_tauc(-1)*US_c(-1)+(US_taun(-1)+US_tauwh(-1))*(US_wi(-1)*US_ndi(-1)+US_wj(-1)*US_ndj(-1))+US_w(-1)*US_tauwf(-1)*US_nd(-1)+US_tauk(-1)*(US_rk(-1)*US_u(-1)-(US_delta+US_gammau(-1))*US_pi(-1))*US_k(-1)+US_taud(-1)*US_d(-1)+US_t(-1)+US_m(-1));

    //(eq.88)
	EAA_g =  EAA_gy*EAA_pybar*EAA_ybar/EAA_pnt;
	EAB_g =  EAB_gy*EAB_pybar*EAB_ybar/EAB_pnt;
	RW_g =  RW_gy*RW_pybar*RW_ybar/RW_pnt;
	US_g =  US_gy*US_pybar*US_ybar/US_pnt;
    
    //(eq.89)
	EAA_tr =  EAA_ybar*EAA_pybar*EAA_try;
	EAB_tr =  EAB_ybar*EAB_pybar*EAB_try;
	RW_tr =  RW_ybar*RW_pybar*RW_try;
	US_tr =  US_ybar*US_pybar*US_try;
    
    //(eq.90) //different from the paper
	EAA_ty =  EAA_t/(EAA_pybar*EAA_ybar);
	EAB_ty =  EAB_t/(EAB_pybar*EAB_ybar);
	RW_ty =  RW_t/(RW_pybar*RW_ybar);
	US_ty =  US_t/(US_pybar*US_ybar);

    //(eq.91) //different from the paper
	EAA_t =  EAA_pybar*EAA_ybar*EAA_phitb*(EAA_b/(EAA_pybar*EAA_ybar)-EAA_bytarget);
	EAB_t =  EAB_pybar*EAB_ybar*EAB_phitb*(EAB_b/(EAB_pybar*EAB_ybar)-EAB_bytarget);
	RW_t =  RW_pybar*RW_ybar*RW_phitb*(RW_b/(RW_pybar*RW_ybar)-RW_bytarget);
	US_t =  US_pybar*US_ybar*US_phitb*(US_b/(US_pybar*US_ybar)-US_bytarget);

    //aggregate variables

    //(eq.92) 
    EAA_ci =  (EAA_c-EAA_cj*EAA_omega)/(1-EAA_omega);
	EAB_ci =  (EAB_c-EAB_cj*EAB_omega)/(1-EAB_omega);
	RW_ci =  (RW_c-RW_cj*RW_omega)/(1-RW_omega);
	US_ci =  (US_c-US_cj*US_omega)/(1-US_omega);

    //(eq.93)
	EAA_m =  EAA_mi*(1-EAA_omega)+EAA_mj*EAA_omega;
	EAB_m =  EAB_mi*(1-EAB_omega)+EAB_mj*EAB_omega;
	RW_m =  RW_mi*(1-RW_omega)+RW_mj*RW_omega;
	US_m =  US_mi*(1-US_omega)+US_mj*US_omega;

    //(eq.94)
	EAA_k =  EAA_ki*(1-EAA_omega);
	EAB_k =  EAB_ki*(1-EAB_omega);
	RW_k =  RW_ki*(1-RW_omega);
	US_k =  US_ki*(1-US_omega);

    //(eq.95)
	US_ii =  US_i/(1-US_omega);
	EAA_ii =  EAA_i/(1-EAA_omega);
	EAB_ii =  EAB_i/(1-EAB_omega);
	RW_ii =  RW_i/(1-RW_omega);

    //(eq.96)
	EAA_trj =  EAA_tr*1/EAA_omega-EAA_tri*(1-EAA_omega)/EAA_omega;
	EAB_trj =  EAB_tr*1/EAB_omega-EAB_tri*(1-EAB_omega)/EAB_omega;
	RW_trj =  RW_tr*1/RW_omega-RW_tri*(1-RW_omega)/RW_omega;
	US_trj =  US_tr*1/US_omega-US_tri*(1-US_omega)/US_omega;

    //(eq.97)
	EAA_tj =  EAA_t*1/EAA_omega-EAA_ti*(1-EAA_omega)/EAA_omega;
	EAB_tj =  EAB_t*1/EAB_omega-EAB_ti*(1-EAB_omega)/EAB_omega;
	RW_tj =  RW_t*1/RW_omega-RW_ti*(1-RW_omega)/RW_omega;
	US_tj =  US_t*1/US_omega-US_ti*(1-US_omega)/US_omega;

    //(eq.98)
	EAA_gammav =  EAA_gammavi*EAA_ci*(1-EAA_omega)+EAA_gammavj*EAA_cj*EAA_omega;
    EAB_gammav =  EAB_gammavi*EAB_ci*(1-EAB_omega)+EAB_gammavj*EAB_cj*EAB_omega;
	RW_gammav =  RW_gammavi*RW_ci*(1-RW_omega)+RW_gammavj*RW_cj*RW_omega;
	US_gammav =  US_gammavi*US_ci*(1-US_omega)+US_gammavj*US_cj*US_omega;

    //(eq.99)
	EAA_nd =  EAA_ndt+EAA_ndn;
	EAB_nd =  EAB_ndt+EAB_ndn;
	RW_nd =  RW_ndt+RW_ndn;
	US_nd =  US_ndt+US_ndn;
    
    //(eq.100) missing

    //(eq.101)
	EAA_d =  EAA_py*EAA_y-EAA_rk*EAA_kd-(1+EAA_tauwf)*EAA_w*EAA_nd;
	EAB_d =  EAB_py*EAB_y-EAB_rk*EAB_kd-(1+EAB_tauwf)*EAB_w*EAB_nd;
	RW_d =  RW_py*RW_y-RW_rk*RW_kd-(1+RW_tauwf)*RW_w*RW_nd;
	US_d =  US_py*US_y-US_rk*US_kd-(1+US_tauwf)*US_w*US_nd;

    //(eq.102)
	EAA_kd =  EAA_kdt+EAA_kdn;
	EAB_kd =  EAB_kdt+EAB_kdn;
	RW_kd =  RW_kdt+RW_kdn;
	US_kd =  US_kdt+US_kdn;
    
    //(eq.103) missing

    //(eq.104) missing

    //market clearing conditions
    //(eq.105)
	EAA_c =  EAA_qc-EAA_gammav;
	EAB_c =  EAB_qc-EAB_gammav;
	RW_c =  RW_qc-RW_gammav;
	US_c =  US_qc-US_gammav;

    //(eq.106)
	EAA_i =  EAA_qi-EAA_gammau*EAA_k;
	EAB_i =  EAB_qi-EAB_gammau*EAB_k;
	RW_i =  RW_qi-RW_gammau*RW_k;
	US_i =  US_qi-US_gammau*US_k;

    //(eq.107)
	EAA_ysn =  EAA_nt*EAA_snt;
	EAB_ysn =  EAB_nt*EAB_snt;
	RW_ysn =  RW_nt*RW_snt;
	US_ysn =  US_nt*US_snt;

    //(eq.108)
	EAA_nt =  EAA_g+EAA_ntc+EAA_nti;
	EAB_nt =  EAB_g+EAB_ntc+EAB_nti;
	RW_nt =  RW_g+RW_ntc+RW_nti;
	US_nt =  US_g+US_ntc+US_nti;

    //(eq.109) 
	EAA_snt =  (1-EAA_xin)*(EAA_pnttilde/EAA_pnt)^(-EAA_thetan)+EAA_xin*(EAA_pint/(EAA_pi4target^(0.25*(1-EAA_chin))*EAA_pint(-1)^EAA_chin))^EAA_thetan*EAA_snt(-1);
    EAB_snt =  (1-EAB_xin)*(EAB_pnttilde/EAB_pnt)^(-EAB_thetan)+EAB_xin*(EAB_pint/(EAB_pi4target^(0.25*(1-EAB_chin))*EAB_pint(-1)^EAB_chin))^EAB_thetan*EAB_snt(-1);
	RW_snt =  (1-RW_xin)*(RW_pnttilde/RW_pnt)^(-RW_thetan)+RW_xin*(RW_pint/(RW_pi4target^(0.25*(1-RW_chin))*RW_pint(-1)^RW_chin))^RW_thetan*RW_snt(-1);
	US_snt =  (1-US_xin)*(US_pnttilde/US_pnt)^(-US_thetan)+US_xin*(US_pint/(US_pi4target^(0.25*(1-US_chin))*US_pint(-1)^US_chin))^US_thetan*US_snt(-1);
    
    //(eq.110)
	EAA_yst =  EAA_ht*EAA_sh+EABEAA_im*EAB_size*EAAEAB_sx/EAA_size+RWEAA_im*RW_size*EAARW_sx/EAA_size+USEAA_im*US_size*EAAUS_sx/EAA_size;
	EAB_yst =  EAB_ht*EAB_sh+EAAEAB_im*EAA_size*EABEAA_sx/EAB_size+RWEAB_im*RW_size*EABRW_sx/EAB_size+USEAB_im*US_size*EABUS_sx/EAB_size;
	RW_yst =  RW_ht*RW_sh+EAARW_im*EAA_size*RWEAA_sx/RW_size+EABRW_im*EAB_size*RWEAB_sx/RW_size+USRW_im*US_size*RWUS_sx/RW_size;
	US_yst =  US_ht*US_sh+EAAUS_im*EAA_size*USEAA_sx/US_size+EABUS_im*EAB_size*USEAB_sx/US_size+RWUS_im*RW_size*USRW_sx/US_size;

    //(eq.111)
	EAA_ht =  EAA_htc+EAA_hti;
	EAB_ht =  EAB_htc+EAB_hti;
	RW_ht =  RW_htc+RW_hti;
	US_ht =  US_htc+US_hti;

	//(eq.112)	
	US_sh =  (1-US_xih)*(US_phttilde/US_pht)^(-US_thetat)+US_xih*(US_piht/(US_pi4target^(0.25*(1-US_chih))*US_piht(-1)^US_chih))^US_thetat*US_sh(-1);
	RW_sh =  (1-RW_xih)*(RW_phttilde/RW_pht)^(-RW_thetat)+RW_xih*(RW_piht/(RW_pi4target^(0.25*(1-RW_chih))*RW_piht(-1)^RW_chih))^RW_thetat*RW_sh(-1);
	EAB_sh =  (1-EAB_xih)*(EAB_phttilde/EAB_pht)^(-EAB_thetat)+EAB_xih*(EAB_piht/(EAB_pi4target^(0.25*(1-EAB_chih))*EAB_piht(-1)^EAB_chih))^EAB_thetat*EAB_sh(-1);
	EAA_sh =  (1-EAA_xih)*(EAA_phttilde/EAA_pht)^(-EAA_thetat)+EAA_xih*(EAA_piht/(EAA_pi4target^(0.25*(1-EAA_chih))*EAA_piht(-1)^EAA_chih))^EAA_thetat*EAA_sh(-1);

    //(eq.113)
	EAAEAB_sx =  (1-EAA_xix)*(EABEAA_pimtilde/EABEAA_pim)^(-EAA_thetat)+EAA_xix*(EABEAA_piim/(EAA_pi4target^(0.25*(1-EAA_chih))*EABEAA_piim(-1)^EAA_chix))^EAA_thetat*EAAEAB_sx(-1);
	EAARW_sx =  (1-EAA_xix)*(RWEAA_pimtilde/RWEAA_pim)^(-EAA_thetat)+EAA_xix*(RWEAA_piim/(EAA_pi4target^(0.25*(1-EAA_chih))*RWEAA_piim(-1)^EAA_chix))^EAA_thetat*EAARW_sx(-1);
	EAAUS_sx =  (1-EAA_xix)*(USEAA_pimtilde/USEAA_pim)^(-EAA_thetat)+EAA_xix*(USEAA_piim/(EAA_pi4target^(0.25*(1-EAA_chih))*USEAA_piim(-1)^EAA_chix))^EAA_thetat*EAAUS_sx(-1);
	EABEAA_sx =  (1-EAB_xix)*(EAAEAB_pimtilde/EAAEAB_pim)^(-EAB_thetat)+EAB_xix*(EAAEAB_piim/(EAB_pi4target^(0.25*(1-EAB_chih))*EAAEAB_piim(-1)^EAB_chix))^EAB_thetat*EABEAA_sx(-1);
	EABRW_sx =  (1-EAB_xix)*(RWEAB_pimtilde/RWEAB_pim)^(-EAB_thetat)+EAB_xix*(RWEAB_piim/(EAB_pi4target^(0.25*(1-EAB_chih))*RWEAB_piim(-1)^EAB_chix))^EAB_thetat*EABRW_sx(-1);
	EABUS_sx =  (1-EAB_xix)*(USEAB_pimtilde/USEAB_pim)^(-EAB_thetat)+EAB_xix*(USEAB_piim/(EAB_pi4target^(0.25*(1-EAB_chih))*USEAB_piim(-1)^EAB_chix))^EAB_thetat*EABUS_sx(-1);
	RWEAA_sx =  (1-RW_xix)*(EAARW_pimtilde/EAARW_pim)^(-RW_thetat)+RW_xix*(EAARW_piim/(RW_pi4target^(0.25*(1-RW_chih))*EAARW_piim(-1)^RW_chix))^RW_thetat*RWEAA_sx(-1);
	RWEAB_sx =  (1-RW_xix)*(EABRW_pimtilde/EABRW_pim)^(-RW_thetat)+RW_xix*(EABRW_piim/(RW_pi4target^(0.25*(1-RW_chih))*EABRW_piim(-1)^RW_chix))^RW_thetat*RWEAB_sx(-1);
	RWUS_sx =  (1-RW_xix)*(USRW_pimtilde/USRW_pim)^(-RW_thetat)+RW_xix*(USRW_piim/(RW_pi4target^(0.25*(1-RW_chih))*USRW_piim(-1)^RW_chix))^RW_thetat*RWUS_sx(-1);
	USEAA_sx =  (1-US_xix)*(EAAUS_pimtilde/EAAUS_pim)^(-US_thetat)+US_xix*(EAAUS_piim/(US_pi4target^(0.25*(1-US_chih))*EAAUS_piim(-1)^US_chix))^US_thetat*USEAA_sx(-1);
	USEAB_sx =  (1-US_xix)*(EABUS_pimtilde/EABUS_pim)^(-US_thetat)+US_xix*(EABUS_piim/(US_pi4target^(0.25*(1-US_chih))*EABUS_piim(-1)^US_chix))^US_thetat*USEAB_sx(-1);
	USRW_sx =  (1-US_xix)*(RWUS_pimtilde/RWUS_pim)^(-US_thetat)+US_xix*(RWUS_piim/(US_pi4target^(0.25*(1-US_chih))*RWUS_piim(-1)^US_chix))^US_thetat*USRW_sx(-1);

    //labour
    //(eq.114)
	EAA_ni =  EAA_ndi*EAA_si;
	EAB_ni =  EAB_ndi*EAB_si;
	RW_ni =  RW_ndi*RW_si;
	US_ni =  US_ndi*US_si;

    //(eq.115)
	EAA_nj =  EAA_ndj*EAA_sj;
	EAB_nj =  EAB_ndj*EAB_sj;
    RW_nj =  RW_ndj*RW_sj;
	US_nj =  US_ndj*US_sj;

    //(eq.116)
	EAA_si =  (1-EAA_xii)*(EAA_witilde/EAA_wi)^(-EAA_etai)+EAA_xii*(EAA_wi(-1)/EAA_wi)^(-EAA_etai)*(EAA_pic/(EAA_pi4target^(0.25*(1-EAA_chii))*EAA_pic(-1)^EAA_chii))^EAA_etai*EAA_si(-1);
    EAB_si =  (1-EAB_xii)*(EAB_witilde/EAB_wi)^(-EAB_etai)+EAB_xii*(EAB_wi(-1)/EAB_wi)^(-EAB_etai)*(EAB_pic/(EAB_pi4target^(0.25*(1-EAB_chii))*EAB_pic(-1)^EAB_chii))^EAB_etai*EAB_si(-1);
	RW_si =  (1-RW_xii)*(RW_witilde/RW_wi)^(-RW_etai)+RW_xii*(RW_wi(-1)/RW_wi)^(-RW_etai)*(RW_pic/(RW_pi4target^(0.25*(1-RW_chii))*RW_pic(-1)^RW_chii))^RW_etai*RW_si(-1);
	US_si =  (1-US_xii)*(US_witilde/US_wi)^(-US_etai)+US_xii*(US_wi(-1)/US_wi)^(-US_etai)*(US_pic/(US_pi4target^(0.25*(1-US_chii))*US_pic(-1)^US_chii))^US_etai*US_si(-1);

	//(eq.117)
	EAA_sj =  (1-EAA_xij)*(EAA_wjtilde/EAA_wj)^(-EAA_etaj)+EAA_xij*(EAA_wj(-1)/EAA_wj)^(-EAA_etaj)*(EAA_pic/(EAA_pi4target^(0.25*(1-EAA_chij))*EAA_pic(-1)^EAA_chij))^EAA_etaj*EAA_sj(-1);
	EAB_sj =  (1-EAB_xij)*(EAB_wjtilde/EAB_wj)^(-EAB_etaj)+EAB_xij*(EAB_wj(-1)/EAB_wj)^(-EAB_etaj)*(EAB_pic/(EAB_pi4target^(0.25*(1-EAB_chij))*EAB_pic(-1)^EAB_chij))^EAB_etaj*EAB_sj(-1);
	RW_sj =  (1-RW_xij)*(RW_wjtilde/RW_wj)^(-RW_etaj)+RW_xij*(RW_wj(-1)/RW_wj)^(-RW_etaj)*(RW_pic/(RW_pi4target^(0.25*(1-RW_chij))*RW_pic(-1)^RW_chij))^RW_etaj*RW_sj(-1);
	US_sj =  (1-US_xij)*(US_wjtilde/US_wj)^(-US_etaj)+US_xij*(US_wj(-1)/US_wj)^(-US_etaj)*(US_pic/(US_pi4target^(0.25*(1-US_chij))*US_pic(-1)^US_chij))^US_etaj*US_sj(-1);

    //capital services
	//(eq.118)
	EAA_u =  EAA_kd/EAA_k;
	EAB_u =  EAB_kd/EAB_k;
	RW_u =  RW_kd/RW_k;
	US_u =  US_kd/US_k;

	//(eq.119) missing

    //resource constraint, trade balance and net foreign asset position
	//(eq.120)
    EAA_py =  1/EAA_y*(USEAA_im*USEAA_pim*EAAUS_rer*US_size/EAA_size+RWEAA_im*RWEAA_pim*EAARW_rer*RW_size/EAA_size+EABEAA_im*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size+EAA_qc+EAA_pi*EAA_qi+EAA_pnt*EAA_g-EAAEAB_pim*(1-EAAEAB_gammaimc)*EAAEAB_imc/EAAEAB_gammaimcdag-EAAEAB_pim*(1-EAAEAB_gammaimi)*EAAEAB_imi/EAAEAB_gammaimidag-EAARW_pim*(1-EAARW_gammaimc)*EAARW_imc/EAARW_gammaimcdag-EAARW_pim*(1-EAARW_gammaimi)*EAARW_imi/EAARW_gammaimidag-EAAUS_pim*(1-EAAUS_gammaimc)*EAAUS_imc/EAAUS_gammaimcdag-EAAUS_pim*(1-EAAUS_gammaimi)*EAAUS_imi/EAAUS_gammaimidag);
	EAB_py =  1/EAB_y*(USEAB_im*US_size*USEAB_pim*EABUS_rer/EAB_size+RWEAB_im*RW_size*RWEAB_pim*EABRW_rer/EAB_size+EAAEAB_im*EAA_size*EAAEAB_pim*EABEAA_rer/EAB_size+EAB_qc+EAB_pi*EAB_qi+EAB_pnt*EAB_g-EABEAA_pim*EABEAA_imc*(1-EABEAA_gammaimc)/EABEAA_gammaimcdag-EABEAA_pim*EABEAA_imi*(1-EABEAA_gammaimi)/EABEAA_gammaimidag-EABRW_pim*(1-EABRW_gammaimc)*EABRW_imc/EABRW_gammaimcdag-EABRW_pim*(1-EABRW_gammaimi)*EABRW_imi/EABRW_gammaimidag-EABUS_pim*(1-EABUS_gammaimc)*EABUS_imc/EABUS_gammaimcdag-EABUS_pim*(1-EABUS_gammaimi)*EABUS_imi/EABUS_gammaimidag);
    RW_py =  1/RW_y*(USRW_im*US_size*USRW_pim*RWUS_rer/RW_size+EABRW_im*EAB_size*EABRW_pim*RWEAB_rer/RW_size+EAARW_im*EAA_size*EAARW_pim*RWEAA_rer/RW_size+RW_qc+RW_pi*RW_qi+RW_pnt*RW_g-RWEAA_pim*RWEAA_imc*(1-RWEAA_gammaimc)/RWEAA_gammaimcdag-RWEAA_pim*RWEAA_imi*(1-RWEAA_gammaimi)/RWEAA_gammaimidag-RWEAB_pim*RWEAB_imc*(1-RWEAB_gammaimc)/RWEAB_gammaimcdag-RWEAB_pim*RWEAB_imi*(1-RWEAB_gammaimi)/RWEAB_gammaimidag-RWUS_pim*(1-RWUS_gammaimc)*RWUS_imc/RWUS_gammaimcdag-RWUS_pim*(1-RWUS_gammaimi)*RWUS_imi/RWUS_gammaimidag);
    US_py =  1/US_y*(RWUS_im*RW_size*RWUS_pim*USRW_rer/US_size+EABUS_im*EAB_size*EABUS_pim*USEAB_rer/US_size+EAAUS_im*EAA_size*EAAUS_pim*USEAA_rer/US_size+US_qc+US_pi*US_qi+US_pnt*US_g-USEAA_pim*USEAA_imc*(1-USEAA_gammaimc)/USEAA_gammaimcdag-USEAA_pim*USEAA_imi*(1-USEAA_gammaimi)/USEAA_gammaimidag-USEAB_pim*USEAB_imc*(1-USEAB_gammaimc)/USEAB_gammaimcdag-USEAB_pim*USEAB_imi*(1-USEAB_gammaimi)/USEAB_gammaimidag-USRW_pim*USRW_imc*(1-USRW_gammaimc)/USRW_gammaimcdag-USRW_pim*USRW_imi*(1-USRW_gammaimi)/USRW_gammaimidag);
    
    //(eq.121) different from the paper 
	USRW_im =  USRW_imc+USRW_imi;
	EAAEAB_im =  EAAEAB_imc+EAAEAB_imi;
	EAARW_im =  EAARW_imc+EAARW_imi;
	EAAUS_im =  EAAUS_imc+EAAUS_imi;
	EABEAA_im =  EABEAA_imc+EABEAA_imi;
	EABRW_im =  EABRW_imc+EABRW_imi;
	EABUS_im =  EABUS_imc+EABUS_imi;
	RWEAA_im =  RWEAA_imc+RWEAA_imi;
	RWEAB_im =  RWEAB_imc+RWEAB_imi;
	RWUS_im =  RWUS_imc+RWUS_imi;
	USEAB_im =  USEAB_imc+USEAB_imi;
	USEAA_im =  USEAA_imc+USEAA_imi;

    //(eq.122) //different from the paper
	EAA_ex =  US_size/EAA_size*USEAA_im+EAB_size/EAA_size*EABEAA_im+RW_size/EAA_size*RWEAA_im;
	EAB_ex =  USEAB_im*US_size/EAB_size+EAAEAB_im*EAA_size/EAB_size+RWEAB_im*RW_size/EAB_size;
	RW_ex =  USRW_im*US_size/RW_size+EAARW_im*EAA_size/RW_size+EABRW_im*EAB_size/RW_size;
	US_ex =  RWUS_im*RW_size/US_size+EAAUS_im*EAA_size/US_size+EABUS_im*EAB_size/US_size;

    //(eq.123)
	EAA_y =  EAA_yst+EAA_ysn;
	EAB_y =  EAB_yst+EAB_ysn;
	RW_y =  RW_yst+RW_ysn;
	US_y =  US_yst+US_ysn;

    //(eq.124)
	EAA_tb =  USEAA_im*USEAA_pim*EAAUS_rer*US_size/EAA_size+RWEAA_im*RWEAA_pim*EAARW_rer*RW_size/EAA_size+EABEAA_im*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size-EAAEAB_pim*EAAEAB_im-EAARW_pim*EAARW_im-EAAUS_pim*EAAUS_im;
	EAB_tb =  USEAB_im*US_size*USEAB_pim*EABUS_rer/EAB_size+RWEAB_im*RW_size*RWEAB_pim*EABRW_rer/EAB_size+EAAEAB_im*EAA_size*EAAEAB_pim*EABEAA_rer/EAB_size-EABEAA_pim*EABEAA_im-EABRW_im*EABRW_pim-EABUS_im*EABUS_pim;
	RW_tb =  USRW_im*US_size*USRW_pim*RWUS_rer/RW_size+EABRW_im*EAB_size*EABRW_pim*RWEAB_rer/RW_size+EAARW_im*EAA_size*EAARW_pim*RWEAA_rer/RW_size-RWEAA_pim*RWEAA_im-RWEAB_im*RWEAB_pim-RWUS_im*RWUS_pim;
	US_tb =  RWUS_im*RW_size*RWUS_pim*USRW_rer/US_size+EABUS_im*EAB_size*EABUS_pim*USEAB_rer/US_size+EAAUS_im*EAA_size*EAAUS_pim*USEAA_rer/US_size-USEAA_pim*USEAA_im-USEAB_im*USEAB_pim-USRW_im*USRW_pim;
    
    //(eq.125)
	EAA_bf =  US_r(-1)*((-EAA_bh)/EAB_r(-1)*EAAEAB_rer(-1)/EAA_rer(-1)+EAA_bh(-1)*EAAEAB_rer(-2)/EAA_rer(-2)+EAA_bf(-1)+EAA_tb(-1)/EAA_rer(-1));
	EAB_bf =  US_r(-1)*((-EAB_bh)/EAA_r(-1)/EAB_rer(-1)+EAB_bh(-1)/EAB_rer(-2)+EAB_bf(-1)+EAB_tb(-1)/EAB_rer(-1));
	RW_bf =  US_r(-1)*(RW_bf(-1)+RW_tb(-1)/RW_rer(-1));
	US_bf =  EAA_bf*(-EAA_size)/US_size-EAB_size*EAB_bf/US_size-RW_size*RW_bf/US_size;

    //relative prices
    //bilateral terms of trade (eq.126)
	EAAEAB_tot =  EAAEAB_pim/(EABEAA_pim*EAAEAB_rer);
	EAARW_tot =  EAARW_pim/(RWEAA_pim*EAARW_rer);
	EAAUS_tot =  EAAUS_pim/(USEAA_pim*EAAUS_rer);
	EABEAA_tot =  EABEAA_pim/(EAAEAB_pim*EABEAA_rer);
	EABRW_tot =  EABRW_pim/(RWEAB_pim*EABRW_rer);
	EABUS_tot =  EABUS_pim/(USEAB_pim*EABUS_rer);
	RWEAA_tot =  RWEAA_pim/(EAARW_pim*RWEAA_rer);
	RWEAB_tot =  RWEAB_pim/(EABRW_pim*RWEAB_rer);
	RWUS_tot =  RWUS_pim/(USRW_pim*RWUS_rer);
	USEAA_tot =  USEAA_pim/(EAAUS_pim*USEAA_rer);
	USEAB_tot =  USEAB_pim/(EABUS_pim*USEAB_rer);
	USRW_tot =  USRW_pim/(RWUS_pim*USRW_rer);

    //(eq.127)
    EAAEAB_rer =  EAA_rer/EAB_rer;
	EAARW_rer =  EAA_rer/RW_rer;
    EAAUS_rer =  EAA_rer;
    EABEAA_rer =  EAB_rer/EAA_rer;
    EABRW_rer =  EAB_rer/RW_rer;
    EABUS_rer =  EAB_rer;
    RWEAA_rer =  RW_rer/EAA_rer;
    RWEAB_rer =  RW_rer/EAB_rer;
    RWUS_rer =  RW_rer;
    USEAA_rer =  1/EAA_rer;
    USEAB_rer =  1/EAB_rer;
    USRW_rer =  1/RW_rer;	

    //(eq.128)
	EAA_reer =  EAAEAB_rer^EAAEAB_weight*EAARW_rer^EAARW_weight*EAAUS_rer^EAAUS_weight;
	EAB_reer =  EABEAA_rer^EABEAA_weight*EABRW_rer^EABRW_weight*EABUS_rer^EABUS_weight;
	RW_reer =  RWEAA_rer^RWEAA_weight*RWEAB_rer^RWEAB_weight*RWUS_rer^RWUS_weight;
	US_reer =  USEAA_rer^USEAA_weight*USEAB_rer^USEAB_weight*USRW_rer^USRW_weight;

    //(eq.129)
	EAAUS_weight =  EAA_im*EAA_pim/(EAA_im*EAA_pim+EAA_pex*EAA_ex)*EAAUS_weightim+EAA_pex*EAA_ex/(EAA_im*EAA_pim+EAA_pex*EAA_ex)*EAAUS_weightex;
	EAAEAB_weight =  EAAEAB_weightim*EAA_im*EAA_pim/(EAA_im*EAA_pim+EAA_pex*EAA_ex)+EAAEAB_weightex*EAA_pex*EAA_ex/(EAA_im*EAA_pim+EAA_pex*EAA_ex);
	EAARW_weight =  EAA_im*EAA_pim/(EAA_im*EAA_pim+EAA_pex*EAA_ex)*EAARW_weightim+EAA_pex*EAA_ex/(EAA_im*EAA_pim+EAA_pex*EAA_ex)*EAARW_weightex;
	EABEAA_weight =  EABEAA_weightim*EAB_im*EAB_pim/(EAB_im*EAB_pim+EAB_pex*EAB_ex)+EABEAA_weightex*EAB_pex*EAB_ex/(EAB_im*EAB_pim+EAB_pex*EAB_ex);
	EABRW_weight =  EAB_im*EAB_pim/(EAB_im*EAB_pim+EAB_pex*EAB_ex)*EABRW_weightim+EAB_pex*EAB_ex/(EAB_im*EAB_pim+EAB_pex*EAB_ex)*EABRW_weightex;
	EABUS_weight =  EAB_im*EAB_pim/(EAB_im*EAB_pim+EAB_pex*EAB_ex)*EABUS_weightim+EAB_pex*EAB_ex/(EAB_im*EAB_pim+EAB_pex*EAB_ex)*EABUS_weightex;
	RWEAA_weight =  RWEAA_weightim*RW_im*RW_pim/(RW_im*RW_pim+RW_pex*RW_ex)+RWEAA_weightex*RW_pex*RW_ex/(RW_im*RW_pim+RW_pex*RW_ex);
	USRW_weight =  US_im*US_pim/(US_im*US_pim+US_pex*US_ex)*USRW_weightim+US_pex*US_ex/(US_im*US_pim+US_pex*US_ex)*USRW_weightex;
	USEAB_weight =  US_im*US_pim/(US_im*US_pim+US_pex*US_ex)*USEAB_weightim+US_pex*US_ex/(US_im*US_pim+US_pex*US_ex)*USEAB_weightex;
	USEAA_weight =  USEAA_weightim*US_im*US_pim/(US_im*US_pim+US_pex*US_ex)+USEAA_weightex*US_pex*US_ex/(US_im*US_pim+US_pex*US_ex);
	RWUS_weight =  RW_im*RW_pim/(RW_im*RW_pim+RW_pex*RW_ex)*RWUS_weightim+RW_pex*RW_ex/(RW_im*RW_pim+RW_pex*RW_ex)*RWUS_weightex;
	RWEAB_weight =  RW_im*RW_pim/(RW_im*RW_pim+RW_pex*RW_ex)*RWEAB_weightim+RW_pex*RW_ex/(RW_im*RW_pim+RW_pex*RW_ex)*RWEAB_weightex;
 
    //(eq.130)
	EAAUS_weightex =  US_y*US_py*EAAUS_rer*US_size/EAA_size*USEAA_im/EAA_ex/(EAAUS_rer*US_py*US_y+EAAEAB_rer*EAB_pex*USEAB_im+EAARW_rer*RW_pex*USRW_im)+EABUS_im*US_pex*EAAUS_rer*EAB_size/EAA_size*EABEAA_im/EAA_ex/(EAB_y*EAAEAB_rer*EAB_py+EAARW_rer*RW_pex*EABRW_im+EAAUS_rer*US_pex*EABUS_im)+RWUS_im*US_pex*EAAUS_rer*RW_size/EAA_size*RWEAA_im/EAA_ex/(EAARW_rer*RW_py*RW_y+EAAEAB_rer*EAB_pex*RWEAB_im+EAAUS_rer*US_pex*RWUS_im);
	EAAEAB_weightex =  EAAEAB_rer*EAB_size/EAA_size*EABEAA_im/EAA_ex*EAB_py*EAB_y/(EAB_y*EAAEAB_rer*EAB_py+EAARW_rer*RW_pex*EABRW_im+EAAUS_rer*US_pex*EABUS_im)+EAB_pex*EAAEAB_rer*RW_size/EAA_size*RWEAA_im/EAA_ex*RWEAB_im/(EAARW_rer*RW_py*RW_y+EAAEAB_rer*EAB_pex*RWEAB_im+EAAUS_rer*US_pex*RWUS_im)+EAB_pex*EAAEAB_rer*US_size/EAA_size*USEAA_im/EAA_ex*USEAB_im/(EAAUS_rer*US_py*US_y+EAAEAB_rer*EAB_pex*USEAB_im+EAARW_rer*RW_pex*USRW_im);
	EAARW_weightex =  RW_y*RW_py*EAARW_rer*RW_size/EAA_size*RWEAA_im/EAA_ex/(EAARW_rer*RW_py*RW_y+EAAEAB_rer*EAB_pex*RWEAB_im+EAAUS_rer*US_pex*RWUS_im)+EABRW_im*RW_pex*EAARW_rer*EAB_size/EAA_size*EABEAA_im/EAA_ex/(EAB_y*EAAEAB_rer*EAB_py+EAARW_rer*RW_pex*EABRW_im+EAAUS_rer*US_pex*EABUS_im)+USRW_im*RW_pex*EAARW_rer*US_size/EAA_size*USEAA_im/EAA_ex/(EAAUS_rer*US_py*US_y+EAAEAB_rer*EAB_pex*USEAB_im+EAARW_rer*RW_pex*USRW_im);
	EABEAA_weightex =  EAA_y*EAA_py*EABEAA_rer*EAAEAB_im*EAA_size/EAB_size/EAB_ex/(EAA_y*EAA_py*EABEAA_rer+EAARW_im*RW_pex*EABRW_rer+EAAUS_im*US_pex*EABUS_rer)+RWEAA_im*EAA_pex*EABEAA_rer*RWEAB_im*RW_size/EAB_size/EAB_ex/(RW_y*RW_py*EABRW_rer+RWEAA_im*EAA_pex*EABEAA_rer+RWUS_im*US_pex*EABUS_rer)+USEAA_im*EAA_pex*EABEAA_rer*USEAB_im*US_size/EAB_size/EAB_ex/(US_y*US_py*EABUS_rer+USEAA_im*EAA_pex*EABEAA_rer+USRW_im*RW_pex*EABRW_rer);
	EABRW_weightex =  RW_y*RW_py*EABRW_rer*RWEAB_im*RW_size/EAB_size/EAB_ex/(RW_y*RW_py*EABRW_rer+RWEAA_im*EAA_pex*EABEAA_rer+RWUS_im*US_pex*EABUS_rer)+EAARW_im*RW_pex*EABRW_rer*EAAEAB_im*EAA_size/EAB_size/EAB_ex/(EAA_y*EAA_py*EABEAA_rer+EAARW_im*RW_pex*EABRW_rer+EAAUS_im*US_pex*EABUS_rer)+USRW_im*RW_pex*EABRW_rer*USEAB_im*US_size/EAB_size/EAB_ex/(US_y*US_py*EABUS_rer+USEAA_im*EAA_pex*EABEAA_rer+USRW_im*RW_pex*EABRW_rer);
	EABUS_weightex =  US_y*US_py*EABUS_rer*USEAB_im*US_size/EAB_size/EAB_ex/(US_y*US_py*EABUS_rer+USEAA_im*EAA_pex*EABEAA_rer+USRW_im*RW_pex*EABRW_rer)+EAAUS_im*US_pex*EABUS_rer*EAAEAB_im*EAA_size/EAB_size/EAB_ex/(EAA_y*EAA_py*EABEAA_rer+EAARW_im*RW_pex*EABRW_rer+EAAUS_im*US_pex*EABUS_rer)+RWUS_im*US_pex*EABUS_rer*RWEAB_im*RW_size/EAB_size/EAB_ex/(RW_y*RW_py*EABRW_rer+RWEAA_im*EAA_pex*EABEAA_rer+RWUS_im*US_pex*EABUS_rer);
	RWEAA_weightex =  EAA_y*EAA_py*RWEAA_rer*EAARW_im*EAA_size/RW_size/RW_ex/(EAA_y*EAA_py*RWEAA_rer+EAAEAB_im*EAB_pex*RWEAB_rer+EAAUS_im*US_pex*RWUS_rer)+EABEAA_im*EAA_pex*RWEAA_rer*EABRW_im*EAB_size/RW_size/RW_ex/(EAB_y*EAB_py*RWEAB_rer+EABEAA_im*EAA_pex*RWEAA_rer+EABUS_im*US_pex*RWUS_rer)+USEAA_im*EAA_pex*RWEAA_rer*USRW_im*US_size/RW_size/RW_ex/(US_y*US_py*RWUS_rer+USEAA_im*EAA_pex*RWEAA_rer+USEAB_im*EAB_pex*RWEAB_rer);
	RWEAB_weightex =  EAB_y*EAB_py*RWEAB_rer*EABRW_im*EAB_size/RW_size/RW_ex/(EAB_y*EAB_py*RWEAB_rer+EABEAA_im*EAA_pex*RWEAA_rer+EABUS_im*US_pex*RWUS_rer)+EAAEAB_im*EAB_pex*RWEAB_rer*EAARW_im*EAA_size/RW_size/RW_ex/(EAA_y*EAA_py*RWEAA_rer+EAAEAB_im*EAB_pex*RWEAB_rer+EAAUS_im*US_pex*RWUS_rer)+USEAB_im*EAB_pex*RWEAB_rer*USRW_im*US_size/RW_size/RW_ex/(US_y*US_py*RWUS_rer+USEAA_im*EAA_pex*RWEAA_rer+USEAB_im*EAB_pex*RWEAB_rer);
	RWUS_weightex =  US_y*US_py*RWUS_rer*USRW_im*US_size/RW_size/RW_ex/(US_y*US_py*RWUS_rer+USEAA_im*EAA_pex*RWEAA_rer+USEAB_im*EAB_pex*RWEAB_rer)+EAAUS_im*US_pex*RWUS_rer*EAARW_im*EAA_size/RW_size/RW_ex/(EAA_y*EAA_py*RWEAA_rer+EAAEAB_im*EAB_pex*RWEAB_rer+EAAUS_im*US_pex*RWUS_rer)+EABUS_im*US_pex*RWUS_rer*EABRW_im*EAB_size/RW_size/RW_ex/(EAB_y*EAB_py*RWEAB_rer+EABEAA_im*EAA_pex*RWEAA_rer+EABUS_im*US_pex*RWUS_rer);
	USEAA_weightex =  EAA_y*EAA_py*USEAA_rer*EAAUS_im*EAA_size/US_size/US_ex/(EAA_y*EAA_py*USEAA_rer+EAAEAB_im*EAB_pex*USEAB_rer+EAARW_im*RW_pex*USRW_rer)+EABEAA_im*EAA_pex*USEAA_rer*EABUS_im*EAB_size/US_size/US_ex/(EAB_y*EAB_py*USEAB_rer+EABEAA_im*EAA_pex*USEAA_rer+EABRW_im*RW_pex*USRW_rer)+RWEAA_im*EAA_pex*USEAA_rer*RWUS_im*RW_size/US_size/US_ex/(RW_y*RW_py*USRW_rer+RWEAA_im*EAA_pex*USEAA_rer+RWEAB_im*EAB_pex*USEAB_rer);
	USEAB_weightex =  EAB_y*EAB_py*USEAB_rer*EABUS_im*EAB_size/US_size/US_ex/(EAB_y*EAB_py*USEAB_rer+EABEAA_im*EAA_pex*USEAA_rer+EABRW_im*RW_pex*USRW_rer)+EAAEAB_im*EAB_pex*USEAB_rer*EAAUS_im*EAA_size/US_size/US_ex/(EAA_y*EAA_py*USEAA_rer+EAAEAB_im*EAB_pex*USEAB_rer+EAARW_im*RW_pex*USRW_rer)+RWEAB_im*EAB_pex*USEAB_rer*RWUS_im*RW_size/US_size/US_ex/(RW_y*RW_py*USRW_rer+RWEAA_im*EAA_pex*USEAA_rer+RWEAB_im*EAB_pex*USEAB_rer);
	USRW_weightex =  RW_y*RW_py*USRW_rer*RWUS_im*RW_size/US_size/US_ex/(RW_y*RW_py*USRW_rer+RWEAA_im*EAA_pex*USEAA_rer+RWEAB_im*EAB_pex*USEAB_rer)+EAARW_im*RW_pex*USRW_rer*EAAUS_im*EAA_size/US_size/US_ex/(EAA_y*EAA_py*USEAA_rer+EAAEAB_im*EAB_pex*USEAB_rer+EAARW_im*RW_pex*USRW_rer)+EABRW_im*RW_pex*USRW_rer*EABUS_im*EAB_size/US_size/US_ex/(EAB_y*EAB_py*USEAB_rer+EABEAA_im*EAA_pex*USEAA_rer+EABRW_im*RW_pex*USRW_rer);

    //(eq.131)
	EAAUS_weightim =  EAAUS_rer*US_pex*EAAUS_im/(EAA_im*EAA_pim);
	EAAEAB_weightim =  EAAEAB_rer*EAB_pex*EAAEAB_im/(EAA_im*EAA_pim);
	EAARW_weightim =  EAARW_rer*RW_pex*EAARW_im/(EAA_im*EAA_pim);
	EABEAA_weightim =  EABEAA_im*EAA_pex*EABEAA_rer/(EAB_im*EAB_pim);
	EABRW_weightim =  EABRW_im*RW_pex*EABRW_rer/(EAB_im*EAB_pim);
	EABUS_weightim =  EABUS_im*US_pex*EABUS_rer/(EAB_im*EAB_pim);
	RWEAA_weightim =  RWEAA_im*EAA_pex*RWEAA_rer/(RW_im*RW_pim);
	RWEAB_weightim =  RWEAB_im*EAB_pex*RWEAB_rer/(RW_im*RW_pim);
	RWUS_weightim =  RWUS_im*US_pex*RWUS_rer/(RW_im*RW_pim);
	USEAA_weightim =  USEAA_im*EAA_pex*USEAA_rer/(US_im*US_pim);
	USEAB_weightim =  USEAB_im*EAB_pex*USEAB_rer/(US_im*US_pim);
	USRW_weightim =  USRW_im*RW_pex*USRW_rer/(US_im*US_pim);

    //(eq.132)
	EAA_pim =  (EAA_imc*EAA_pimc+EAA_imi*EAA_pimi)/EAA_im;
	EAB_pim =  (EAB_imc*EAB_pimc+EAB_imi*EAB_pimi)/EAB_im;
	RW_pim =  (RW_imc*RW_pimc+RW_imi*RW_pimi)/RW_im;
	US_pim =  (US_imc*US_pimc+US_imi*US_pimi)/US_im;

    //(eq.133)

    //(eq.134)
	EAA_pex =  EABEAA_im*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size/EAA_ex+RWEAA_im*RWEAA_pim*EAARW_rer*RW_size/EAA_size/EAA_ex+USEAA_im*USEAA_pim*EAAUS_rer*US_size/EAA_size/EAA_ex;
	EAB_pex =  EAAEAB_im*EAA_size*EAAEAB_pim*EABEAA_rer/EAB_size/EAB_ex+RWEAB_im*RW_size*RWEAB_pim*EABRW_rer/EAB_size/EAB_ex+USEAB_im*US_size*USEAB_pim*EABUS_rer/EAB_size/EAB_ex;
	RW_pex =  EAARW_im*EAA_size*EAARW_pim*RWEAA_rer/RW_size/RW_ex+EABRW_im*EAB_size*EABRW_pim*RWEAB_rer/RW_size/RW_ex+USRW_im*US_size*USRW_pim*RWUS_rer/RW_size/RW_ex;
	US_pex =  EAAUS_im*EAA_size*EAAUS_pim*USEAA_rer/US_size/US_ex+EABUS_im*EAB_size*EABUS_pim*USEAB_rer/US_size/US_ex+RWUS_im*RW_size*RWUS_pim*USRW_rer/US_size/US_ex;

    //(eq.135) missing

    //(eq.136) //different from the paper
	RW_rer =  RW_rerdep*RW_rer(-1);
	EAB_rer =  EAB_rerdep*EAB_rer(-1);
	EAA_rer =  EAA_rerdep*EAA_rer(-1);
    //missing US (=1?)

    //(eq.137) //different from the paper
	EAAEAB_nerdep =  EAA_pic*EAA_rerdep/EAB_rerdep/EAB_pic;

    //euro area variables
    //(eq.138) missing
    //(eq.139) missing

    //(eq.140) 
    EA_y =  (EAA_y*EAA_size*EAA_pybar+EAB_y*EAB_pybar*EAB_size*EAAEAB_rerbar)/(EAB_size+EAA_size);

    //(eq.141)
    EA_m =  (EAA_size*EAA_m+EAB_m*EAB_size*EAAEAB_rerbar)/(EAB_size+EAA_size);
    
    //(eq.142)
    EA_bf =  (EAB_size*EAB_bf+EAA_size*EAA_bf)/(EAB_size+EAA_size);
    

    //conditions for calibration and reporting
    //(eq.146)
	EAA_rr =  EAA_r/EAA_pic(1)-1;
	EAB_rr =  EAB_r/EAB_pic(1)-1;
	RW_rr =  RW_r/RW_pic(1)-1;
	US_rr =  US_r/US_pic(1)-1;

    //(eq.147)
	EAA_cy =  EAA_c/(EAA_py*EAA_y);
	EAB_cy =  EAB_c/(EAB_py*EAB_y);
	RW_cy =  RW_c/(RW_py*RW_y);
	US_cy =  US_c/(US_py*US_y);

    //(eq.148)
	EAA_iy =  EAA_pi*EAA_i/(EAA_py*EAA_y);
	EAB_iy =  EAB_pi*EAB_i/(EAB_py*EAB_y);
	RW_iy =  RW_pi*RW_i/(RW_py*RW_y);
	US_iy =  US_pi*US_i/(US_py*US_y);



    //(eq.?)
	EAA_im =  EAA_imc+EAA_imi;
	EAB_im =  EAB_imc+EAB_imi;
    RW_im =  RW_imc+RW_imi;
	US_im =  US_imc+US_imi;
 
    //name='EAAEAB_excy'
	EAAEAB_excy =  EABEAA_imc*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size/(EAA_py*EAA_y);

	//name='EAAEAB_exiy'
	EAAEAB_exiy =  EABEAA_imi*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size/(EAA_py*EAA_y);

	//name='EAAEAB_imcy'
	EAAEAB_imcy =  EAAEAB_pim*EAAEAB_imc/(EAA_py*EAA_y);

	//name='EAAEAB_imiy'
	EAAEAB_imiy =  EAAEAB_pim*EAAEAB_imi/(EAA_py*EAA_y);

	//name='EAARW_excy'
	EAARW_excy =  RWEAA_imc*RWEAA_pim*EAARW_rer*RW_size/EAA_size/(EAA_py*EAA_y);

	//name='EAARW_exiy'
	EAARW_exiy =  RWEAA_imi*RWEAA_pim*EAARW_rer*RW_size/EAA_size/(EAA_py*EAA_y);

	//name='EAARW_imcy'
	EAARW_imcy =  EAARW_pim*EAARW_imc/(EAA_py*EAA_y);

	//name='EAARW_imiy'
	EAARW_imiy =  EAARW_pim*EAARW_imi/(EAA_py*EAA_y);
    
	//name='EAAUS_excy'
	EAAUS_excy =  USEAA_imc*USEAA_pim*EAAUS_rer*US_size/EAA_size/(EAA_py*EAA_y);

	//name='EAAUS_exiy'
	EAAUS_exiy =  USEAA_imi*USEAA_pim*EAAUS_rer*US_size/EAA_size/(EAA_py*EAA_y);

	//name='EAAUS_imcy'
	EAAUS_imcy =  EAAUS_pim*EAAUS_imc/(EAA_py*EAA_y);

	//name='EAAUS_imiy'
	EAAUS_imiy =  EAAUS_pim*EAAUS_imi/(EAA_py*EAA_y);

	//name='EAA_bh'
	EAA_bh =  EAB_pic*EAA_py*EAA_y*(log(1+EAA_gammabh/EAB_gammab1)+EAA_bhytarget)/EAAEAB_rer;

	//name='EAA_by'
	EAA_by =  EAA_b/(EAA_pybar*EAA_ybar);

	//name='EAA_dn'
	EAA_dn =  EAA_ysn*EAA_pnt-EAA_rk*EAA_kdn-EAA_ndn*(1+EAA_tauwf)*EAA_w;

	//name='EAA_dt'
	EAA_dt =  EAA_pht*EAA_ht+EABEAA_pim*EAAEAB_rer*(EABEAA_imc+EABEAA_imi)*EAB_size/EAA_size+RWEAA_pim*EAARW_rer*(RWEAA_imc+RWEAA_imi)*RW_size/EAA_size+USEAA_pim*EAAUS_rer*(USEAA_imc+USEAA_imi)*US_size/EAA_size-EAA_rk*EAA_kdt-EAA_ndt*(1+EAA_tauwf)*EAA_w;

	//name='EAA_epsilonm'
	EAA_epsilonm =  (-0.125)/(EAA_r*(EAA_r+EAA_r*EAA_gammav2-1));

	//name='EAA_etot'
	EAA_etot =  EAAEAB_tot^EAAEAB_weight*EAARW_tot^EAARW_weight*EAAUS_tot^EAAUS_weight;

    //name='EAA_gy'
	EAA_gy =  (1-EAA_rhog)*EAA_gybar+EAA_rhog*EAA_gy(-1)+EAA_epsg;

	//name='EAA_imcy'
	EAA_imcy =  EAA_imc*EAA_pimc/(EAA_py*EAA_y);

	//name='EAA_imiy'
	EAA_imiy =  EAA_imi*EAA_pimi/(EAA_py*EAA_y);

	//name='EAA_imy'
	EAA_imy =  (EAA_imc*EAA_pimc+EAA_imi*EAA_pimi)/(EAA_py*EAA_y);

	//name='EAA_internalrer'
	EAA_internalrer =  EAA_pnt/EAA_pttc;

	//name='EAA_lcy'
	EAA_lcy =  (1+EAA_tauwf)*EAA_w*EAA_nd/(EAA_py*EAA_y);

	//name='EAB_pic'
	EAB_pic =  EAA_pic*EAA_rerdep/EAB_rerdep;

	//name='EAA_piex4'
	EAA_piex4 =  EAA_pic4*EAA_pex/EAA_pex(-4);

	//name='EAA_piimc'
	EAA_piimc =  EAA_pic*EAA_pimc/EAA_pimc(-1);

	//name='EAA_piimc4'
	EAA_piimc4 =  EAA_pimc/EAA_pimc(-4)*EAA_pic4;

	//name='EAA_piimi'
	EAA_piimi =  EAA_pic*EAA_pimi/EAA_pimi(-1);

	//name='EAA_piw'
	EAA_piw =  EAA_pic*EAA_w/EAA_w(-1);

	//name='EAA_piw4'
	EAA_piw4 =  EAA_piw*EAA_piw(-1)*EAA_piw(-2)*EAA_piw(-3);

	//name='EAA_rerdep'
	EAA_rerdep =  EAA_lambdai*US_pic(1)/US_r/(1-EAA_gammab)/EAA_beta/EAA_lambdai(1);

	//name='EAA_rp'
	EAA_rp =  EAA_rhorp*EAA_rp(-1)+EAA_epsrp;

	//name='EAA_rrstar'
	EAA_rrstar =  1/EAA_beta-1;

	//name='EAA_tauc'
	EAA_tauc =  (1-EAA_rhotauc)*EAA_taucbar+EAA_tauc(-1)*EAA_rhotauc+EAA_epstauc;

	//name='EAA_taud'
	EAA_taud =  (1-EAA_rhotaud)*EAA_taudbar+EAA_taud(-1)*EAA_rhotaud+EAA_epstaud;

	//name='EAA_tauk'
	EAA_tauk =  EAA_taukbar*(1-EAA_rhotauk)+EAA_tauk(-1)*EAA_rhotauk+EAA_epstauk;

	//name='EAA_taun'
	EAA_taun =  (1-EAA_rhotaun)*EAA_taunbar+EAA_taun(-1)*EAA_rhotaun+EAA_epstaun;

	//name='EAA_tauwf'
	EAA_tauwf =  (1-EAA_rhotauwf)*EAA_tauwfbar+EAA_tauwf(-1)*EAA_rhotauwf+EAA_epstauwf;

	//name='EAA_tauwh'
	EAA_tauwh =  (1-EAA_rhotauwh)*EAA_tauwhbar+EAA_tauwh(-1)*EAA_rhotauwh+EAA_epstauwh;

	//name='EAA_tby'
	EAA_tby =  EAA_tb/(EAA_py*EAA_y);

	//name='EAA_ti'
	EAA_ti =  EAA_t*EAA_upsilont;

	//name='EAA_tot'
	EAA_tot =  EAAUS_pim/(USEAA_pim*EAA_rer);

	//name='EAA_tri'
	EAA_tri =  EAA_tr*EAA_upsilontr;

	//name='EAA_try'
	EAA_try =  (1-EAA_rhotr)*EAA_trybar+EAA_rhotr*EAA_try(-1)+EAA_epstr;

	//name='EAA_wcst'
	EAA_wcst =  (1-EAA_rhowcst)*EAA_wcstbar+EAA_rhowcst*EAA_wcst(-1)+EAA_epswcst;

	//name='EAA_whty'
	EAA_whty =  EAA_ndt*EAA_w/(EAA_yst*EAA_pht);

	//name='EAA_wnty'
	EAA_wnty =  EAA_ndn*EAA_w/(EAA_ysn*EAA_pnt);

	//name='EAA_wy'
	EAA_wy =  EAA_w*EAA_nd/(EAA_py*EAA_y);

	//name='EAA_ygap'
	EAA_ygap =  EAA_y/EAA_ybar-1;

	//name='EAA_ygrowth'
	EAA_ygrowth =  EAA_y/EAA_y(-1);

	//name='EAA_ygrowth4'
	EAA_ygrowth4 =  EAA_y/EAA_y(-4);

	//name='EAA_yhty'
	EAA_yhty =  EAA_yst*EAA_pht/(EAA_py*EAA_y);

	//name='EAA_ynty'
	EAA_ynty =  EAA_ysn*EAA_pnt/(EAA_py*EAA_y);

	//name='EAA_yshare'
	EAA_yshare =  EAA_y*EAA_py*EAA_size/EAA_rer/(EAA_y*EAA_py*EAA_size/EAA_rer+EAB_y*EAB_size*EAB_py/EAB_rer+RW_y*RW_size*RW_py/RW_rer+US_y*US_size*US_py);

	//name='EAA_zcon'
	log(EAA_zcon) =  (1-EAA_rhozcon)*log(EAA_zconbar)+EAA_rhozcon*log(EAA_zcon(-1))+EAA_epszcon;

	//name='EAA_zinv'
	log(EAA_zinv) =  (1-EAA_rhozinv)*log(EAA_zinvbar)+EAA_rhozinv*log(EAA_zinv(-1))+EAA_epszinv;

	//name='EAA_zn'
	log(EAA_zn) =  (1-EAA_rhozn)*log(EAA_znbar)+EAA_rhozn*log(EAA_zn(-1))+EAA_epszn;

	//name='EAA_zt'
	log(EAA_zt) =  (1-EAA_rhozt)*log(EAA_ztbar)+EAA_rhozt*log(EAA_zt(-1))+EAA_epszt;

	//name='EABEAA_excy'
	EABEAA_excy =  EAAEAB_imc*EAAEAB_pim*EABEAA_rer*EAA_size/EAB_size/(EAB_py*EAB_y);

	//name='EABEAA_exiy'
	EABEAA_exiy =  EAAEAB_imi*EAAEAB_pim*EABEAA_rer*EAA_size/EAB_size/(EAB_py*EAB_y);

	//name='EABEAA_imcy'
	EABEAA_imcy =  EABEAA_pim*EABEAA_imc/(EAB_py*EAB_y);

	//name='EABEAA_imiy'
	EABEAA_imiy =  EABEAA_pim*EABEAA_imi/(EAB_py*EAB_y);

	//name='EABRW_excy'
	EABRW_excy =  RWEAB_imc*RWEAB_pim*EABRW_rer*RW_size/EAB_size/(EAB_py*EAB_y);

	//name='EABRW_exiy'
	EABRW_exiy =  RWEAB_imi*RWEAB_pim*EABRW_rer*RW_size/EAB_size/(EAB_py*EAB_y);

	//name='EABRW_imcy'
	EABRW_imcy =  EABRW_pim*EABRW_imc/(EAB_py*EAB_y);

	//name='EABRW_imiy'
	EABRW_imiy =  EABRW_pim*EABRW_imi/(EAB_py*EAB_y);  

	//name='EABUS_excy'
	EABUS_excy =  USEAB_imc*USEAB_pim*EABUS_rer*US_size/EAB_size/(EAB_py*EAB_y);

	//name='EABUS_exiy'
	EABUS_exiy =  USEAB_imi*USEAB_pim*EABUS_rer*US_size/EAB_size/(EAB_py*EAB_y);

	//name='EABUS_imcy'
	EABUS_imcy =  EABUS_pim*EABUS_imc/(EAB_py*EAB_y);

	//name='EABUS_imiy'
	EABUS_imiy =  EABUS_pim*EABUS_imi/(EAB_py*EAB_y);

   	//name='EAB_bh'
	EAB_bh =  EAA_size*(-EAA_bh)/EAB_size;

	//name='EAB_by'
	EAB_by =  EAB_b/(EAB_pybar*EAB_ybar);

	//name='EAB_dn'
	EAB_dn =  EAB_ysn*EAB_pnt-EAB_rk*EAB_kdn-EAB_ndn*(1+EAB_tauwf)*EAB_w;

	//name='EAB_dt'
	EAB_dt =  EAB_pht*EAB_ht+EAA_size*(EAAEAB_imc+EAAEAB_imi)*EAAEAB_pim*EABEAA_rer/EAB_size+RW_size*RWEAB_pim*EABRW_rer*(RWEAB_imc+RWEAB_imi)/EAB_size+US_size*USEAB_pim*EABUS_rer*(USEAB_imc+USEAB_imi)/EAB_size-EAB_rk*EAB_kdt-EAB_ndt*(1+EAB_tauwf)*EAB_w;

	//name='EAB_epsilonm'
	EAB_epsilonm =  (-0.125)/(EAB_r*(EAB_r+EAB_r*EAB_gammav2-1));

	//name='EAB_etot'
	EAB_etot =  EABEAA_tot^EABEAA_weight*EABRW_tot^EABRW_weight*EABUS_tot^EABUS_weight;

    //name='EAB_gy'
	EAB_gy =  (1-EAB_rhog)*EAB_gybar+EAB_rhog*EAB_gy(-1)+EAB_epsg;

	//name='EAB_imcy'
	EAB_imcy =  EAB_imc*EAB_pimc/(EAB_py*EAB_y);

	//name='EAB_imiy'
	EAB_imiy =  EAB_imi*EAB_pimi/(EAB_py*EAB_y);

	//name='EAB_imy'
	EAB_imy =  (EAB_imc*EAB_pimc+EAB_imi*EAB_pimi)/(EAB_py*EAB_y);

	//name='EAB_internalrer'
	EAB_internalrer =  EAB_pnt/EAB_pttc;

	//name='EAB_lcy'
	EAB_lcy =  (1+EAB_tauwf)*EAB_w*EAB_nd/(EAB_py*EAB_y);

	//name='EAB_piex4'
	EAB_piex4 =  EAB_pic4*EAB_pex/EAB_pex(-4);

	//name='EAB_piimc'
	EAB_piimc =  EAB_pic*EAB_pimc/EAB_pimc(-1);

	//name='EAB_piimc4'
	EAB_piimc4 =  EAB_pimc/EAB_pimc(-4)*EAB_pic4;

	//name='EAB_piimi'
	EAB_piimi =  EAB_pic*EAB_pimi/EAB_pimi(-1);
    
	//name='EAB_piw'
	EAB_piw =  EAB_pic*EAB_w/EAB_w(-1);

	//name='EAB_piw4'
	EAB_piw4 =  EAB_piw*EAB_piw(-1)*EAB_piw(-2)*EAB_piw(-3);

	//name='EAB_rerdep'
	EAB_rerdep =  EAB_lambdai*US_pic(1)/US_r/(1-EAB_gammab)/EAB_beta/EAB_lambdai(1);

	//name='EAB_rp'
	EAB_rp =  EAB_rhorp*EAB_rp(-1)+EAB_epsrp;

	//name='EAB_rrstar'
	EAB_rrstar =  1/EAB_beta-1;

	//name='EAB_tauc'
	EAB_tauc =  (1-EAB_rhotauc)*EAB_taucbar+EAB_tauc(-1)*EAB_rhotauc+EAB_epstauc;

	//name='EAB_taud'
	EAB_taud =  (1-EAB_rhotaud)*EAB_taudbar+EAB_taud(-1)*EAB_rhotaud+EAB_epstaud;

	//name='EAB_tauk'
	EAB_tauk =  EAB_taukbar*(1-EAB_rhotauk)+EAB_tauk(-1)*EAB_rhotauk+EAB_epstauk;

	//name='EAB_taun'
	EAB_taun =  (1-EAB_rhotaun)*EAB_taunbar+EAB_taun(-1)*EAB_rhotaun+EAB_epstaun;

	//name='EAB_tauwf'
	EAB_tauwf =  (1-EAB_rhotauwf)*EAB_tauwfbar+EAB_tauwf(-1)*EAB_rhotauwf+EAB_epstauwf;

	//name='EAB_tauwh'
	EAB_tauwh =  (1-EAB_rhotauwh)*EAB_tauwhbar+EAB_tauwh(-1)*EAB_rhotauwh+EAB_epstauwh;

	//name='EAB_tby'
	EAB_tby =  EAB_tb/(EAB_py*EAB_y);

	//name='EAB_ti'
	EAB_ti =  EAB_t*EAB_upsilont;

	//name='EAB_tot'
	EAB_tot =  EABUS_pim/(EAB_rer*USEAB_pim);

	//name='EAB_tri'
	EAB_tri =  EAB_tr*EAB_upsilontr;

	//name='EAB_try'
	EAB_try =  (1-EAB_rhotr)*EAB_trybar+EAB_rhotr*EAB_try(-1)+EAB_epstr;

	//name='EAB_wcst'
	EAB_wcst =  (1-EAB_rhowcst)*EAB_wcstbar+EAB_rhowcst*EAB_wcst(-1)+EAB_epswcst;

	//name='EAB_whty'
	EAB_whty =  EAB_ndt*EAB_w/(EAB_yst*EAB_pht);
	
	//name='EAB_wnty'
	EAB_wnty =  EAB_ndn*EAB_w/(EAB_ysn*EAB_pnt);

	//name='EAB_wy'
	EAB_wy =  EAB_w*EAB_nd/(EAB_py*EAB_y);

	//name='EAB_ygap'
	EAB_ygap =  EAB_y/EAB_ybar-1;

	//name='EAB_ygrowth'
	EAB_ygrowth =  EAB_y/EAB_y(-1);

	//name='EAB_ygrowth4'
	EAB_ygrowth4 =  EAB_y/EAB_y(-4);

	//name='EAB_yhty'
	EAB_yhty =  EAB_yst*EAB_pht/(EAB_py*EAB_y);

	//name='EAB_ynty'
	EAB_ynty =  EAB_ysn*EAB_pnt/(EAB_py*EAB_y);

	//name='EAB_yshare'
	EAB_yshare =  EAB_y*EAB_size*EAB_py/EAB_rer/(EAA_y*EAA_py*EAA_size/EAA_rer+EAB_y*EAB_size*EAB_py/EAB_rer+RW_y*RW_size*RW_py/RW_rer+US_y*US_size*US_py);

	//name='EAB_zcon'
	log(EAB_zcon) =  (1-EAB_rhozcon)*log(EAB_zconbar)+EAB_rhozcon*log(EAB_zcon(-1))+EAB_epszcon;

	//name='EAB_zinv'
	log(EAB_zinv) =  (1-EAB_rhozinv)*log(EAB_zinvbar)+EAB_rhozinv*log(EAB_zinv(-1))+EAB_epszinv;

	//name='EAB_zn'
	log(EAB_zn) =  (1-EAB_rhozn)*log(EAB_znbar)+EAB_rhozn*log(EAB_zn(-1))+EAB_epszn;

	//name='EAB_zt'
	log(EAB_zt) =  (1-EAB_rhozt)*log(EAB_ztbar)+EAB_rhozt*log(EAB_zt(-1))+EAB_epszt;

	//name='EA_ygrowth'
	EA_ygrowth =  EA_y/EA_y(-1);

	//name='EA_ygrowth4'
	EA_ygrowth4 =  EA_y/EA_y(-4);

	//name='EA_z'
	log(EA_z) =  (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;

	//name='RWEAA_excy'
	RWEAA_excy =  EAARW_imc*EAARW_pim*RWEAA_rer*EAA_size/RW_size/(RW_py*RW_y);

	//name='RWEAA_exiy'
	RWEAA_exiy =  EAARW_imi*EAARW_pim*RWEAA_rer*EAA_size/RW_size/(RW_py*RW_y);
  
	//name='RWEAA_imcy'
	RWEAA_imcy =  RWEAA_pim*RWEAA_imc/(RW_py*RW_y);

	//name='RWEAA_imiy'
	RWEAA_imiy =  RWEAA_pim*RWEAA_imi/(RW_py*RW_y);

    //name='RWEAB_excy'
	RWEAB_excy =  EABRW_imc*EABRW_pim*RWEAB_rer*EAB_size/RW_size/(RW_py*RW_y);

	//name='RWEAB_exiy'
	RWEAB_exiy =  EABRW_imi*EABRW_pim*RWEAB_rer*EAB_size/RW_size/(RW_py*RW_y);

	//name='RWEAB_imcy'
	RWEAB_imcy =  RWEAB_pim*RWEAB_imc/(RW_py*RW_y);

	//name='RWEAB_imiy'
	RWEAB_imiy =  RWEAB_pim*RWEAB_imi/(RW_py*RW_y);

	//name='RWUS_excy'
	RWUS_excy =  USRW_imc*USRW_pim*RWUS_rer*US_size/RW_size/(RW_py*RW_y);

	//name='RWUS_exiy'
	RWUS_exiy =  USRW_imi*USRW_pim*RWUS_rer*US_size/RW_size/(RW_py*RW_y);

	//name='RWUS_imcy'
	RWUS_imcy =  RWUS_pim*RWUS_imc/(RW_py*RW_y);

	//name='RWUS_imiy'
	RWUS_imiy =  RWUS_pim*RWUS_imi/(RW_py*RW_y);

	//name='RW_by'
	RW_by =  RW_b/(RW_pybar*RW_ybar);

	//name='RW_dn'
	RW_dn =  RW_ysn*RW_pnt-RW_rk*RW_kdn-RW_ndn*(1+RW_tauwf)*RW_w;

	//name='RW_dt'
	RW_dt =  RW_pht*RW_ht+EAA_size*(EAARW_imc+EAARW_imi)*EAARW_pim*RWEAA_rer/RW_size+EAB_size*(EABRW_imc+EABRW_imi)*EABRW_pim*RWEAB_rer/RW_size+US_size*USRW_pim*RWUS_rer*(USRW_imc+USRW_imi)/RW_size-RW_rk*RW_kdt-RW_ndt*(1+RW_tauwf)*RW_w;

	//name='RW_epsilonm'
	RW_epsilonm =  (-0.125)/(RW_r*(RW_r+RW_r*RW_gammav2-1));

	//name='RW_etot'
	RW_etot =  RWEAA_tot^RWEAA_weight*RWEAB_tot^RWEAB_weight*RWUS_tot^RWUS_weight;

	//name='RW_gy'
	RW_gy =  (1-RW_rhog)*RW_gybar+RW_rhog*RW_gy(-1)+RW_epsg;

	//name='RW_imcy'
	RW_imcy =  RW_imc*RW_pimc/(RW_py*RW_y);

	//name='RW_imiy'
	RW_imiy =  RW_imi*RW_pimi/(RW_py*RW_y);

	//name='RW_imy'
	RW_imy =  (RW_imc*RW_pimc+RW_imi*RW_pimi)/(RW_py*RW_y);

	//name='RW_internalrer'
	RW_internalrer =  RW_pnt/RW_pttc;

	//name='RW_lcy'
	RW_lcy =  (1+RW_tauwf)*RW_w*RW_nd/(RW_py*RW_y);

	//name='RW_piex4'
	RW_piex4 =  RW_pic4*RW_pex/RW_pex(-4);

	//name='RW_piimc'
	RW_piimc =  RW_pic*RW_pimc/RW_pimc(-1);

	//name='RW_piimc4'
	RW_piimc4 =  RW_pimc/RW_pimc(-4)*RW_pic4;

	//name='RW_piimi'
	RW_piimi =  RW_pic*RW_pimi/RW_pimi(-1);

	//name='RW_piw'
	RW_piw =  RW_pic*RW_w/RW_w(-1);

	//name='RW_piw4'
	RW_piw4 =  RW_piw*RW_piw(-1)*RW_piw(-2)*RW_piw(-3);

	//name='RW_rerdep'
	RW_rerdep =  RW_lambdai*US_pic(1)/US_r/(1-RW_gammab)/RW_beta/RW_lambdai(1);

	//name='RW_rp'
	RW_rp =  RW_rhorp*RW_rp(-1)+RW_epsrp;

	//name='RW_rrstar'
	RW_rrstar =  1/RW_beta-1;

	//name='RW_tauc'
	RW_tauc =  (1-RW_rhotauc)*RW_taucbar+RW_tauc(-1)*RW_rhotauc+RW_epstauc;

	//name='RW_taud'
	RW_taud =  (1-RW_rhotaud)*RW_taudbar+RW_taud(-1)*RW_rhotaud+RW_epstaud;

	//name='RW_tauk'
	RW_tauk =  RW_taukbar*(1-RW_rhotauk)+RW_tauk(-1)*RW_rhotauk+RW_epstauk;

	//name='RW_taun'
	RW_taun =  (1-RW_rhotaun)*RW_taunbar+RW_taun(-1)*RW_rhotaun+RW_epstaun;

	//name='RW_tauwf'
	RW_tauwf =  (1-RW_rhotauwf)*RW_tauwfbar+RW_tauwf(-1)*RW_rhotauwf+RW_epstauwf;

	//name='RW_tauwh'
	RW_tauwh =  (1-RW_rhotauwh)*RW_tauwhbar+RW_tauwh(-1)*RW_rhotauwh+RW_epstauwh;

	//name='RW_tby'
	RW_tby =  RW_tb/(RW_py*RW_y);

	//name='RW_ti'
	RW_ti =  RW_t*RW_upsilont;

	//name='RW_tot'
	RW_tot =  RWUS_pim/(RW_rer*USRW_pim);

	//name='RW_tri'
	RW_tri =  RW_tr*RW_upsilontr;

	//name='RW_try'
	RW_try =  (1-RW_rhotr)*RW_trybar+RW_rhotr*RW_try(-1)+RW_epstr;

	//name='RW_wcst'
	RW_wcst =  (1-RW_rhowcst)*RW_wcstbar+RW_rhowcst*RW_wcst(-1)+RW_epswcst;

	//name='RW_whty'
	RW_whty =  RW_ndt*RW_w/(RW_yst*RW_pht);

	//name='RW_wnty'
	RW_wnty =  RW_ndn*RW_w/(RW_ysn*RW_pnt);

	//name='RW_wy'
	RW_wy =  RW_w*RW_nd/(RW_py*RW_y);

	//name='RW_ygap'
	RW_ygap =  RW_y/RW_ybar-1;

	//name='RW_ygrowth'
	RW_ygrowth =  RW_y/RW_y(-1);

	//name='RW_ygrowth4'
	RW_ygrowth4 =  RW_y/RW_y(-4);

	//name='RW_yhty'
	RW_yhty =  RW_yst*RW_pht/(RW_py*RW_y);

	//name='RW_ynty'
	RW_ynty =  RW_ysn*RW_pnt/(RW_py*RW_y);

	//name='RW_yshare'
	RW_yshare =  RW_y*RW_size*RW_py/RW_rer/(EAA_y*EAA_py*EAA_size/EAA_rer+EAB_y*EAB_size*EAB_py/EAB_rer+RW_y*RW_size*RW_py/RW_rer+US_y*US_size*US_py);

	//name='RW_zcon'
	log(RW_zcon) =  (1-RW_rhozcon)*log(RW_zconbar)+RW_rhozcon*log(RW_zcon(-1))+RW_epszcon;

	//name='RW_zinv'
	log(RW_zinv) =  (1-RW_rhozinv)*log(RW_zinvbar)+RW_rhozinv*log(RW_zinv(-1))+RW_epszinv;

	//name='RW_zn'
	log(RW_zn) =  (1-RW_rhozn)*log(RW_znbar)+RW_rhozn*log(RW_zn(-1))+RW_epszn;

	//name='RW_zt'
	log(RW_zt) =  (1-RW_rhozt)*log(RW_ztbar)+RW_rhozt*log(RW_zt(-1))+RW_epszt;

	//name='USEAA_excy'
	USEAA_excy =  EAAUS_imc*EAAUS_pim*USEAA_rer*EAA_size/US_size/(US_py*US_y);

	//name='USEAA_exiy'
	USEAA_exiy =  EAAUS_imi*EAAUS_pim*USEAA_rer*EAA_size/US_size/(US_py*US_y);

	//name='USEAA_imcy'
	USEAA_imcy =  USEAA_pim*USEAA_imc/(US_py*US_y);

	//name='USEAA_imiy'
	USEAA_imiy =  USEAA_pim*USEAA_imi/(US_py*US_y);

	//name='USEAB_excy'
	USEAB_excy =  EABUS_imc*EABUS_pim*USEAB_rer*EAB_size/US_size/(US_py*US_y);

	//name='USEAB_exiy'
	USEAB_exiy =  EABUS_imi*EABUS_pim*USEAB_rer*EAB_size/US_size/(US_py*US_y);

	//name='USEAB_imcy'
	USEAB_imcy =  USEAB_pim*USEAB_imc/(US_py*US_y);

	//name='USEAB_imiy'
	USEAB_imiy =  USEAB_pim*USEAB_imi/(US_py*US_y);

	//name='USRW_excy'
	USRW_excy =  RWUS_imc*RWUS_pim*USRW_rer*RW_size/US_size/(US_py*US_y);

	//name='USRW_exiy'
	USRW_exiy =  RWUS_imi*RWUS_pim*USRW_rer*RW_size/US_size/(US_py*US_y);

	//name='USRW_imcy'
	USRW_imcy =  USRW_pim*USRW_imc/(US_py*US_y);

	//name='USRW_imiy'
	USRW_imiy =  USRW_pim*USRW_imi/(US_py*US_y);
    
	//name='US_by'
	US_by =  US_b/(US_pybar*US_ybar);

	//name='US_dn'
	US_dn =  US_ysn*US_pnt-US_rk*US_kdn-US_ndn*(1+US_tauwf)*US_w;

	//name='US_dt'
	US_dt =  US_pht*US_ht+EAA_size*(EAAUS_imc+EAAUS_imi)*EAAUS_pim*USEAA_rer/US_size+EAB_size*(EABUS_imc+EABUS_imi)*EABUS_pim*USEAB_rer/US_size+RW_size*(RWUS_imc+RWUS_imi)*RWUS_pim*USRW_rer/US_size-US_rk*US_kdt-US_ndt*(1+US_tauwf)*US_w;

	//name='US_epsilonm'
	US_epsilonm =  (-0.125)/(US_r*(US_r+US_r*US_gammav2-1));

	//name='US_etot'
	US_etot =  USEAA_tot^USEAA_weight*USEAB_tot^USEAB_weight*USRW_tot^USRW_weight;

	//name='US_gy'
	US_gy =  (1-US_rhog)*US_gybar+US_rhog*US_gy(-1)+US_epsg;

	//name='US_imcy'
	US_imcy =  US_imc*US_pimc/(US_py*US_y);

	//name='US_imiy'
	US_imiy =  US_imi*US_pimi/(US_py*US_y);

	//name='US_imy'
	US_imy =  (US_imc*US_pimc+US_imi*US_pimi)/(US_py*US_y);

	//name='US_internalrer'
	US_internalrer =  US_pnt/US_pttc;

	//name='US_lcy'
	US_lcy =  (1+US_tauwf)*US_w*US_nd/(US_py*US_y);

    //name='US_piex4'
	US_piex4 =  US_pic4*US_pex/US_pex(-4);

	//name='US_piimc'
	US_piimc =  US_pic*US_pimc/US_pimc(-1);

	//name='US_piimc4'
	US_piimc4 =  US_pimc/US_pimc(-4)*US_pic4;

	//name='US_piimi'
	US_piimi =  US_pic*US_pimi/US_pimi(-1);

	//name='US_piw'
	US_piw =  US_pic*US_w/US_w(-1);

	//name='US_piw4'
	US_piw4 =  US_piw*US_piw(-1)*US_piw(-2)*US_piw(-3);

	//name='US_rer'
	US_rer =  1;

	//name='US_rrstar'
	US_rrstar =  1/US_beta-1;

 	//name='US_tauc'
	US_tauc =  (1-US_rhotauc)*US_taucbar+US_tauc(-1)*US_rhotauc+US_epstauc;

	//name='US_taud'
	US_taud =  (1-US_rhotaud)*US_taudbar+US_taud(-1)*US_rhotaud+US_epstaud;

	//name='US_tauk'
	US_tauk =  US_taukbar*(1-US_rhotauk)+US_tauk(-1)*US_rhotauk+US_epstauk;

	//name='US_taun'
	US_taun =  (1-US_rhotaun)*US_taunbar+US_taun(-1)*US_rhotaun+US_epstaun;

	//name='US_tauwf'
	US_tauwf =  (1-US_rhotauwf)*US_tauwfbar+US_tauwf(-1)*US_rhotauwf+US_epstauwf;

	//name='US_tauwh'
	US_tauwh =  (1-US_rhotauwh)*US_tauwhbar+US_tauwh(-1)*US_rhotauwh+US_epstauwh;

	//name='US_tby'
	US_tby =  US_tb/(US_py*US_y);

	//name='US_ti'
	US_ti =  US_t*US_upsilont;

    //name='US_tri'
	US_tri =  US_tr*US_upsilontr;
  
	//name='US_try'
	US_try =  (1-US_rhotr)*US_trybar+US_rhotr*US_try(-1)+US_epstr;

	//name='US_wcst'
	US_wcst =  (1-US_rhowcst)*US_wcstbar+US_rhowcst*US_wcst(-1)+US_epswcst;

	//name='US_whty'
	US_whty =  US_ndt*US_w/(US_yst*US_pht);

	//name='US_wnty'
	US_wnty =  US_ndn*US_w/(US_ysn*US_pnt);

	//name='US_wy'
	US_wy =  US_w*US_nd/(US_py*US_y);

	//name='US_ygap'
	US_ygap =  US_y/US_ybar-1;

	//name='US_ygrowth'
	US_ygrowth =  US_y/US_y(-1);

	//name='US_ygrowth4'
	US_ygrowth4 =  US_y/US_y(-4);

	//name='US_yhty'
	US_yhty =  US_yst*US_pht/(US_py*US_y);

	//name='US_ynty'
	US_ynty =  US_ysn*US_pnt/(US_py*US_y);

	//name='US_yshare'
	US_yshare =  US_y*US_size*US_py/(EAA_y*EAA_py*EAA_size/EAA_rer+EAB_y*EAB_size*EAB_py/EAB_rer+RW_y*RW_size*RW_py/RW_rer+US_y*US_size*US_py);

	//name='US_zcon'
	log(US_zcon) =  (1-US_rhozcon)*log(US_zconbar)+US_rhozcon*log(US_zcon(-1))+US_epszcon;

	//name='US_zinv'
	log(US_zinv) =  (1-US_rhozinv)*log(US_zinvbar)+US_rhozinv*log(US_zinv(-1))+US_epszinv;

	//name='US_zn'
	log(US_zn) =  (1-US_rhozn)*log(US_znbar)+US_rhozn*log(US_zn(-1))+US_epszn;

	//name='US_zt'
	log(US_zt) =  (1-US_rhozt)*log(US_ztbar)+US_rhozt*log(US_zt(-1))+US_epszt;
	


	

	
    

end;