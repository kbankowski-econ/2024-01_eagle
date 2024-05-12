function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8746)=(1-params(53))*x(2)+params(53)*y(382)+x(15);
  y(8766)=(1-params(54))*x(3)+params(54)*y(402)+x(16);
  y(8840)=(1-params(56))*x(4)+y(476)*params(56)+x(17);
  y(8841)=(1-params(57))*x(5)+y(477)*params(57)+x(18);
  y(8842)=x(6)*(1-params(58))+y(478)*params(58)+x(19);
  y(8843)=(1-params(59))*x(7)+y(479)*params(59)+x(20);
  y(8845)=(1-params(61))*x(9)+y(481)*params(61)+x(22);
  y(8844)=(1-params(60))*x(8)+y(480)*params(60)+x(21);
  y(8866)=(1-params(63))*x(10)+params(63)*y(502)+x(24);
end
