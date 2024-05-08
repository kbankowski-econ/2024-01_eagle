function [y, T, residual, g1] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2074)*y(2122))-(y(2075)*y(2123)+y(2076)*y(2124)+y(2077)*y(2125)+y(2078)*y(2126));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2074);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
