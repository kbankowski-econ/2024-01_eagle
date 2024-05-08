function [y, T] = dynamic_204(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8045)=y(7942);
  y(6660)=y(6580);
  y(6493)=((params(94)+T(6)-1)*y(6660)-params(94)*x(33)*y(6656))/(y(6656)*(1-x(33)));
end
