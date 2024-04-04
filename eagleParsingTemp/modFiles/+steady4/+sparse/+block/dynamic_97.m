function [y, T] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2052)=y(4226)*y(4269)/(y(4226)*y(4269)+y(4258)*y(4200));
  T(2053)=y(4258)*y(4200)/(y(4226)*y(4269)+y(4258)*y(4200));
  y(4175)=T(2052)*y(4187)+T(2053)*y(4181);
end
