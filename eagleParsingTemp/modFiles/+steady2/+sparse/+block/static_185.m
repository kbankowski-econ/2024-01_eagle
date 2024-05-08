function [y, T] = static_185(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(301)=y(221);
  y(297)=y(194);
  y(139)=((params(40)+T(31)-1)*y(301)-params(40)*x(6)*y(297))/(y(297)*(1-x(6)));
end
