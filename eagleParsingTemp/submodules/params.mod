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

   @{COUNTRY}_mumc        = 1.001;
   @{COUNTRY}_mumi        = 1.001;
   @{COUNTRY}_nutc        = 0.5;
   @{COUNTRY}_mutc        = 1.001;
   @{COUNTRY}_nuti        = 0.5;
   @{COUNTRY}_muti        = 1.001;
   @{COUNTRY}_nuc         = 0.5;
   @{COUNTRY}_muc         = 1.001;
   @{COUNTRY}_nui         = 0.5;
   @{COUNTRY}_mui         = 1.001;

// Adjustment and transaction cost

   @{COUNTRY}_gammav1     = 0.02;
   @{COUNTRY}_gammav2     = 0.10;
   @{COUNTRY}_gammai1     = 1.00;
   @#if(COUNTRY != "EAA")
// must equal steady-state value of rk
     @{COUNTRY}_gammau1     = 0.00;  
   @#endif
   @{COUNTRY}_gammau2     = 1.00;
   @{COUNTRY}_gammaimc1   = 1.00;
   @{COUNTRY}_gammaimi1   = 1.00;
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
 
 EAAUS_numc       = 0.1;
 EAAEAB_numc      = 0.2;
 EAAEAC_numc      = 0.2;
 EAAEAD_numc      = 0.2;
 EAAEAE_numc      = 0.2;
 EAARW_numc       = 1-EAAUS_numc-EAAEAB_numc-EAAEAC_numc-EAAEAD_numc-EAAEAE_numc;

 EAAUS_numi       = 0.1;
 EAAEAB_numi      = 0.2;
 EAAEAC_numi      = 0.2;
 EAAEAD_numi      = 0.2;
 EAAEAE_numi      = 0.2;
 EAARW_numi       = 1-EAAUS_numi-EAAEAB_numi-EAAEAC_numi-EAAEAD_numi-EAAEAE_numi;
 
 EABRW_numc       = 0.1;
 EABEAA_numc      = 0.2;
 EABEAC_numc      = 0.2;
 EABEAD_numc      = 0.2;
 EABEAE_numc      = 0.2;
 EABUS_numc       = 1-EABRW_numc-EABEAA_numc-EABEAC_numc-EABEAD_numc-EABEAE_numc;

 EABRW_numi       = 0.1;
 EABEAA_numi      = 0.2;
 EABEAC_numi      = 0.2;
 EABEAD_numi      = 0.2;
 EABEAE_numi      = 0.2;
 EABUS_numi       = 1-EABRW_numi-EABEAA_numi-EABEAC_numi-EABEAD_numi-EABEAE_numi;

 EACEAD_numc      = 0.2;
 EACEAE_numc      = 0.2;
 EACRW_numc       = 0.1;
 EACUS_numc       = 0.1;         
 EACEAB_numc      = 0.2;
 EACEAA = 1-EACEAD_numc-EACEAE_numc-EACRW_numc-EACUS_numc-EACEAB_numc;

 EACEAD_numi      = 0.2;
 EACEAE_numi      = 0.2;
 EACRW_numi       = 0.1;
 EACUS_numi       = 0.1;         
 EACEAB_numi      = 0.2;
 EACEAA = 1-EACEAD_numi-EACEAE_numi-EACRW_numi-EACUS_numi-EACEAB_numi;

 EADEAE_numc      = 0.2;
 EADRW_numc       = 0.1;
 EADUS_numc       = 0.1;         
 EADEAA_numc      = 0.2;
 EADEAC_numc      = 0.2;
 EADEAB = 1-EADEAE_numc-EADEAC_numc-EADRW_numc-EADUS_numc-EADEAA_numc;

 EADEAE_numi      = 0.2;
 EADRW_numi       = 0.1;
 EADUS_numi       = 0.1;         
 EADEAA_numi      = 0.2;
 EADEAC_numi      = 0.2;
 EADEAB = 1-EADEAE_numi-EADEAC_numi-EADRW_numi-EADUS_numi-EADEAA_numi;

 EAERW_numc       = 0.1;
 EAEUS_numc       = 0.1;
 EAEEAA_numc      = 0.2;         
 EAEEAB_numc      = 0.2;
 EAEEAD_numc      = 0.2;
 EAEEAC = 1-EAERW_numc-EAEUS_numc-EAEEAA_numc-EAEEAB_numc-EAEEAD_numc;

 EAERW_numi       = 0.1;
 EAEUS_numi       = 0.1;
 EAEEAA_numi      = 0.2;         
 EAEEAB_numi      = 0.2;
 EAEEAD_numi      = 0.2;
 EAEEAC = 1-EAERW_numi-EAEUS_numi-EAEEAA_numi-EAEEAB_numi-EAEEAD_numi;

 RWUS_numc        = 0.3;
 RWEAA_numc       = 0.15625;
 RWEAB_numc       = 0.15625;
 RWEAC_numc       = 0.15625;
 RWEAE_numc       = 0.075;
 RWEAD_numc       = 1-RWUS_numc-RWEAA_numc-RWEAB_numc-RWEAC_numc-RWEAE_numc;

 RWUS_numi        = 0.3;
 RWEAA_numi       = 0.15625;
 RWEAB_numi       = 0.15625;
 RWEAC_numi       = 0.15625;
 RWEAE_numi       = 0.075;
 RWEAD_numi       = 1-RWUS_numi-RWEAA_numi-RWEAB_numi-RWEAC_numi-RWEAE_numi;

 USEAA_numc       = 0.15625;
 USEAB_numc       = 0.15625;
 USEAC_numc       = 0.15625;
 USEAD_numc       = 0.15625;
 USRW_numc        = 0.3;
 USEAE_numc       = 1-USEAA_numc-USEAB_numc-USEAC_numc-USEAD_numc-USRW_numc;
 
 USEAA_numi       = 0.15625;
 USEAB_numi       = 0.15625;
 USEAC_numi       = 0.15625;
 USEAD_numi       = 0.15625;
 USRW_numi        = 0.3;
 USEAE_numi       = 1-USEAA_numi-USEAB_numi-USEAC_numi-USEAD_numi-USRW_numi;

// Euro area

 EA_phirr       = 0.75;
 EA_phirgy      = 0.00;
 EA_phirpi      = 1.50;
 EA_rhoz        = 0.90;
 EA_zbar        = 1; 

