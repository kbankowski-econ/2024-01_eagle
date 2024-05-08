function [y, T] = dynamic_156(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4045)=y(3945);
  y(4049)=y(3972);
  y(3885)=((params(17)+T(4)-1)*y(4049)-params(17)*x(6)*y(4045))/(y(4045)*(1-x(6)));
end
