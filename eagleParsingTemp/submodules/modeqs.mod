@#if(steady)
model(block, bytecode, cutoff = 0);
@#else
model(block, bytecode, cutoff=0);
@#endif


@#for i in 1:5
@#define co = countries[i]
@#define co2 = countries2[i]
@#define co3 = countries3[i]
@#define co4 = countries4[i]
@#define co5 = countries5[i]

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
@{co}_utili = 
@#if sigma_equals_one[i]
@{co}_zcon*log(@{co}_ci-@{co}_kappa*@{co}_ci(-1))-1/(1+@{co}_zeta)*(@{co}_ni)^(1+@{co}_zeta)+@{co}_beta*@{co}_utili(+1)
@#else
@{co}_zcon*1/(1-@{co}_sigma)*(@{co}_ci-@{co}_kappa*@{co}_ci(-1))^(1-@{co}_sigma)-1/(1+@{co}_zeta)*(@{co}_ni)^(1+@{co}_zeta)+@{co}_beta*@{co}_utili(+1)
@#endif
;

// Marginal utility of consumption
@{co}_lambdai*(1+@{co}_tauc+@{co}_gammavi+@{co}_vi*@{co}_gammavider) = @{co}_zcon*(@{co}_ci-@{co}_kappa*@{co}_ci(-1))^(-@{co}_sigma);

// Euler equation for government bonds
@#if co == countries[1] || co == countries[2]
@#if !steady
@{co}_r*(1-@{co}_gammabh) = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai(+1)*@{co}_pic(+1);
@#else
@{co}_r                   = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai    *@{co}_pic;
@#endif
@#endif

@#if co == countries[3]
@{co}_r = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai(+1)*@{co}_pic(+1);
@#endif

@#if co != countries[1] && co != countries[2] && co != countries[3]
@{co}_r = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai(+1)*@{co}_pic(+1);
@#endif

// Euler equation for money
@{co}_vi^(2)*@{co}_gammavider = 1-@{co}_beta*@{co}_lambdai(+1)/(@{co}_lambdai*@{co}_pic(+1));

// Consumption-based velocity
@{co}_vi = @{co}_ci/@{co}_mi;

// Transaction cost
@{co}_gammavi = @{co}_gammav1*@{co}_vi+@{co}_gammav2/@{co}_vi-2*(@{co}_gammav1*@{co}_gammav2)^(1/2);

// Derivative of transaction cost
@{co}_gammavider = @{co}_gammav1-@{co}_gammav2*@{co}_vi^(-2);

@#if !steady

// Capital accumulation
@{co}_ki = (1-@{co}_delta)*@{co}_ki(-1)+(1-@{co}_gammai(-1))*@{co}_ii(-1)*@{co}_zinv;

// Investment adjustment cost
@{co}_gammai = @{co}_gammai1/2*(@{co}_ii/@{co}_ii(-1)-1)^2;

// Derivative of investment adjustment cost
@{co}_gammaider = @{co}_gammai1*(@{co}_ii/@{co}_ii(-1)-1)/@{co}_ii(-1);

// Capacity utilisation cost
@{co}_gammau = ((@{co}_beta^(-1)-1+@{co}_delta)*@{co}_qbar-@{co}_delta*@{co}_taukbar*@{co}_pibar)/((1-@{co}_taukbar)*@{co}_pibar)*(@{co}_u-1)+@{co}_gammau2/2*(@{co}_u-1)^2;

// Derivative of capacity utilisation cost
@{co}_gammauder = ((@{co}_beta^(-1)-1+@{co}_delta)*@{co}_qbar-@{co}_delta*@{co}_taukbar*@{co}_pibar)/((1-@{co}_taukbar)*@{co}_pibar)+@{co}_gammau2*(@{co}_u-1);

// Optimal capacity utilisation (FOC)
@{co}_rk = @{co}_gammauder*@{co}_pi;

// Tobin's Q
@{co}_pi = @{co}_q*@{co}_zinv*(1-@{co}_gammai-@{co}_gammaider*@{co}_ii)+@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*@{co}_q(+1)*@{co}_zinv(+1)*@{co}_gammaider(+1)*@{co}_ii(+1)^2/@{co}_ii;

@#else // !steady
@{co}_delta = @{co}_ii/@{co}_ki;
@{co}_gammai = 0;
@{co}_gammaider = 0;
@{co}_gammau = 0;
@{co}_gammauder = ((@{co}_beta^(-1)-1+@{co}_delta)*@{co}_qbar-@{co}_delta*@{co}_taukbar*@{co}_pibar)/((1-@{co}_taukbar)*@{co}_pibar);
@{co}_u = 1;
@{co}_pi = @{co}_q;
@#endif // !steady

// Auxiliary equation for Tobin's Q in steady state
@#if steady
@{co}_qbar = @{co}_q;
@#endif

// Rate of return on capital
@#if !steady
@{co}_q = @{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*((1-@{co}_tauk(+1))*(@{co}_rk(+1)*@{co}_u(+1)-@{co}_gammau(+1)*@{co}_pi(+1))+(@{co}_tauk(+1)*@{co}_delta)*@{co}_pi(+1)+(1-@{co}_delta)*@{co}_q(+1));
@#else
@{co}_q = @{co}_beta*((1-@{co}_tauk)*@{co}_rk+(@{co}_tauk*@{co}_delta)*@{co}_pi+(1-@{co}_delta)*@{co}_q);
@#endif

// Optimal wage contract (FOC)
@{co}_witilde^(1+@{co}_etai*@{co}_zeta) = @{co}_etai/(@{co}_etai-1)*@{co}_fi/@{co}_gi+@{co}_wcst;

// Definition of fi
@{co}_fi = @{co}_wi^(@{co}_etai*(1+@{co}_zeta))*@{co}_ndi^(1+@{co}_zeta)+@{co}_xii*@{co}_beta*(@{co}_pic(+1)/(@{co}_pic^@{co}_chii*@{co}_pi4target^(1/4*(1-@{co}_chii))))^(@{co}_etai*(1+@{co}_zeta))*@{co}_fi(+1);

// Definition of gi
@{co}_gi = @{co}_lambdai*(1-@{co}_taun-@{co}_tauwh)*@{co}_wi^@{co}_etai*@{co}_ndi+@{co}_xii*@{co}_beta*(@{co}_pic(+1)/(@{co}_pic^@{co}_chii*@{co}_pi4target^(1/4*(1-@{co}_chii))))^(@{co}_etai-1)*@{co}_gi(+1);

// Aggregate wage rate
@{co}_wi^(1-@{co}_etai) = (1-@{co}_xii)*@{co}_witilde^(1-@{co}_etai)+@{co}_xii*@{co}_wi(-1)^(1-@{co}_etai)*(@{co}_pic(-1)^@{co}_chii*@{co}_pi4target^(1/4*(1-@{co}_chii))/@{co}_pic)^(1-@{co}_etai);

//-------------
// Household J
//-------------

// Utility
@{co}_utilj = 
@#if sigma_equals_one[i]
@{co}_zcon*log(@{co}_cj-@{co}_kappa*@{co}_cj(-1))-1/(1+@{co}_zeta)*@{co}_nj^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#else
@{co}_zcon*1/(1-@{co}_sigma)*(@{co}_cj-@{co}_kappa*@{co}_cj(-1))^(1-@{co}_sigma)-1/(1+@{co}_zeta)*@{co}_nj^(1+@{co}_zeta)+@{co}_beta*@{co}_utilj(+1)
@#endif
;

// Budget constraint
(1+@{co}_tauc+@{co}_gammavj)*@{co}_cj+@{co}_mj = (1-@{co}_taun-@{co}_tauwh)*@{co}_wj*@{co}_nj+@{co}_trj-@{co}_tj+@{co}_mj(-1)*@{co}_pic^(-1);

// Marginal utility of consumption
@{co}_lambdaj*(1+@{co}_tauc+@{co}_gammavj+@{co}_vj*@{co}_gammavjder) = @{co}_zcon*(@{co}_cj-@{co}_kappa*@{co}_cj(-1))^(-@{co}_sigma);

// Euler equation for money
@{co}_vj^(2)*@{co}_gammavjder = 1-@{co}_beta*@{co}_lambdaj(+1)/(@{co}_lambdaj*@{co}_pic(+1));

// Consumption-based velocity
@{co}_vj = @{co}_cj/@{co}_mj;

// Transaction technology
@{co}_gammavj = @{co}_gammav1*@{co}_vj+@{co}_gammav2/@{co}_vj-2*(@{co}_gammav1*@{co}_gammav2)^(1/2);

// Derivative of transaction technology
@{co}_gammavjder = @{co}_gammav1-@{co}_gammav2*@{co}_vj^(-2);

// Optimal wage contract (FOC)
@{co}_wjtilde^(1+@{co}_etaj*@{co}_zeta) = @{co}_etaj/(@{co}_etaj-1)*@{co}_fj/@{co}_gj+@{co}_wcst;

// Definition of fj
@{co}_fj = @{co}_wj^(@{co}_etaj*(1+@{co}_zeta))*@{co}_ndj^(1+@{co}_zeta)+@{co}_xij*@{co}_beta*(@{co}_pic(+1)/(@{co}_pic^@{co}_chij*@{co}_pi4target^(1/4*(1-@{co}_chij))))^(@{co}_etaj*(1+@{co}_zeta))*@{co}_fj(+1);

// Definition of gj
@{co}_gj = @{co}_lambdaj*(1-@{co}_taun-@{co}_tauwh)*@{co}_wj^@{co}_etaj*@{co}_ndj+@{co}_xij*@{co}_beta*(@{co}_pic(+1)/(@{co}_pic^@{co}_chij*@{co}_pi4target^(1/4*(1-@{co}_chij))))^(@{co}_etaj-1)*@{co}_gj(+1);

// Aggregate wage rate
@{co}_wj^(1-@{co}_etaj) = (1-@{co}_xij)*@{co}_wjtilde^(1-@{co}_etaj)+@{co}_xij*@{co}_wj(-1)^(1-@{co}_etaj)*(@{co}_pic(-1)^@{co}_chij*@{co}_pi4target^(1/4*(1-@{co}_chij))/@{co}_pic)^(1-@{co}_etaj);


//-------------
//-------------
// Firms
//-------------
//-------------

//-------------
// Intermediate-good firms
//-------------

@#if co != countries[1] && co != countries[2] && co != countries[3]

// Production function tradable
@{co}_yst = @{co}_zt*@{co}_kdt^@{co}_alphat*@{co}_ndt^(1-@{co}_alphat)-@{co}_psitbar;

// Production function nontradable
@{co}_ysn = @{co}_zn*@{co}_kdn^@{co}_alphan*@{co}_ndn^(1-@{co}_alphan)-@{co}_psinbar;

// Real marginal cost tradable
@{co}_mct = 1/(@{co}_zt*(@{co}_alphat)^(@{co}_alphat)*(1-@{co}_alphat)^(1-@{co}_alphat))*@{co}_rk^(@{co}_alphat)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphat);

// Real marginal cost nontradable
@{co}_mcn = 1/(@{co}_zn*(@{co}_alphan)^(@{co}_alphan)*(1-@{co}_alphan)^(1-@{co}_alphan))*@{co}_rk^(@{co}_alphan)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphan);

@#else // co != countries[1] && co != countries[2]

// Production function tradable
@{co}_yst = @{ea}_z*@{co}_zt*@{co}_kdt^@{co}_alphat*@{co}_ndt^(1-@{co}_alphat)-@{co}_psitbar;

// Production function nontradable
@{co}_ysn = @{ea}_z*@{co}_zn*@{co}_kdn^@{co}_alphan*@{co}_ndn^(1-@{co}_alphan)-@{co}_psinbar;

// Real marginal cost tradable
@{co}_mct = 1/(@{ea}_z*@{co}_zt*(@{co}_alphat)^(@{co}_alphat)*(1-@{co}_alphat)^(1-@{co}_alphat))*@{co}_rk^(@{co}_alphat)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphat);

// Real marginal cost nontradable
@{co}_mcn = 1/(@{ea}_z*@{co}_zn*(@{co}_alphan)^(@{co}_alphan)*(1-@{co}_alphan)^(1-@{co}_alphan))*@{co}_rk^(@{co}_alphan)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphan);

@#endif // co != countries[1] && co != countries[2]

// Wage Inflation (qoq)
@{co}_piw = @{co}_w/@{co}_w(-1)*@{co}_pic;

// Wage Inflation (yoy)
@#if !steady
@{co}_piw4 = @{co}_piw*@{co}_piw(-1)*@{co}_piw(-2)*@{co}_piw(-3);
@#else
@{co}_piw4 = @{co}_pic4;
@#endif

// Auxiliary equation for steady-state fixed cost
@#if steady
@{co}_psitbar = @{co}_psit*@{co}_ytbar;
@#endif

// Auxiliary equation for steady-state fixed cost
@#if steady
@{co}_psinbar = @{co}_psin*@{co}_ynbar;
@#endif

// Capital input (FOC)
@{co}_rk = @{co}_alphat*(@{co}_yst+@{co}_psitbar)/@{co}_kdt*@{co}_mct;

// Capital input (FOC)
@{co}_rk = @{co}_alphan*(@{co}_ysn+@{co}_psinbar)/@{co}_kdn*@{co}_mcn;

// Total capital demand
@{co}_kd = @{co}_kdt+@{co}_kdn;

// Demand for labour services by household I
@{co}_ndi = 
@#if omega_equals_zero[i]
(@{co}_wi/@{co}_w)^(-@{co}_eta)*@{co}_nd
@#else
(1-@{co}_omega)*(@{co}_wi/@{co}_w)^(-@{co}_eta)*@{co}_nd
@#endif
;

// Demand for labour services by household J
@{co}_ndj = 
@#if omega_equals_zero[i]
(@{co}_wj/@{co}_w)^(-@{co}_eta)*@{co}_nd
@#else
@{co}_omega*(@{co}_wj/@{co}_w)^(-@{co}_eta)*@{co}_nd
@#endif
;

// Aggregate labour demand
@{co}_nd^(1-1/@{co}_eta) = 
@#if omega_equals_zero[i]
@{co}_ndi^(1-1/@{co}_eta)
@#else
(1-@{co}_omega)^(1/@{co}_eta)*@{co}_ndi^(1-1/@{co}_eta)+@{co}_omega^(1/@{co}_eta)*@{co}_ndj^(1-1/@{co}_eta)
@#endif
;

// Total demand 
@{co}_nd = @{co}_ndt+@{co}_ndn;

// Aggregate dividends
@{co}_d = @{co}_py*@{co}_y-@{co}_rk*@{co}_kd-(1+@{co}_tauwf)*@{co}_w*@{co}_nd;

// Non-tradable sector dividends
@{co}_dn = @{co}_pnt*@{co}_ysn-@{co}_rk*@{co}_kdn-(1+@{co}_tauwf)*@{co}_w*@{co}_ndn;

// Tradable sector dividends
@{co}_dt = @{co}_pht*@{co}_ht
@#for it in countries - [ co ]
+@{it}@{co}_pim*@{co}@{it}_rer*(@{it}@{co}_imc+@{it}@{co}_imi)*@{it}_size/@{co}_size
@#endfor
-@{co}_rk*@{co}_kdt-(1+@{co}_tauwf)*@{co}_w*@{co}_ndt;

// Optimal price contract set in domestic markets (FOC)
@{co}_phttilde/@{co}_pht = @{co}_thetat/(@{co}_thetat-1)*@{co}_fh/@{co}_gh;

// Definition of fh
@{co}_fh = @{co}_mct*@{co}_ht+@{co}_xih*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_piht(+1)/(@{co}_piht^@{co}_chih*@{co}_pi4target^(1/4*(1-@{co}_chih))))^@{co}_thetat*@{co}_fh(+1);

// Definition of gh
@{co}_gh = @{co}_pht*@{co}_ht+@{co}_xih*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_piht(+1)/(@{co}_piht^@{co}_chih*@{co}_pi4target^(1/4*(1-@{co}_chih))))^(@{co}_thetat-1)*@{co}_gh(+1);

// Aggregate intermediate-good price dynamics
@{co}_pht^(1-@{co}_thetat) = (1-@{co}_xih)*@{co}_phttilde^(1-@{co}_thetat)+@{co}_xih*(@{co}_pht(-1)/@{co}_pic)^(1-@{co}_thetat)*(@{co}_piht(-1)^@{co}_chih*@{co}_pi4target^(1/4*(1-@{co}_chih)))^(1-@{co}_thetat);

// Intermediate-good price inflation
@{co}_piht = @{co}_pht/@{co}_pht(-1)*@{co}_pic;

// Optimal price contract set in domestic markets (FOC)
@{co}_pnttilde/@{co}_pnt = @{co}_thetan/(@{co}_thetan-1)*@{co}_fn/@{co}_gn;

// Definition of fn
@{co}_fn = @{co}_mcn*@{co}_nt+@{co}_xin*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_pint(+1)/(@{co}_pint^@{co}_chin*@{co}_pi4target^(1/4*(1-@{co}_chin))))^@{co}_thetan*@{co}_fn(+1);

// Definition of gn
@{co}_gn = @{co}_pnt*@{co}_nt+@{co}_xin*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_pint(+1)/(@{co}_pint^@{co}_chin*@{co}_pi4target^(1/4*(1-@{co}_chin))))^(@{co}_thetan-1)*@{co}_gn(+1);

// Aggregate intermediate-good price dynamics
@{co}_pnt^(1-@{co}_thetan) = (1-@{co}_xin)*@{co}_pnttilde^(1-@{co}_thetan)+@{co}_xin*(@{co}_pnt(-1)/@{co}_pic)^(1-@{co}_thetan)*(@{co}_pint(-1)^@{co}_chin*@{co}_pi4target^(1/4*(1-@{co}_chin)))^(1-@{co}_thetan);

// Intermediate-good price inflation
@{co}_pint = @{co}_pnt/@{co}_pnt(-1)*@{co}_pic;


//---------------
// import pricing
//---------------

@#for it in countries - [ co ]

// Optimal price contract set in foreign markets (FOC), using @{co}_pxtilde = @{it}_pimtilde
@{it}@{co}_pimtilde/@{it}@{co}_pim = @{co}_cpim*@{co}_thetat/(@{co}_thetat-1)*@{co}@{it}_fx/@{co}@{it}_gx;

// Definition of fx
@{co}@{it}_fx = @{it}_size/@{co}_size*@{it}@{co}_im*@{co}_mct+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{it}@{co}_piim(+1)/(@{it}@{co}_piim^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^@{co}_thetat*@{co}@{it}_fx(+1);

// Definition of gx   
@{co}@{it}_gx = @{co}@{it}_rer*@{it}@{co}_pim*@{it}_size/@{co}_size*@{it}@{co}_im+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{it}@{co}_piim(+1)/(@{it}@{co}_piim^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^(@{co}_thetat-1)*@{co}@{it}_gx(+1);

// Aggregate intermediate-good price dynamics, using @{co}_px = @{it}_pim
@{it}@{co}_pim^(1-@{co}_thetat) = (1-@{co}_xix)*@{it}@{co}_pimtilde^(1-@{co}_thetat)+@{co}_xix*(@{it}@{co}_pim(-1)/@{it}_pic)^(1-@{co}_thetat)*(@{it}@{co}_piim(-1)^@{co}_chix*@{it}_pi4target^(1/4*(1-@{co}_chih)))^(1-@{co}_thetat);

// Intermediate-good price inflation, using @{co}_pix = @{it}_piim
@{it}@{co}_piim = @{it}@{co}_pim/@{it}@{co}_pim(-1)*@{it}_pic;

// Bilateral real exchange rate
@{co}@{it}_rer = @{co}_rer/@{it}_rer;

// Auxiliary equation for steady-state output
@#if steady
@{co}@{it}_rerbar = @{co}@{it}_rer;
@#endif

//Terms of Trade
@{co}@{it}_tot = @{co}@{it}_pim/(@{co}@{it}_rer*@{it}@{co}_pim);

@#endfor // countries - [ co ]

// Total imports 
@{co}_im = @{co}_imc+@{co}_imi;

// Total import deflator
@{co}_im*@{co}_pim  = @{co}_pimc*@{co}_imc+@{co}_pimi*@{co}_imi;

// Total Export deflator 
@{co}_ex*@{co}_pex  =
@#for it in countries - [ co ]
+@{co}@{it}_rer*@{it}@{co}_pim*@{it}_size/@{co}_size*@{it}@{co}_im
@#endfor
;

@#for it in countries - [ co ]

// Effective real exchange rate: double weighting (imports)
@{co}@{it}_weightim = @{co}@{it}_rer*@{it}_pex*@{co}@{it}_im/(@{co}_pim*@{co}_im);

// Effective real exchange rate: double weighting (exports)
@{co}@{it}_weightex = @{it}_size/@{co}_size*@{it}@{co}_im/@{co}_ex*@{co}@{it}_rer*@{it}_py*@{it}_y/(@{co}@{it}_rer*@{it}_py*@{it}_y
@#for jj in countries - [ co, it ]
+@{co}@{jj}_rer*@{jj}_pex*@{it}@{jj}_im
@#endfor
)+
@#for kk in countries - [ co, it ]
+@{kk}_size/@{co}_size*@{kk}@{co}_im/@{co}_ex*@{co}@{it}_rer*@{it}_pex*@{kk}@{it}_im/(@{co}@{kk}_rer*@{kk}_py*@{kk}_y
@#for jj in countries - [ co, kk ]
+@{co}@{jj}_rer*@{jj}_pex*@{kk}@{jj}_im
@#endfor
)
@#endfor
;

// Effective real exchange rate: double weighting (overall)
@{co}@{it}_weight = @{co}_pim*@{co}_im/(@{co}_pim*@{co}_im+@{co}_pex*@{co}_ex)*@{co}@{it}_weightim+@{co}_pex*@{co}_ex/(@{co}_pim*@{co}_im+@{co}_pex*@{co}_ex)*@{co}@{it}_weightex;

@#endfor // countries - [ co ]

// Effective real exchange rate
@{co}_reer = 1
@#for it in countries - [ co ]
*@{co}@{it}_rer^@{co}@{it}_weight
@#endfor
;

// Effective terms of trade
@{co}_etot = 1
@#for it in countries - [ co ]
*@{co}@{it}_tot^@{co}@{it}_weight
@#endfor
;


//-----------------
// Final-good firms
//-----------------

// Private consumption good (import)
@{co}_imc^((@{co}_mumc-1)/@{co}_mumc) =
@#for it in countries - [ co, co4 ]
@#if !steady
+@{co}@{it}_numc ^(1/@{co}_mumc)*((1-@{co}@{it}_gammaimc)*@{co}@{it}_imc)^(1-1/@{co}_mumc)
@#else
+@{co}@{it}_numc ^(1/@{co}_mumc)*@{co}@{it}_imc^(1-1/@{co}_mumc)
@#endif
@#endfor
+(1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numc
@#endfor
@#if !steady
)^(1/@{co}_mumc)*((1-@{co}@{co4}_gammaimc)*@{co}@{co4}_imc)^(1-1/@{co}_mumc);
@#else
)^(1/@{co}_mumc)*@{co}@{co4}_imc^(1-1/@{co}_mumc);
@#endif

// Demand for bilateral consumption import goods
@#if !steady
@{co}@{co5}_imc = @{co}@{co5}_numc*(@{co}@{co5}_pim/(@{co}@{co5}_gammaimcdag*@{co}_pimc))^(-@{co}_mumc)*@{co}_imc/(1-@{co}@{co5}_gammaimc);
@#else
@{co}@{co5}_imc = @{co}@{co5}_numc*(@{co}@{co5}_pim/@{co}_pimc)^(-@{co}_mumc)*@{co}_imc;
@#endif

@#if !steady
@{co}@{co3}_imc = @{co}@{co3}_numc*(@{co}@{co3}_pim/(@{co}@{co3}_gammaimcdag*@{co}_pimc))^(-@{co}_mumc)*@{co}_imc/(1-@{co}@{co3}_gammaimc);
@#else
@{co}@{co3}_imc = @{co}@{co3}_numc*(@{co}@{co3}_pim/@{co}_pimc)^(-@{co}_mumc)*@{co}_imc;
@#endif

@{co}@{co4}_imc = (1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numc
@#endfor
@#if !steady
)*(@{co}@{co4}_pim/(@{co}@{co4}_gammaimcdag*@{co}_pimc))^(-@{co}_mumc)*@{co}_imc/(1-@{co}@{co4}_gammaimc);
@#else
)*(@{co}@{co4}_pim/@{co}_pimc)^(-@{co}_mumc)*@{co}_imc;
@#endif

// Price of the consumption good (import)
@{co}_pimc^(1-@{co}_mumc) =
@#for it in countries - [ co, co4 ]
@#if !steady
+@{co}@{it}_numc *(@{co}@{it}_pim/@{co}@{it}_gammaimcdag)^(1-@{co}_mumc)
@#else
+@{co}@{it}_numc * @{co}@{it}_pim^(1-@{co}_mumc)
@#endif
@#endfor
+(1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numc
@#endfor
@#if !steady
)*(@{co}@{co4}_pim/@{co}@{co4}_gammaimcdag)^(1-@{co}_mumc);
@#else
)*@{co}@{co4}_pim^(1-@{co}_mumc);
@#endif

// Private consumption good (import) inflation
@{co}_piimc = @{co}_pimc/@{co}_pimc(-1)*@{co}_pic;

// Private consumption good (import) inflation
@{co}_piimc4 = @{co}_pimc/@{co}_pimc(-4)*@{co}_pic4;

// Private consumption good (import) inflation
@{co}_piex4 = @{co}_pex/@{co}_pex(-4)*@{co}_pic4;

// Private investment good (import)
@{co}_imi^((@{co}_mumi-1)/@{co}_mumi) =
@#for it in countries - [ co, co4 ]
@#if !steady
+@{co}@{it}_numi ^(1/@{co}_mumi)*((1-@{co}@{it}_gammaimi)*@{co}@{it}_imi)^(1-1/@{co}_mumi)
@#else
+@{co}@{it}_numi ^(1/@{co}_mumi)*@{co}@{it}_imi^(1-1/@{co}_mumi)
@#endif
@#endfor
+(1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numi
@#endfor
@#if !steady
)^(1/@{co}_mumi)*((1-@{co}@{co4}_gammaimi)*@{co}@{co4}_imi)^(1-1/@{co}_mumi);
@#else
)^(1/@{co}_mumi)*@{co}@{co4}_imi^(1-1/@{co}_mumi);
@#endif

// Demand for bilateral investment import goods
@#if !steady
@{co}@{co5}_imi = @{co}@{co5}_numi*(@{co}@{co5}_pim/(@{co}@{co5}_gammaimidag*@{co}_pimi))^(-@{co}_mumi)*@{co}_imi/(1-@{co}@{co5}_gammaimi);
@#else
@{co}@{co5}_imi = @{co}@{co5}_numi*(@{co}@{co5}_pim/@{co}_pimi)^(-@{co}_mumi)*@{co}_imi;
@#endif

// Demand for bilateral investment import goods
@#if !steady
@{co}@{co3}_imi = @{co}@{co3}_numi*(@{co}@{co3}_pim/(@{co}@{co3}_gammaimidag*@{co}_pimi))^(-@{co}_mumi)*@{co}_imi/(1-@{co}@{co3}_gammaimi);
@#else
@{co}@{co3}_imi = @{co}@{co3}_numi*(@{co}@{co3}_pim/@{co}_pimi)^(-@{co}_mumi)*@{co}_imi;
@#endif

@{co}@{co4}_imi = (1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numi
@#endfor
@#if !steady
)*(@{co}@{co4}_pim/(@{co}@{co4}_gammaimidag*@{co}_pimi))^(-@{co}_mumi)*@{co}_imi/(1-@{co}@{co4}_gammaimi);
@#else
)*(@{co}@{co4}_pim/@{co}_pimi)^(-@{co}_mumi)*@{co}_imi;
@#endif

// Price of the investment good (import)
@{co}_pimi^(1-@{co}_mumi) =
@#for it in countries - [ co, co4 ]
@#if !steady
+@{co}@{it}_numi *(@{co}@{it}_pim/@{co}@{it}_gammaimidag)^(1-@{co}_mumi)
@#else
+@{co}@{it}_numi * @{co}@{it}_pim^(1-@{co}_mumi)
@#endif
@#endfor
+(1
@#for it in countries - [ co, co4 ]
-@{co}@{it}_numi
@#endfor
@#if !steady
)*(@{co}@{co4}_pim/@{co}@{co4}_gammaimidag)^(1-@{co}_mumi);
@#else
)*@{co}@{co4}_pim^(1-@{co}_mumi);
@#endif

// Private investment good (import) inflation
@{co}_piimi = @{co}_pimi/@{co}_pimi(-1)*@{co}_pic;

// Wedge between aggregate demand and production, using @{co}_x = @{co2}_size/@{co}_size*@{co2}_im
@{co}_yst = @{co}_sh*@{co}_ht
@#for it in countries - [ co ]
+@{co}@{it}_sx*@{it}_size/@{co}_size*@{it}@{co}_im
@#endfor
;

// Aggregate demand for bilateral imported intermediate goods
@#for it in countries - [ co ]
@{co}@{it}_im = @{co}@{it}_imi+@{co}@{it}_imc;
@#endfor

// Private consumption good firm

// Private consumption good (tradable)
@{co}_ttc^((@{co}_mutc-1)/@{co}_mutc) = (@{co}_nutc)^(1/@{co}_mutc)*@{co}_htc^(1-1/@{co}_mutc)+(1-@{co}_nutc)^(1/@{co}_mutc)*@{co}_imc^(1-1/@{co}_mutc);

// Private consumption good  (total)
@{co}_qc^((@{co}_muc-1)/@{co}_muc) = (@{co}_nuc)^(1/@{co}_muc)*@{co}_ttc^(1-1/@{co}_muc)+(1-@{co}_nuc)^(1/@{co}_muc)*@{co}_ntc^(1-1/@{co}_muc);

// Demand for domestic intermediate goods - NONTRADABLE
@{co}_ntc = (1-@{co}_nuc)*(@{co}_pnt)^(-@{co}_muc)*@{co}_qc;

// Price of the consumption good (tradable)  
@{co}_pttc^(1-@{co}_mutc) = (@{co}_nutc)*@{co}_pht^(1-@{co}_mutc)+(1-@{co}_nutc)*@{co}_pimc^(1-@{co}_mutc);

// Price of the consumption good 
1^(1-@{co}_muc) = (@{co}_nuc)*@{co}_pttc^(1-@{co}_muc)+(1-@{co}_nuc)*@{co}_pnt^(1-@{co}_muc);

// Demand for domestic intermediate goods
@{co}_htc = @{co}_nutc*(@{co}_pht/@{co}_pttc)^(-@{co}_mutc)*@{co}_ttc;

@#for it in countries - [ co ]
@#if !steady

// Import adjustment cost
@{co}@{it}_gammaimc = @{co}_gammaimc1/2*((@{co}@{it}_imc/@{co}_qc)/(@{co}@{it}_imc(-1)/@{co}_qc(-1))-1)^2;

// Auxiliary equation for transformation of import adjustment cost
@{co}@{it}_gammaimcdag = 1-@{co}@{it}_gammaimc-@{co}_gammaimc1*((@{co}@{it}_imc/@{co}_qc)/(@{co}@{it}_imc(-1)/@{co}_qc(-1))-1)*(@{co}@{it}_imc/@{co}_qc)/(@{co}@{it}_imc(-1)/@{co}_qc(-1));

@#else // !steady
@{co}@{it}_gammaimc = 0;
@{co}@{it}_gammaimcdag = 1;
@#endif // !steady

@#endfor // countries - [ co ]


// Private investment good firm

// Private investment good
@{co}_tti^((@{co}_muti-1)/@{co}_muti) = (@{co}_nuti)^(1/@{co}_muti)*@{co}_hti^(1-1/@{co}_muti)+(1-@{co}_nuti)^(1/@{co}_muti)*@{co}_imi^(1-1/@{co}_muti);

// Private investment good
@{co}_qi^((@{co}_mui-1)/@{co}_mui) = (@{co}_nui)^(1/@{co}_mui)*@{co}_tti^(1-1/@{co}_mui)+(1-@{co}_nui)^(1/@{co}_mui)*@{co}_nti^(1-1/@{co}_mui);

// Demand for domestic intermediate goods
@{co}_nti = (1-@{co}_nui)*(@{co}_pnt/@{co}_pi)^(-@{co}_mui)*@{co}_qi;

// Price of the investment good (TRADABLE)  
@{co}_ptti^(1-@{co}_muti) = (@{co}_nuti)*@{co}_pht^(1-@{co}_muti)+(1-@{co}_nuti)*@{co}_pimi^(1-@{co}_muti);

// Price of the investment good
@{co}_pi^(1-@{co}_mui) = (@{co}_nui)*@{co}_ptti^(1-@{co}_mui)+(1-@{co}_nui)*(@{co}_pnt)^(1-@{co}_mui);

// Auxiliary equation for the price of the investment good in steady state
@#if steady
@{co}_pibar = @{co}_pi;
@#endif

// Demand for domestic intermediate goods
@{co}_hti = @{co}_nuti*(@{co}_pht/@{co}_ptti)^(-@{co}_muti)*@{co}_tti;

@#for it in countries - [ co ]
@#if !steady

// Import adjustment cost
@{co}@{it}_gammaimi = @{co}_gammaimi1/2*((@{co}@{it}_imi/@{co}_qi)/(@{co}@{it}_imi(-1)/@{co}_qi(-1))-1)^2;

// Auxiliary equation for transformation of import adjustment cost
@{co}@{it}_gammaimidag = 1-@{co}@{it}_gammaimi-@{co}_gammaimi1*((@{co}@{it}_imi/@{co}_qi)/(@{co}@{it}_imi(-1)/@{co}_qi)-1)*((@{co}@{it}_imi/@{co}_qi)/(@{co}@{it}_imi(-1)/@{co}_qi(-1)));

@#else // !steady
@{co}@{it}_gammaimi = 0;
@{co}@{it}_gammaimidag = 1;
@#endif // !steady
@#endfor // countries - [ co ]

// Trade balance
@{co}_tb =
@#for it in countries - [ co ]
+@{co}@{it}_rer*@{it}@{co}_pim*@{it}_size/@{co}_size*@{it}@{co}_im
-@{co}@{it}_pim*@{co}@{it}_im
@#endfor
;

// Aggregate exports (volume)
@{co}_ex =
@#for it in countries - [ co ]
+@{it}_size/@{co}_size*@{it}@{co}_im
@#endfor
;

//-------------
//-------------
// Fiscal and monetary authorities
//-------------
//-------------

//-------------
// Fiscal authority
//-------------

// Government budget constraint, using @{co}_pg = @{co}_pht

@#if co == countries[1] || co == countries[2] || co == countries[3] 

	@{co}_pnt(-1)*@{co}_g(-1)+@{co}_tr(-1)
	+@{co}_b(-1)*@{co}_pic(-1)^(-1)+@{co}_m(-2)*@{co}_pic(-1)^(-1) = @{co}_tauc(-1)*@{co}_c(-1)+(@{co}_taun(-1)+@{co}_tauwh(-1))*(@{co}_wi(-1)*@{co}_ndi(-1)+@{co}_wj(-1)*@{co}_ndj(-1))+@{co}_tauwf(-1)*@{co}_w(-1)*@{co}_nd(-1)+@{co}_tauk(-1)*(@{co}_rk(-1)*@{co}_u(-1)-(@{co}_gammau(-1)+@{co}_delta)*@{co}_pi(-1))*@{co}_k(-1)+@{co}_taud(-1)*@{co}_d(-1)+@{co}_t(-1)+(@{co}_r(-1)*(1-@{co}_gammab(-1)))^(-1)*@{co}_b+@{co}_m(-1);

@#else

	@{co}_pnt(-1)*@{co}_g(-1)+@{co}_tr(-1)
	+@{co}_b(-1)*@{co}_pic(-1)^(-1)+@{co}_m(-2)*@{co}_pic(-1)^(-1) = @{co}_tauc(-1)*@{co}_c(-1)+(@{co}_taun(-1)+@{co}_tauwh(-1))*(@{co}_wi(-1)*@{co}_ndi(-1)+@{co}_wj(-1)*@{co}_ndj(-1))+@{co}_tauwf(-1)*@{co}_w(-1)*@{co}_nd(-1)+@{co}_tauk(-1)*(@{co}_rk(-1)*@{co}_u(-1)-(@{co}_gammau(-1)+@{co}_delta)*@{co}_pi(-1))*@{co}_k(-1)+@{co}_taud(-1)*@{co}_d(-1)+@{co}_t(-1)+(@{co}_r(-1))^(-1)*@{co}_b+@{co}_m(-1);

@#endif

// Government spending, using @{co}_pg = @{co}_pht
@{co}_pnt*@{co}_g = @{co}_gy*@{co}_pybar*@{co}_ybar;

@#if !steady

// Transfers
@{co}_tr = @{co}_try*@{co}_pybar*@{co}_ybar;

// Fiscal rule
@{co}_t/(@{co}_pybar*@{co}_ybar) = @{co}_phitb*(@{co}_b/(@{co}_pybar*@{co}_ybar)-@{co}_bytarget);

@#else // !steady
@{co}_t = 0;
@{co}_b = @{co}_bytarget*@{co}_pybar*@{co}_ybar;
@#endif // !steady

@#if steady

// Auxiliary equation for steady-state output
@{co}_ybar = @{co}_y;

// Auxiliary equation for steady-state output
@{co}_ytbar = @{co}_yst;

// Auxiliary equation for steady-state output
@{co}_ynbar = @{co}_ysn;

// Auxiliary equation for steady-state output deflator
@{co}_pybar = @{co}_py;

// Auxiliary equation for the steady-state lump-sum transfers-to-output ratio
@{co}_trybar = @{co}_tr/(@{co}_pybar*@{co}_ybar);

@#endif // steady

// Auxiliary equation for determining the distribution of lump-sum taxes
@{co}_ti = @{co}_upsilont*@{co}_t;
/* Note: Valid parameter space: 0 <= upsilont <= 1/(1-omega) with
upsilont = 0:            ti = 0, tj = 1/omega t
upsilont = 1:            ti = tj = t
upsilont = 1/(1-omega):  ti = 1/(1-omega) t, tj = 0. */

// Auxiliary equation for determining the distribution of lump-sum transfers
@{co}_tri = @{co}_upsilontr*@{co}_tr;
/* Note: Valid parameter space: 0 <= upsilontr <= 1/(1-omega) with
upsilontr = 0:            tri = 0, trj = 1/omega tr
upsilontr = 1:            tri = trj = tr
upsilontr = 1/(1-omega):  tri = 1/(1-omega) tr, trj = 0. */

//-------------
// Monetary authority
//-------------

@#if !steady

	// Monetary policy rule
	@#if co == countries[3]

		@{co}_r^4-1 = @{ea}_phirr*(@{co}_r(-1)^4-1)+(1-@{ea}_phirr)*(@{co}_rrstar^4*@{co}_pi4target-1
		+@{ea}_phirpi*(@{ea}_pic4-@{co}_pi4target))
		+@{ea}_phirgy*(@{ea}_ygrowth-1)+@{ea}_epsr;

	@#else // co == countries[2]

		@#if co == countries[1] // NOTE: the parity condition always with respect to EAC

			@{co}_rerdep/@{co3}_rerdep*@{co}_pic/@{co3}_pic-1=0;

		@#else // co == countries[1]
		
			@#if co == countries[2]
			
				@{co}_rerdep/@{co2}_rerdep*@{co}_pic/@{co2}_pic-1=0;
				
			@#else

				@{co}_r^4-1 = @{co}_phirr*(@{co}_r(-1)^4-1)+(1-@{co}_phirr)*(@{co}_rrstar^4*@{co}_pi4target-1+@{co}_phirpi*(@{co}_pic4-@{co}_pi4target))+@{co}_phirgy*(@{co}_y/@{co}_y(-1)-1)+@{co}_epsr;
			@#endif
			
		@#endif // co == countries[1]
	@#endif // co == countries[2]

	// Definition of annual inflation
	@{co}_pic4 = @{co}_pic*@{co}_pic(-1)*@{co}_pic(-2)*@{co}_pic(-3);

	// Real interest rate
	@{co}_rr-1 = @{co}_r/@{co}_pic(+1)-1;

@#else // !steady

	@#if co != countries[1] && co != countries[2]
		@{co}_r^4-1 = @{co}_rrstar^4*@{co}_pi4target-1;
	@#else
	
		@#if co == countries[1]
			@{co}_r = @{co3}_r;
		@#else // co == countries[2]
			@{co}_r = @{co2}_r;
		@#endif
		
	@#endif

	@{co}_pic4 = @{co}_pi4target;
	@{co}_rr-1 = @{co}_r/@{co}_pi4target^(1/4)-1;
@#endif // !steady

// Equilibrium real interest rate
@{co}_rrstar-1 = 1/@{co}_beta-1;

//-------------
//-------------
// Aggregation, market clearing and resource constraint
//-------------
//-------------

//-------------
// Aggregation
//-------------

// Aggregate consumption
@{co}_c = (1-@{co}_omega)*@{co}_ci+@{co}_omega*@{co}_cj;

// Aggregate money holdings
@{co}_m = (1-@{co}_omega)*@{co}_mi+@{co}_omega*@{co}_mj;

// Aggregate capital stock
@{co}_k = (1-@{co}_omega)*@{co}_ki;

// Aggregate investment
@{co}_i = (1-@{co}_omega)*@{co}_ii;

// Aggregate lump-sum transfers
@{co}_trj = 
@#if omega_equals_zero[i]
@{co}_tr
@#else
1/@{co}_omega*@{co}_tr-(1-@{co}_omega)/@{co}_omega*@{co}_tri
@#endif
;

// Aggregate lump-sum taxes
@{co}_tj = 
@#if omega_equals_zero[i]
@{co}_t
@#else
1/@{co}_omega*@{co}_t-(1-@{co}_omega)/@{co}_omega*@{co}_ti
@#endif
;

// Aggregate transaction costs
@{co}_gammav = (1-@{co}_omega)*@{co}_ci*@{co}_gammavi+@{co}_omega*@{co}_cj*@{co}_gammavj;

//-------------
// Market clearing
//-------------

// Labour markets for household I

// Wedge between labour demand/hours worked and labour supply
@{co}_ni = @{co}_si*@{co}_ndi;

// Wage dispersion
@{co}_si = (1-@{co}_xii)*(@{co}_witilde/@{co}_wi)^(-@{co}_etai)+@{co}_xii*(@{co}_wi(-1)/@{co}_wi)^(-@{co}_etai)*(@{co}_pic/(@{co}_pic(-1)^@{co}_chii*@{co}_pi4target^(1/4*(1-@{co}_chii))))^(@{co}_etai)*@{co}_si(-1);

// Labour markets for household J

// Wedge between labour demand/hours worked and labour supply
@{co}_nj = @{co}_sj*@{co}_ndj;

// Wage dispersion
@{co}_sj = (1-@{co}_xij)*(@{co}_wjtilde/@{co}_wj)^(-@{co}_etaj)+@{co}_xij*(@{co}_wj(-1)/@{co}_wj)^(-@{co}_etaj)*(@{co}_pic/(@{co}_pic(-1)^@{co}_chij*@{co}_pi4target^(1/4*(1-@{co}_chij))))^(@{co}_etaj)*@{co}_sj(-1);

// Rental market for capital

// Equality of capital input and effective capital services
@{co}_u*@{co}_k = @{co}_kd;

// Intermediate-good markets

// Wedge between aggregate demand and production, using @{co}_x = @{co2}_size/@{co}_size*@{co2}_im
@{co}_ysn = @{co}_snt*@{co}_nt;

//  nontradables aggregate demand
@{co}_nt =  @{co}_nti+@{co}_ntc+@{co}_g;

// Aggregate demand for domestic intermediate goods, using @{co}_hg = @{co}_g
@{co}_ht = @{co}_htc+@{co}_hti;

// Price dispersion in the domestic markets
@{co}_sh = (1-@{co}_xih)*(@{co}_phttilde/@{co}_pht)^(-@{co}_thetat)+@{co}_xih*(@{co}_piht/(@{co}_piht(-1)^@{co}_chih*@{co}_pi4target^(1/4*(1-@{co}_chih))))^@{co}_thetat*@{co}_sh(-1);

// Price dispersion in the foreign markets
@#for it in countries - [ co ]
@{co}@{it}_sx = (1-@{co}_xix)*(@{it}@{co}_pimtilde/@{it}@{co}_pim)^(-@{co}_thetat)+@{co}_xix*(@{it}@{co}_piim/(@{it}@{co}_piim(-1)^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chih))))^@{co}_thetat*@{co}@{it}_sx(-1);
@#endfor

// Price dispersion in the domestic markets
@{co}_snt = (1-@{co}_xin)*(@{co}_pnttilde/@{co}_pnt)^(-@{co}_thetan)+@{co}_xin*(@{co}_pint/(@{co}_pint(-1)^@{co}_chin*@{co}_pi4target^(1/4*(1-@{co}_chin))))^@{co}_thetan*@{co}_snt(-1);

// Final-good markets

// Aggregate consumption and transaction cost
@{co}_qc = @{co}_c+@{co}_gammav;

// Aggregate investment and capital utilisation cost
@{co}_qi = @{co}_i+@{co}_k*@{co}_gammau;

//-------------
// Resource constraint
//-------------

// Aggregate nominal demand, using @{co}_pg = @{co}_pht and @{co}_qg = @{co}_g   
@{co}_py*@{co}_y = @{co}_qc+@{co}_pi*@{co}_qi+@{co}_pnt*@{co}_g
@#for it in countries - [ co ]
+@{co}@{it}_rer*@{it}@{co}_pim*@{it}_size/@{co}_size*@{it}@{co}_im
@#if !steady
-@{co}@{it}_pim*(@{co}@{it}_imc*(1-@{co}@{it}_gammaimc)/@{co}@{it}_gammaimcdag)
-@{co}@{it}_pim*(@{co}@{it}_imi*(1-@{co}@{it}_gammaimi)/@{co}@{it}_gammaimidag)
@#else
-@{co}@{it}_pim*@{co}@{it}_imc
-@{co}@{it}_pim*@{co}@{it}_imi
@#endif
@#endfor
;

// Aggregate real demand
@{co}_y = @{co}_yst+@{co}_ysn;


//-------------
//-------------
// Autoregressive shocks
//-------------
//-------------

// Productivity shocks
log(@{co}_zt) = (1-@{co}_rhozt)*log(@{co}_ztbar)+@{co}_rhozt*log(@{co}_zt(-1))+@{co}_epszt;
log(@{co}_zn) = (1-@{co}_rhozn)*log(@{co}_znbar)+@{co}_rhozn*log(@{co}_zn(-1))+@{co}_epszn;

// Government spending shock
@{co}_gy = (1-@{co}_rhog)*@{co}_gybar+@{co}_rhog*@{co}_gy(-1)+@{co}_epsg;

// Transfer shock
@{co}_try = (1-@{co}_rhotr)*@{co}_trybar+@{co}_rhotr*@{co}_try(-1)+@{co}_epstr;

// Consumption tax shock
@{co}_tauc = (1-@{co}_rhotauc)*@{co}_taucbar+@{co}_rhotauc*@{co}_tauc(-1)+@{co}_epstauc;

// Dividend income tax shock
@{co}_taud = (1-@{co}_rhotaud)*@{co}_taudbar+@{co}_rhotaud*@{co}_taud(-1)+@{co}_epstaud;

// Capital income tax shock
@{co}_tauk = (1-@{co}_rhotauk)*@{co}_taukbar+@{co}_rhotauk*@{co}_tauk(-1)+@{co}_epstauk;

// Labour income tax shock
@{co}_taun = (1-@{co}_rhotaun)*@{co}_taunbar+@{co}_rhotaun*@{co}_taun(-1)+@{co}_epstaun;

// Payroll tax shock: households
@{co}_tauwh = (1-@{co}_rhotauwh)*@{co}_tauwhbar+@{co}_rhotauwh*@{co}_tauwh(-1)+@{co}_epstauwh;

// Payroll tax shock: firms
@{co}_tauwf = (1-@{co}_rhotauwf)*@{co}_tauwfbar+@{co}_rhotauwf*@{co}_tauwf(-1)+@{co}_epstauwf;

// Wage cost push shock
@{co}_wcst = (1-@{co}_rhowcst)*@{co}_wcstbar+@{co}_rhowcst*@{co}_wcst(-1)+@{co}_epswcst;

// Preference shock
log(@{co}_zcon) = (1-@{co}_rhozcon)*log(@{co}_zconbar)+@{co}_rhozcon*log(@{co}_zcon(-1))+@{co}_epszcon;

// Investment specific shock
log(@{co}_zinv) = (1-@{co}_rhozinv)*log(@{co}_zinvbar)+@{co}_rhozinv*log(@{co}_zinv(-1))+@{co}_epszinv;


//-------------
//-------------
// Conditions for calibration and reporting
//-------------
//-------------

// Aggregate nominal consumption share
@{co}_cy = @{co}_c/(@{co}_py*@{co}_y);

// Aggregate nominal investment share
@{co}_iy = @{co}_pi*@{co}_i/(@{co}_py*@{co}_y);

// Aggregate nominal import share  
@{co}_imy = (@{co}_pimc*@{co}_imc+@{co}_pimi*@{co}_imi)/(@{co}_py*@{co}_y);

// Aggregate nominal import share for consumption goods 
@{co}_imcy = @{co}_pimc*@{co}_imc/(@{co}_py*@{co}_y);

// Aggregate nominal import share for investment goods to be corrected with multilateral price of imports
@{co}_imiy = @{co}_pimi*@{co}_imi/(@{co}_py*@{co}_y);

// Aggregate debt-to-output ratio
@{co}_by = @{co}_b/(@{co}_pybar*@{co}_ybar);

// Aggregate lump-sum tax-to-output ratio
@{co}_ty = @{co}_t/(@{co}_pybar*@{co}_ybar);

// Aggregate labour cost share
@{co}_lcy = ((1+@{co}_tauwf)*@{co}_w*@{co}_nd)/(@{co}_py*@{co}_y);

// Aggregate nominal Wage share
@{co}_wy = (@{co}_w*@{co}_nd)/(@{co}_py*@{co}_y);

// NT sector nominal Wage share
@{co}_wnty = (@{co}_w*@{co}_ndn)/(@{co}_pnt*@{co}_ysn);

// T sector nominal Wage share
@{co}_whty = (@{co}_w*@{co}_ndt)/(@{co}_pht*@{co}_yst);

// T sector share
@{co}_yhty = @{co}_pht*@{co}_yst/(@{co}_py*@{co}_y);

// NT sector share
@{co}_ynty = @{co}_pnt*@{co}_ysn/(@{co}_py*@{co}_y);

// Output gap
@#if !steady
@{co}_ygap = @{co}_y/@{co}_ybar-1;
@#else
@{co}_ygap = 0;
@#endif

// Output growth (gross rate)
@{co}_ygrowth = @{co}_y/@{co}_y(-1);

// Output growth (gross rate yoy)
@{co}_ygrowth4 = @{co}_y/@{co}_y(-4);

// Domestic nominal output as a share of world nominal output
@{co}_yshare  = @{co}_size*@{co}_py*@{co}_y/@{co}_rer/(
@#for it in countries
+@{it}_size*@{it}_py*@{it}_y/@{it}_rer
@#endfor
);

// Interest (semi-)elasticity of money demand
@{co}_epsilonm = -1/8*1/(@{co}_r*(@{co}_gammav2*@{co}_r+@{co}_r-1));

// Trade balance-to-GDP ratio
@{co}_tby = @{co}_tb/(@{co}_py*@{co}_y);

@#for it in countries - [ co ]

// Imports of consumption goods 
@{co}@{it}_imcy  = @{co}@{it}_pim*@{co}@{it}_imc/(@{co}_py*@{co}_y);

// Imports of investment goods
@{co}@{it}_imiy = @{co}@{it}_pim*@{co}@{it}_imi/(@{co}_py*@{co}_y);

// Exports of consumption goods to gdp
@{co}@{it}_excy  = @{it}_size/@{co}_size*@{co}@{it}_rer*@{it}@{co}_pim*@{it}@{co}_imc/(@{co}_py*@{co}_y);

// Exports of investment goods to gdp
@{co}@{it}_exiy  = @{it}_size/@{co}_size*@{co}@{it}_rer*@{it}@{co}_pim*@{it}@{co}_imi/(@{co}_py*@{co}_y);

@#endfor

// Internal real exchange rate
@{co}_internalrer = @{co}_pnt/@{co}_pttc;

@#endfor // End of main country loop

@#for co in countries[1:4]
@#define co5 = countries[5]

//-------------
// Bilateral equations versus country N
//-------------

// Euler equation for internationally traded bonds
@#if !steady
1 = @{co5}_r*(1-@{co}_gammab)*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*@{co}_rerdep(+1)/@{co5}_pic(+1);
@#else
@{co}_gammab = 0;
@#endif

// International transaction cost ('risk premium')
@#if !steady
@{co}_gammab = @{co}_gammab1*(exp(@{co}_rer*@{co}_bf/@{co5}_pic/(@{co}_py*@{co}_y)-@{co}_bfytarget)-1)
@#if co == countries[4]
-@{co}_rp
@#endif
;
@#else
@{co}_bf = (@{co}_bfytarget*@{co}_py*@{co}_y)/@{co}_rer*@{co5}_pic;
@#endif

// Risk premium shock
@#if !steady
@{co}_rp = @{co}_rhorp*@{co}_rp(-1)+@{co}_epsrp;
@#else
@{co}_rp = 0;
@#endif

// Definition of the rate of real exchange-rate depreciation
@{co}_rerdep = @{co}_rer/@{co}_rer(-1);

// Definition of the terms of trade
@{co}_tot = @{co}@{co5}_pim/(@{co}_rer*@{co5}@{co}_pim);

@#endfor // Global loop

//-------------
// Closure conditions
//-------------

@#define co = countries[1]
@#define co2 = countries[2]
@#define co3 = countries[3]
@#define co4 = countries[4]
@#define co5 = countries[5]

@{co5}_size*@{co5}_bf =
@#for it in countries[1:4]
-@{it}_size*@{it}_bf
@#endfor
;

// Net foreign asset position
@#for it in countries[1:4]

	@#if it == countries[4] || it == countries[5]

		@{it}_bf/@{co5}_r(-1) = @{it}_bf(-1)+@{it}_tb(-1)/@{it}_rer(-1);

	@#else
	
		@#if it == countries[3]

			@{it}_bf/@{co5}_r(-1) = -@{it}_bh/@{co}_r(-1) / @{it}_rer(-1) + @{it}_bh(-1) / @{it}_rer(-2) + @{it}_bf(-1) + @{it}_tb(-1)/@{it}_rer(-1);

		@#else
		
			@#if it == countries[2]

				@{it}_bf/@{co5}_r(-1) = -@{it}_bh/@{co3}_r(-1)*@{it}@{co3}_rer(-1)/@{it}_rer(-1) + @{it}_bh(-1)*@{it}@{co3}_rer(-2) / @{it}_rer(-2) + @{it}_bf(-1) + @{it}_tb(-1)/@{it}_rer(-1);
				
			@#else // if it == countries[1]
			
				@{it}_bf/@{co5}_r(-1) = -@{it}_bh/@{co3}_r(-1)*@{it}@{co3}_rer(-1)/@{it}_rer(-1) + @{it}_bh(-1)*@{it}@{co3}_rer(-2) / @{it}_rer(-2) + @{it}_bf(-1) + @{it}_tb(-1)/@{it}_rer(-1);
			
			@#endif

		@#endif
		
	@#endif
	
@#endfor

@{co5}_rer = 1;

@{co}@{co3}_nerdep = @{co}_rerdep/@{co3}_rerdep*@{co}_pic/@{co3}_pic;
@{co2}@{co3}_nerdep = @{co2}_rerdep/@{co3}_rerdep*@{co2}_pic/@{co3}_pic;

// Euler equation for euroarea traded bonds
@#if !steady
1 = @{co3}_r*(1-@{co}_gammabh)*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*@{co}@{co3}_rer(+1)/@{co}@{co3}_rer   /@{co3}_pic(+1);
1 = @{co3}_r*(1-@{co2}_gammabh)*@{co2}_beta*@{co2}_lambdai(+1)/@{co2}_lambdai*@{co2}@{co3}_rer(+1)/@{co2}@{co3}_rer   /@{co3}_pic(+1);
@#else
@{co}_gammabh = 0;
@{co2}_gammabh = 0;
@#endif

// International transaction cost ('risk premium')
@#if !steady
@{co}_gammabh = @{co3}_gammab1*(exp(@{co}@{co3}_rer*@{co}_bh/@{co3}_pic/(@{co}_py*@{co}_y)-@{co}_bhytarget)-1);
@{co2}_gammabh = @{co3}_gammab1*(exp(@{co2}@{co3}_rer*@{co2}_bh/@{co3}_pic/(@{co2}_py*@{co2}_y)-@{co2}_bhytarget)-1);
@#else
@{co}_bh = (@{co}_bhytarget*@{co}_py*@{co}_y)/@{co}@{co3}_rer*@{co3}_pic;
@{co2}_bh = (@{co2}_bhytarget*@{co2}_py*@{co2}_y)/@{co2}@{co3}_rer*@{co3}_pic;
@#endif

@{co3}_size*@{co3}_bh+@{co2}_size*@{co2}_bh+@{co}_size*@{co}_bh = 0;

//-------------
// Euroarea-wide variables
//-------------

// GDP
@{ea}_y = (@{co}_size*@{co}_pybar*@{co}_y 	+ @{co2}_size*@{co}@{co2}_rerbar*@{co2}_pybar *@{co2}_y	+ @{co3}_size*@{co}@{co3}_rerbar*@{co3}_pybar *@{co3}_y	)/(@{co}_size+@{co2}_size+@{co3}_size);

// GDP growth
@{ea}_ygrowth= @{ea}_y/@{ea}_y(-1);

// GDP growth (yoy)
@{ea}_ygrowth4= @{ea}_y/@{ea}_y(-4);

// Money
@{ea}_m = (@{co}_size*@{co}_m + @{co2}_size*@{co}@{co2}_rerbar*@{co2}_m + @{co3}_size*@{co}@{co3}_rerbar*@{co3}_m)/(@{co}_size+@{co2}_size+@{co3}_size);

@{ea}_bf = (@{co}_size*@{co}_bf + @{co2}_size*@{co2}_bf + @{co3}_size*@{co3}_bf)/(@{co}_size+@{co2}_size+@{co3}_size);

// Annual inflation
@{ea}_pic4 = 
  @{co}_pic4^(@{co}_size/(@{co}_size+@{co2}_size+@{co3}_size)) * @{co2}_pic4^(@{co2}_size/(@{co}_size+@{co2}_size+@{co3}_size))* @{co3}_pic4^(@{co3}_size/(@{co}_size+@{co2}_size+@{co3}_size));

// Productivity
log(@{ea}_z) = (1-@{ea}_rhoz)*log(@{ea}_zbar)+@{ea}_rhoz*log(@{ea}_z(-1))+@{ea}_epsz;

// Auxiliary equation for steady-state output
@#if steady
@{ea}_ybar = @{ea}_y;
@#endif

end;
