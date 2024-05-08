function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1638)=(1-params(65))*x(2)+params(65)*y(129)+x(15);
  y(1654)=(1-params(66))*x(3)+params(66)*y(145)+x(16);
  y(1728)=(1-params(68))*x(4)+y(219)*params(68)+x(17);
  y(1729)=(1-params(69))*x(5)+y(220)*params(69)+x(18);
  y(1730)=x(6)*(1-params(70))+y(221)*params(70)+x(19);
  y(1731)=(1-params(71))*x(7)+y(222)*params(71)+x(20);
  y(1733)=(1-params(73))*x(9)+y(224)*params(73)+x(22);
  y(1732)=(1-params(72))*x(8)+y(223)*params(72)+x(21);
  y(1753)=(1-params(75))*x(10)+params(75)*y(244)+x(24);
end
