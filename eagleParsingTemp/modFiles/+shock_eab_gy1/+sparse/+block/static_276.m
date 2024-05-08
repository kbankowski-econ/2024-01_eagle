function [y, T, residual, g1] = static_276(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2090)*y(2143))-(y(2091)*y(2144)+y(2093)*y(2145)+y(2095)*y(2146)+y(2097)*y(2147));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2090);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
