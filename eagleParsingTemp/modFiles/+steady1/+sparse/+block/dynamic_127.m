function [y, T] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3373)=y(3415)*(1-params(245))+params(245)*y(1167)+x(108);
  y(2507)=y(2421);
  T(1949)=params(255)*(y(1179)/y(3385))^(-params(260))*(y(3325)/T(460))^params(260);
  y(3355)=(1-params(255))*(y(3386)/y(3385))^(-params(260))+T(1949)*y(1149);
  y(3316)=y(3312)*y(3355);
  y(2626)=y(2602)/(y(3203)*y(2614));
  y(2511)=y(2440);
  y(2369)=((params(17)+T(4)-1)*y(2511)-params(17)*x(6)*y(2507))/(y(2507)*(1-x(6)));
end
