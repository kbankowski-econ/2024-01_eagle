function [y, T] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1878)=y(1920)*(1-params(219))+params(219)*y(752)+x(77);
  T(966)=params(229)*(y(766)/y(1892))^(-params(234))*(y(1822)/T(296))^params(234);
  y(1860)=(1-params(229))*(y(1893)/y(1892))^(-params(234))+T(966)*y(734);
  y(1809)=y(1805)*y(1860);
  y(1923)=y(1906);
end
