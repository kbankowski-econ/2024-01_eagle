function [y, T] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1055)=y(1029);
  y(349)=y(245);
  y(353)=y(272);
  y(190)=((params(44)+T(35)-1)*y(353)-params(44)*x(6)*y(349))/(y(349)*(1-x(6)));
end
