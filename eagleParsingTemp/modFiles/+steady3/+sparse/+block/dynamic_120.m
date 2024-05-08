function [y, T] = dynamic_120(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2835)=y(2760);
  y(2831)=y(2733);
  y(2673)=((params(17)+T(4)-1)*y(2835)-params(17)*x(6)*y(2831))/(y(2831)*(1-x(6)));
end
