function [y, T] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6806)=y(6727);
  y(6641)=((params(403)+T(7)-1)*y(6806)-params(403)*x(141)*y(6802))/(y(6802)*(1-x(141)));
  y(5141)=y(4921);
end
