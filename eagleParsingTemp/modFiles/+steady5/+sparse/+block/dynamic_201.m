function [y, T] = dynamic_201(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5912)=y(5832);
  y(5746)=((params(95)+T(5)-1)*y(5912)-params(95)*x(33)*y(5908))/(y(5908)*(1-x(33)));
  y(7222)=y(7119);
end
