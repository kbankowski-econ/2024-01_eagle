function [y, T] = dynamic_190(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8197)=y(8112);
  y(8030)=((params(851)+T(9)-1)*y(8197)-params(851)*x(195)*y(8193))/(y(8193)*(1-x(195)));
  y(6146)=y(6064)*y(6144)/(y(6161)*y(6073));
end
