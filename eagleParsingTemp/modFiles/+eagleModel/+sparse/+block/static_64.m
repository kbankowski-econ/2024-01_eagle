function [y, T, residual, g1] = static_64(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(16)=log(y(1873));
  residual(1)=(T(16))-((1-params(360))*log(x(97))+T(16)*params(360)+x(112));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1873)-params(360)*1/y(1873);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
