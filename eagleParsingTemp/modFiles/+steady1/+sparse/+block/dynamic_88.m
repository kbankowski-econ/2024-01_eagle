function [y, T] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3840)=y(3769);
  y(3682)=((params(403)+T(856)-1)*y(3840)-params(403)*x(141)*y(3836))/(y(3836)*(1-x(141)));
  y(2592)=y(2518);
end
