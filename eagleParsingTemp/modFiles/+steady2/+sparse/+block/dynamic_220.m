function [y, T] = dynamic_220(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12970)=y(12882);
  y(8729)=y(8786)*(1-params(360))+params(360)*y(1343)+x(77);
  y(12800)=((params(1447)+T(4936)-1)*y(12970)-params(1447)*x(303)*y(12966))/(y(12966)*(1-x(303)));
end
