function [y, T, residual, g1] = static_149(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1844))-(y(1865)*log(y(1914)-params(412)*y(1914))-1/(1+params(462))*y(1771)^(1+params(462))+params(396)*y(1844));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(396);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
