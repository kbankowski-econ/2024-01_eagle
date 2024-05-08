function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6040)=(1-params(53))*x(2)+params(53)*y(310)+x(15);
  y(6061)=(1-params(54))*x(3)+params(54)*y(331)+x(16);
  y(6135)=(1-params(56))*x(4)+y(405)*params(56)+x(17);
  y(6136)=(1-params(57))*x(5)+y(406)*params(57)+x(18);
  y(6137)=x(6)*(1-params(58))+y(407)*params(58)+x(19);
  y(6138)=(1-params(59))*x(7)+y(408)*params(59)+x(20);
  y(6140)=(1-params(61))*x(9)+y(410)*params(61)+x(22);
  y(6139)=(1-params(60))*x(8)+y(409)*params(60)+x(21);
  y(6161)=(1-params(63))*x(10)+params(63)*y(431)+x(24);
end
