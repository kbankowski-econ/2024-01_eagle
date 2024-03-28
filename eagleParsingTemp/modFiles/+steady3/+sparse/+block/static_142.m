function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2000)*y(2042))-(y(2001)*y(2043)+y(2003)*y(2044));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2000);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
