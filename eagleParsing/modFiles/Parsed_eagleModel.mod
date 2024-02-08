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
	EAARW_excy
	EAARW_exiy
	EAARW_fx
	EAARW_gammaimc
	EAARW_gammaimcdag
	EAARW_gammaimi
	EAARW_gammaimidag
	EAARW_gx
	EAARW_im
	EAAUS_excy
	EAAUS_exiy
	EAAUS_fx
	EAAUS_gammaimc
	EAAUS_gammaimcdag
	EAAUS_gammaimi
	EAAUS_gammaimidag
	EAAUS_gx
	EAAUS_im
	EA_bf
	EA_m
	EA_pic4
	EA_y
	EA_ygrowth
	EA_ygrowth4
	EA_z
;

parameters
	EAAEAB_rerbar
	EAA_beta
	EAA_chix
	EAA_gammaimc1
	EAA_gammaimi1
	EAA_pi4target
	EAA_pybar
	EAA_size
	EAA_thetat
	EAA_xix
	EAB_pybar
	EAB_size
	EA_rhoz
	EA_zbar
	RW_size
	US_size
;


EAAEAB_rerbar = 1.076310938191268;
EAA_beta = 0.99263754;
EAA_chix = 0.5;
EAA_gammaimc1 = 2;
EAA_gammaimi1 = 1;
EAA_pi4target = 1.02;
EAA_pybar = 1.053099940834652;
EAA_size = 0.16;
EAA_thetat = 6;
EAA_xix = 0.75;
EAB_pybar = 1.058240036715508;
EAB_size = 0.06;
EA_rhoz = 0.9;
EA_zbar = 1;
RW_size = 0.47;
US_size = 0.31;

varexo
	EAAEAB_imc
	EAAEAB_imi
	EAAEAB_rer
	EAARW_imc
	EAARW_imi
	EAARW_rer
	EAAUS_imc
	EAAUS_imi
	EAAUS_rer
	EAA_bf
	EAA_lambdai
	EAA_m
	EAA_mct
	EAA_pic4
	EAA_py
	EAA_qc
	EAA_qi
	EAA_y
	EABEAA_im
	EABEAA_imc
	EABEAA_imi
	EABEAA_piim
	EABEAA_pim
	EAB_bf
	EAB_m
	EAB_pic4
	EAB_y
	EA_epsz
	RWEAA_im
	RWEAA_imc
	RWEAA_imi
	RWEAA_piim
	RWEAA_pim
	USEAA_im
	USEAA_imc
	USEAA_imi
	USEAA_piim
	USEAA_pim
;

model;

	name='EA_bf'
	EA_bf =  (EAB_size*EAB_bf+EAA_size*EAA_bf)/(EAB_size+EAA_size);

	name='EA_m'
	EA_m =  (EAA_size*EAA_m+EAB_m*EAB_size*EAAEAB_rerbar)/(EAB_size+EAA_size);

	name='EA_pic4'
	EA_pic4 =  EAA_pic4^(EAA_size/(EAB_size+EAA_size))*EAB_pic4^(EAB_size/(EAB_size+EAA_size));

	name='EA_y'
	EA_y =  (EAA_y*EAA_size*EAA_pybar+EAB_y*EAB_pybar*EAB_size*EAAEAB_rerbar)/(EAB_size+EAA_size);

	name='EA_ygrowth'
	EA_ygrowth =  EA_y/EA_y(-1);

	name='EA_ygrowth4'
	EA_ygrowth4 =  EA_y/EA_y(-4);

	name='EA_z'
	log(EA_z) =  (1-EA_rhoz)*log(EA_zbar)+EA_rhoz*log(EA_z(-1))+EA_epsz;

	name='EAAEAB_excy'
	EAAEAB_excy =  EABEAA_imc*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size/(EAA_py*EAA_y);

	name='EAARW_excy'
	EAARW_excy =  RWEAA_imc*RWEAA_pim*EAARW_rer*RW_size/EAA_size/(EAA_py*EAA_y);

	name='EAAUS_excy'
	EAAUS_excy =  USEAA_imc*USEAA_pim*EAAUS_rer*US_size/EAA_size/(EAA_py*EAA_y);

	name='EAAEAB_exiy'
	EAAEAB_exiy =  EABEAA_imi*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size/(EAA_py*EAA_y);

	name='EAARW_exiy'
	EAARW_exiy =  RWEAA_imi*RWEAA_pim*EAARW_rer*RW_size/EAA_size/(EAA_py*EAA_y);

	name='EAAUS_exiy'
	EAAUS_exiy =  USEAA_imi*USEAA_pim*EAAUS_rer*US_size/EAA_size/(EAA_py*EAA_y);

	name='EAAEAB_fx'
	EAAEAB_fx =  EAA_mct*EAB_size/EAA_size*EABEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(EABEAA_piim(1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(0.25*(1-EAA_chix))))^EAA_thetat*EAAEAB_fx(1);

	name='EAARW_fx'
	EAARW_fx =  EAA_mct*RW_size/EAA_size*RWEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(RWEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*RWEAA_piim^EAA_chix))^EAA_thetat*EAARW_fx(1);

	name='EAAUS_fx'
	EAAUS_fx =  EAA_mct*US_size/EAA_size*USEAA_im+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(USEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*USEAA_piim^EAA_chix))^EAA_thetat*EAAUS_fx(1);

	name='EAAEAB_gammaimc'
	EAAEAB_gammaimc =  EAA_gammaimc1/2*(EAAEAB_imc/EAA_qc/(EAAEAB_imc(-1)/EAA_qc(-1))-1)^2;

	name='EAARW_gammaimc'
	EAARW_gammaimc =  EAA_gammaimc1/2*(EAARW_imc/EAA_qc/(EAARW_imc(-1)/EAA_qc(-1))-1)^2;

	name='EAAUS_gammaimc'
	EAAUS_gammaimc =  EAA_gammaimc1/2*(EAAUS_imc/EAA_qc/(EAAUS_imc(-1)/EAA_qc(-1))-1)^2;

	name='EAAEAB_gammaimcdag'
	EAAEAB_gammaimcdag =  1-EAAEAB_gammaimc-EAAEAB_imc/EAA_qc*EAA_gammaimc1*(EAAEAB_imc/EAA_qc/(EAAEAB_imc(-1)/EAA_qc(-1))-1)/(EAAEAB_imc(-1)/EAA_qc(-1));

	name='EAARW_gammaimcdag'
	EAARW_gammaimcdag =  1-EAARW_gammaimc-EAARW_imc/EAA_qc*EAA_gammaimc1*(EAARW_imc/EAA_qc/(EAARW_imc(-1)/EAA_qc(-1))-1)/(EAARW_imc(-1)/EAA_qc(-1));

	name='EAAUS_gammaimcdag'
	EAAUS_gammaimcdag =  1-EAAUS_gammaimc-EAAUS_imc/EAA_qc*EAA_gammaimc1*(EAAUS_imc/EAA_qc/(EAAUS_imc(-1)/EAA_qc(-1))-1)/(EAAUS_imc(-1)/EAA_qc(-1));

	name='EAAEAB_gammaimi'
	EAAEAB_gammaimi =  EAA_gammaimi1/2*(EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi(-1))-1)^2;

	name='EAARW_gammaimi'
	EAARW_gammaimi =  EAA_gammaimi1/2*(EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi(-1))-1)^2;

	name='EAAUS_gammaimi'
	EAAUS_gammaimi =  EAA_gammaimi1/2*(EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi(-1))-1)^2;

	name='EAAEAB_gammaimidag'
	EAAEAB_gammaimidag =  1-EAAEAB_gammaimi-EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAAEAB_imi/EAA_qi/(EAAEAB_imi(-1)/EAA_qi)-1);

	name='EAARW_gammaimidag'
	EAARW_gammaimidag =  1-EAARW_gammaimi-EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAARW_imi/EAA_qi/(EAARW_imi(-1)/EAA_qi)-1);

	name='EAAUS_gammaimidag'
	EAAUS_gammaimidag =  1-EAAUS_gammaimi-EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi(-1))*EAA_gammaimi1*(EAAUS_imi/EAA_qi/(EAAUS_imi(-1)/EAA_qi)-1);

	name='EAAEAB_gx'
	EAAEAB_gx =  EABEAA_im*EABEAA_pim*EAAEAB_rer*EAB_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(EABEAA_piim(1)/(EABEAA_piim^EAA_chix*EAA_pi4target^(0.25*(1-EAA_chix))))^(EAA_thetat-1)*EAAEAB_gx(1);

	name='EAARW_gx'
	EAARW_gx =  RWEAA_im*RWEAA_pim*EAARW_rer*RW_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(RWEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*RWEAA_piim^EAA_chix))^(EAA_thetat-1)*EAARW_gx(1);

	name='EAAUS_gx'
	EAAUS_gx =  USEAA_im*USEAA_pim*EAAUS_rer*US_size/EAA_size+EAA_lambdai(1)*EAA_beta*EAA_xix/EAA_lambdai*(USEAA_piim(1)/(EAA_pi4target^(0.25*(1-EAA_chix))*USEAA_piim^EAA_chix))^(EAA_thetat-1)*EAAUS_gx(1);

	name='EAAEAB_im'
	EAAEAB_im =  EAAEAB_imc+EAAEAB_imi;

	name='EAARW_im'
	EAARW_im =  EAARW_imc+EAARW_imi;

	name='EAAUS_im'
	EAAUS_im =  EAAUS_imc+EAAUS_imi;

end;