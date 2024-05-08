function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1312)*y(1365))-(y(1313)*y(1366)+y(1315)*y(1367)+y(1317)*y(1368)+y(1319)*y(1369));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1312);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
