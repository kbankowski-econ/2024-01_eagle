function [y, T] = dynamic_210(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12520)=y(12438);
  y(12351)=((params(710)+T(11)-1)*y(12520)-params(710)*x(249)*y(12516))/(y(12516)*(1-x(249)));
end
