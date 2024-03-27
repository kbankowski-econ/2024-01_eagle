function [y, T, residual, g1] = static_166(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1901)*y(1940))-(y(1902)*y(1941)+y(1903)*y(1942));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1901);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
