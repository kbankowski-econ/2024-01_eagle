function [y, T] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2336)=y(2378)*(1-params(216))+params(216)*y(827)+x(77);
  T(1175)=params(226)*(y(841)/y(2350))^(-params(231))*(y(2280)/T(252))^params(231);
  y(2318)=(1-params(226))*(y(2351)/y(2350))^(-params(231))+T(1175)*y(809);
  y(2267)=y(2263)*y(2318);
  y(2089)=y(2016);
  y(1801)=y(1728);
  y(1797)=y(1701);
  y(1641)=((params(17)+T(1)-1)*y(1801)-params(17)*x(6)*y(1797))/(y(1797)*(1-x(6)));
end
