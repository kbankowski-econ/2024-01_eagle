function [y, T] = dynamic_135(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3828)=y(3753);
  y(3666)=((params(171)+T(3)-1)*y(3828)-params(171)*x(62)*y(3824))/(y(3824)*(1-x(62)));
end
