function [y, T] = dynamic_172(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5970)=y(5892);
  y(5805)=((params(248)+T(4)-1)*y(5970)-params(248)*x(87)*y(5966))/(y(5966)*(1-x(87)));
end
