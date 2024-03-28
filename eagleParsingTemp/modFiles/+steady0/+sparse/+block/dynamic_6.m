function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2365)=(1-params(41))*x(2)+params(41)*y(173)+x(15);
  y(2440)=(1-params(43))*x(3)+y(248)*params(43)+x(16);
  y(2441)=(1-params(44))*x(4)+y(249)*params(44)+x(17);
  y(2442)=x(5)*(1-params(45))+y(250)*params(45)+x(18);
  y(2443)=(1-params(46))*x(6)+y(251)*params(46)+x(19);
  y(2445)=(1-params(48))*x(8)+y(253)*params(48)+x(21);
  y(2444)=(1-params(47))*x(7)+y(252)*params(47)+x(20);
  y(2464)=(1-params(50))*x(9)+params(50)*y(272)+x(23);
end
