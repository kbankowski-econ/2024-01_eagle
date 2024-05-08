function [y, T] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3856)=y(3781);
  y(3694)=((params(248)+T(4)-1)*y(3856)-params(248)*x(87)*y(3852))/(y(3852)*(1-x(87)));
end
