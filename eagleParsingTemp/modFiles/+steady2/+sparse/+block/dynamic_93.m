function [y, T] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2283)=y(2326)*(1-params(272))+params(272)*y(949)+x(96);
  y(1446)=((params(28)+T(1)-1)*y(1584)-params(28)*y(1589)*y(1580))/(y(1580)*(1-y(1589)));
  y(1564)=y(1566)*y(1507)/T(36);
  T(1211)=params(282)*(y(960)/y(2294))^(-params(287))*(y(2235)/T(424))^params(287);
  y(2265)=(1-params(282))*(y(2295)/y(2294))^(-params(287))+T(1211)*y(931);
  y(2226)=y(2222)*y(2265);
end
