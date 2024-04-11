function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2882)=(1-params(73))*x(2)+params(73)*y(200)+x(16);
  y(2898)=(1-params(74))*x(3)+params(74)*y(216)+x(17);
  y(2972)=(1-params(76))*x(4)+y(290)*params(76)+x(18);
  y(2973)=(1-params(77))*x(5)+y(291)*params(77)+x(19);
  y(2974)=x(6)*(1-params(78))+y(292)*params(78)+x(20);
  y(2975)=(1-params(79))*x(7)+y(293)*params(79)+x(21);
  y(2977)=(1-params(81))*x(9)+y(295)*params(81)+x(23);
  y(2976)=(1-params(80))*x(8)+y(294)*params(80)+x(22);
  y(2997)=(1-params(83))*x(10)+params(83)*y(315)+x(25);
end
