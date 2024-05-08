function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1813)*y(1866))-(y(1814)*y(1867)+y(1816)*y(1868)+y(1818)*y(1869)+y(1820)*y(1870));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1813);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
