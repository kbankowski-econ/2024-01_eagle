function [y, T] = dynamic_206(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13033)=y(12951);
  y(12864)=((params(787)+T(12)-1)*y(13033)-params(787)*x(276)*y(13029))/(y(13029)*(1-x(276)));
end
