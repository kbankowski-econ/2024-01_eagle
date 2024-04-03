function [y, T] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2005)=y(4247)*y(4290)/(y(4247)*y(4290)+y(4279)*y(4221));
  T(2006)=y(4279)*y(4221)/(y(4247)*y(4290)+y(4279)*y(4221));
  y(4192)=T(2005)*y(4204)+T(2006)*y(4198);
end
