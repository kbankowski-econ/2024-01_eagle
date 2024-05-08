function [y, T, residual, g1] = static_368(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5535))-(y(5556)*log(y(5397)-y(5397)*params(1455))-1/(1+params(1498))*y(5459)^(1+params(1498))+y(5535)*params(1438));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1438);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
