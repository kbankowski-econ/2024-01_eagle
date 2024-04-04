function [y, T] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2066)=y(4226)*y(4268)/(y(4226)*y(4268)+y(4257)*y(4200));
  T(2067)=y(4257)*y(4200)/(y(4226)*y(4268)+y(4257)*y(4200));
  y(4175)=T(2066)*y(4187)+T(2067)*y(4181);
end
