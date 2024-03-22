function [y, T] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2096)=y(2027);
  y(1584)=y(1408);
  y(1958)=((params(145)+T(744)-1)*y(2096)-params(145)*x(57)*y(2092))/(y(2092)*(1-x(57)));
end
