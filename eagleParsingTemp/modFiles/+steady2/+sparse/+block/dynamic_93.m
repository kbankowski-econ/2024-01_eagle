function [y, T] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2294)=y(2342)*(1-params(252))+params(252)*y(785)+x(77);
  T(1405)=params(262)*(y(798)/y(2307))^(-params(267))*(y(2238)/T(314))^params(267);
  y(2276)=(1-params(262))*(y(2308)/y(2307))^(-params(267))+T(1405)*y(767);
  y(2225)=y(2221)*y(2276);
  y(2065)=y(1986);
  y(2345)=y(2321);
  y(1789)=y(1710);
  y(1785)=y(1683);
  y(1628)=((params(36)+T(1)-1)*y(1789)-params(36)*x(6)*y(1785))/(y(1785)*(1-x(6)));
end
