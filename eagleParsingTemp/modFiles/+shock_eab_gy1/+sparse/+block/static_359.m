function [y, T, residual, g1] = static_359(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1935)*y(1988))-(y(1936)*y(1989)+y(1938)*y(1990)+y(1940)*y(1991)+y(1942)*y(1992));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1935);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
