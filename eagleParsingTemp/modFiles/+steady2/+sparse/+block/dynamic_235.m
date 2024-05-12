function [y, T] = dynamic_235(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14129)=y(14095);
  y(10237)=y(10148);
  y(10066)=((params(463)+T(2)-1)*y(10237)-params(463)*x(87)*y(10233))/(y(10233)*(1-x(87)));
  y(10552)=((params(592)+T(11)-1)*y(10723)-params(592)*x(114)*y(10719))/(y(10719)*(1-x(114)));
end
