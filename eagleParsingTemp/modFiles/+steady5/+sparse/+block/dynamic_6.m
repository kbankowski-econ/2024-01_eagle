function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2158)=(1-params(53))*x(2)+params(53)*y(166)+x(15);
  y(2178)=(1-params(54))*x(3)+params(54)*y(186)+x(16);
  y(2252)=(1-params(56))*x(4)+y(260)*params(56)+x(17);
  y(2253)=(1-params(57))*x(5)+y(261)*params(57)+x(18);
  y(2254)=x(6)*(1-params(58))+y(262)*params(58)+x(19);
  y(2255)=(1-params(59))*x(7)+y(263)*params(59)+x(20);
  y(2257)=(1-params(61))*x(9)+y(265)*params(61)+x(22);
  y(2256)=(1-params(60))*x(8)+y(264)*params(60)+x(21);
  y(2278)=(1-params(63))*x(10)+params(63)*y(286)+x(24);
end
