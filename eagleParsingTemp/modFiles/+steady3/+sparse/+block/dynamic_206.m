function [y, T] = dynamic_206(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13089)=y(13007);
  y(12920)=((params(787)+T(12)-1)*y(13089)-params(787)*x(276)*y(13085))/(y(13085)*(1-x(276)));
end
