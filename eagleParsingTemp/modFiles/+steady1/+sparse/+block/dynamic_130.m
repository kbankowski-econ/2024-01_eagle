function [y, T] = dynamic_130(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3392)=y(3321);
  y(3252)=((params(209)+T(3)-1)*y(3392)-params(209)*x(83)*y(3388))/(y(3388)*(1-x(83)));
end
