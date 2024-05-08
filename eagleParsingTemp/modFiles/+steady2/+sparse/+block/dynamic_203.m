function [y, T] = dynamic_203(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5802)=y(5718);
  y(5636)=((params(383)+T(4)-1)*y(5802)-params(383)*x(87)*y(5798))/(y(5798)*(1-x(87)));
end
