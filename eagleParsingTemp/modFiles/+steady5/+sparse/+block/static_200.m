function [y, T] = static_200(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1810)=y(1738);
  y(1668)=((params(343)+T(31)-1)*y(1810)-params(343)*x(146)*y(1806))/(y(1806)*(1-x(146)));
end
