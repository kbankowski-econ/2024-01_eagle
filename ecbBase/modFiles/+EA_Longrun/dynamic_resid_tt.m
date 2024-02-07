function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 92);

T(1) = exp(log(y(616))-log(y(493))+0.041576674292888*(y(491)-y(497)-(y(627)-y(617)))+y(298));
T(2) = exp(params(2)+log(y(587))-log(y(300))+params(3)*x(it_, 2)+params(3)*(-40));
T(3) = (1+y(617)/100)^0.25;
T(4) = log(T(3));
T(5) = (1+y(183)/100)^0.25;
T(6) = log(T(5));
T(7) = exp(params(7)+log(y(616))*(1-params(146))+params(146)*log(y(292)));
T(8) = exp(params(12)+log(y(296))*(1-params(17)-params(18))/(1-params(17))+params(18)*(log(y(506))-log(y(607)))/(1-params(17))+x(it_, 2)*params(13)+(-40)*params(13));
T(9) = exp(((1-params(17))*log(y(289))-log(y(288))*(1-params(17)-params(18)))/params(18)+y(294));
T(10) = exp((1-params(17))*log(y(289))+log(y(287))*params(17)+y(293));
T(11) = exp((log(y(582))-(log(y(587))-log(y(300)))*0.094573)/0.905427);
T(12) = 1/y(277);
T(13) = y(319)/y(27);
T(14) = y(341)/100;
T(15) = T(14)+x(it_, 15)/100;
T(16) = y(320)/400;
T(17) = x(it_, 15)/100+y(321)/400-(1-x(it_, 15)/100)*y(325)/400;
T(18) = 1/(1-y(326));
T(19) = y(337)/y(35);
T(20) = y(445)/y(61);
T(21) = y(322)/y(28);
T(22) = y(533)/y(123);
T(23) = y(486)/y(92);
T(24) = y(589)/y(166);
T(25) = y(569)/y(149);
T(26) = y(548)/y(132);
T(27) = y(599)/y(171);
T(28) = exp(log(y(483))-log(y(489)));
T(29) = exp(0.504235050500646-x(it_, 2)*0.0004474779544407735+0.01789911817763094+0.5445364252354276*log(y(335))+0.2706525506486854*log(y(336))+0.107219242952739*log(y(306))+0.07759178116315124*log(y(529)));
T(30) = y(330)/100;
T(31) = y(329)/100;
T(32) = exp(log(y(606))+log(y(343))+log(y(342))+T(31)+T(30)+y(331)/100);
T(33) = exp(log(y(606))+log(y(342))+log(y(344))+T(31)+T(30)+y(332)/100);
T(34) = exp(log(y(349))-log(y(599)));
T(35) = exp(log(y(350))-log(y(599)));
T(36) = exp(log(y(351))-log(y(599)));
T(37) = y(69)/y(68);
T(38) = 2.5*y(368)/100;
T(39) = x(it_, 65)/100;
T(40) = y(82)/y(59);
T(41) = y(439)/y(59);
T(42) = y(83)/y(82);
T(43) = 1/T(39);
T(44) = x(it_, 60)/100;
T(45) = y(606)/y(176);
T(46) = y(85)/y(84);
T(47) = 1/T(44);
T(48) = x(it_, 61)/100;
T(49) = y(86)/y(59);
T(50) = y(87)/y(86);
T(51) = 1/T(48);
T(52) = x(it_, 62)/100;
T(53) = y(62)/y(59);
T(54) = y(89)/y(88);
T(55) = 1/T(52);
T(56) = x(it_, 63)/100;
T(57) = y(92)/y(91);
T(58) = 1/T(56);
T(59) = y(304)/y(599);
T(60) = exp(log(T(59))-1.36387782692927+x(it_, 2)*0.00395241629225460-0.1422869865211656);
T(61) = exp(log(y(606))+log(y(342))+log(y(307))+T(31)+T(30)+y(305)/100);
T(62) = y(617)/400;
T(63) = exp(4.2259320570432+0.977525222310148*log(y(355))-0.977525222310148*log(y(546))-0.604599818558331*log(y(543)));
T(64) = y(599)*y(504)/y(616);
T(65) = exp(log(y(365))+log(1-params(171))-0.173953307123438-log(T(64)));
T(66) = y(553)/100;
T(67) = 1-y(554)/100;
T(68) = exp(log(y(616))*(1-params(146))+params(146)*log(y(582))-0.0225193162293+x(it_, 2)*0.000296690463541);
T(69) = exp(log(y(616))*(1-params(147))+log(y(582))*params(147));
T(70) = exp(params(171)*log(y(608))+log(y(607))*(1-params(171))+(1-params(171))*(log(T(66))+log(x(it_, 116))+log(T(67)))+y(610));
T(71) = exp(log(y(365))+(-2.218812700565000)-x(it_, 2)*0.00524154912771095+0.2306281616192818-0.1596371660873066*log(y(538))-1.058242895853434*log(y(535)));
T(72) = (log(y(571))-(log(y(587))-log(y(300)))*0.094573)/0.905427;
T(73) = exp(params(92)+log(y(583))+params(93)*(T(72)-log(y(616))));
T(74) = exp(log(y(582))+x(it_, 1)*params(99)+params(100)*(log(y(616))-log(y(582))));
T(75) = exp(params(108)+log(y(496))+params(109)*(log(y(578))-log(y(585)))+x(it_, 2)*params(110));
T(76) = exp(log(y(585))+x(it_, 1)*params(114)+params(115)*(log(y(582))*0.3107+log(y(616))*0.6893-log(y(585))));
T(77) = exp(log(y(583))+params(122)+params(123)*((log(y(582))-(log(y(587))-log(y(300)))*0.1165)/0.8835-log(y(616))));
T(78) = exp(log(y(586))+x(it_, 1)*params(129)+0.1165*(log(y(587))-log(y(300))-log(y(586)))+0.30*(log(y(616))-log(y(586))));
T(79) = exp(log(y(493))+log(y(277)));
T(80) = exp(0.8*log(y(495))+0.2*log(y(494)));
T(81) = exp(log(y(616))+log(y(606))+log(1-params(171))-0.173953307123438-log(y(567))-log(y(599)));
T(82) = 100*((y(504)/y(108))^4-1);
T(83) = 100*(T(27)^4-1);
T(84) = (1+(y(515)-T(83))/100)^0.25;
T(85) = (1+y(611)/100)^0.25;
T(86) = 1+y(627)/100;
T(87) = 1+y(634)/100;
T(88) = 1+y(633)/100;
T(89) = 0.5930+0.0666*(1+y(191)/100)/T(86)+0.1622*(1+y(194)/100)/T(87)+0.1782*(1+y(193)/100)/T(88);
T(90) = exp(0.3610294645957802*y(339)+log(y(35))+y(37)*0.3939685705743931/100+0.6389705354042198*(y(338)+0.3427936977353141*(log(y(34))-log(y(35)))+0.0114310093703755*y(653))-0.002*y(654));
T(91) = exp(0.5*(y(25)/100+y(650))+log(y(28))-0.00247533082710276+0.4907330395720739*(y(36)/100+y(25)/100)+0.5*(y(323)+0.1688019699861396*(log(y(26))-log(y(28)))+0.664730661126421*(log(y(28))-log(y(224)))));
T(92) = y(132)/y(232);

end
