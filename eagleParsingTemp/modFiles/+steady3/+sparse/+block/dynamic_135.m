function [y, T] = dynamic_135(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3821)=y(3746);
  y(3659)=((params(171)+T(3)-1)*y(3821)-params(171)*x(62)*y(3817))/(y(3817)*(1-x(62)));
end
