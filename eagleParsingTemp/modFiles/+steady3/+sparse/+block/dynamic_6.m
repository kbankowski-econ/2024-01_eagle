function [y, T] = dynamic_6(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3264)=(1-params(53))*x(2)+params(53)*y(214)+x(15);
  y(3285)=(1-params(54))*x(3)+params(54)*y(235)+x(16);
  y(3359)=(1-params(56))*x(4)+y(309)*params(56)+x(17);
  y(3360)=(1-params(57))*x(5)+y(310)*params(57)+x(18);
  y(3361)=x(6)*(1-params(58))+y(311)*params(58)+x(19);
  y(3362)=(1-params(59))*x(7)+y(312)*params(59)+x(20);
  y(3364)=(1-params(61))*x(9)+y(314)*params(61)+x(22);
  y(3363)=(1-params(60))*x(8)+y(313)*params(60)+x(21);
  y(3385)=(1-params(63))*x(10)+params(63)*y(335)+x(24);
end
