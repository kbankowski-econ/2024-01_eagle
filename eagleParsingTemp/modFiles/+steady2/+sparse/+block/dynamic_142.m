function [y, T] = dynamic_142(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4082)=y(4001);
  y(3919)=((params(335)+T(4)-1)*y(4082)-params(335)*x(90)*y(4078))/(y(4078)*(1-x(90)));
end
