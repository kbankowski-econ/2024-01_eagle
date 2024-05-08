function [y, T] = static_440(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2794)=y(2706);
  y(2624)=((params(697)+T(64)-1)*y(2794)-params(697)*x(141)*y(2790))/(y(2790)*(1-x(141)));
end
