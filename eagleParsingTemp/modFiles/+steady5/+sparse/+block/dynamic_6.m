function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6100)=(1-params(53))*x(2)+params(53)*y(310)+x(15);
  y(6120)=(1-params(54))*x(3)+params(54)*y(330)+x(16);
  y(6194)=(1-params(56))*x(4)+y(404)*params(56)+x(17);
  y(6195)=(1-params(57))*x(5)+y(405)*params(57)+x(18);
  y(6196)=x(6)*(1-params(58))+y(406)*params(58)+x(19);
  y(6197)=(1-params(59))*x(7)+y(407)*params(59)+x(20);
  y(6199)=(1-params(61))*x(9)+y(409)*params(61)+x(22);
  y(6198)=(1-params(60))*x(8)+y(408)*params(60)+x(21);
  y(6220)=(1-params(63))*x(10)+params(63)*y(430)+x(24);
end
