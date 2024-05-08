function [y, T] = dynamic_174(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5930)=y(5852);
  y(5765)=((params(248)+T(4)-1)*y(5930)-params(248)*x(87)*y(5926))/(y(5926)*(1-x(87)));
end
