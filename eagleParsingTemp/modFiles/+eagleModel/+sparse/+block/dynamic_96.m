function [y, T] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(3818)=params(166)*(y(683)/y(3604))^(-params(171))*(y(3534)/T(184))^params(171);
  y(3572)=(1-params(166))*(y(3605)/y(3604))^(-params(171))+T(3818)*y(651);
  y(3521)=y(3517)*y(3572);
end
