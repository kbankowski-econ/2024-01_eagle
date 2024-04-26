function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1467)*y(1520))-(y(1468)*y(1521)+y(1470)*y(1522)+y(1472)*y(1523)+y(1474)*y(1524));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1467);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
