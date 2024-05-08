function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(4503)=(1-params(85))*x(2)+params(85)*y(229)+x(15);
  y(4519)=(1-params(86))*x(3)+params(86)*y(245)+x(16);
  y(4593)=(1-params(88))*x(4)+y(319)*params(88)+x(17);
  y(4594)=(1-params(89))*x(5)+y(320)*params(89)+x(18);
  y(4595)=x(6)*(1-params(90))+y(321)*params(90)+x(19);
  y(4596)=(1-params(91))*x(7)+y(322)*params(91)+x(20);
  y(4598)=(1-params(93))*x(9)+y(324)*params(93)+x(22);
  y(4597)=(1-params(92))*x(8)+y(323)*params(92)+x(21);
  y(4618)=(1-params(95))*x(10)+params(95)*y(344)+x(24);
end
