function [y, T, residual, g1] = static_231(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1850)*y(1903))-(y(1851)*y(1904)+y(1853)*y(1905)+y(1855)*y(1906)+y(1857)*y(1907));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1850);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
