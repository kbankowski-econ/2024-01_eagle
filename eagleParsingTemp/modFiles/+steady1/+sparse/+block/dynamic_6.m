function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2655)=(1-params(53))*x(2)+params(53)*y(190)+x(15);
  y(2676)=(1-params(54))*x(3)+params(54)*y(211)+x(16);
  y(2750)=(1-params(56))*x(4)+y(285)*params(56)+x(17);
  y(2751)=(1-params(57))*x(5)+y(286)*params(57)+x(18);
  y(2752)=x(6)*(1-params(58))+y(287)*params(58)+x(19);
  y(2753)=(1-params(59))*x(7)+y(288)*params(59)+x(20);
  y(2755)=(1-params(61))*x(9)+y(290)*params(61)+x(22);
  y(2754)=(1-params(60))*x(8)+y(289)*params(60)+x(21);
  y(2776)=(1-params(63))*x(10)+params(63)*y(311)+x(24);
end
