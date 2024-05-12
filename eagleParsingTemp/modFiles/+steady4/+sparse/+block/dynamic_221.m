function [y, T] = dynamic_221(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14286)=y(14203);
  y(14116)=((params(787)+T(12)-1)*y(14286)-params(787)*x(276)*y(14282))/(y(14282)*(1-x(276)));
end
