function [y, T, residual, g1] = static_60(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(16)=log(y(873));
  residual(1)=(T(16))-((1-params(283))*log(x(94))+T(16)*params(283)+x(109));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(873)-params(283)*1/y(873);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
