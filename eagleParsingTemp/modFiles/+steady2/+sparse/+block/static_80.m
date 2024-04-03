function [y, T, residual, g1] = static_80(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(22)=log(y(1733));
  residual(1)=(T(22))-((1-params(448))*log(x(147))+T(22)*params(448)+x(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1733)-params(448)*1/y(1733);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
