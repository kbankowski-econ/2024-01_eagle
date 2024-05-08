function [y, T, residual, g1] = static_381(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5965)=params(237)*T(386)^params(242);
  residual(1)=(y(819))-((1-params(237))*(y(851)/y(850))^(-params(242))+y(819)*T(5965));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5965);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
