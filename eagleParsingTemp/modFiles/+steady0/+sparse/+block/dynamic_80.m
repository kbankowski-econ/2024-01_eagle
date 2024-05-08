function [y, T] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2665)=y(2592);
  y(2505)=((params(248)+T(646)-1)*y(2665)-params(248)*x(87)*y(2661))/(y(2661)*(1-x(87)));
end
