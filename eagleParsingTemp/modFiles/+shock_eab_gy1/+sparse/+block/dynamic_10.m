function [y, T] = dynamic_10(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5570)=(1-params(150))*x(31)+params(150)*y(704)+x(44);
  y(5591)=(1-params(151))*x(32)+params(151)*y(725)+x(45);
  y(5679)=(1-params(159))*params(195)+params(159)*y(813)+x(53);
  y(5665)=(1-params(153))*x(33)+y(799)*params(153)+x(47);
  y(5666)=(1-params(154))*x(34)+y(800)*params(154)+x(48);
  y(5667)=x(35)*(1-params(155))+y(801)*params(155)+x(49);
  y(5668)=(1-params(156))*x(36)+y(802)*params(156)+x(50);
  y(5670)=(1-params(158))*x(38)+y(804)*params(158)+x(52);
  y(5669)=(1-params(157))*x(37)+y(803)*params(157)+x(51);
  y(5691)=(1-params(160))*x(39)+params(160)*y(825)+x(54);
end
