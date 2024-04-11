function [y, T] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3785)=y(3829)*(1-params(216))+params(216)*y(1068)+x(80);
  y(3090)=y(3015);
  T(2657)=params(226)*(y(1082)/y(3799))^(-params(231))*(y(3729)/T(390))^params(231);
  y(3767)=(1-params(226))*(y(3800)/y(3799))^(-params(231))+T(2657)*y(1050);
  y(3716)=y(3712)*y(3767);
  y(3086)=y(2988);
  y(2928)=((params(17)+T(4)-1)*y(3090)-params(17)*x(6)*y(3086))/(y(3086)*(1-x(6)));
end
