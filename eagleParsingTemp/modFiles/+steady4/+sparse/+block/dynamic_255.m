function [y, T] = dynamic_255(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11058)=y(10975);
  y(10888)=((params(325)+T(4)-1)*y(11058)-params(325)*x(114)*y(11054))/(y(11054)*(1-x(114)));
end
