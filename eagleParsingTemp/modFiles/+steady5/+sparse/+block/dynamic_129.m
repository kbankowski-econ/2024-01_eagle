function [y, T] = dynamic_129(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2842)=y(2766);
  y(2838)=y(2739);
  y(2680)=((params(18)+T(4)-1)*y(2842)-params(18)*x(6)*y(2838))/(y(2838)*(1-x(6)));
end
