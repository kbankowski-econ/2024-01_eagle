function [y, T] = dynamic_70(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2486)=params(164)*(y(587)/y(2518))^(-params(169))*(y(2448)/T(224))^params(169);
  y(2486)=(1-params(164))*(y(2519)/y(2518))^(-params(169))+T(2486)*y(555);
  y(2435)=y(2431)*y(2486);
end
