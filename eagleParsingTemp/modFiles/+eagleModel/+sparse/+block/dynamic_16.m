function [y, T] = dynamic_16(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2872)=(1-params(202))*x(61)+params(202)*y(744)+x(75);
  y(2887)=(1-params(203))*x(62)+params(203)*y(759)+x(76);
  y(2963)=(1-params(211))*params(243)+params(211)*y(835)+x(84);
  y(2949)=(1-params(205))*x(63)+y(821)*params(205)+x(78);
  y(2950)=(1-params(206))*x(64)+y(822)*params(206)+x(79);
  y(2951)=x(65)*(1-params(207))+y(823)*params(207)+x(80);
  y(2952)=(1-params(208))*x(66)+y(824)*params(208)+x(81);
  y(2954)=(1-params(210))*x(68)+y(826)*params(210)+x(83);
  y(2953)=(1-params(209))*x(67)+y(825)*params(209)+x(82);
  y(2973)=(1-params(212))*x(69)+params(212)*y(845)+x(85);
end
