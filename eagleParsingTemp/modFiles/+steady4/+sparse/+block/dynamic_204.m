function [y, T] = dynamic_204(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13103)=y(13021);
  y(12934)=((params(787)+T(12)-1)*y(13103)-params(787)*x(276)*y(13099))/(y(13099)*(1-x(276)));
end
