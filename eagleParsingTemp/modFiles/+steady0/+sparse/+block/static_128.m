function [y, T] = static_128(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1440)=y(1370);
  y(1283)=((params(326)+T(25)-1)*y(1440)-params(326)*x(114)*y(1436))/(y(1436)*(1-x(114)));
  y(119)=y(190)*y(143)+y(189)*y(122)-y(228)*y(167)-y(181)*(1+y(241))*y(262);
  y(118)=y(278)*y(212)-y(228)*y(166)-y(180)*(1+y(241))*y(262);
end
