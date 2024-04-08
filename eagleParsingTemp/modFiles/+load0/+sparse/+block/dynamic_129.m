function [y, T] = dynamic_129(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3051)=y(2953);
  y(3055)=y(2980);
  y(2893)=((params(17)+T(4)-1)*y(3055)-params(17)*x(6)*y(3051))/(y(3051)*(1-x(6)));
end
