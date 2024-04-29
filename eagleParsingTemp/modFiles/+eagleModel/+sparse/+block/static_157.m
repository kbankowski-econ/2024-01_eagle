function [y, T, residual, g1] = static_157(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1490)*y(1543))-(y(1491)*y(1544)+y(1493)*y(1545)+y(1495)*y(1546)+y(1497)*y(1547));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1490);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
