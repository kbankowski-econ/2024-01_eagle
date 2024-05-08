function [y, T] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(4046)=params(166)*(y(683)/y(3644))^(-params(171))*(y(3574)/T(255))^params(171);
  y(3612)=(1-params(166))*(y(3645)/y(3644))^(-params(171))+T(4046)*y(651);
  y(3561)=y(3557)*y(3612);
end
