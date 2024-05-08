function [y, T] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(317)=y(242);
  y(313)=y(215);
  y(156)=((params(18)+T(31)-1)*y(317)-params(18)*x(6)*y(313))/(y(313)*(1-x(6)));
end
