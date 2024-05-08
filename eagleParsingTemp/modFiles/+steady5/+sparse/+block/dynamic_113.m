function [y, T] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2309)=y(2234);
  y(2305)=y(2207);
  y(2148)=((params(18)+T(3)-1)*y(2309)-params(18)*x(6)*y(2305))/(y(2305)*(1-x(6)));
end
