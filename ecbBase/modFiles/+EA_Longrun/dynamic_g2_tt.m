function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 297);

T = EA_Longrun.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(248) = (-1)/(y(616)*y(616));
T(249) = (-1)/(y(182)*y(182));
T(250) = (-((-1)/(y(300)*y(300))));
T(251) = (-1)/(y(587)*y(587));
T(252) = (-((T(5)*0.01*0.25*0.01*getPowerDeriv(1+y(183)/100,(-0.75),1)-T(238)*T(238))/(T(5)*T(5))));
T(253) = (T(3)*0.01*0.25*0.01*getPowerDeriv(1+y(617)/100,(-0.75),1)-T(240)*T(240))/(T(3)*T(3));
T(254) = (-(0.094573*T(250)))/0.905427;
T(255) = (-1)/(y(582)*y(582));
T(256) = (-(0.094573*T(251)))/0.905427;
T(257) = (-1)/(y(28)*y(28));
T(258) = (-1)/(y(365)*y(365));
T(259) = (-(100*T(258)));
T(260) = (-1)/(y(606)*y(606));
T(261) = y(364)*y(364)*y(364)*y(364);
T(262) = (-(100*(-1)/(y(364)*y(364))));
T(263) = y(439)*y(439)*y(439)*y(439);
T(264) = (-(100*(-1)/(y(439)*y(439))));
T(265) = (-(100*T(260)));
T(266) = (-(100*1/(y(439)*y(439))));
T(267) = (-(100*1/(y(606)*y(606))));
T(268) = (-(100*y(372)/(y(439)*y(439))));
T(269) = (-(100*(-y(372))/(y(439)*y(439))));
T(270) = (-((-((-(y(456)-y(481)))*(y(362)+y(449)+y(362)+y(449))))/((y(362)+y(449))*(y(362)+y(449))*(y(362)+y(449))*(y(362)+y(449)))));
T(271) = (-(0.01*T(32)*T(122)));
T(272) = (-(0.01*T(123)));
T(273) = (-(0.01*T(124)));
T(274) = (-1)/((y(45)+y(46))*(y(45)+y(46)));
T(275) = (-((-1)/((y(352)+y(353))*(y(352)+y(353)))));
T(276) = (-1)/(y(176)*y(176));
T(277) = (-1)/(y(355)*y(355));
T(278) = (-(0.05*T(277)));
T(279) = (-((-1)/(y(599)*y(599))));
T(280) = (-(1/(y(352)+y(353))*exp(log(y(352)+y(353)))*1/(y(352)+y(353))+exp(log(y(352)+y(353)))*(-1)/((y(352)+y(353))*(y(352)+y(353)))));
T(281) = (-1)/(y(59)*y(59));
T(282) = (T(41)*(-((-y(439))*(y(59)+y(59))))/(y(59)*y(59)*y(59)*y(59))-T(132)*T(132))/(T(41)*T(41));
T(283) = (-((T(45)*(-((-y(606))*(y(176)+y(176))))/(y(176)*y(176)*y(176)*y(176))-T(226)*T(226))/(T(45)*T(45))));
T(284) = (-((T(45)*T(276)-T(225)*T(226))/(T(45)*T(45))));
T(285) = (-(y(616)*(-0.5)/(y(182)*y(182))));
T(286) = (-(0.5/y(182)));
T(287) = (-1)/(y(145)*y(145));
T(288) = (-1)/(y(571)*y(571))/0.905427;
T(289) = ((1+exp(100*y(498)))*(1+exp(100*y(498)))*(-(100*100*exp(100*y(498))))-(-(100*exp(100*y(498))))*((1+exp(100*y(498)))*100*exp(100*y(498))+(1+exp(100*y(498)))*100*exp(100*y(498))))/((1+exp(100*y(498)))*(1+exp(100*y(498)))*(1+exp(100*y(498)))*(1+exp(100*y(498))));
T(290) = 3*(y(504)/y(108))^2;
T(291) = (-(100*(T(171)*(-((-y(504))*(y(108)+y(108))))/(y(108)*y(108)*y(108)*y(108))+T(170)*4*T(170)*T(290))));
T(292) = (-(100*(T(171)*(-1)/(y(108)*y(108))+T(170)*4*1/y(108)*T(290))));
T(293) = (-(100*1/y(108)*4*1/y(108)*T(290)));
T(294) = 3*T(27)^2;
T(295) = (-(100*(T(216)*(-((-y(599))*(y(171)+y(171))))/(y(171)*y(171)*y(171)*y(171))+T(214)*4*T(214)*T(294))));
T(296) = getPowerDeriv(1+(y(515)-T(83))/100,(-0.75),1);
T(297) = 3*(y(510)/y(110))^2;

end
