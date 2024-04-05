function [y, T] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2300)=(1-params(42))*x(3)+params(42)*y(172)+x(17);
  y(2315)=(1-params(43))*x(4)+params(43)*y(187)+x(18);
  y(2391)=(1-params(51))*params(83)+params(51)*y(263)+x(26);
  y(2377)=(1-params(45))*x(5)+y(249)*params(45)+x(20);
  y(2378)=(1-params(46))*x(6)+y(250)*params(46)+x(21);
  y(2379)=x(7)*(1-params(47))+y(251)*params(47)+x(22);
  y(2380)=(1-params(48))*x(8)+y(252)*params(48)+x(23);
  y(2382)=(1-params(50))*x(10)+y(254)*params(50)+x(25);
  y(2381)=(1-params(49))*x(9)+y(253)*params(49)+x(24);
  y(2401)=(1-params(52))*x(11)+params(52)*y(273)+x(27);
end
