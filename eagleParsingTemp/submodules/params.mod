load("paramsToBeSaved", 'ctryNumberDouble')

@#for COUNTRY in countries
  disp('Creating data for @{COUNTRY}');

// ------------------ //
// Parameter values   //
// ------------------ //

// Country size (population)
   set_param_value(['@{COUNTRY}', '_size'], 1/ctryNumberDouble);

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
  @#if(COUNTRY == countries[ctryNumber] || COUNTRY == countries[ctryNumber-1] || COUNTRY == countries[ctryNumber-2])
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
  @#if(COUNTRY == countries[ctryNumber] || COUNTRY == countries[ctryNumber-1] || COUNTRY == countries[ctryNumber-2])
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
   @#for i in 1: ctryNumber
      @#include "dynamicCtryList7.mod"
      @#for it in countries - [ countries[i]]
         @#for aItem in demandItems
            set_param_value(['@{countries[i]}', '@{it}', '_num', '@{aItem}'], 1/(ctryNumberDouble-1));
         @#endfor
      @#endfor
   @#endfor
@#endfor


// Euro area

 EA_phirr       = 0.75;
 EA_phirgy      = 0.00;
 EA_phirpi      = 1.50;
 EA_rhoz        = 0.90;
 EA_zbar        = 1; 

