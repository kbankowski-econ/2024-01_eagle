function [y, T] = dynamic_160(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4039)=y(3957);
  y(3875)=((params(250)+T(3)-1)*y(4039)-params(250)*x(60)*y(4035))/(y(4035)*(1-x(60)));
end
