function [y, T] = dynamic_125(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4162)=y(4087);
  y(4000)=((params(248)+T(5)-1)*y(4162)-params(248)*x(90)*y(4158))/(y(4158)*(1-x(90)));
end
