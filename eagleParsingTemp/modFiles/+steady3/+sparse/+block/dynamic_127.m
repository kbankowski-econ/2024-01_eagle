function [y, T] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4190)=y(4115);
  y(4028)=((params(248)+T(5)-1)*y(4190)-params(248)*x(90)*y(4186))/(y(4186)*(1-x(90)));
end
