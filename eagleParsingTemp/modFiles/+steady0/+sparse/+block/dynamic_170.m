function [y, T] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8485)=y(8406);
  y(8319)=((params(556)+T(9)-1)*y(8485)-params(556)*x(195)*y(8481))/(y(8481)*(1-x(195)));
  y(6261)=y(6178)*y(6259)/(y(6276)*y(6187));
end
