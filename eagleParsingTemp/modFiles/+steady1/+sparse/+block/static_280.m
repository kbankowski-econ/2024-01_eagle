function [y, T] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(3931)=y(5711)*y(5764)/(y(5749)*y(5682)+y(5711)*y(5764));
  T(3932)=y(5749)*y(5682)/(y(5749)*y(5682)+y(5711)*y(5764));
  y(5645)=T(3931)*y(5669)+T(3932)*y(5657);
  y(5644)=T(3931)*y(5668)+T(3932)*y(5656);
end
