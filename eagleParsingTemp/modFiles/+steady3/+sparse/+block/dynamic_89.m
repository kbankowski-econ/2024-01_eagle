function [y, T] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3864)=y(3793);
  y(3706)=((params(403)+T(933)-1)*y(3864)-params(403)*x(141)*y(3860))/(y(3860)*(1-x(141)));
end
