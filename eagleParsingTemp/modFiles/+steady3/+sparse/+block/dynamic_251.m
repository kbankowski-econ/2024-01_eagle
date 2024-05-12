function [y, T] = dynamic_251(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11581)=y(11498);
  y(11411)=((params(402)+T(5)-1)*y(11581)-params(402)*x(141)*y(11577))/(y(11577)*(1-x(141)));
end
