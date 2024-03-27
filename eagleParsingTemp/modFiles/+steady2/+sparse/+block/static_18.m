function [y, T, residual, g1] = static_18(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5)=log(y(566));
  residual(1)=(T(5))-((1-params(140))*log(x(37))+T(5)*params(140)+x(51));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(566)-params(140)*1/y(566);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
