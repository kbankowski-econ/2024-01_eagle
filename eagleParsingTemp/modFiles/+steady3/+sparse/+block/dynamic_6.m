function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1240)=(1-params(53))*x(2)+params(53)*y(118)+x(15);
  y(1261)=(1-params(54))*x(3)+params(54)*y(139)+x(16);
  y(1335)=(1-params(56))*x(4)+y(213)*params(56)+x(17);
  y(1336)=(1-params(57))*x(5)+y(214)*params(57)+x(18);
  y(1337)=x(6)*(1-params(58))+y(215)*params(58)+x(19);
  y(1338)=(1-params(59))*x(7)+y(216)*params(59)+x(20);
  y(1340)=(1-params(61))*x(9)+y(218)*params(61)+x(22);
  y(1339)=(1-params(60))*x(8)+y(217)*params(60)+x(21);
  y(1361)=(1-params(63))*x(10)+params(63)*y(239)+x(24);
end
