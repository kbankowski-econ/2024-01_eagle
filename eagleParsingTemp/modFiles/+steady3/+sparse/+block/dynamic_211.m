function [y, T] = dynamic_211(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10005)=y(9924);
  y(9837)=((params(479)+T(8)-1)*y(10005)-params(479)*x(168)*y(10001))/(y(10001)*(1-x(168)));
end
