function [y, T] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1844)=y(1775);
  y(1706)=((params(81)+T(2)-1)*y(1844)-params(81)*x(31)*y(1840))/(y(1840)*(1-x(31)));
  y(1545)=y(1544)/(y(1521)*y(1570));
end
