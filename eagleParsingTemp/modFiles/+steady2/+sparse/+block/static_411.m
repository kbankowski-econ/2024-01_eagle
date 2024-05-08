function [y, T, residual, g1] = static_411(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2177))-(y(2197)*log(y(2039)-params(560)*y(2039))-1/(1+params(603))*y(2101)^(1+params(603))+params(543)*y(2177));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(543);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
