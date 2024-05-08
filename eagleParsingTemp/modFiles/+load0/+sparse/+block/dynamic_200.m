function [y, T] = dynamic_200(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8512)=y(8432);
  y(8345)=((params(402)+T(7)-1)*y(8512)-params(402)*x(141)*y(8508))/(y(8508)*(1-x(141)));
end
