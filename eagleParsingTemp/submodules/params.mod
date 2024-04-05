@#for COUNTRY in countries
  disp('Creating data for @{COUNTRY}');

// ------------------ //
// Parameter values   //
// ------------------ //

// Country size (population)

   @{COUNTRY}_size        = 1/7;

// Size of household J

   @{COUNTRY}_omega       = 0.25;

// Utility function

   @{COUNTRY}_beta        = 0.99;
   @{COUNTRY}_sigma       = 1.00;
   @{COUNTRY}_kappa       = 0.00;
   @{COUNTRY}_zeta        = 2.00;

// Capital accumulation

   @{COUNTRY}_delta       = 0.025;

// Wage setting

   @{COUNTRY}_eta         = 1.10;
   @{COUNTRY}_etai        = 1.10;
   @{COUNTRY}_etaj        = 1.10;
   @{COUNTRY}_xii         = 0.10;
   @{COUNTRY}_xij         = 0.10;
   @{COUNTRY}_chii        = 0.00;
   @{COUNTRY}_chij        = 0.00;

// Intermediate-good technology

   @{COUNTRY}_alphat       = 0.10;
   @{COUNTRY}_alphan       = 0.10;
   @{COUNTRY}_nukt         = 0.01;
   @{COUNTRY}_nukn         = 0.01;
   @{COUNTRY}_mut          = 0.999;
   @{COUNTRY}_mun          = 0.999;
   @{COUNTRY}_psit         = 0.00;
   @{COUNTRY}_psin         = 0.00;

// Price setting

   @{COUNTRY}_thetat      = 1.10;
   @{COUNTRY}_thetan      = 1.10;
   @{COUNTRY}_xin         = 0.10;
   @{COUNTRY}_xih         = 0.10;
   @{COUNTRY}_xix         = 0.10;
   @{COUNTRY}_chin        = 0.00;
   @{COUNTRY}_chih        = 0.00;
   @{COUNTRY}_chix        = 0.00;

// Final-good technologies
@#for aItem in demandItems
   @{COUNTRY}_mum@{aItem}        = 1.001;
   @{COUNTRY}_nut@{aItem}        = 0.5;
   @{COUNTRY}_mut@{aItem}        = 1.001;
   @{COUNTRY}_nu@{aItem}         = 0.5;
   @{COUNTRY}_mu@{aItem}         = 1.001;
@#endfor

// Adjustment and transaction cost

   @{COUNTRY}_gammav1     = 0.02;
   @{COUNTRY}_gammav2     = 0.10;
   @{COUNTRY}_gammai1     = 1.00;
   @#if(COUNTRY != "EAA")
// must equal steady-state value of rk
     @{COUNTRY}_gammau1     = 0.00;  
   @#endif
   @{COUNTRY}_gammau2     = 1.00;
@#for aItem in demandItems
   @{COUNTRY}_gammaim@{aItem}1   = 1.00;
@#endfor
   @{COUNTRY}_gammab1     = 0.20;

// Fiscal policy

   @{COUNTRY}_bytarget    = 0.00;
   @{COUNTRY}_phitb       = 0.10;
   @{COUNTRY}_upsilont    = 1.00;
   @{COUNTRY}_upsilontr   = 1.00;

// Monetary policy

  @{COUNTRY}_pi4target   = 1.00;
  @#if(COUNTRY != "EAA")
    @{COUNTRY}_phirr       = 0.75;
    @{COUNTRY}_phirgy      = 0.00;
    @{COUNTRY}_phirpi      = 1.50;
  @#endif

// Net foreign asset position
  @#if(COUNTRY != "US")
    @{COUNTRY}_bfytarget   = 0.00;
    @{COUNTRY}_bhytarget   = 0.00;
  @#endif

// Autoregressive shocks

   @{COUNTRY}_rhoz        = 0.90;
   @{COUNTRY}_rhorp       = 0.90;
   @{COUNTRY}_rhocg        = 0.90;
   @{COUNTRY}_rhoig        = 0.90;
   @{COUNTRY}_rhotr       = 0.90;
   @{COUNTRY}_rhotauc     = 0.90;
   @{COUNTRY}_rhotauk     = 0.90;
   @{COUNTRY}_rhotaun     = 0.90;
   @{COUNTRY}_rhotaud     = 0.90;
   @{COUNTRY}_rhotauwh    = 0.90;
   @{COUNTRY}_rhotauwf    = 0.90;
   @{COUNTRY}_rhozt       = 0.90;
   @{COUNTRY}_rhozn       = 0.90;
   @{COUNTRY}_rhozinv     = 0.90;
   @{COUNTRY}_rhozq       = 0.90;
   @{COUNTRY}_rhowcst     = 0.90;
   @{COUNTRY}_rhozcon     = 0.90;
@#endfor

 // Bilateral and asymmetric
@#for aItem in demandItems

 EAAUS_num@{aItem}       = 0.1;
 EAAEAB_num@{aItem}      = 0.2;
 EAAEAC_num@{aItem}      = 0.2;
 EAAEAD_num@{aItem}      = 0.2;
 EAAEAE_num@{aItem}      = 0.2;
 EAARW_num@{aItem}       = 1-EAAUS_num@{aItem}-EAAEAB_num@{aItem}-EAAEAC_num@{aItem}-EAAEAD_num@{aItem}-EAAEAE_num@{aItem};

 EABRW_num@{aItem}       = 0.1;
 EABEAA_num@{aItem}      = 0.2;
 EABEAC_num@{aItem}      = 0.2;
 EABEAD_num@{aItem}      = 0.2;
 EABEAE_num@{aItem}      = 0.2;
 EABUS_num@{aItem}       = 1-EABRW_num@{aItem}-EABEAA_num@{aItem}-EABEAC_num@{aItem}-EABEAD_num@{aItem}-EABEAE_num@{aItem};

 EACEAD_num@{aItem}      = 0.2;
 EACEAE_num@{aItem}      = 0.2;
 EACRW_num@{aItem}       = 0.1;
 EACUS_num@{aItem}       = 0.1;         
 EACEAB_num@{aItem}      = 0.2;
 EACEAA_num@{aItem} = 1-EACEAD_num@{aItem}-EACEAE_num@{aItem}-EACRW_num@{aItem}-EACUS_num@{aItem}-EACEAB_num@{aItem};

 EADEAE_num@{aItem}      = 0.2;
 EADRW_num@{aItem}       = 0.1;
 EADUS_num@{aItem}       = 0.1;         
 EADEAA_num@{aItem}      = 0.2;
 EADEAC_num@{aItem}      = 0.2;
 EADEAB_num@{aItem} = 1-EADEAE_num@{aItem}-EADEAC_num@{aItem}-EADRW_num@{aItem}-EADUS_num@{aItem}-EADEAA_num@{aItem};

 EAERW_num@{aItem}       = 0.1;
 EAEUS_num@{aItem}       = 0.1;
 EAEEAA_num@{aItem}      = 0.2;         
 EAEEAB_num@{aItem}      = 0.2;
 EAEEAD_num@{aItem}      = 0.2;
 EAEEAC_num@{aItem} = 1-EAERW_num@{aItem}-EAEUS_num@{aItem}-EAEEAA_num@{aItem}-EAEEAB_num@{aItem}-EAEEAD_num@{aItem};

 RWUS_num@{aItem}        = 0.3;
 RWEAA_num@{aItem}       = 0.15625;
 RWEAB_num@{aItem}       = 0.15625;
 RWEAC_num@{aItem}       = 0.15625;
 RWEAE_num@{aItem}       = 0.075;
 RWEAD_num@{aItem}       = 1-RWUS_num@{aItem}-RWEAA_num@{aItem}-RWEAB_num@{aItem}-RWEAC_num@{aItem}-RWEAE_num@{aItem};

 USEAA_num@{aItem}       = 0.15625;
 USEAB_num@{aItem}       = 0.15625;
 USEAC_num@{aItem}       = 0.15625;
 USEAD_num@{aItem}       = 0.15625;
 USRW_num@{aItem}        = 0.3;
 USEAE_num@{aItem}       = 1-USEAA_num@{aItem}-USEAB_num@{aItem}-USEAC_num@{aItem}-USEAD_num@{aItem}-USRW_num@{aItem};

@#endfor

// Euro area

 EA_phirr       = 0.75;
 EA_phirgy      = 0.00;
 EA_phirpi      = 1.50;
 EA_rhoz        = 0.90;
 EA_zbar        = 1; 

