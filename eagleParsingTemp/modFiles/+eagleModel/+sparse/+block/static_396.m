function [y, T, residual, g1] = static_396(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(916))-(y(938)*log(y(772)-y(772)*params(126))-1/(1+params(174))*y(840)^(1+params(174))+y(916)*params(107));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(107);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
