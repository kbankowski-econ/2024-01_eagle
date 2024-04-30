function [y, T, residual, g1] = dynamic_58(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1479)*y(1527))-(y(1480)*y(1528)+y(1481)*y(1529)+y(1482)*y(1530)+y(1483)*y(1531));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1479);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
