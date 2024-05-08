function [y, T] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2356)=y(2398)*(1-params(216))+params(216)*y(827)+x(77);
  T(1298)=params(226)*(y(841)/y(2370))^(-params(231))*(y(2300)/T(294))^params(231);
  y(2338)=(1-params(226))*(y(2371)/y(2370))^(-params(231))+T(1298)*y(809);
  y(2287)=y(2283)*y(2338);
  y(1821)=y(1748);
  y(1661)=((params(17)+T(1)-1)*y(1821)-params(17)*x(6)*y(1817))/(y(1817)*(1-x(6)));
end
