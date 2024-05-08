function [y, T] = dynamic_204(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6720)=y(6640);
  y(6553)=((params(94)+T(6)-1)*y(6720)-params(94)*x(33)*y(6716))/(y(6716)*(1-x(33)));
  y(8105)=y(8002);
end
