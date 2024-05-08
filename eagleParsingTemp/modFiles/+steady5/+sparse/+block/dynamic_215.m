function [y, T] = dynamic_215(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13103)=y(13020);
  y(12934)=((params(788)+T(12)-1)*y(13103)-params(788)*x(276)*y(13099))/(y(13099)*(1-x(276)));
end
