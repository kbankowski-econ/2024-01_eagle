function [y, T, residual, g1] = static_187(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1871))-(y(1891)*log(y(1733)-params(537)*y(1733))-1/(1+params(583))*y(1795)^(1+params(583))+params(520)*y(1871));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(520);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
