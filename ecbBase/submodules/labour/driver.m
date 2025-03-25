dynare olen_pac

dbase = dseries('D:/git/U2_ECBMC/databases/data_total.mat');
dbase.U2_LEN = dbase.U2_LEN + dbase.U2_LSN;
dbase.U2_OLEN = exp(log(1/1.19)+log(1-0.33) - log(dbase.U2_C_CER) + log(dbase.U2_YER));

%mydseries_raw = dseries('data_var.mat');
%mydseries = mydseries_raw(firstobservedperiod(mydseries_raw):lastobservedperiod(mydseries_raw));
dbase.U2_Q_TAU = qgrowth(dbase.U2_TAU);
dbase.U2_G_EYER = dseries(zeros(length(dbase.dates),1), dbase.dates, 'U2_G_YER');

mydseries = dbase(dates('1996Q2'):dates('2016Q4'));
mydseries2 = dbase(dates('2001Q1'):dates('2016Q3'));

sur(mydseries, M_.param_names(1:17), {'U2_STN', 'U2_ESTN', 'U2_EHIC', 'U2_G_YER', 'U2_Q_YED'}); 
sur(mydseries2, M_.param_names(18:25), {'U2_STN', 'U2_ESTN', 'U2_EHIC', 'U2_G_YER', 'U2_Q_YED','U2_OLEN','U2_Q_TAU'});

get_companion_matrix('toto','pacman')
pac.update.expectation('pacman')

eparams.ecm_pac = 0.2;
eparams.u2_ihr_pac_u2_ihr_L1 = 0.4;
eparams.u2_ihr_pac_u2_ihr_L2 = 0.2;
eparams.u2_u2_len_yer = .2;


dbase.res_ez = dseries(nan(dbase.nobs,1), dbase.dates(1), 'res_ez');
pac.estimate.nls('zpac', eparams, dbase, dates('2001Q4'):dates('2016Q3'));

