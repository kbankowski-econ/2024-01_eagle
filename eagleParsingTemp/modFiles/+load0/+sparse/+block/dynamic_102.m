function [y, T] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2279)=y(2205);
  y(2275)=y(2178);
  y(2118)=((params(17)+T(3)-1)*y(2279)-params(17)*x(6)*y(2275))/(y(2275)*(1-x(6)));
end
