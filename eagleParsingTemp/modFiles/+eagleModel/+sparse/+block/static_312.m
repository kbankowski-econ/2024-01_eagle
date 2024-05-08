function [y, T, residual, g1] = static_312(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1839)*y(1892))-(y(1840)*y(1893)+y(1842)*y(1894)+y(1844)*y(1895)+y(1846)*y(1896));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1839);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
