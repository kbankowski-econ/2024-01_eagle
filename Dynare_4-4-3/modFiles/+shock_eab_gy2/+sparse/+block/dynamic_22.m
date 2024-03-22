function [y, T] = dynamic_22(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1700)=(1-params(273))*x(85)+params(273)*y(759)+x(98);
  y(1786)=(1-params(280))*params(309)+params(280)*y(845)+x(106);
  y(1773)=(1-params(274))*x(86)+y(832)*params(274)+x(100);
  y(1774)=(1-params(275))*x(87)+y(833)*params(275)+x(101);
  y(1775)=x(88)*(1-params(276))+y(834)*params(276)+x(102);
  y(1776)=(1-params(277))*x(89)+y(835)*params(277)+x(103);
  y(1778)=(1-params(279))*x(91)+y(837)*params(279)+x(105);
  y(1777)=(1-params(278))*x(90)+y(836)*params(278)+x(104);
  y(1796)=(1-params(281))*x(92)+params(281)*y(855)+x(107);
end
