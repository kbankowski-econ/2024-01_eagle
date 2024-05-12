function [y, T] = dynamic_230(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14611)=y(14522);
  y(14440)=((params(1624)+T(5391)-1)*y(14611)-params(1624)*x(330)*y(14607))/(y(14607)*(1-x(330)));
end
