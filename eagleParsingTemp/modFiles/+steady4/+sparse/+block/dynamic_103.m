function [y, T] = dynamic_103(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2309)=y(2235);
  y(2305)=y(2208);
  y(2148)=((params(17)+T(3)-1)*y(2309)-params(17)*x(6)*y(2305))/(y(2305)*(1-x(6)));
end
