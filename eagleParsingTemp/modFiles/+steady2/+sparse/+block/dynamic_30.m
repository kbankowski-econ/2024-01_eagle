function [y, T] = dynamic_30(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3002)=(1-params(348))*x(83)+params(348)*y(1040)+x(96);
  y(3018)=(1-params(349))*x(84)+params(349)*y(1056)+x(97);
  y(3092)=(1-params(351))*x(85)+y(1130)*params(351)+x(98);
  y(3093)=(1-params(352))*x(86)+y(1131)*params(352)+x(99);
  y(3094)=x(87)*(1-params(353))+y(1132)*params(353)+x(100);
  y(3095)=(1-params(354))*x(88)+y(1133)*params(354)+x(101);
  y(3097)=(1-params(356))*x(90)+y(1135)*params(356)+x(103);
  y(3096)=(1-params(355))*x(89)+y(1134)*params(355)+x(102);
  y(3117)=(1-params(358))*x(91)+params(358)*y(1155)+x(105);
end
