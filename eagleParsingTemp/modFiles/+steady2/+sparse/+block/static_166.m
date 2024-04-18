function [y, T, residual, g1] = static_166(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2085)*y(2133))-(y(2086)*y(2134)+y(2087)*y(2135)+y(2088)*y(2136)+y(2089)*y(2137));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2085);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
