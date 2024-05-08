function [y, T, residual, g1] = static_328(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1851))-(y(1872)*log(y(6119)-params(322)*y(6119))-1/(1+params(370))*y(1775)^(1+params(370))+params(303)*y(1851));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(303);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
