function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2379)=(1-params(41))*x(2)+params(41)*y(173)+x(16);
  y(2394)=(1-params(42))*x(3)+params(42)*y(188)+x(17);
  y(2456)=(1-params(44))*x(4)+y(250)*params(44)+x(18);
  y(2457)=(1-params(45))*x(5)+y(251)*params(45)+x(19);
  y(2458)=x(6)*(1-params(46))+y(252)*params(46)+x(20);
  y(2459)=(1-params(47))*x(7)+y(253)*params(47)+x(21);
  y(2461)=(1-params(49))*x(9)+y(255)*params(49)+x(23);
  y(2460)=(1-params(48))*x(8)+y(254)*params(48)+x(22);
  y(2480)=(1-params(51))*x(10)+params(51)*y(274)+x(25);
end
