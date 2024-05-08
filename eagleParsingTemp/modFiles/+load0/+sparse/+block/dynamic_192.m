function [y, T] = dynamic_192(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(9438)=y(9358);
  y(9271)=((params(556)+T(9)-1)*y(9438)-params(556)*x(195)*y(9434))/(y(9434)*(1-x(195)));
  y(7405)=y(7565)*y(7499)-y(7515)*y(7453)-y(7467)*(1+y(7528))*y(7549);
end
