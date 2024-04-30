function [y, T] = dynamic_46(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1114)=params(162)*(y(491)/y(1564))^(-params(167))*(y(1494)/T(115))^params(167);
  y(1532)=(1-params(162))*(y(1565)/y(1564))^(-params(167))+T(1114)*y(459);
  y(1481)=y(1477)*y(1532);
end
