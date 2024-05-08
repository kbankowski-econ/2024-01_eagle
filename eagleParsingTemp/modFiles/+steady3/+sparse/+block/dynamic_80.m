function [y, T] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2685)=y(2612);
  y(2525)=((params(248)+T(710)-1)*y(2685)-params(248)*x(87)*y(2681))/(y(2681)*(1-x(87)));
end
