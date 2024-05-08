function [y, T] = dynamic_230(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11037)=y(10955);
  y(10868)=((params(479)+T(6)-1)*y(11037)-params(479)*x(168)*y(11033))/(y(11033)*(1-x(168)));
end
