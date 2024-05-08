function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4536)=(1-params(53))*x(2)+params(53)*y(262)+x(15);
  y(4557)=(1-params(54))*x(3)+params(54)*y(283)+x(16);
  y(4631)=(1-params(56))*x(4)+y(357)*params(56)+x(17);
  y(4632)=(1-params(57))*x(5)+y(358)*params(57)+x(18);
  y(4633)=x(6)*(1-params(58))+y(359)*params(58)+x(19);
  y(4634)=(1-params(59))*x(7)+y(360)*params(59)+x(20);
  y(4636)=(1-params(61))*x(9)+y(362)*params(61)+x(22);
  y(4635)=(1-params(60))*x(8)+y(361)*params(60)+x(21);
  y(4657)=(1-params(63))*x(10)+params(63)*y(383)+x(24);
end
