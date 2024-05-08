function [y, T] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2892)=params(380)*(y(1788)/y(4846))^(-params(385))*(y(4776)/T(859))^params(385);
  y(4814)=(1-params(380))*(y(4847)/y(4846))^(-params(385))+T(2892)*y(1756);
  y(4763)=y(4759)*y(4814);
  y(3438)=y(3681)*T(975)*y(3887)/T(636);
  y(3431)=y(3681)*T(975)*y(3873)/T(636);
  y(4881)=y(4860);
  y(3788)=y(3711);
  y(3625)=((params(95)+T(2)-1)*y(3788)-params(95)*x(33)*y(3784))/(y(3784)*(1-x(33)));
  y(3559)=y(4044)*y(3568)*y(3552)/T(636);
end
