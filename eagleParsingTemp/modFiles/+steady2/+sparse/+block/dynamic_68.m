function [y, T] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1184)=params(352)*(y(1203)/y(2537))^(-params(357))*(y(2481)/T(103))^params(357);
  y(2509)=(1-params(352))*(y(2538)/y(2537))^(-params(357))+T(1184)*y(1175);
end
