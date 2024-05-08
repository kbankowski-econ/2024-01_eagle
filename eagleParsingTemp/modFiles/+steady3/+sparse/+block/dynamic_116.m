function [y, T] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3849)=y(3774);
  y(3687)=((params(248)+T(5)-1)*y(3849)-params(248)*x(87)*y(3845))/(y(3845)*(1-x(87)));
end
