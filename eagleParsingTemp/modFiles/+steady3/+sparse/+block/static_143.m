function [y, T, residual, g1] = static_143(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1972)*y(2014))-(y(1973)*y(2015)+y(1975)*y(2016));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1972);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
