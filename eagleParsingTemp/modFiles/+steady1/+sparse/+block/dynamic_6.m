function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1463)=(1-params(41))*x(2)+params(41)*y(129)+x(15);
  y(1538)=(1-params(43))*x(3)+y(204)*params(43)+x(16);
  y(1539)=(1-params(44))*x(4)+y(205)*params(44)+x(17);
  y(1540)=x(5)*(1-params(45))+y(206)*params(45)+x(18);
  y(1541)=(1-params(46))*x(6)+y(207)*params(46)+x(19);
  y(1543)=(1-params(48))*x(8)+y(209)*params(48)+x(21);
  y(1542)=(1-params(47))*x(7)+y(208)*params(47)+x(20);
  y(1562)=(1-params(50))*x(9)+params(50)*y(228)+x(23);
end
