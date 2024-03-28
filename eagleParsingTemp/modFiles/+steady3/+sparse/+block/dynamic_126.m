function [y, T] = dynamic_126(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2491)=y(2405);
  y(3351)=y(3393)*(1-params(241))+params(241)*y(1159)+x(100);
  T(1974)=params(251)*(y(1171)/y(3363))^(-params(256))*(y(3303)/T(429))^params(256);
  y(3333)=(1-params(251))*(y(3364)/y(3363))^(-params(256))+T(1974)*y(1141);
  y(3294)=y(3290)*y(3333);
  y(2495)=y(2424);
  y(2355)=((params(17)+T(4)-1)*y(2495)-params(17)*x(5)*y(2491))/(y(2491)*(1-x(5)));
end
