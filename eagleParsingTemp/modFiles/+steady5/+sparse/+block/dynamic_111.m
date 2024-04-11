function [y, T] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5300)=y(5227);
  y(5141)=((params(481)+T(1433)-1)*y(5300)-params(481)*x(174)*y(5296))/(y(5296)*(1-x(174)));
end
