function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1290)=(1-params(61))*x(2)+params(61)*y(108)+x(16);
  y(1326)=(1-params(62))*x(3)+params(62)*y(144)+x(17);
  y(1414)=(1-params(64))*x(4)+y(232)*params(64)+x(18);
  y(1415)=(1-params(65))*x(5)+y(233)*params(65)+x(19);
  y(1416)=x(6)*(1-params(66))+y(234)*params(66)+x(20);
  y(1417)=(1-params(67))*x(7)+y(235)*params(67)+x(21);
  y(1419)=(1-params(69))*x(9)+y(237)*params(69)+x(23);
  y(1418)=(1-params(68))*x(8)+y(236)*params(68)+x(22);
  y(1440)=(1-params(71))*x(10)+params(71)*y(258)+x(25);
end
