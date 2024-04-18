function [y, T] = dynamic_119(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2803)=y(2705);
  y(2807)=y(2732);
  y(3479)=y(3381);
  y(2645)=((params(17)+T(4)-1)*y(2807)-params(17)*x(6)*y(2803))/(y(2803)*(1-x(6)));
end
