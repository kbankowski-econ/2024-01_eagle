function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3207)=(1-params(77))*x(2)+params(77)*y(189)+x(15);
  y(3223)=(1-params(78))*x(3)+params(78)*y(205)+x(16);
  y(3297)=(1-params(80))*x(4)+y(279)*params(80)+x(17);
  y(3298)=(1-params(81))*x(5)+y(280)*params(81)+x(18);
  y(3299)=x(6)*(1-params(82))+y(281)*params(82)+x(19);
  y(3300)=(1-params(83))*x(7)+y(282)*params(83)+x(20);
  y(3302)=(1-params(85))*x(9)+y(284)*params(85)+x(22);
  y(3301)=(1-params(84))*x(8)+y(283)*params(84)+x(21);
  y(3322)=(1-params(87))*x(10)+params(87)*y(304)+x(24);
end
