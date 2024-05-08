function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6932)=(1-params(53))*x(2)+params(53)*y(334)+x(15);
  y(6953)=(1-params(54))*x(3)+params(54)*y(355)+x(16);
  y(7027)=(1-params(56))*x(4)+y(429)*params(56)+x(17);
  y(7028)=(1-params(57))*x(5)+y(430)*params(57)+x(18);
  y(7029)=x(6)*(1-params(58))+y(431)*params(58)+x(19);
  y(7030)=(1-params(59))*x(7)+y(432)*params(59)+x(20);
  y(7032)=(1-params(61))*x(9)+y(434)*params(61)+x(22);
  y(7031)=(1-params(60))*x(8)+y(433)*params(60)+x(21);
  y(7053)=(1-params(63))*x(10)+params(63)*y(455)+x(24);
end
