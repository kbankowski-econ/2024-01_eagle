function [y, T, residual, g1] = static_317(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1906)*y(1959))-(y(1907)*y(1960)+y(1909)*y(1961)+y(1911)*y(1962)+y(1913)*y(1963));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1906);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
