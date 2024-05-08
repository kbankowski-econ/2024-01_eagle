function [y, T] = dynamic_213(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6788)=y(6708);
  y(6622)=((params(249)+T(3)-1)*y(6788)-params(249)*x(87)*y(6784))/(y(6784)*(1-x(87)));
end
