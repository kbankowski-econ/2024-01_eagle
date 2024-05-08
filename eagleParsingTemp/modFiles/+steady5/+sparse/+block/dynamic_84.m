function [y, T] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2690)=y(2616);
  y(2530)=((params(249)+T(756)-1)*y(2690)-params(249)*x(87)*y(2686))/(y(2686)*(1-x(87)));
end
