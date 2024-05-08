function [y, T] = dynamic_179(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5065)=y(4982);
  y(4900)=((params(367)+T(5)-1)*y(5065)-params(367)*x(87)*y(5061))/(y(5061)*(1-x(87)));
  y(3989)=y(3961);
  y(4495)=y(4511)*T(3662)+y(4503)*T(3663);
end
