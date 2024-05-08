function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1604)=(1-params(54))*x(3)+params(54)*y(141)+x(16);
  y(1625)=(1-params(55))*x(4)+params(55)*y(162)+x(17);
  y(1713)=(1-params(63))*params(93)+params(63)*y(250)+x(25);
  y(1699)=(1-params(57))*x(5)+y(236)*params(57)+x(19);
  y(1700)=(1-params(58))*x(6)+y(237)*params(58)+x(20);
  y(1701)=x(7)*(1-params(59))+y(238)*params(59)+x(21);
  y(1702)=(1-params(60))*x(8)+y(239)*params(60)+x(22);
  y(1704)=(1-params(62))*x(10)+y(241)*params(62)+x(24);
  y(1703)=(1-params(61))*x(9)+y(240)*params(61)+x(23);
  y(1725)=(1-params(64))*x(11)+params(64)*y(262)+x(26);
end
