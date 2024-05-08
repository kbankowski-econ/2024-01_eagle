function [y, T, residual, g1] = static_219(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1923)*y(1975))-(y(1924)*y(1976)+y(1926)*y(1977)+y(1928)*y(1978)+y(1930)*y(1979));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1923);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
