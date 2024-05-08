function [y, T] = dynamic_224(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(11550)=y(11468);
  y(11381)=((params(556)+T(8)-1)*y(11550)-params(556)*x(195)*y(11546))/(y(11546)*(1-x(195)));
end
