function [y, T] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(9486)=y(9406);
  y(9319)=((params(556)+T(9)-1)*y(9486)-params(556)*x(195)*y(9482))/(y(9482)*(1-x(195)));
end
