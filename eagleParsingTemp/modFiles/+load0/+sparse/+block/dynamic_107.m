function [y, T] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4116)=y(4160)*(1-params(370))+params(370)*y(1651)+x(131);
  y(3145)=y(3070);
  T(2185)=params(380)*(y(1665)/y(4130))^(-params(385))*(y(4060)/T(715))^params(385);
  y(4098)=(1-params(380))*(y(4131)/y(4130))^(-params(385))+T(2185)*y(1633);
  y(4047)=y(4043)*y(4098);
  y(2602)=T(19)/y(2702);
  y(2983)=((params(94)+T(2)-1)*y(3145)-params(94)*x(33)*y(3141))/(y(3141)*(1-x(33)));
  y(2601)=T(144)/y(2702);
end
