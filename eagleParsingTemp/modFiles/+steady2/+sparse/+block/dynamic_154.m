function [y, T] = dynamic_154(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3357)=y(3252);
  y(4035)=y(3930);
  y(3361)=y(3279);
  y(3197)=((params(48)+T(4)-1)*y(3361)-params(48)*x(6)*y(3357))/(y(3357)*(1-x(6)));
end
