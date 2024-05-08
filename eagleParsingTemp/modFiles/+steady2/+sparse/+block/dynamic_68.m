function [y, T, residual, g1] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1923)*y(1971))-(y(1924)*y(1972)+y(1925)*y(1973)+y(1926)*y(1974)+y(1927)*y(1975));
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
