function [y, T] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2842)=y(2767);
  y(2838)=y(2740);
  y(2680)=((params(17)+T(3)-1)*y(2842)-params(17)*x(6)*y(2838))/(y(2838)*(1-x(6)));
end
