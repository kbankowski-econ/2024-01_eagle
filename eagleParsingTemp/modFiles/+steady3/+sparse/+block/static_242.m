function [y, T] = static_242(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(363)=y(264);
  y(367)=y(291);
  y(204)=((params(17)+T(39)-1)*y(367)-params(17)*x(6)*y(363))/(y(363)*(1-x(6)));
end
