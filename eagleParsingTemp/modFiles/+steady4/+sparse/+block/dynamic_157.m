function [y, T] = dynamic_157(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4054)=y(3954);
  y(4058)=y(3981);
  y(3894)=((params(17)+T(4)-1)*y(4058)-params(17)*x(6)*y(4054))/(y(4054)*(1-x(6)));
end
