function [y, T, residual, g1] = static_456(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2385))-(y(2405)*log(y(2247)-params(600)*y(2247))-1/(1+params(643))*y(2309)^(1+params(643))+params(583)*y(2385));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(583);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
