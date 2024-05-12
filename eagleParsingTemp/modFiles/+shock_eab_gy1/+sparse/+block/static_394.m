function [y, T, residual, g1] = static_394(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2042))-(y(2064)*log(y(7778)-y(7778)*params(328))-1/(1+params(376))*y(1966)^(1+params(376))+y(2042)*params(309));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(309);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
