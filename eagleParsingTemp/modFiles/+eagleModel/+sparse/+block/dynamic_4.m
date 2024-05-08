function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2066)=(1-params(54))*x(3)+params(54)*y(165)+x(16);
  y(2087)=(1-params(55))*x(4)+params(55)*y(186)+x(17);
  y(2175)=(1-params(63))*params(94)+params(63)*y(274)+x(25);
  y(2161)=(1-params(57))*x(5)+y(260)*params(57)+x(19);
  y(2162)=(1-params(58))*x(6)+y(261)*params(58)+x(20);
  y(2163)=x(7)*(1-params(59))+y(262)*params(59)+x(21);
  y(2164)=(1-params(60))*x(8)+y(263)*params(60)+x(22);
  y(2166)=(1-params(62))*x(10)+y(265)*params(62)+x(24);
  y(2165)=(1-params(61))*x(9)+y(264)*params(61)+x(23);
  y(2187)=(1-params(64))*x(11)+params(64)*y(286)+x(26);
end
