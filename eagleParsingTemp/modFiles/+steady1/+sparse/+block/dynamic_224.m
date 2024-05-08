function [y, T] = dynamic_224(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8977)=y(8896);
  y(8809)=((params(325)+T(5)-1)*y(8977)-params(325)*x(114)*y(8973))/(y(8973)*(1-x(114)));
end
