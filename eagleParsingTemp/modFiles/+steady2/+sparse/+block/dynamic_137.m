function [y, T] = dynamic_137(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2783)=y(2679);
  y(2787)=y(2706);
  y(3419)=y(3315);
  y(2624)=((params(44)+T(4)-1)*y(2787)-params(44)*x(6)*y(2783))/(y(2783)*(1-x(6)));
end
