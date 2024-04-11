function [y, T] = dynamic_147(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3828)=y(3752);
  y(3666)=((params(172)+T(3)-1)*y(3828)-params(172)*x(62)*y(3824))/(y(3824)*(1-x(62)));
end
