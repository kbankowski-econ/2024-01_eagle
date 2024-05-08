function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5318)=(1-params(53))*x(2)+params(53)*y(286)+x(15);
  y(5338)=(1-params(54))*x(3)+params(54)*y(306)+x(16);
  y(5412)=(1-params(56))*x(4)+y(380)*params(56)+x(17);
  y(5413)=(1-params(57))*x(5)+y(381)*params(57)+x(18);
  y(5414)=x(6)*(1-params(58))+y(382)*params(58)+x(19);
  y(5415)=(1-params(59))*x(7)+y(383)*params(59)+x(20);
  y(5417)=(1-params(61))*x(9)+y(385)*params(61)+x(22);
  y(5416)=(1-params(60))*x(8)+y(384)*params(60)+x(21);
  y(5438)=(1-params(63))*x(10)+params(63)*y(406)+x(24);
end
