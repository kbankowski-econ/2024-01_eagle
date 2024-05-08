function [y, T] = dynamic_226(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12505)=y(12417);
  y(12335)=((params(1322)+T(12)-1)*y(12505)-params(1322)*x(276)*y(12501))/(y(12501)*(1-x(276)));
end
