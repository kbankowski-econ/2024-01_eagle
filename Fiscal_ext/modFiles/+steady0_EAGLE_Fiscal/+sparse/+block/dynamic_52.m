function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1892)*y(1946))-(y(1893)*y(1947)+y(1897)*y(1949)+y(1901)*y(1951)+y(1894)*y(1948)+y(1898)*y(1950));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1892);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
