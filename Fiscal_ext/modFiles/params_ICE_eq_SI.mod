@#for COUNTRY in countries
  disp('Creating data for @{COUNTRY}');

// ------------------ //
// Parameter values   //
// ------------------ //

// Country size (population)

   @{COUNTRY}_size        = 0.25;

// Size of household J

   @{COUNTRY}_omega       = 0.25;

// Utility function

   @{COUNTRY}_beta        = 0.99;
   @{COUNTRY}_sigma       = 1.01;
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

   @{COUNTRY}_alphat       = 0.1;
   @{COUNTRY}_alphan       = 0.1;
   @{COUNTRY}_nukt         = 0.01;
   @{COUNTRY}_nukn         = 0.01;
   @{COUNTRY}_mut          = 0.999;
   @{COUNTRY}_mun          = 0.999;
   @{COUNTRY}_psit         = 0.00;
   @{COUNTRY}_psin         = 0.00;

// Price setting

   @{COUNTRY}_thetax      = 1.10;
   @{COUNTRY}_xin         = 0.10;
   @{COUNTRY}_xih         = 0.10;
   @{COUNTRY}_xix         = 0.10;
   @{COUNTRY}_chin        = 0.00;
   @{COUNTRY}_chih        = 0.00;
   @{COUNTRY}_chix        = 0.00;

// Final-good technologies

   @{COUNTRY}_mumc        = 1.001;
   @{COUNTRY}_mumi        = 1.001;
   @{COUNTRY}_mumx        = 1.001;
   @{COUNTRY}_nutc        = 0.5;
   @{COUNTRY}_mutc        = 1.001;
   @{COUNTRY}_nuti        = 0.5;
   @{COUNTRY}_muti        = 1.001;
   @{COUNTRY}_nuc         = 0.5;
   @{COUNTRY}_muc         = 1.001;
   @{COUNTRY}_nui         = 0.5;
   @{COUNTRY}_mui         = 1.001;
   @{COUNTRY}_nux         = .99;
   @{COUNTRY}_mux         = 1.001;

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
   @{COUNTRY}_gammaimx1   = 1.00;
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
  @#endif
    EAA_bhytarget   = 0.00; 
// Autoregressive shocks

   @{COUNTRY}_rhoz        = 0.90;
   @{COUNTRY}_rhorp       = 0.90;
   @{COUNTRY}_rhog        = 0.90;
   @{COUNTRY}_rhotr       = 0.90;
   @{COUNTRY}_rhotauc     = 0.90;
   @{COUNTRY}_rhotauk     = 0.90;
   @{COUNTRY}_rhotaun     = 0.90;
   @{COUNTRY}_rhotaud     = 0.90;
   @{COUNTRY}_rhotauwh    = 0.90;
   @{COUNTRY}_rhotauwf    = 0.90;
   @{COUNTRY}_rhothetan   = 0.90; 
   @{COUNTRY}_rhothetat   = 0.90; 
   @{COUNTRY}_rhozt       = 0.90;
   @{COUNTRY}_rhozn       = 0.90;
   @{COUNTRY}_rhozinv     = 0.90;
   @{COUNTRY}_rhozq       = 0.90;
   @{COUNTRY}_rhowcst     = 0.90;
   @{COUNTRY}_rhozcon     = 0.90;
@#endfor


 // Bilateral and asymmetric
 /*
 EAAUS_numc       = 0.1;
 EAAEAB_numc      = 0.1;
 EAARW_numc       = 1-EAAUS_numc-EAAEAB_numc;
 EAAUS_numi       = 0.1;
 EAAEAB_numi      = 0.1;
 EAARW_numi       = 1-EAAUS_numi-EAAEAB_numi;
*/
 EAAUS_numc       = 0.2;
 EAAEAB_numc      = 0.6;
 EAARW_numc       = 1-EAAUS_numc-EAAEAB_numc;
 EAAUS_numi       = 0.3;
 EAAEAB_numi      = 0.6;
 EAARW_numi       = 1-EAAUS_numi-EAAEAB_numi;
 EAAUS_numx       = 0.3;
 EAAEAB_numx      = 0.3;
 EAARW_numx       = 1-EAAUS_numc-EAAEAB_numc;

/* 
 EABRW_numc       = 0.45;
 EABEAA_numc      = 0.45;
 EABUS_numc       = 1-EABRW_numc-EABEAA_numc;
 EABRW_numi       = 0.45;
 EABEAA_numi      = 0.45;
 EABUS_numi       = 1-EABRW_numi-EABEAA_numi;
*/
 EABRW_numc       = 0.2;
 EABEAA_numc      = 0.6;
 EABUS_numc       = 1-EABRW_numc-EABEAA_numc;
 EABRW_numi       = 0.2;
 EABEAA_numi      = 0.6;
 EABUS_numi       = 1-EABRW_numi-EABEAA_numi;
 EABRW_numx       = 0.33;
 EABEAA_numx      = 0.33;
 EABUS_numx       = 1-EABRW_numc-EABEAA_numc;

/*
 RWUS_numc        = 0.45;
 RWEAA_numc       = 0.45;
 RWEAB_numc       = 1-RWUS_numc-RWEAA_numc;
 RWUS_numi        = 0.45;
 RWEAA_numi       = 0.45;
 RWEAB_numi       = 1-RWUS_numi-RWEAA_numi;
*/
 RWUS_numc        = 0.6;
 RWEAA_numc       = 0.25;
 RWEAB_numc       = 1-RWUS_numc-RWEAA_numc;
 RWUS_numi        = 0.6;
 RWEAA_numi       = 0.25;
 RWEAB_numi       = 1-RWUS_numi-RWEAA_numi;
 RWUS_numx        = 0.33;
 RWEAA_numx       = 0.33;
 RWEAB_numx       = 1-RWUS_numc-RWEAA_numc;

/*
 USEAA_numc       = 0.1;
 USEAB_numc       = 0.05;
 USRW_numc        = 1-USEAA_numc-USEAB_numc;
 USEAA_numi       = 0.1;
 USEAB_numi       = 0.05;
 USRW_numi        = 1-USEAA_numi-USEAB_numi;
*/
 USEAA_numc       = 0.25;
 USEAB_numc       = 0.15;
 USRW_numc        = 1-USEAA_numc-USEAB_numc;
 USEAA_numi       = 0.25;
 USEAB_numi       = 0.15;
 USRW_numi        = 1-USEAA_numi-USEAB_numi; 
 USEAA_numx       = 0.33;
 USEAB_numx       = 0.33;
 USRW_numx        = 1-USEAA_numc-USEAB_numc;

// Euro area

 EA_phirr       = 0.75;
 EA_phirgy      = 0.00;
 EA_phirpi      = 1.50;
 EA_rhoz        = 0.90;
 EA_zbar        = 1; 

