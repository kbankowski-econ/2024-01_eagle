function [y, T] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5980)=y(5901);
  y(5815)=((params(249)+T(4)-1)*y(5980)-params(249)*x(87)*y(5976))/(y(5976)*(1-x(87)));
  y(4745)=y(4722);
end
