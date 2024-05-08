function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3904)=(1-params(53))*x(2)+params(53)*y(238)+x(15);
  y(3924)=(1-params(54))*x(3)+params(54)*y(258)+x(16);
  y(3998)=(1-params(56))*x(4)+y(332)*params(56)+x(17);
  y(3999)=(1-params(57))*x(5)+y(333)*params(57)+x(18);
  y(4000)=x(6)*(1-params(58))+y(334)*params(58)+x(19);
  y(4001)=(1-params(59))*x(7)+y(335)*params(59)+x(20);
  y(4003)=(1-params(61))*x(9)+y(337)*params(61)+x(22);
  y(4002)=(1-params(60))*x(8)+y(336)*params(60)+x(21);
  y(4024)=(1-params(63))*x(10)+params(63)*y(358)+x(24);
end
