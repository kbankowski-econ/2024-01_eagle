function [y, T] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3700)=y(3618);
  y(3356)=y(3146);
  y(3536)=((params(149)+T(2)-1)*y(3700)-params(149)*x(33)*y(3696))/(y(3696)*(1-x(33)));
  y(3355)=y(3145);
end
