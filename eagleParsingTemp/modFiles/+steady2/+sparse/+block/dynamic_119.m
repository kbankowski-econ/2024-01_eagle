function [y, T] = dynamic_119(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4010)=y(4060)*(1-params(470))+params(470)*y(1545)+x(131);
  y(3105)=y(3024);
  T(2465)=params(480)*(y(1558)/y(4023))^(-params(485))*(y(3954)/T(822))^params(485);
  y(3992)=(1-params(480))*(y(4024)/y(4023))^(-params(485))+T(2465)*y(1527);
  y(3941)=y(3937)*y(3992);
  y(2582)=y(2575)*y(3948)/y(2676);
  y(2942)=((params(141)+T(2)-1)*y(3105)-params(141)*x(33)*y(3101))/(y(3101)*(1-x(33)));
  y(4063)=y(4037);
  y(2581)=y(2574)*y(3630)/y(2676);
end
