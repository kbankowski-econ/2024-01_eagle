function [y, T] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5300)=y(5228);
  y(5141)=((params(480)+T(1444)-1)*y(5300)-params(480)*x(174)*y(5296))/(y(5296)*(1-x(174)));
end
