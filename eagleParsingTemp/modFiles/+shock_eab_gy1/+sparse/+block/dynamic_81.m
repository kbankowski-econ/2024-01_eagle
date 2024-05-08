function [y, T] = dynamic_81(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(6843)=params(1035)*(y(4594)/y(9460))^(-params(1040))*(y(9393)/T(1714))^params(1040);
  y(9429)=(1-params(1035))*(y(9461)/y(9460))^(-params(1040))+T(6843)*y(4563);
  T(6844)=y(8512)*y(8565)/(y(8550)*y(8483)+y(8512)*y(8565));
  T(6845)=y(8550)*y(8483)/(y(8550)*y(8483)+y(8512)*y(8565));
  y(8450)=T(6844)*y(8470)+T(6845)*y(8460);
end
