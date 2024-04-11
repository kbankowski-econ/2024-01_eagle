function [y, T] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3784)=y(3829)*(1-params(216))+params(216)*y(1067)+x(80);
  y(3090)=y(3014);
  T(2651)=params(226)*(y(1081)/y(3798))^(-params(231))*(y(3728)/T(368))^params(231);
  y(3766)=(1-params(226))*(y(3799)/y(3798))^(-params(231))+T(2651)*y(1049);
  y(3715)=y(3711)*y(3766);
  y(3086)=y(2987);
  y(3832)=y(3812);
  y(2928)=((params(18)+T(4)-1)*y(3090)-params(18)*x(6)*y(3086))/(y(3086)*(1-x(6)));
end
