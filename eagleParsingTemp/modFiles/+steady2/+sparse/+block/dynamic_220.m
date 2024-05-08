function [y, T] = dynamic_220(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(7869)=y(7782);
  y(7700)=((params(310)+T(3)-1)*y(7869)-params(310)*x(60)*y(7865))/(y(7865)*(1-x(60)));
end
