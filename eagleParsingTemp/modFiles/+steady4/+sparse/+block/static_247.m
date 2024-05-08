function [y, T, residual, g1] = static_247(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1609)*y(1662))-(y(1610)*y(1663)+y(1612)*y(1664)+y(1614)*y(1665)+y(1616)*y(1666));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1609);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
