function [y, T] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2000)=y(4220)*y(4262)/(y(4220)*y(4262)+y(4251)*y(4195));
  T(2001)=y(4251)*y(4195)/(y(4220)*y(4262)+y(4251)*y(4195));
  y(4166)=T(2000)*y(4178)+T(2001)*y(4172);
end
