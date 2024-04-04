function [y, T] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2022)=y(4219)*y(4262)/(y(4219)*y(4262)+y(4251)*y(4193));
  T(2023)=y(4251)*y(4193)/(y(4219)*y(4262)+y(4251)*y(4193));
  y(4168)=T(2022)*y(4180)+T(2023)*y(4174);
end
