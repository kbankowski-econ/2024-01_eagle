function [y, T] = dynamic_213(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10018)=y(9937);
  y(9850)=((params(479)+T(8)-1)*y(10018)-params(479)*x(168)*y(10014))/(y(10014)*(1-x(168)));
end
