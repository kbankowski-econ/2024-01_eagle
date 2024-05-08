function [y, T] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3856)=y(3780);
  y(3694)=((params(249)+T(5)-1)*y(3856)-params(249)*x(87)*y(3852))/(y(3852)*(1-x(87)));
end
