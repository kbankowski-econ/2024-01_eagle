function [y, T] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3413)=y(3314);
  y(3417)=y(3341);
  y(4139)=y(4040);
  y(3254)=((params(17)+T(4)-1)*y(3417)-params(17)*x(6)*y(3413))/(y(3413)*(1-x(6)));
end
