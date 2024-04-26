function [y, T, residual, g1] = static_255(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1551)*y(1604))-(y(1552)*y(1605)+y(1554)*y(1606)+y(1556)*y(1607)+y(1558)*y(1608));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1551);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
