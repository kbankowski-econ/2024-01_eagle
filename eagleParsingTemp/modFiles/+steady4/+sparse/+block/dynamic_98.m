function [y, T] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2075)=y(4260)*y(4304)/(y(4260)*y(4304)+y(4293)*y(4234));
  T(2076)=y(4293)*y(4234)/(y(4260)*y(4304)+y(4293)*y(4234));
  y(4205)=T(2075)*y(4217)+T(2076)*y(4211);
end
