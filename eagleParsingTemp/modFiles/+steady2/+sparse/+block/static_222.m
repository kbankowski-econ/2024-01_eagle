function [y, T, residual, g1] = static_222(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2143)*y(2191))-(y(2144)*y(2192)+y(2145)*y(2193)+y(2146)*y(2194)+y(2147)*y(2195));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2143);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
