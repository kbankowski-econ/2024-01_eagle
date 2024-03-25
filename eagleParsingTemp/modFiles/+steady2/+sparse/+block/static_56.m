function [y, T, residual, g1] = static_56(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(16)=log(y(976));
  residual(1)=(T(16))-((1-params(275))*log(x(85))+T(16)*params(275)+x(99));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(976)-params(275)*1/y(976);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
