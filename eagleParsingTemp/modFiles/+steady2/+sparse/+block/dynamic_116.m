function [y, T] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2263)=y(2183);
  y(2259)=y(2156);
  y(2101)=((params(40)+T(3)-1)*y(2263)-params(40)*x(6)*y(2259))/(y(2259)*(1-x(6)));
end
