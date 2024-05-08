function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1676)=(1-params(53))*x(2)+params(53)*y(142)+x(15);
  y(1696)=(1-params(54))*x(3)+params(54)*y(162)+x(16);
  y(1770)=(1-params(56))*x(4)+y(236)*params(56)+x(17);
  y(1771)=(1-params(57))*x(5)+y(237)*params(57)+x(18);
  y(1772)=x(6)*(1-params(58))+y(238)*params(58)+x(19);
  y(1773)=(1-params(59))*x(7)+y(239)*params(59)+x(20);
  y(1775)=(1-params(61))*x(9)+y(241)*params(61)+x(22);
  y(1774)=(1-params(60))*x(8)+y(240)*params(60)+x(21);
  y(1796)=(1-params(63))*x(10)+params(63)*y(262)+x(24);
end
