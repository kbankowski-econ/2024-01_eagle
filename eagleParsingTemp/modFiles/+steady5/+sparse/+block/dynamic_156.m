function [y, T] = dynamic_156(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12454)=y(12349);
  T(6381)=y(12309)*y(12361)/(y(12346)*y(12280)+y(12309)*y(12361));
  T(6382)=y(12346)*y(12280)/(y(12346)*y(12280)+y(12309)*y(12361));
  y(12243)=T(6381)*y(12267)+T(6382)*y(12255);
end
