function [y, T] = static_365(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(930)=y(849);
  y(2315)=y(2211);
  y(763)=((params(95)+T(58)-1)*y(930)-params(95)*x(33)*y(926))/(y(926)*(1-x(33)));
end
