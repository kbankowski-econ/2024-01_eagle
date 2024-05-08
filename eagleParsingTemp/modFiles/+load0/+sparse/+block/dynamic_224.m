function [y, T] = dynamic_224(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11494)=y(11412);
  y(11325)=((params(556)+T(8)-1)*y(11494)-params(556)*x(195)*y(11490))/(y(11490)*(1-x(195)));
end
