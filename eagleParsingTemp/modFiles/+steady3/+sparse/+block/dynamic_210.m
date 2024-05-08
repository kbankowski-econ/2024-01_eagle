function [y, T] = dynamic_210(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(12576)=y(12494);
  y(12407)=((params(710)+T(11)-1)*y(12576)-params(710)*x(249)*y(12572))/(y(12572)*(1-x(249)));
end
