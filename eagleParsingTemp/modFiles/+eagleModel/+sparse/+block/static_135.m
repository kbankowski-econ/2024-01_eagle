function [y, T, residual, g1] = static_135(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1083))-(y(1104)*log(y(939)-params(298)*y(939))-1/(1+params(349))*y(1007)^(1+params(349))+params(279)*y(1083));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(279);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
