function [y, T] = dynamic_234(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12040)=y(11952);
  y(11870)=((params(1197)+T(11)-1)*y(12040)-params(1197)*x(249)*y(12036))/(y(12036)*(1-x(249)));
end
