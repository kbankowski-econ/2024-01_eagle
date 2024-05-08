function [y, T] = static_350(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4392)=y(4287);
  y(1468)=y(1386);
  y(1300)=((params(172)+T(56)-1)*y(1468)-params(172)*x(60)*y(1464))/(y(1464)*(1-x(60)));
end
