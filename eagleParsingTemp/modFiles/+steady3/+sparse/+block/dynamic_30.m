function [y, T] = dynamic_30(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3306)=(1-params(241))*x(80)+params(241)*y(1086)+x(93);
  y(3381)=(1-params(243))*x(81)+y(1161)*params(243)+x(94);
  y(3382)=(1-params(244))*x(82)+y(1162)*params(244)+x(95);
  y(3383)=x(83)*(1-params(245))+y(1163)*params(245)+x(96);
  y(3384)=(1-params(246))*x(84)+y(1164)*params(246)+x(97);
  y(3386)=(1-params(248))*x(86)+y(1166)*params(248)+x(99);
  y(3385)=(1-params(247))*x(85)+y(1165)*params(247)+x(98);
  y(3405)=(1-params(250))*x(87)+params(250)*y(1185)+x(101);
end
