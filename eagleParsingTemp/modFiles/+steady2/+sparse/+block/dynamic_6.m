function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1215)=(1-params(61))*x(2)+params(61)*y(109)+x(15);
  y(1231)=(1-params(62))*x(3)+params(62)*y(125)+x(16);
  y(1305)=(1-params(64))*x(4)+y(199)*params(64)+x(17);
  y(1306)=(1-params(65))*x(5)+y(200)*params(65)+x(18);
  y(1307)=x(6)*(1-params(66))+y(201)*params(66)+x(19);
  y(1308)=(1-params(67))*x(7)+y(202)*params(67)+x(20);
  y(1310)=(1-params(69))*x(9)+y(204)*params(69)+x(22);
  y(1309)=(1-params(68))*x(8)+y(203)*params(68)+x(21);
  y(1330)=(1-params(71))*x(10)+params(71)*y(224)+x(24);
end
