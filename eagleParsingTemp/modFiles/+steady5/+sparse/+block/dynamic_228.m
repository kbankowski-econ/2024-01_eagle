function [y, T] = dynamic_228(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10506)=y(10424);
  y(10338)=((params(557)+T(9)-1)*y(10506)-params(557)*x(195)*y(10502))/(y(10502)*(1-x(195)));
end
