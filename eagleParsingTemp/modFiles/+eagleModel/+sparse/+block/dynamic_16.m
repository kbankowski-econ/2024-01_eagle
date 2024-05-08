function [y, T] = dynamic_16(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5184)=(1-params(244))*x(59)+params(244)*y(1051)+x(72);
  y(5205)=(1-params(245))*x(60)+params(245)*y(1072)+x(73);
  y(5293)=(1-params(253))*params(288)+params(253)*y(1160)+x(81);
  y(5279)=(1-params(247))*x(61)+y(1146)*params(247)+x(75);
  y(5280)=(1-params(248))*x(62)+y(1147)*params(248)+x(76);
  y(5281)=x(63)*(1-params(249))+y(1148)*params(249)+x(77);
  y(5282)=(1-params(250))*x(64)+y(1149)*params(250)+x(78);
  y(5284)=(1-params(252))*x(66)+y(1151)*params(252)+x(80);
  y(5283)=(1-params(251))*x(65)+y(1150)*params(251)+x(79);
  y(5305)=(1-params(254))*x(67)+params(254)*y(1172)+x(82);
end
