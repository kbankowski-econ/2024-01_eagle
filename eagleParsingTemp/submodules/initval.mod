load("paramsToBeSaved", 'ctryNumberDouble')

initval;
@#for i in 1: ctryNumber

  @#define COUNTRY = countries[i]

  @#include "dynamicCtryList7.mod"
  

  @{COUNTRY}_b = 0;
  @{COUNTRY}_bf = 0;
  @{COUNTRY}_by = 0;

  @{COUNTRY}_c = 0.32158748924289;
  @{COUNTRY}_ci = 0.426239346856029;
  @{COUNTRY}_cj = 0.00763191640347169;
  @{COUNTRY}_cy = 0.993424266061439;
 
  @{COUNTRY}_d = 0.294287418715;
  @{COUNTRY}_dn = 0.15107;
  @{COUNTRY}_dt = 0.15107;

  @{COUNTRY}_epsilonm = -1.11375;
  @{COUNTRY}_etot = 1;
  @{COUNTRY}_ex = 0.081148;

  @{COUNTRY}_fh = 0.008;
  @{COUNTRY}_fx = 0.008;
  @{COUNTRY}_fi = 3.92463692108248E-006;
  @{COUNTRY}_fj = 1.45356923003055E-007;
  @{COUNTRY}_fn = 0.015;

  @#if(COUNTRY != "US")
    @{COUNTRY}_gammab = 0;
  @#endif
  @{COUNTRY}_gammai = 0;
  @{COUNTRY}_gammaider = 0;
  @{COUNTRY}_gammau = 0;
  @{COUNTRY}_gammauder = 0.0351010101010102;
  @{COUNTRY}_gammav = 3.26674261628783E-005;
  @{COUNTRY}_gammavi = 0.000101581769364806;
  @{COUNTRY}_gammavider = 0.00181818181818182;
  @{COUNTRY}_gammavj = 0.000101581769364808;
  @{COUNTRY}_gammavjder = 0.00181818181818184;
  @{COUNTRY}_gh = 0.09;
  @{COUNTRY}_gx = 0.09;
  @{COUNTRY}_gi = 0.0394976510764103;
  @{COUNTRY}_gj = 0.735309110981097;
  @{COUNTRY}_gn = 0.18;
  @{COUNTRY}_cgy = 0.01/10;
@{COUNTRY}_igy = 0.01/10;

  @{COUNTRY}_ht = 0.08;

  @{COUNTRY}_i = 0.00209600391746659;
  @{COUNTRY}_ii = 0.00279467188995545;
  @{COUNTRY}_im = 0.08;
  @{COUNTRY}_imy = 0.25;
  @{COUNTRY}_internalrer = 1;
  @{COUNTRY}_iy = 0.00647482014388443;

  @{COUNTRY}_k = 0.0838401566986634;
  @{COUNTRY}_kd = 0.0838401566986634;
  @{COUNTRY}_kdn =  0.0838401566986638/2;
  @{COUNTRY}_kdt =  0.0838401566986638/2;
  @{COUNTRY}_ki = 0.111786875598218;
 
  @{COUNTRY}_lambdai = 2.33590208608626;
  @{COUNTRY}_lambdaj = 130.459156895394;
  @{COUNTRY}_lcy = 0.081818; 

  @{COUNTRY}_m = 0.137125366155172;
  @{COUNTRY}_mcn =  0.0909090909090843;
  @{COUNTRY}_mct = 0.0909090909090905;
  @{COUNTRY}_mi = 0.181749068177306;
  @{COUNTRY}_mj = 0.0032542600887726;

  @{COUNTRY}_nd = 0.376144431057379;
  @{COUNTRY}_ndi = 0.158787199981097;
  @{COUNTRY}_ndj = 0.449007091712631;
  @{COUNTRY}_ndn = 0.376144431057384/2;
  @{COUNTRY}_ndt = 0.376144431057384/2;
  @{COUNTRY}_ni = 0.158787199981097;
  @{COUNTRY}_nj = 0.449007091712631;
  @{COUNTRY}_nt = 0.162;

  @{COUNTRY}_pex = 1;
  @{COUNTRY}_pht = 0.999999999999995;
  @{COUNTRY}_phttilde = 0.999999999999995;
  @{COUNTRY}_pextilde = 0.999999999999995;
  @{COUNTRY}_pi = 0.999999999999969;
  @{COUNTRY}_pcg = 0.999999999999969;
  @{COUNTRY}_pig = 0.999999999999969;
  @{COUNTRY}_pibar = 0.999999999999969;
  @{COUNTRY}_pic = 1;
  @{COUNTRY}_pic4 = 1;
  @{COUNTRY}_piex4 = 1;
  @{COUNTRY}_piht = 1;
  @{COUNTRY}_piex = 1;

@#for aItem in demandItems
  @{COUNTRY}_piim@{aItem} = 1;
@#endfor
  
  @{COUNTRY}_piimc4 = 1;
  @{COUNTRY}_pim = 1;
@#for aItem in demandItems
  @{COUNTRY}_pim@{aItem} = 1;
@#endfor
  @{COUNTRY}_pint = 1;
  @{COUNTRY}_piw = 1;
  @{COUNTRY}_piw4  = 1;
  @{COUNTRY}_pnt = 0.999999999999924;
  @{COUNTRY}_pnttilde =  0.999999999999926;
  @{COUNTRY}_psitbar = 0;
  @{COUNTRY}_psinbar = 0;

@#for aItem in demandItems
  @{COUNTRY}_ptt@{aItem} = 0.999999999999924;
@#endfor

  
  @{COUNTRY}_py = 1.00000000000005;
  @{COUNTRY}_pybar = 1.00000000000005; 

  @{COUNTRY}_q = 0.999999999999969;
  @{COUNTRY}_qbar = 0.999999999999969;


  @{COUNTRY}_r = 1.01010101010101;
  @{COUNTRY}_reer = 1;
  @{COUNTRY}_rer = 0.999999999944949;
  @#if(COUNTRY != "US")
    @{COUNTRY}_rerdep = 1;
    @{COUNTRY}_rp = 0;
  @#endif
  @{COUNTRY}_rk = 0.0351010101010111;
  
  @{COUNTRY}_rr = 1.01010101010101;
  @{COUNTRY}_rrstar = 1.01010101010101;

  @{COUNTRY}_sh = 1;
  @{COUNTRY}_sx = 1;
  @{COUNTRY}_si = 1;
  @{COUNTRY}_sj = 1;
  @{COUNTRY}_snt = 0.999999999999999;

  @{COUNTRY}_t = 0;
  @{COUNTRY}_tauc = 0;
  @{COUNTRY}_taud = 0;
  @{COUNTRY}_tauk = 0;
  @{COUNTRY}_taun = 0;
  @{COUNTRY}_tauwf = 0;
  @{COUNTRY}_tauwh = 0;
  @{COUNTRY}_tb = 0;
  @{COUNTRY}_tby= 0;
  @{COUNTRY}_ti = 0;
  @{COUNTRY}_tj = 0;
  @#if(COUNTRY != "US")
    @{COUNTRY}_tot = 1;
  @#endif
  @{COUNTRY}_tr = 7.1529038134542E-031;
  @{COUNTRY}_tri = 7.1529038134542E-031;
  @{COUNTRY}_trj = 7.1529038134542E-031;
  @{COUNTRY}_try = 2.20962209625084E-030;
  @{COUNTRY}_trybar = 2.20962209625084E-030;

  @{COUNTRY}_ty = 0;

  @{COUNTRY}_u = 1;
  @{COUNTRY}_utili = -85.4088763809503;
  @{COUNTRY}_utilj = -490.559067770525; 

  @{COUNTRY}_vi = 2.34520787991171;
  @{COUNTRY}_vj = 2.34520787991172;

  @{COUNTRY}_w = 0.0704140896354543;
  @{COUNTRY}_wcst = 0;

  @{COUNTRY}_whty = 0.081818;
  @{COUNTRY}_wi = 0.118732341269019;
  @{COUNTRY}_witilde = 0.118732341269019;
  @{COUNTRY}_wj = 0.0169990447988928;
  @{COUNTRY}_wjtilde = 0.0169990447988928;
  @{COUNTRY}_wnty = 0.081818;
  @{COUNTRY}_wy = 0.081818;

  @{COUNTRY}_y = 0.32;
  @{COUNTRY}_ybar = 0.32;
  @{COUNTRY}_ygap = 0;
  @{COUNTRY}_ygrowth = 1;
  @{COUNTRY}_ygrowth4 = 1;
  @{COUNTRY}_yhty = 0.499988;
  @{COUNTRY}_ynbar = 0.161;
  @{COUNTRY}_ytbar = 0.161;
  @{COUNTRY}_ynty = 0.499988;
  @{COUNTRY}_ysn =  0.161;
  @{COUNTRY}_yst = 0.161;
  @{COUNTRY}_yshare = 0.25;

  @{COUNTRY}_cg = @{COUNTRY}_cgy*@{COUNTRY}_pybar*@{COUNTRY}_ybar/@{COUNTRY}_pnt;
  @{COUNTRY}_ig = @{COUNTRY}_igy*@{COUNTRY}_pybar*@{COUNTRY}_ybar/@{COUNTRY}_pnt;

  @{COUNTRY}_zcon = 1;
  @{COUNTRY}_zinv = 1;
  @{COUNTRY}_zn = 1;
  @{COUNTRY}_zt = 1;
    
  @#if(COUNTRY == "RW" || COUNTRY == "US" )
    @# if !steady
      @{COUNTRY}_epsr = 0;
    @#endif
  @#endif
  @#if(COUNTRY != "US")
    @# if !steady
      @{COUNTRY}_epsrp = 0;
    @# endif
  @#endif
  
  @{COUNTRY}_cgybar = 0.01/10;
  @{COUNTRY}_igybar = 0.01/10;
  @{COUNTRY}_taucbar = 0;
  @{COUNTRY}_taudbar = 0;
  @{COUNTRY}_taukbar = 0;
  @{COUNTRY}_taunbar = 0;
  @{COUNTRY}_tauwfbar = 0;
  @{COUNTRY}_tauwhbar = 0;
  @{COUNTRY}_wcstbar = 0;
  @{COUNTRY}_zconbar = 1;
  @{COUNTRY}_zinvbar = 1;
  @{COUNTRY}_znbar = 1;
  @{COUNTRY}_ztbar = 1;
  @{COUNTRY}_epsgc = 0;
  @{COUNTRY}_epsgi = 0;
  @{COUNTRY}_epstauc = 0;
  @{COUNTRY}_epstaud = 0;
  @{COUNTRY}_epstauk = 0;
  @{COUNTRY}_epstaun = 0;
  @{COUNTRY}_epstauwh = 0;
  @{COUNTRY}_epstauwf = 0;
  @{COUNTRY}_epstr = 0;
  @{COUNTRY}_epswcst = 0;
  @{COUNTRY}_epszcon = 0;
  @{COUNTRY}_epszinv = 0;
  @{COUNTRY}_epszn = 0;
  @{COUNTRY}_epszt = 0;



  @#for COUNTRY1 IN countries
    @#if (COUNTRY != COUNTRY1)
      @{COUNTRY}@{COUNTRY1}_rer = 1;
      @{COUNTRY}@{COUNTRY1}_rerbar = 1;
      @{COUNTRY}@{COUNTRY1}_im = 0.03;
@#for aItem in demandItems
      @{COUNTRY}@{COUNTRY1}_gammaim@{aItem} = 0;
      @{COUNTRY}@{COUNTRY1}_gammaim@{aItem}dag = 1;
@#endfor
      @{COUNTRY}@{COUNTRY1}_tot = 1;
      @{COUNTRY}@{COUNTRY1}_weight = 0.35;
      @{COUNTRY}@{COUNTRY1}_weightex = 0.35;
      @{COUNTRY}@{COUNTRY1}_weightim = 0.35;
    @#endif
  @#endfor
@#endfor

@#for i in 1: ctryNumber

  @#define COUNTRY = countries[i]

  @#include "dynamicCtryList7.mod"
  @#for COUNTRY1 IN countries
    @#if (COUNTRY != COUNTRY1)
      
      // Shares
      @{COUNTRY}@{COUNTRY1}_excy = 0.09*3/(ctryNumberDouble-1);
      @{COUNTRY}@{COUNTRY1}_exiy = 0.0008*3/(ctryNumberDouble-1);
    @#endif
  @#endfor

@#for aItem in demandItems
  @#if aItem == "c"
  @{COUNTRY}_q@{aItem} =  0.321620156669017*2;
  @#else
  @#if aItem == "i"
  @{COUNTRY}_q@{aItem} =  0.00209600391746659*2;
  @#else
  @{COUNTRY}_q@{aItem} =  @{COUNTRY}_@{aItem};
  @#endif
  @#endif
@#endfor

@#for aItem in demandItems
  @#if aItem == "c"
  @{COUNTRY}_nt@{aItem} = 0.161;
  @#else
  @#if aItem == "i"
  @{COUNTRY}_nt@{aItem} = 0.001;
  @#else
  @{COUNTRY}_nt@{aItem} = (1-@{COUNTRY}_nu@{aItem})*(@{COUNTRY}_pnt/@{COUNTRY}_p@{aItem})^(-@{COUNTRY}_mu@{aItem})*@{COUNTRY}_q@{aItem};
  @#endif
  @#endif
@#endfor

@#for aItem in demandItems
  @#if aItem == "c"
  @{COUNTRY}_tt@{aItem} = 0.16;
  @#else
  @#if aItem == "i"
  @{COUNTRY}_tt@{aItem} = 0.001;
  @#else
  @{COUNTRY}_tt@{aItem} = @{COUNTRY}_nu@{aItem}*(@{COUNTRY}_ptt@{aItem}/@{COUNTRY}_p@{aItem})^(-@{COUNTRY}_mu@{aItem})*@{COUNTRY}_q@{aItem};
  @#endif
  @#endif
@#endfor

@#for aItem in demandItems
  @#if aItem == "c"
  @{COUNTRY}_ht@{aItem} = 0.08;
  @#else
  @#if aItem == "i"
  @{COUNTRY}_ht@{aItem} =  0.0005;
  @#else
  @{COUNTRY}_ht@{aItem} = @{COUNTRY}_nut@{aItem}*(@{COUNTRY}_pht/@{COUNTRY}_ptt@{aItem})^(-@{COUNTRY}_mut@{aItem})*@{COUNTRY}_tt@{aItem};
  @#endif
  @#endif
@#endfor

@#for aItem in demandItems
  @#if aItem == "c"
  @{COUNTRY}_im@{aItem} = 0.08;
  @{COUNTRY}_im@{aItem}y = 0.25;
  @#else
  @#if aItem == "i"
  @{COUNTRY}_im@{aItem} = 0.0005;
  @{COUNTRY}_im@{aItem}y = 0.0016;
  @#else
  @{COUNTRY}_im@{aItem} = (1-@{COUNTRY}_nut@{aItem})*(@{COUNTRY}_pim@{aItem}/@{COUNTRY}_ptt@{aItem})^(-@{COUNTRY}_mut@{aItem})*@{COUNTRY}_tt@{aItem};
  @{COUNTRY}_im@{aItem}y = @{COUNTRY}_pim@{aItem}*@{COUNTRY}_im@{aItem}/(@{COUNTRY}_py*@{COUNTRY}_y);
  @#endif
  @#endif
@#endfor


@#for COUNTRY1 IN countries
@#if (COUNTRY != COUNTRY1)
@#for aItem in demandItems
  @#if COUNTRY1==coResid
      @{COUNTRY}@{COUNTRY1}_im@{aItem} = 
        +(1
        @#for it in countries - [COUNTRY, coResid]
        -@{COUNTRY}@{it}_num@{aItem}
        @#endfor
        )*((@{COUNTRY1}_pex*@{COUNTRY}@{COUNTRY1}_rer)/@{COUNTRY}_pim@{aItem})^(-@{COUNTRY}_mum@{aItem})*@{COUNTRY}_im@{aItem};
    @#else
        @{COUNTRY}@{COUNTRY1}_im@{aItem} = @{COUNTRY}@{COUNTRY1}_num@{aItem}*((@{COUNTRY1}_pex*@{COUNTRY}@{COUNTRY1}_rer)/@{COUNTRY}_pim@{aItem})^(-@{COUNTRY}_mum@{aItem})*@{COUNTRY}_im@{aItem};
    @#endif
  @{COUNTRY}@{COUNTRY1}_im@{aItem}y = (@{COUNTRY1}_pex*@{COUNTRY}@{COUNTRY1}_rer)*@{COUNTRY}@{COUNTRY1}_im@{aItem}/(@{COUNTRY}_py*@{COUNTRY}_y);
    @#endfor
@#endif
@#endfor

@#endfor // big loop initiated at the beginning of the file

 
// Euro Area only
@#for co in countries[1: ctryNumber-2]
 @{co}_bh = 0;
@#endfor

@#for it in countries
    @#if it!=countries[ctryNumber] && it!=countries[ctryNumber-1] && it!=countries[ctryNumber-2]
      @{it}_gammabh = 0;
      @{it}@{coGermany}_nerdep = 1;
    @#endif
@#endfor

EA_bf = 0;
@# if !steady
  EA_epsr =  0;
@#endif
EA_epsz =  0;
EA_m = 0.132518;
EA_pic4 = 1; 
EA_y = 0.312839;
EA_ybar = 0.312839;
EA_z = 1;
EA_ygrowth = 1;
EA_ygrowth4 = 1;


@#if(asymmetric_trade_var)
    EAAEAB_excy = 0.131508435721916;
    EAAEAB_exiy = 0.00085704266581906;
    EAAEAB_fx = 0.00443883240091026;
    EAAEAB_gammaimc = 0;
    EAAEAB_gammaimcdag = 1;
    EAAEAB_gammaimi = 0;
    EAAEAB_gammaimidag = 1;
    EAAEAB_gx = 0.0488271564100128;
    EAAEAB_im = 0.0548791704143296;
    EAAEAB_imc = 0.0545238376489962;
    EAAEAB_imcy = 0.149043074425536;
    EAAEAB_imi = 0.000355332765333402;
    EAAEAB_imiy = 0.000971316218244825;
    EAAEAB_nerdep = 1;
    EAAEAB_piim = 1;
    EAAEAB_pim = 0.908524983715861;
    EAAEAB_pimtilde = 0.908524983715861;
    EAAEAB_rer = 0.930722351635137;
    EAAEAB_rerbar = 0.930722351635137;
    EAAEAB_sx = 1;
    EAAEAB_tot = 0.887224617971078;
    EAAEAB_weight = 0.548086231847809;
    EAAEAB_weightex = 0.496157604998423;
    EAAEAB_weightim = 0.600014858697181;
    EAARW_excy = 0.0584201644725965;
    EAARW_exiy = 0.000380725184831869;
    EAARW_fx = 0.00197186832543437;
    EAARW_gammaimc = 0;
    EAARW_gammaimcdag = 1;
    EAARW_gammaimi = 0;
    EAARW_gammaimidag = 1;
    EAARW_gx = 0.0216905515797781;
    EAARW_im = 0.0171451981042145;
    EAARW_imc = 0.017089511786604;
    EAARW_imcy = 0.0496779695553964;
    EAARW_imi = 5.56863176105065e-005;
    EAARW_imiy = 0.000161876080806204;
    EAARW_piim = 1;
    EAARW_pim = 0.966152475656914;
    EAARW_pimtilde = 0.966152475656914;
    EAARW_rer = 0.967556125348265;
    EAARW_rerbar = 0.967556125348265;
    EAARW_sx = 1;
    EAARW_tot = 0.943501033522047;
    EAARW_weight = 0.225597048696279;
    EAARW_weightex = 0.251848902517856;
    EAARW_weightim = 0.19934519487471;
    EAAUS_excy = 0.0584703724058423;
    EAAUS_exiy = 0.000381052390768681;
    EAAUS_fx = 0.00197356300456008;
    EAAUS_gammaimc = 0;
    EAAUS_gammaimcdag = 1;
    EAAUS_gammaimi = 0;
    EAAUS_gammaimidag = 1;
    EAAUS_gx = 0.0217091930501609;
    EAAUS_im = 0.0172423769553697;
    EAAUS_imc = 0.017075455410992;
    EAAUS_imcy = 0.0496779287185735;
    EAAUS_imi = 0.000166921544377746;
    EAAUS_imiy = 0.00048562784321722;
    EAAUS_piim = 1;
    EAAUS_pim = 0.966947009633176;
    EAAUS_pimtilde = 0.966947009633178;
    EAAUS_rer = 0.968033460447802;
    EAAUS_rerbar = 0.968033460447802;
    EAAUS_sx = 1;
    EAAUS_tot = 0.944276939651422;
    EAAUS_weight = 0.226316719455769;
    EAAUS_weightex = 0.251993492483721;
    EAAUS_weightim = 0.200639946427825;

    EABEAA_excy = 0.168883352993444;
    EABEAA_exiy = 0.00110061564676092;
    EABEAA_fx = 0.00540513807253256;
    EABEAA_gammaimc = 0;
    EABEAA_gammaimcdag = 1;
    EABEAA_gammaimi = 0;
    EABEAA_gammaimidag = 1;
    EABEAA_gx = 0.0594565187978582;
    EABEAA_im = 0.0429618458798911;
    EABEAA_imc = 0.0426836756547698;
    EABEAA_imcy = 0.1490145426565;
    EABEAA_imi = 0.000278170225121336;
    EABEAA_imiy = 0.000971130256268813;
    EABEAA_piim = 1;
    EABEAA_pim = 1.10022914964678;
    EABEAA_pimtilde = 1.10022914964678;
    EABEAA_rer = 1.07443428025893;
    EABEAA_rerbar = 1.07443428025893;
    EABEAA_sx = 1;
    EABEAA_tot = 1.12711029399389;
    EABEAA_weight = 0.617323621707538;
    EABEAA_weightex = 0.634661102727892;
    EABEAA_weightim = 0.599986140687189;
    EABRW_excy = 0.039722908000609;
    EABRW_exiy = 0.000258874853008763;
    EABRW_fx = 0.0012713378704979;
    EABRW_gammaimc = 0;
    EABRW_gammaimcdag = 1;
    EABRW_gammaimi = 0;
    EABRW_gammaimidag = 1;
    EABRW_gx = 0.0139847165754768;
    EABRW_im = 0.0151790487391268;
    EABRW_imc = 0.0150807671285858;
    EABRW_imcy = 0.0496744030896999;
    EABRW_imi = 9.82816105410025e-005;
    EABRW_imiy = 0.000323728912242442;
    EABRW_piim = 1;
    EABRW_pim = 1.03806733980282;
    EABRW_pimtilde = 1.03806733980282;
    EABRW_rer = 1.03957546914868;
    EABRW_rerbar = 1.03957546914868;
    EABRW_sx = 1;
    EABRW_tot = 1.06342972727658;
    EABRW_weight = 0.191264124973199;
    EABRW_weightex = 0.182521238084264;
    EABRW_weightim = 0.200007011862132;
    EABUS_excy = 0.0397570469855421;
    EABUS_exiy = 0.000259097337342127;
    EABUS_fx = 0.00127243049403908;
    EABUS_gammaimc = 0;
    EABUS_gammaimcdag = 1;
    EABUS_gammaimi = 0;
    EABUS_gammaimidag = 1;
    EABUS_gx = 0.0139967354344299;
    EABUS_im = 0.0151665637475797;
    EABUS_imc = 0.0150683629751135;
    EABUS_imcy = 0.0496743622558681;
    EABUS_imi = 9.82007724662512e-005;
    EABUS_imiy = 0.000323728646127726;
    EABUS_piim = 1;
    EABUS_pim = 1.03892101434375;
    EABUS_pimtilde = 1.03892101434375;
    EABUS_rer = 1.0400883343428;
    EABUS_rerbar = 1.0400883343428;
    EABUS_sx = 1;
    EABUS_tot = 1.06430425906217;
    EABUS_weight = 0.191412253319143;
    EABUS_weightex = 0.182817659187844;
    EABUS_weightim = 0.20000684745044;

    RWEAA_excy = 0.0528001711403436;
    RWEAA_exiy = 0.000172049800879336;
    RWEAA_fx = 0.00172740644550935;
    RWEAA_gammaimc = 0;
    RWEAA_gammaimcdag = 1;
    RWEAA_gammaimi = 0;
    RWEAA_gammaimidag = 1;
    RWEAA_gx = 0.0190014709006028;
    RWEAA_im = 0.0190849970085327;
    RWEAA_imc = 0.018961425085456;
    RWEAA_imcy = 0.0620918026603414;
    RWEAA_imi = 0.000123571923076701;
    RWEAA_imiy = 0.000404653312051036;
    RWEAA_piim = 1;
    RWEAA_pim = 1.05834466308422;
    RWEAA_pimtilde = 1.05834466308422;
    RWEAA_rer = 1.03353177536865;
    RWEAA_rerbar = 1.03353177536865;
    RWEAA_sx = 1;
    RWEAA_tot = 1.05988225181592;
    RWEAA_weight = 0.242050526530418;
    RWEAA_weightex = 0.23411414039993;
    RWEAA_weightim = 0.249986912660905;
    RWEAB_excy = 0.0465939048031304;
    RWEAB_exiy = 0.000303653253604429;
    RWEAB_fx = 0.00152931371625406;
    RWEAB_gammaimc = 0;
    RWEAB_gammaimcdag = 1;
    RWEAB_gammaimi = 0;
    RWEAB_gammaimidag = 1;
    RWEAB_gx = 0.0168224508787946;
    RWEAB_im = 0.0129080824047394;
    RWEAB_imc = 0.0128245048927664;
    RWEAB_imcy = 0.0372595396977736;
    RWEAB_imi = 8.35775119730451e-005;
    RWEAB_imiy = 0.000242821040752793;
    RWEAB_piim = 1;
    RWEAB_pim = 0.938989439386623;
    RWEAB_pimtilde = 0.938989439386623;
    RWEAB_rer = 0.961931124460744;
    RWEAB_rerbar = 0.961931124460744;
    RWEAB_sx = 1;
    RWEAB_tot = 0.940353625961709;
    RWEAB_weight = 0.176648244392027;
    RWEAB_weightex = 0.203286392488978;
    RWEAB_weightim = 0.15001009629508;
    RWUS_excy = 0.149157073044503;
    RWUS_exiy = 0.000972059129181044;
    RWUS_fx = 0.00489566089485466;
    RWUS_gammaimc = 0;
    RWUS_gammaimcdag = 1;
    RWUS_gammaimi = 0;
    RWUS_gammaimidag = 1;
    RWUS_gx = 0.0538522698434012;
    RWUS_im = 0.0485097296992906;
    RWUS_imc = 0.0481956379242597;
    RWUS_imcy = 0.149028870827526;
    RWUS_imi = 0.000314091775030909;
    RWUS_imiy = 0.000971223633197475;
    RWUS_piim = 1;
    RWUS_pim = 0.999370459553581;
    RWUS_pimtilde = 0.999370459553581;
    RWUS_rer = 1.00049334099287;
    RWUS_rerbar = 1.00049334099287;
    RWUS_sx = 1;
    RWUS_tot = 1.0008223691356;
    RWUS_weight = 0.581301229077509;
    RWUS_weightex = 0.562599467111092;
    RWUS_weightim = 0.600002991043924;

    USEAA_excy = 0.05275481480666;
    USEAA_exiy = 0.000515706020655884;
    USEAA_fx = 0.00173776867695025;
    USEAA_gammaimc = 0;
    USEAA_gammaimcdag = 1;
    USEAA_gammaimi = 0;
    USEAA_gammaimidag = 1;
    USEAA_gx = 0.0191154554464527;
    USEAA_im = 0.0191013991919987;
    USEAA_imc = 0.0189777210677342;
    USEAA_imcy = 0.0620918332851787;
    USEAA_imi = 0.000123678124264499;
    USEAA_imiy = 0.000404653511633246;
    USEAA_piim = 1;
    USEAA_pim = 1.05782279573589;
    USEAA_pimtilde = 1.05782279573589;
    USEAA_rer = 1.03302214319886;
    USEAA_rerbar = 1.03302214319886;
    USEAA_sx = 0.999999999999998;
    USEAA_tot = 1.0590113535645;
    USEAA_weight = 0.24253202468741;
    USEAA_weightex = 0.235077260012901;
    USEAA_weightim = 0.249986789361918;
    USEAB_excy = 0.0465538797682622;
    USEAB_exiy = 0.000303392409785636;
    USEAB_fx = 0.00152855835861455;
    USEAB_gammaimc = 0;
    USEAB_gammaimcdag = 1;
    USEAB_gammaimi = 0;
    USEAB_gammaimidag = 1;
    USEAB_gx = 0.01681414194476;
    USEAB_im = 0.0129191759739898;
    USEAB_imc = 0.0128355266331511;
    USEAB_imcy = 0.0372595580748988;
    USEAB_imi = 8.36493408386896e-005;
    USEAB_imiy = 0.000242821160516809;
    USEAB_piim = 1;
    USEAB_pim = 0.938526425827871;
    USEAB_pimtilde = 0.938526425827871;
    USEAB_rer = 0.961456798409215;
    USEAB_rerbar = 0.961456798409215;
    USEAB_sx = 1;
    USEAB_tot = 0.9395809435933;
    USEAB_weight = 0.176641543499673;
    USEAB_weightex = 0.203273064692419;
    USEAB_weightim = 0.150010022306931;
    USRW_excy = 0.148900974643783;
    USRW_exiy = 0.000970390131637966;
    USRW_fx = 0.00488904105373348;
    USRW_gammaimc = 0;
    USRW_gammaimcdag = 1;
    USRW_gammaimi = 0;
    USRW_gammaimidag = 1;
    USRW_gx = 0.0537794515910682;
    USRW_im = 0.0485913874592434;
    USRW_imc = 0.0482767669649033;
    USRW_imcy = 0.149029066837956;
    USRW_imi = 0.000314620494340074;
    USRW_imiy = 0.000971224910601085;
    USRW_piim = 1;
    USRW_pim = 0.998056901059992;
    USRW_pimtilde = 0.998056901059992;
    USRW_rer = 0.999506902272452;
    USRW_rerbar = 0.999506902272452;
    USRW_sx = 1;
    USRW_tot = 0.999178306599691;
    USRW_weight = 0.580826431812836;
    USRW_weightex = 0.56164967529468;
    USRW_weightim = 0.600003188330989;
@#endif

end;
