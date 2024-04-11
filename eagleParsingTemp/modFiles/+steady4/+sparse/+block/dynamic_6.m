function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2938)=(1-params(53))*x(2)+params(53)*y(221)+x(16);
  y(2959)=(1-params(54))*x(3)+params(54)*y(242)+x(17);
  y(3033)=(1-params(56))*x(4)+y(316)*params(56)+x(18);
  y(3034)=(1-params(57))*x(5)+y(317)*params(57)+x(19);
  y(3035)=x(6)*(1-params(58))+y(318)*params(58)+x(20);
  y(3036)=(1-params(59))*x(7)+y(319)*params(59)+x(21);
  y(3038)=(1-params(61))*x(9)+y(321)*params(61)+x(23);
  y(3037)=(1-params(60))*x(8)+y(320)*params(60)+x(22);
  y(3059)=(1-params(63))*x(10)+params(63)*y(342)+x(25);
end
