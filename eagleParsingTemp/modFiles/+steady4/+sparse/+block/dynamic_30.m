function [y, T] = dynamic_30(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3704)=(1-params(284))*x(83)+params(284)*y(1204)+x(96);
  y(3725)=(1-params(285))*x(84)+params(285)*y(1225)+x(97);
  y(3799)=(1-params(287))*x(85)+y(1299)*params(287)+x(98);
  y(3800)=(1-params(288))*x(86)+y(1300)*params(288)+x(99);
  y(3801)=x(87)*(1-params(289))+y(1301)*params(289)+x(100);
  y(3802)=(1-params(290))*x(88)+y(1302)*params(290)+x(101);
  y(3804)=(1-params(292))*x(90)+y(1304)*params(292)+x(103);
  y(3803)=(1-params(291))*x(89)+y(1303)*params(291)+x(102);
  y(3825)=(1-params(294))*x(91)+params(294)*y(1325)+x(105);
end
