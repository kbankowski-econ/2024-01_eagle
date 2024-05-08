function [y, T] = dynamic_158(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6806)=y(6728);
  y(6641)=((params(402)+T(7)-1)*y(6806)-params(402)*x(141)*y(6802))/(y(6802)*(1-x(141)));
  y(5141)=y(4921);
end
