function [y, T, residual, g1] = static_354(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1946))-(y(1968)*log(y(1802)-y(1802)*params(325))-1/(1+params(373))*y(1870)^(1+params(373))+y(1946)*params(306));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(306);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
