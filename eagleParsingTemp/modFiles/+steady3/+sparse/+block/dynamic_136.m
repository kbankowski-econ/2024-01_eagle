function [y, T] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6377)=y(6300);
  y(6213)=((params(479)+T(1778)-1)*y(6377)-params(479)*x(168)*y(6373))/(y(6373)*(1-x(168)));
end
