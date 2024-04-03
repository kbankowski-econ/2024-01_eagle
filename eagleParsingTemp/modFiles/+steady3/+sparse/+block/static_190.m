function [y, T, residual, g1] = static_190(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1799))-(y(1820)*log(y(1671)-y(1671)*params(360))-1/(1+params(403))*y(1737)^(1+params(403))+params(343)*y(1799));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(343);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
