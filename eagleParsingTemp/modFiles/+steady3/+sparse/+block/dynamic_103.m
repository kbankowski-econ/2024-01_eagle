function [y, T] = dynamic_103(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2303)=y(2229);
  y(2299)=y(2202);
  y(2142)=((params(17)+T(3)-1)*y(2303)-params(17)*x(6)*y(2299))/(y(2299)*(1-x(6)));
end
