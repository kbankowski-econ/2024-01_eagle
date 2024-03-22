function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1047)=(1-params(42))*x(3)+params(42)*y(106)+x(16);
  y(1136)=(1-params(50))*params(79)+params(50)*y(195)+x(24);
  y(1122)=(1-params(44))*x(4)+y(181)*params(44)+x(18);
  y(1123)=(1-params(45))*x(5)+y(182)*params(45)+x(19);
  y(1124)=x(6)*(1-params(46))+y(183)*params(46)+x(20);
  y(1125)=(1-params(47))*x(7)+y(184)*params(47)+x(21);
  y(1127)=(1-params(49))*x(9)+y(186)*params(49)+x(23);
  y(1126)=(1-params(48))*x(8)+y(185)*params(48)+x(22);
  y(1146)=(1-params(51))*x(10)+params(51)*y(205)+x(25);
end
