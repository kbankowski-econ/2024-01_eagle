function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2407)=(1-params(41))*x(2)+params(41)*y(173)+x(16);
  y(2422)=(1-params(42))*x(3)+params(42)*y(188)+x(17);
  y(2484)=(1-params(44))*x(4)+y(250)*params(44)+x(18);
  y(2485)=(1-params(45))*x(5)+y(251)*params(45)+x(19);
  y(2486)=x(6)*(1-params(46))+y(252)*params(46)+x(20);
  y(2487)=(1-params(47))*x(7)+y(253)*params(47)+x(21);
  y(2489)=(1-params(49))*x(9)+y(255)*params(49)+x(23);
  y(2488)=(1-params(48))*x(8)+y(254)*params(48)+x(22);
  y(2508)=(1-params(51))*x(10)+params(51)*y(274)+x(25);
end
