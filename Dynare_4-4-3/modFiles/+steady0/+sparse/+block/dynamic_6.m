function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1081)=(1-params(41))*x(2)+params(41)*y(107)+x(15);
  y(1156)=(1-params(43))*x(3)+y(182)*params(43)+x(16);
  y(1157)=(1-params(44))*x(4)+y(183)*params(44)+x(17);
  y(1158)=x(5)*(1-params(45))+y(184)*params(45)+x(18);
  y(1159)=(1-params(46))*x(6)+y(185)*params(46)+x(19);
  y(1161)=(1-params(48))*x(8)+y(187)*params(48)+x(21);
  y(1160)=(1-params(47))*x(7)+y(186)*params(47)+x(20);
  y(1180)=(1-params(50))*x(9)+params(50)*y(206)+x(23);
end
