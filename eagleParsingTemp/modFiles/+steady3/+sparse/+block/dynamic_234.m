function [y, T] = dynamic_234(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(10524)=y(10442);
  y(10355)=((params(402)+T(5)-1)*y(10524)-params(402)*x(141)*y(10520))/(y(10520)*(1-x(141)));
end
