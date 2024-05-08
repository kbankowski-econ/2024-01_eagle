function [y, T] = dynamic_194(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11417)=y(11336);
  y(11249)=((params(710)+T(11)-1)*y(11417)-params(710)*x(249)*y(11413))/(y(11413)*(1-x(249)));
end
