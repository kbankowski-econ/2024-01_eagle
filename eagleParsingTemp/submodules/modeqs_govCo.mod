@#if(steady)
model(block, bytecode, cutoff = 0);
@#else
model(block, bytecode, cutoff=0);
@#endif


@#for i in 1: ctryNumber

@#include "dynamicCtryList7.mod"

// Core model begins

//-------------
//-------------
// Households
//-------------
//-------------

//-------------
// Household I
//-------------

@#include "modeqs_hhI_govCons.mod"

// Euler equation for government bonds
// all other that are not Germany, not US and not the RoW
@#if co != countries[ctryNumber] && co != countries[ctryNumber-1] && co != countries[ctryNumber-2]  && co != countries[ctryNumber-3] 
@#if !steady
@{co}_r*(1-@{co}_gammabh) = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai(+1)*@{co}_pic(+1);
@#else
@{co}_r                   = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai    *@{co}_pic;
@#endif
@#endif
// Germany
@#if co == countries[ctryNumber-3]
@{co}_r = @{co}_beta^(-1)*@{co}_lambdai/@{co}_lambdai(+1)*@{co}_pic(+1);
@#endif
// US and the RoW
@#if co == countries[ctryNumber] || co == countries[ctryNumber-1]  || co == countries[ctryNumber-2] 
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

@#include "modeqs_hhJ_govCons.mod"

// Budget constraint
(1+@{co}_tauc+@{co}_gammavj)*@{co}_cj+@{co}_mj = (1-@{co}_taun-@{co}_tauwh)*@{co}_wj*@{co}_nj+@{co}_trj-@{co}_tj+@{co}_mj(-1)*@{co}_pic^(-1);

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

@#include "modeqs_Prod.mod"

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
+@{co}_pex*@{co}_ex
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


// Optimal price contract set in domestic markets (FOC)
@{co}_pextilde/@{co}_pex = @{co}_thetat/(@{co}_thetat-1)*@{co}_fx/@{co}_gx;

// Definition of fh
@{co}_fx = @{co}_mct*@{co}_ex+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_piex(+1)/(@{co}_piex^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^@{co}_thetat*@{co}_fx(+1);

// Definition of gh
@{co}_gx = @{co}_pex*@{co}_ex+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{co}_piex(+1)/(@{co}_piex^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^(@{co}_thetat-1)*@{co}_gx(+1);

// Aggregate intermediate-good price dynamics
@{co}_pex^(1-@{co}_thetat) = (1-@{co}_xix)*@{co}_pextilde^(1-@{co}_thetat)+@{co}_xix*(@{co}_pex(-1)/@{co}_pic)^(1-@{co}_thetat)*(@{co}_piex(-1)^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix)))^(1-@{co}_thetat);

// Intermediate-good price inflation
@{co}_piex = @{co}_pex/@{co}_pex(-1)*@{co}_pic;
//---------------
// import pricing
//---------------

@#for it in countries - [ co ]

// Optimal price contract set in foreign markets (FOC), using @{co}_pxtilde = @{it}_pimtilde
// @{it}@{co}_pimtilde/@{it}@{co}_pim = @{co}_cpim*@{co}_thetat/(@{co}_thetat-1)*@{co}@{it}_fx/@{co}@{it}_gx;

// Definition of fx
// @{co}@{it}_fx = @{it}_size/@{co}_size*@{it}@{co}_im*@{co}_mct+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{it}@{co}_piim(+1)/(@{it}@{co}_piim^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^@{co}_thetat*@{co}@{it}_fx(+1);

// Definition of gx   
// @{co}@{it}_gx = @{co}@{it}_rer*@{it}@{co}_pim*@{it}_size/@{co}_size*@{it}@{co}_im+@{co}_xix*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*(@{it}@{co}_piim(+1)/(@{it}@{co}_piim^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^(@{co}_thetat-1)*@{co}@{it}_gx(+1);

// Aggregate intermediate-good price dynamics, using @{co}_px = @{it}_pim
// @{it}@{co}_pim^(1-@{co}_thetat) = (1-@{co}_xix)*@{it}@{co}_pimtilde^(1-@{co}_thetat)+@{co}_xix*(@{it}@{co}_pim(-1)/@{it}_pic)^(1-@{co}_thetat)*(@{it}@{co}_piim(-1)^@{co}_chix*@{it}_pi4target^(1/4*(1-@{co}_chih)))^(1-@{co}_thetat);

// Intermediate-good price inflation, using @{co}_pix = @{it}_piim
// @{it}@{co}_piim = @{it}@{co}_pim/@{it}@{co}_pim(-1)*@{it}_pic;

// Bilateral real exchange rate
@{co}@{it}_rer = @{co}_rer/@{it}_rer;

// Auxiliary equation for steady-state output
@#if steady
@{co}@{it}_rerbar = @{co}@{it}_rer;
@#endif

//Terms of Trade
@{co}@{it}_tot = @{it}_pex*@{co}@{it}_rer/@{co}_pex;

@#endfor // countries - [ co ]

// Total imports 
@{co}_im = 
@#for aItem in demandItems
+@{co}_im@{aItem}
@#endfor
;

// Total import deflator
@{co}_im*@{co}_pim  = 
@#for aItem in demandItems
+@{co}_pim@{aItem}*@{co}_im@{aItem}
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

@#for aItem in demandItems

// Private consumption good (import)
@{co}_im@{aItem}^((@{co}_mum@{aItem}-1)/@{co}_mum@{aItem}) =
@#for it in countries - [ co, coResid ]
@#if !steady
+@{co}@{it}_num@{aItem} ^(1/@{co}_mum@{aItem})*((1-@{co}@{it}_gammaim@{aItem})*@{co}@{it}_im@{aItem})^(1-1/@{co}_mum@{aItem})
@#else
+@{co}@{it}_num@{aItem} ^(1/@{co}_mum@{aItem})*@{co}@{it}_im@{aItem}^(1-1/@{co}_mum@{aItem})
@#endif
@#endfor
+(1
@#for it in countries - [ co, coResid ]
-@{co}@{it}_num@{aItem}
@#endfor
@#if !steady
)^(1/@{co}_mum@{aItem})*((1-@{co}@{coResid}_gammaim@{aItem})*@{co}@{coResid}_im@{aItem})^(1-1/@{co}_mum@{aItem});
@#else
)^(1/@{co}_mum@{aItem})*@{co}@{coResid}_im@{aItem}^(1-1/@{co}_mum@{aItem});
@#endif

@#for it in countries - [ co, co2, coResid]

// Demand for bilateral consumption import goods
@#if !steady
@{co}@{it}_im@{aItem} = @{co}@{it}_num@{aItem}*((@{it}_pex*@{co}@{it}_rer)/(@{co}@{it}_gammaim@{aItem}dag*@{co}_pim@{aItem}))^(-@{co}_mum@{aItem})*@{co}_im@{aItem}/(1-@{co}@{it}_gammaim@{aItem});
@#else
@{co}@{it}_im@{aItem} = @{co}@{it}_num@{aItem}*((@{it}_pex*@{co}@{it}_rer)/@{co}_pim@{aItem})^(-@{co}_mum@{aItem})*@{co}_im@{aItem};
@#endif

@#endfor

@{co}@{coResid}_im@{aItem} = (1
@#for it in countries - [ co, coResid ]
-@{co}@{it}_num@{aItem}
@#endfor
@#if !steady
)*((@{coResid}_pex*@{co}@{coResid}_rer)/(@{co}@{coResid}_gammaim@{aItem}dag*@{co}_pim@{aItem}))^(-@{co}_mum@{aItem})*@{co}_im@{aItem}/(1-@{co}@{coResid}_gammaim@{aItem});
@#else
)*((@{coResid}_pex*@{co}@{coResid}_rer)/@{co}_pim@{aItem})^(-@{co}_mum@{aItem})*@{co}_im@{aItem};
@#endif

// Price of the consumption good (import)
@{co}_pim@{aItem}^(1-@{co}_mum@{aItem}) =
@#for it in countries - [ co, coResid ]
@#if !steady
+@{co}@{it}_num@{aItem} *((@{it}_pex*@{co}@{it}_rer)/@{co}@{it}_gammaim@{aItem}dag)^(1-@{co}_mum@{aItem})
@#else
+@{co}@{it}_num@{aItem} * (@{it}_pex*@{co}@{it}_rer)^(1-@{co}_mum@{aItem})
@#endif
@#endfor
+(1
@#for it in countries - [ co, coResid ]
-@{co}@{it}_num@{aItem}
@#endfor
@#if !steady
)*((@{coResid}_pex*@{co}@{coResid}_rer)/@{co}@{coResid}_gammaim@{aItem}dag)^(1-@{co}_mum@{aItem});
@#else
)*(@{coResid}_pex*@{co}@{coResid}_rer)^(1-@{co}_mum@{aItem});
@#endif

// Private consumption good (import) inflation
@{co}_piim@{aItem} = @{co}_pim@{aItem}/@{co}_pim@{aItem}(-1)*@{co}_pic;

@#endfor

// Private consumption good (import) inflation
@{co}_piimc4 = @{co}_pimc/@{co}_pimc(-4)*@{co}_pic4;

// Private consumption good (import) inflation
@{co}_piex4 = @{co}_pex/@{co}_pex(-4)*@{co}_pic4;

// Wedge between aggregate demand and production, using @{co}_x = @{co2}_size/@{co}_size*@{co2}_im
@{co}_yst = @{co}_sh*@{co}_ht+@{co}_sx*@{co}_ex;

// Aggregate demand for bilateral imported intermediate goods
@#for it in countries - [ co ]
@{co}@{it}_im = 
@#for aItem in demandItems
+@{co}@{it}_im@{aItem}
@#endfor
;
@#endfor

// Private consumption good firm

@#for aItem in demandItems

// Private consumption good (tradable)
@{co}_tt@{aItem}^((@{co}_mut@{aItem}-1)/@{co}_mut@{aItem}) = (@{co}_nut@{aItem})^(1/@{co}_mut@{aItem})*@{co}_ht@{aItem}^(1-1/@{co}_mut@{aItem})+(1-@{co}_nut@{aItem})^(1/@{co}_mut@{aItem})*@{co}_im@{aItem}^(1-1/@{co}_mut@{aItem});

// Private consumption good  (total)
@{co}_q@{aItem}^((@{co}_mu@{aItem}-1)/@{co}_mu@{aItem}) = (@{co}_nu@{aItem})^(1/@{co}_mu@{aItem})*@{co}_tt@{aItem}^(1-1/@{co}_mu@{aItem})+(1-@{co}_nu@{aItem})^(1/@{co}_mu@{aItem})*@{co}_nt@{aItem}^(1-1/@{co}_mu@{aItem});

// Demand for domestic intermediate goods - NONTRADABLE
@#if aItem == "c"
@{co}_nt@{aItem} = (1-@{co}_nu@{aItem})*(@{co}_pnt)^(-@{co}_mu@{aItem})*@{co}_q@{aItem};
@#else
@{co}_nt@{aItem} = (1-@{co}_nu@{aItem})*(@{co}_pnt/@{co}_p@{aItem})^(-@{co}_mu@{aItem})*@{co}_q@{aItem};
@#endif

// Price of the consumption good (tradable)  
@{co}_ptt@{aItem}^(1-@{co}_mut@{aItem}) = (@{co}_nut@{aItem})*@{co}_pht^(1-@{co}_mut@{aItem})+(1-@{co}_nut@{aItem})*@{co}_pim@{aItem}^(1-@{co}_mut@{aItem});

// Price of the consumption good 
@#if aItem == "c"
1^(1-@{co}_mu@{aItem}) = (@{co}_nu@{aItem})*@{co}_ptt@{aItem}^(1-@{co}_mu@{aItem})+(1-@{co}_nu@{aItem})*@{co}_pnt^(1-@{co}_mu@{aItem});
@#else
@{co}_p@{aItem}^(1-@{co}_mu@{aItem}) = (@{co}_nu@{aItem})*@{co}_ptt@{aItem}^(1-@{co}_mu@{aItem})+(1-@{co}_nu@{aItem})*@{co}_pnt^(1-@{co}_mu@{aItem});
@#endif

@#if aItem == "i"
// Auxiliary equation for the price of the investment good in steady state
// this only appears in the capacity utilisation cost; not needed for consumption where it is one by assumption; neither for gov demand components where there is no adjustment cost
@#if steady
@{co}_p@{aItem}bar = @{co}_p@{aItem};
@#endif
@#else
@#endif

// Demand for domestic intermediate goods
@{co}_ht@{aItem} = @{co}_nut@{aItem}*(@{co}_pht/@{co}_ptt@{aItem})^(-@{co}_mut@{aItem})*@{co}_tt@{aItem};


@#for it in countries - [ co ]
@#if !steady

// Import adjustment cost
@{co}@{it}_gammaim@{aItem} = @{co}_gammaim@{aItem}1/2*((@{co}@{it}_im@{aItem}/@{co}_q@{aItem})/(@{co}@{it}_im@{aItem}(-1)/@{co}_q@{aItem}(-1))-1)^2;

// Auxiliary equation for transformation of import adjustment cost
@#if aItem == "c"
@{co}@{it}_gammaim@{aItem}dag = 1-@{co}@{it}_gammaim@{aItem}-@{co}_gammaim@{aItem}1*((@{co}@{it}_im@{aItem}/@{co}_q@{aItem})/(@{co}@{it}_im@{aItem}(-1)/@{co}_q@{aItem}(-1))-1)*(@{co}@{it}_im@{aItem}/@{co}_q@{aItem})/(@{co}@{it}_im@{aItem}(-1)/@{co}_q@{aItem}(-1));
@#else
@{co}@{it}_gammaim@{aItem}dag = 1-@{co}@{it}_gammaim@{aItem}-@{co}_gammaim@{aItem}1*((@{co}@{it}_im@{aItem}/@{co}_q@{aItem})/(@{co}@{it}_im@{aItem}(-1)/@{co}_q@{aItem})-1)*((@{co}@{it}_im@{aItem}/@{co}_q@{aItem})/(@{co}@{it}_im@{aItem}(-1)/@{co}_q@{aItem}(-1)));
@#endif

@#else // !steady
@{co}@{it}_gammaim@{aItem} = 0;
@{co}@{it}_gammaim@{aItem}dag = 1;
@#endif // !steady

@#endfor // countries - [ co ]

@#endfor // aItem

// Trade balance
@{co}_tb =
@#for it in countries - [ co ]
+@{co}_pex*@{it}_size/@{co}_size*@{it}@{co}_im
-@{it}_pex*@{co}@{it}_rer*@{co}@{it}_im
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
// TODO: check the (1-@{co}_gammab(-1)) adjustment here, which is not in the fiscal extention
@#if co != countries[ctryNumber] && co != countries[ctryNumber-1]  && co != countries[ctryNumber-2] 

	@{co}_pcg(-1)*@{co}_cg(-1)+@{co}_pig(-1)*@{co}_ig(-1)+@{co}_tr(-1)
	+@{co}_b(-1)*@{co}_pic(-1)^(-1)+@{co}_m(-2)*@{co}_pic(-1)^(-1) = @{co}_tauc(-1)*@{co}_c(-1)+(@{co}_taun(-1)+@{co}_tauwh(-1))*(@{co}_wi(-1)*@{co}_ndi(-1)+@{co}_wj(-1)*@{co}_ndj(-1))+@{co}_tauwf(-1)*@{co}_w(-1)*@{co}_nd(-1)+@{co}_tauk(-1)*(@{co}_rk(-1)*@{co}_u(-1)-(@{co}_gammau(-1)+@{co}_delta)*@{co}_pi(-1))*@{co}_k(-1)+@{co}_taud(-1)*@{co}_d(-1)+@{co}_t(-1)+(@{co}_r(-1)*(1-@{co}_gammab(-1)))^(-1)*@{co}_b+@{co}_m(-1);

@#else

	@{co}_pcg(-1)*@{co}_cg(-1)+@{co}_pig(-1)*@{co}_ig(-1)+@{co}_tr(-1)
	+@{co}_b(-1)*@{co}_pic(-1)^(-1)+@{co}_m(-2)*@{co}_pic(-1)^(-1) = @{co}_tauc(-1)*@{co}_c(-1)+(@{co}_taun(-1)+@{co}_tauwh(-1))*(@{co}_wi(-1)*@{co}_ndi(-1)+@{co}_wj(-1)*@{co}_ndj(-1))+@{co}_tauwf(-1)*@{co}_w(-1)*@{co}_nd(-1)+@{co}_tauk(-1)*(@{co}_rk(-1)*@{co}_u(-1)-(@{co}_gammau(-1)+@{co}_delta)*@{co}_pi(-1))*@{co}_k(-1)+@{co}_taud(-1)*@{co}_d(-1)+@{co}_t(-1)+(@{co}_r(-1))^(-1)*@{co}_b+@{co}_m(-1);

@#endif

// Government spending, using @{co}_pg = @{co}_pht
@{co}_pcg*@{co}_cg = @{co}_cgy*@{co}_pybar*@{co}_ybar;
@{co}_pig*@{co}_ig = @{co}_igy*@{co}_pybar*@{co}_ybar;

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

@#if co == countries[ctryNumber] || co == countries[ctryNumber-1] || co == countries[ctryNumber-2]
	@{co}_r^4-1 = @{co}_phirr*(@{co}_r(-1)^4-1)+(1-@{co}_phirr)*(@{co}_rrstar^4*@{co}_pi4target-1+@{co}_phirpi*(@{co}_pic4-@{co}_pi4target))+@{co}_phirgy*(@{co}_y/@{co}_y(-1)-1)+@{co}_epsr;
@#else
	@#if co == countries[ctryNumber-3]
		@{co}_r^4-1 = @{ea}_phirr*(@{co}_r(-1)^4-1)+(1-@{ea}_phirr)*(@{co}_rrstar^4*@{co}_pi4target-1
		+@{ea}_phirpi*(@{ea}_pic4-@{co}_pi4target))
		+@{ea}_phirgy*(@{ea}_ygrowth-1)+@{ea}_epsr;
	@#else
		@{co}_rerdep/@{coGermany}_rerdep*@{co}_pic/@{coGermany}_pic-1=0;
	@#endif
@#endif

// Definition of annual inflation
@{co}_pic4 = @{co}_pic*@{co}_pic(-1)*@{co}_pic(-2)*@{co}_pic(-3);

// Real interest rate
@{co}_rr-1 = @{co}_r/@{co}_pic(+1)-1;

@#else // !steady

@#if co == countries[ctryNumber] || co == countries[ctryNumber-1] || co == countries[ctryNumber-2] || co == countries[ctryNumber-3]
	@{co}_r^4-1 = @{co}_rrstar^4*@{co}_pi4target-1;
@#else
	@{co}_r = @{coGermany}_r;
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

// Aggregate governmnet expenditure 
@{co}_gexp = -(@{co}_r^(-1)-1)*@{co}_b(+1) + @{co}_pcg*@{co}_cg+@{co}_pig*@{co}_ig+@{co}_tr;
@{co}_gexpy = @{co}_gexp/(@{co}_pybar*@{co}_ybar);

// Aggregate government revenue
@{co}_grev = @{co}_tauc*@{co}_c+(@{co}_taun+@{co}_tauwh)*(@{co}_wi*@{co}_ndi+@{co}_wj*@{co}_ndj)+@{co}_tauwf*@{co}_w*@{co}_nd+@{co}_tauk*(@{co}_rk*@{co}_u-(@{co}_gammau+@{co}_delta)*@{co}_pi)*@{co}_k+@{co}_taud*@{co}_d+@{co}_t;
@{co}_grevy = @{co}_grev/(@{co}_pybar*@{co}_ybar);

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
@{co}_nt = 
@#for aItem in demandItems
+@{co}_nt@{aItem}
@#endfor
;

// Aggregate demand for domestic intermediate goods, using @{co}_hg = @{co}_cg
@{co}_ht =
@#for aItem in demandItems 
+@{co}_ht@{aItem}
@#endfor
;

// Price dispersion in the domestic markets
@{co}_sh = (1-@{co}_xih)*(@{co}_phttilde/@{co}_pht)^(-@{co}_thetat)+@{co}_xih*(@{co}_piht/(@{co}_piht(-1)^@{co}_chih*@{co}_pi4target^(1/4*(1-@{co}_chih))))^@{co}_thetat*@{co}_sh(-1);

// Price dispersion in the foreign markets
@{co}_sx = (1-@{co}_xix)*(@{co}_pextilde/@{co}_pex)^(-@{co}_thetat)+@{co}_xix*(@{co}_piex/(@{co}_piex(-1)^@{co}_chix*@{co}_pi4target^(1/4*(1-@{co}_chix))))^@{co}_thetat*@{co}_sx(-1);

// Price dispersion in the domestic markets
@{co}_snt = (1-@{co}_xin)*(@{co}_pnttilde/@{co}_pnt)^(-@{co}_thetan)+@{co}_xin*(@{co}_pint/(@{co}_pint(-1)^@{co}_chin*@{co}_pi4target^(1/4*(1-@{co}_chin))))^@{co}_thetan*@{co}_snt(-1);

// Final-good markets

// Aggregate consumption and transaction cost
@{co}_qc = @{co}_c+@{co}_gammav;

// Aggregate investment and capital utilisation cost
@{co}_qi = @{co}_i+@{co}_k*@{co}_gammau;

// Aggregate gov demand components added to use the same structure like in private components
@{co}_qcg = @{co}_cg;
@{co}_qig = @{co}_ig;

//-------------
// Resource constraint
//-------------
// TODO: why there is no adjustment cost for gov components
// Aggregate nominal demand
@{co}_py*@{co}_y = 
@#for aItem in demandItems
@#if aItem == "c"
+@{co}_q@{aItem}
@#else
+@{co}_p@{aItem}*@{co}_q@{aItem}
@#endif
@#endfor
@#for it in countries - [ co ]
+@{co}_pex*@{it}_size/@{co}_size*@{it}@{co}_im
@#for aItem in demandItems
@#if !steady
@#if aItem == "c" || aItem == "i"
-(@{it}_pex*@{co}@{it}_rer)*(@{co}@{it}_im@{aItem}*(1-@{co}@{it}_gammaim@{aItem})/@{co}@{it}_gammaim@{aItem}dag)
@#else
-(@{it}_pex*@{co}@{it}_rer)*@{co}@{it}_im@{aItem}
@#endif
@#else
-(@{it}_pex*@{co}@{it}_rer)*@{co}@{it}_im@{aItem}
@#endif
@#endfor
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
@{co}_cgy = (1-@{co}_rhocg)*@{co}_cgybar+@{co}_rhocg*@{co}_cgy(-1)+@{co}_epsgc;
@{co}_igy = (1-@{co}_rhoig)*@{co}_igybar+@{co}_rhoig*@{co}_igy(-1)+@{co}_epsgi;

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
@{co}_imy = (
@#for aItem in demandItems
+@{co}_pim@{aItem}*@{co}_im@{aItem}
@#endfor
)/(@{co}_py*@{co}_y);

// Aggregate nominal export share  
@{co}_exy = (
+@{co}_pex*@{co}_ex
)/(@{co}_py*@{co}_y);

// Aggregate nominal import share
@#for aItem in demandItems
@{co}_im@{aItem}y = @{co}_pim@{aItem}*@{co}_im@{aItem}/(@{co}_py*@{co}_y);
@#endfor

// Aggregate debt-to-output ratio
@{co}_by = @{co}_b/(@{co}_pybar*@{co}_ybar);

// Aggregate lump-sum tax-to-output ratio
@{co}_ty = @{co}_t/(@{co}_pybar*@{co}_ybar);

// Aggregate income taxes 
@{co}_tn = (@{co}_taun+@{co}_tauwh)*(@{co}_wi*@{co}_ndi+@{co}_wj*@{co}_ndj);
@{co}_tny = @{co}_tn/(@{co}_pybar*@{co}_ybar);

// Aggregate consumption taxes
@{co}_tc =  @{co}_tauc*@{co}_c;
@{co}_tcy = @{co}_tc/(@{co}_pybar*@{co}_ybar);

// Aggregate social contribution by employers 
@{co}_twf = @{co}_tauwf*@{co}_w*@{co}_nd;
@{co}_twfy = @{co}_twf/(@{co}_pybar*@{co}_ybar);

// Aggregate capital taxes
@{co}_tk = @{co}_tauk*(@{co}_rk*@{co}_u-(@{co}_gammau+@{co}_delta)*@{co}_pi)*@{co}_k;
@{co}_tky = @{co}_tk/(@{co}_pybar*@{co}_ybar);

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

// Bilateral shares
@#for aItem in demandItems
@{co}@{it}_im@{aItem}y = (@{it}_pex*@{co}@{it}_rer)*@{co}@{it}_im@{aItem}/(@{co}_py*@{co}_y);
@#endfor


// Exports of consumption goods to gdp
@{co}@{it}_excy  = @{it}_size/@{co}_size*@{co}_pex*@{it}@{co}_imc/(@{co}_py*@{co}_y);

// Exports of investment goods to gdp
@{co}@{it}_exiy  = @{it}_size/@{co}_size*@{co}_pex*@{it}@{co}_imi/(@{co}_py*@{co}_y);

@#endfor

// Internal real exchange rate
@{co}_internalrer = @{co}_pnt/@{co}_pttc;

//Debt interest repayments 
@{co}_br = @{co}_b * (1-(@{co}_r(-1))^(-1));
@{co}_bry = @{co}_br/(@{co}_pybar*@{co}_ybar);

//Government balance 
@{co}_gbal = @{co}_grev - @{co}_gexp;
@{co}_gbaly = @{co}_gbal/(@{co}_pybar*@{co}_ybar);

//Government primary balance 
@{co}_gpbal = @{co}_gbal + @{co}_br;
@{co}_gpbaly = @{co}_gpbal/(@{co}_pybar*@{co}_ybar);

@#endfor // End of main country loop

@#for co in countries[1:ctryNumber-1]

//-------------
// Bilateral equations versus country N
//-------------

// Euler equation for internationally traded bonds
@#if !steady
1 = @{coUSA}_r*(1-@{co}_gammab)*@{co}_beta*@{co}_lambdai(+1)/@{co}_lambdai*@{co}_rerdep(+1)/@{coUSA}_pic(+1);
@#else
@{co}_gammab = 0;
@#endif

// International transaction cost ('risk premium')
@#if !steady
@{co}_gammab = @{co}_gammab1*(exp(@{co}_rer*@{co}_bf/@{coUSA}_pic/(@{co}_py*@{co}_y)-@{co}_bfytarget)-1)
@#if co == "RW"
-@{co}_rp
@#endif
;
@#else
@{co}_bf = (@{co}_bfytarget*@{co}_py*@{co}_y)/@{co}_rer*@{coUSA}_pic;
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
@{co}_tot = @{coUSA}_pex*@{co}_rer/@{co}_pex;

@#endfor // Global loop

//-------------
// Closure conditions
//-------------

@#include "staticCtryList7.mod"

@{coUSA}_size*@{coUSA}_bf =
@#for it in countries[1:ctryNumber-1]
-@{it}_size*@{it}_bf
@#endfor
;

// Net foreign asset position
@#for it in countries[1:ctryNumber-1]

	@#if it == countries[ctryNumber-2] || it == countries[ctryNumber-1] || it == countries[ctryNumber]

		@{it}_bf/@{coUSA}_r(-1) = @{it}_bf(-1)+@{it}_tb(-1)/@{it}_rer(-1);

	@#else
	
		@#if it == countries[ctryNumber-3]

			@{it}_bf/@{coUSA}_r(-1) = -@{it}_bh/@{co}_r(-1) / @{it}_rer(-1) + @{it}_bh(-1) / @{it}_rer(-2) + @{it}_bf(-1) + @{it}_tb(-1)/@{it}_rer(-1);

		@#else
		
			@{it}_bf/@{coUSA}_r(-1) = -@{it}_bh/@{coGermany}_r(-1)*@{it}@{coGermany}_rer(-1)/@{it}_rer(-1) + @{it}_bh(-1)*@{it}@{coGermany}_rer(-2) / @{it}_rer(-2) + @{it}_bf(-1) + @{it}_tb(-1)/@{it}_rer(-1);

		@#endif
		
	@#endif
	
@#endfor

@{coUSA}_rer = 1;

@#for it in countries
    @#if it!=countries[ctryNumber] && it!=countries[ctryNumber-1] && it!=countries[ctryNumber-2] && it!=countries[ctryNumber-3]
		@{it}@{coGermany}_nerdep = @{it}_rerdep/@{coGermany}_rerdep*@{it}_pic/@{coGermany}_pic;
		// Euler equation for euroarea traded bonds and International transaction cost ('risk premium')
		@#if !steady
			1 = @{coGermany}_r*(1-@{it}_gammabh)*@{it}_beta*@{it}_lambdai(+1)/@{it}_lambdai*@{it}@{coGermany}_rer(+1)/@{it}@{coGermany}_rer/@{coGermany}_pic(+1);
			@{it}_gammabh = @{coGermany}_gammab1*(exp(@{it}@{coGermany}_rer*@{it}_bh/@{coGermany}_pic/(@{it}_py*@{it}_y)-@{it}_bhytarget)-1);
		@#else
			@{it}_gammabh = 0;
			@{it}_bh = (@{it}_bhytarget*@{it}_py*@{it}_y)/@{it}@{coGermany}_rer*@{coGermany}_pic;
		@#endif
    @#endif
@#endfor

0 =
@#for it in countries[1: ctryNumber-3]
	+ @{it}_size*@{it}_bh
@#endfor
;

//-------------
// Euroarea-wide variables
//-------------

// GDP
[name = 'EA_y']
@{ea}_y = 
	(
	@{co}_size*@{co}_pybar*@{co}_y
	@#for it in countries[2: ctryNumber]
		@#if it!= "RW" && it!= "US" && it!= "RU"
			+ @{it}_size*@{co}@{it}_rerbar*@{it}_pybar *@{it}_y	
		@#endif
	@#endfor	 	
	)
	/
	(
	@#for it in countries[1: ctryNumber-3]
	+ @{it}_size
	@#endfor
);

// GDP growth
@{ea}_ygrowth= @{ea}_y/@{ea}_y(-1);

// GDP growth (yoy)
@{ea}_ygrowth4= @{ea}_y/@{ea}_y(-4);

// Money
@{ea}_m = 
	(
	@{co}_size*@{co}_m
	@#for it in countries[2: ctryNumber]
		@#if it!= "RW" && it!= "US" && it!= "RU"
			+ @{it}_size*@{co}@{it}_rerbar*@{it}_m	
		@#endif
	@#endfor	 	
	)
	/
	(
	@#for it in countries[1: ctryNumber-3]
	+ @{it}_size
	@#endfor
);
	
@{ea}_bf = 
	(
	@#for it in countries[1: ctryNumber-3]
		+ @{it}_size*@{it}_bf	
	@#endfor	 	
	)
	/
	(
	@#for it in countries[1: ctryNumber-3]
	+ @{it}_size
	@#endfor
);

// Annual inflation
[name = 'EA_pic4']
@{ea}_pic4 = 1 
	@#for it in countries[1: ctryNumber-3]
		* @{it}_pic4^(@{it}_size/(
			@#for it1 in countries[1: ctryNumber-3]
				+ @{it1}_size
			@#endfor	 	
			)) 
	@#endfor	 	
;


// Productivity
log(@{ea}_z) = (1-@{ea}_rhoz)*log(@{ea}_zbar)+@{ea}_rhoz*log(@{ea}_z(-1))+@{ea}_epsz;

// Auxiliary equation for steady-state output
@#if steady
@{ea}_ybar = @{ea}_y;
@#endif

end;
