function [y, T, residual, g1] = static_206(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1753))-(y(1774)*log(y(1609)-params(396)*y(1609))-1/(1+params(444))*y(1677)^(1+params(444))+params(377)*y(1753));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(377);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
