function [y, T] = dynamic_178(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6945)=y(6861);
  y(6779)=((params(710)+T(8)-1)*y(6945)-params(710)*x(168)*y(6941))/(y(6941)*(1-x(168)));
end
