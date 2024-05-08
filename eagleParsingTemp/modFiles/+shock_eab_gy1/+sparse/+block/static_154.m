function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2135)*y(2188))-(y(2136)*y(2189)+y(2138)*y(2190)+y(2140)*y(2191)+y(2142)*y(2192));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2135);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
