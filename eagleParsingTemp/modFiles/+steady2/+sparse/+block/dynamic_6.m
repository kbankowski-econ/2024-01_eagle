function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3830)=(1-params(81))*x(2)+params(81)*y(209)+x(15);
  y(3846)=(1-params(82))*x(3)+params(82)*y(225)+x(16);
  y(3920)=(1-params(84))*x(4)+y(299)*params(84)+x(17);
  y(3921)=(1-params(85))*x(5)+y(300)*params(85)+x(18);
  y(3922)=x(6)*(1-params(86))+y(301)*params(86)+x(19);
  y(3923)=(1-params(87))*x(7)+y(302)*params(87)+x(20);
  y(3925)=(1-params(89))*x(9)+y(304)*params(89)+x(22);
  y(3924)=(1-params(88))*x(8)+y(303)*params(88)+x(21);
  y(3945)=(1-params(91))*x(10)+params(91)*y(324)+x(24);
end
