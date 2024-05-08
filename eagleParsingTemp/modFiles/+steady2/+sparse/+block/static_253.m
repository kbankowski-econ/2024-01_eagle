function [y, T, residual, g1] = static_253(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1866)*y(1914))-(y(1867)*y(1915)+y(1868)*y(1916)+y(1869)*y(1917)+y(1870)*y(1918));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1866);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
