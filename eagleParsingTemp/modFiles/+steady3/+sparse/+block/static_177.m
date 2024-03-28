function [y, T, residual, g1] = static_177(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2086))-(y(2107)*log(y(1964)-y(1964)*params(421))-1/(1+params(462))*y(2027)^(1+params(462))+params(407)*y(2086));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(407);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
