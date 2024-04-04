function [y, T] = dynamic_129(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3449)=y(3378);
  y(3307)=((params(212)+T(3)-1)*y(3449)-params(212)*x(90)*y(3445))/(y(3445)*(1-x(90)));
end
