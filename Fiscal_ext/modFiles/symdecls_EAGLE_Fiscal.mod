// Adjusted for Monetary Union setup
// Endogenous
var
 @{ea}_bf
 @{ea}_m
 @{ea}_pic4
 @{ea}_y
 @{ea}_ygrowth
 @{ea}_ygrowth4
 @{ea}_z
;

// Parameters
parameters
 @{ea}_phirgy
 @{ea}_phirpi
 @{ea}_phirr
 @{ea}_rhoz
 @{ea}_zbar
 @{ea}_ybar
;

// Exogenous
varexo
@#if !steady
    @{ea}_epsr
@#endif
 @{ea}_epsz
;


@#for co in countries
// Endogenous
var
@#for it in countries - [ co ]
 @{co}@{it}_excy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_exiy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_fx
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimc
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimcdag
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimi
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimidag
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimx
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gammaimxdag
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_gx
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_im
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imc
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imcy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imi
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imcg
 @{co}@{it}_imig
 @{co}@{it}_imcgy
 @{co}@{it}_imigy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imiy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imx
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_imxy
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_piim
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_pim
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_pimtilde
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_rer
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_sx
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_tot
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_weight
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_weightex
@#endfor

@#for it in countries - [ co ]
 @{co}@{it}_weightim
@#endfor

 @{co}_b
 @{co}_bf
 @{co}_by
 @{co}_c
 @{co}_ccesi
 @{co}_ccesj
 @{co}_cg
 @{co}_ci
 @{co}_cj
 @{co}_cgy
 @{co}_cy
 @{co}_d
 @{co}_dcci
 @{co}_dccj
 @{co}_dn
 @{co}_dt
 @{co}_epsilonm
 @{co}_etot
 @{co}_ex
 @{co}_fh
 @{co}_fi
 @{co}_fj
 @{co}_fn
@#if co != countries[4]
 @{co}_gammab
@#endif

 @{co}_gammai
 @{co}_gammaider
 @{co}_gammau
 @{co}_gammauder
 @{co}_gammav
 @{co}_gammavi
 @{co}_gammavider
 @{co}_gammavj
 @{co}_gammavjder
 @{co}_gh
 @{co}_gi
 @{co}_gj
 @{co}_gn
 @{co}_ht
 @{co}_htc
 @{co}_htcg
 @{co}_hti
 @{co}_htig
 @{co}_htx
 @{co}_i
 @{co}_ig
 @{co}_igy
 @{co}_ii
 @{co}_im
 @{co}_imc
 @{co}_imcg
 @{co}_imcgy
 @{co}_imcy
 @{co}_imi
 @{co}_imig
 @{co}_imigy
 @{co}_imiy
 @{co}_imx
 @{co}_imxy
 @{co}_imy
 @{co}_internalrer
 @{co}_iy
 @{co}_k
 @{co}_kd
 @{co}_kdn
 @{co}_kdt
 @{co}_kg
 @{co}_ki
 @{co}_lambdai
 @{co}_lambdaj
 @{co}_lcy
 @{co}_m
 @{co}_mcn
 @{co}_mct
 @{co}_mcx
 @{co}_mi
 @{co}_mj
 @{co}_nd
 @{co}_ndi
 @{co}_ndj
 @{co}_ndn
 @{co}_ndt
 @{co}_ni
 @{co}_nj
 @{co}_nt
 @{co}_ntc
 @{co}_ntcg
 @{co}_nti
 @{co}_ntig
 @{co}_pcg
 @{co}_pex
 @{co}_pht
 @{co}_phttilde
 @{co}_pi
 @{co}_pic
 @{co}_pic4
 @{co}_piex4
 @{co}_pig
 @{co}_piht
 @{co}_piimc
 @{co}_piimc4
 @{co}_piimi
 @{co}_pim
 @{co}_pimc
 @{co}_pimcg
 @{co}_pimi
 @{co}_pimig
 @{co}_pimx
 @{co}_pint
 @{co}_piw
 @{co}_piw4
 @{co}_pnt
 @{co}_pnttilde
 @{co}_pttc
 @{co}_pttcg
 @{co}_ptti
 @{co}_pttig
 @{co}_py
 @{co}_q
 @{co}_qc
 @{co}_qi
 @{co}_r
 @{co}_reer
 @{co}_rer

@#if co != countries[4]
 @{co}_rerdep
@#endif

 @{co}_rk

@#if co != countries[4]
 @{co}_rp
@#endif

 @{co}_rr
 @{co}_rrstar
 @{co}_sh
 @{co}_si
 @{co}_sj
 @{co}_snt
 @{co}_t
 @{co}_tauc
 @{co}_taud
 @{co}_tauk
 @{co}_taun
 @{co}_tauwf
 @{co}_tauwh
 @{co}_tb
 @{co}_tby
 @{co}_ti
 @{co}_tj

@#if co != countries[4]
 @{co}_tot
@#endif

 @{co}_tr
 @{co}_tri
 @{co}_trj
 @{co}_try
 @{co}_ttc
 @{co}_ttcg
 @{co}_tti
 @{co}_ttig
 @{co}_ty
 @{co}_u
 @{co}_utili
 @{co}_utilj
 @{co}_vi
 @{co}_vj
 @{co}_w
 @{co}_wcst
 @{co}_whty
 @{co}_wi
 @{co}_witilde
 @{co}_wj
 @{co}_wjtilde
 @{co}_wnty
 @{co}_wy
 @{co}_y
 @{co}_ygap
 @{co}_ygrowth
 @{co}_ygrowth4
 @{co}_yhty
 @{co}_ynty
 @{co}_yshare
 @{co}_ysn
 @{co}_yst
 @{co}_zcon
 @{co}_zinv
 @{co}_zn
 @{co}_zt
;

// Parameters
parameters
 @{co}_alphag
 @{co}_alphan
 @{co}_alphat
 @{co}_beta

@#if co != countries[4]
 @{co}_bfytarget
@#endif
@#if co == "EAA"
 @{co}_bhytarget
@#endif

 @{co}_bytarget 
 @{co}_chin
 @{co}_chih
 @{co}_chii
 @{co}_chij
 @{co}_chix
 @{co}_delta
 @{co}_deltag           

@#if co != countries[4]
 @{co}_gammab1
@#endif

 @{co}_gammai1
 @{co}_gammaimc1
 @{co}_gammaimi1
 @{co}_gammaimx1
 @{co}_gammau2
 @{co}_gammav1
 @{co}_gammav2
 @{co}_kappa
 @{co}_muc
 @{co}_mucces
 @{co}_mucg
 @{co}_mui
 @{co}_muig       
 @{co}_mux
 @{co}_mumc
 @{co}_mumcg
 @{co}_mumi
 @{co}_mumig
 @{co}_mumx
 @{co}_mutc
 @{co}_mutcg
 @{co}_muti
 @{co}_mutig
 @{co}_nuc
 @{co}_nucces
 @{co}_nucg
 @{co}_nui
 @{co}_nuig
 @{co}_numcg
 @{co}_numig       
 @{co}_nutc
 @{co}_nutcg
 @{co}_nuti
 @{co}_nutig
 @{co}_nux
 @{co}_omega

@#if co != countries[1] && co != countries[2]
 @{co}_phirgy
 @{co}_phirpi
 @{co}_phirr
@#endif

 @{co}_phitb
 @{co}_pi4target
 @{co}_psin
 @{co}_psit
 @{co}_rhocg
 @{co}_rhoig
@#if co != countries[4]
 @{co}_rhorp
@#endif

 @{co}_rhotauc
 @{co}_rhotaud
 @{co}_rhotauk
 @{co}_rhotaun
 @{co}_rhotauwf
 @{co}_rhotauwh
 @{co}_rhotr
 @{co}_rhowcst
 @{co}_rhozcon
 @{co}_rhozinv
 @{co}_rhozn
 @{co}_rhozt
 @{co}_sigma
 @{co}_size
 @{co}_xin
 @{co}_xih
 @{co}_xii
 @{co}_xij
 @{co}_xix
 @{co}_zeta
 @{co}_eta
 @{co}_etai
 @{co}_etaj
 @{co}_thetan 
 @{co}_thetat 
 @{co}_thetax
 @{co}_upsilont
 @{co}_upsilontr

@#for it in countries - [ co ]
 @{co}@{it}_rerbar
@#endfor

 @{co}_pibar
 @{co}_psinbar
 @{co}_psitbar
 @{co}_pybar
 @{co}_qbar
 @{co}_trybar
 @{co}_ybar
 @{co}_ynbar
 @{co}_ytbar
;

// Exogenous
varexo
 @{co}_cgybar
 @{co}_igybar
 @{co}_taucbar
 @{co}_taudbar
 @{co}_taukbar
 @{co}_taunbar
 @{co}_tauwfbar
 @{co}_tauwhbar
 @{co}_wcstbar
 @{co}_zconbar
 @{co}_zinvbar
 @{co}_znbar
 @{co}_ztbar
 @{co}_cpim
 @{co}_epsgc
 @{co}_epsgi
@#if co != countries[1] && co != countries[2]
@#if !steady
        @{co}_epsr
@#endif
@#endif
@#if co != countries[4]
    @#if !steady
        @{co}_epsrp
    @#endif
@#endif
 @{co}_epstauc
 @{co}_epstaud
 @{co}_epstauk
 @{co}_epstaun
 @{co}_epstauwf
 @{co}_epstauwh
 @{co}_epstr
 @{co}_epswcst
 @{co}_epszcon
 @{co}_epszinv
 @{co}_epszn
 @{co}_epszt
@#if !steady
    @{co}_epsbfy
@#endif
;
@#endfor

parameters
@#for i in 1:4
@#for it in countries - [ countries[i], countries3[i] ]
 @{countries[i]}@{it}_numc
 @{countries[i]}@{it}_numcg
 @{countries[i]}@{it}_numi
 @{countries[i]}@{it}_numig
 @{countries[i]}@{it}_numx
@#endfor
@#endfor
;

var 
@{countries[1]}@{countries[2]}_nerdep
;

var 
    @{countries[1]}_gammabh
;

var
@#for co in countries[1:2]
 @{co}_bh
@#endfor
;

// Flip some variables

@#if steady
change_type(var)
 @{ea}_ybar
@#for co in countries

@#for it in countries - [ co ]
 @{co}@{it}_rerbar
@#endfor

 @{co}_pibar
 @{co}_psinbar
 @{co}_psitbar
 @{co}_pybar
 @{co}_qbar
 @{co}_trybar
 @{co}_ybar
 @{co}_ynbar
 @{co}_ytbar
@#endfor
;
@#endif
