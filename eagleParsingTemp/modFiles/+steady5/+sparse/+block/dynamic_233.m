function [y, T] = dynamic_233(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14286)=y(14202);
  y(14116)=((params(788)+T(12)-1)*y(14286)-params(788)*x(276)*y(14282))/(y(14282)*(1-x(276)));
end
