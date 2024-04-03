function [y, T, residual, g1] = static_64(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(17)=log(y(1443));
  residual(1)=(T(17))-((1-params(370))*log(x(121))+T(17)*params(370)+x(136));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1443)-params(370)*1/y(1443);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
