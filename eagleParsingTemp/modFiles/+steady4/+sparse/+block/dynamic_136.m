function [y, T] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3421)=y(3322);
  y(3425)=y(3349);
  y(4147)=y(4048);
  y(3262)=((params(17)+T(4)-1)*y(3425)-params(17)*x(6)*y(3421))/(y(3421)*(1-x(6)));
end
