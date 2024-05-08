function [y, T] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3018)=y(270);
  y(3019)=y(1484);
  y(3020)=y(1485);
  T(1344)=params(382)*(y(1412)/y(2946))^(-params(387))*(y(2879)/T(456))^params(387);
  y(2915)=(1-params(382))*(y(2947)/y(2946))^(-params(387))+T(1344)*y(1381);
  y(1807)=y(1804)/y(1486);
  T(1345)=y(1804)*y(1751)*params(69)/y(1759)+y(2092)*params(146)*y(2039)/y(2047)+y(2380)*params(223)*y(2327)/y(2335)+y(2668)*params(303)*y(2615)/y(2623)+y(2952)*params(379)*y(2902);
  y(1810)=y(1804)*y(1751)*params(69)/y(1759)/T(1345);
end
