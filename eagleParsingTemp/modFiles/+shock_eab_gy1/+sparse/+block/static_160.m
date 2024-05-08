function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(40)=log(y(4195));
  residual(1)=(T(40))-((1-params(933))*log(x(265))+T(40)*params(933)+x(281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4195)-params(933)*1/y(4195);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
