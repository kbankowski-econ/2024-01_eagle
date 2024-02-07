function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 70);

T = EA_Longrun.static_resid_tt(T, y, x, params);

T(48) = (-(0.094573*(-(1/y(24)))))/0.905427;
T(49) = 1/y(323);
T(50) = (-T(49));
T(51) = 1/y(79);
T(52) = 1/y(89);
T(53) = 1/y(340);
T(54) = 1/y(163);
T(55) = (-(100*1/y(88)));
T(56) = (-(100*T(54)));
T(57) = (-(100*(-1)/y(163)));
T(58) = 1/y(207);
T(59) = (-(100*(-y(96))/y(163)));
T(60) = 1/y(330);
T(61) = (-(100*T(60)));
T(62) = 1/y(214);
T(63) = (-(100*exp(100*y(222))))/((1+exp(100*y(222)))*(1+exp(100*y(222))));
T(64) = 1/y(266);
T(65) = 1/y(288);
T(66) = 1/y(295)/0.905427;
T(67) = 1/y(302);
T(68) = 1/y(306);
T(69) = (-(0.094573*1/y(311)))/0.905427;
T(70) = 0.01*0.25*(1+y(341)/100)^(-0.75)/T(3);

end
