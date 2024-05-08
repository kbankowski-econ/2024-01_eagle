function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1381)*y(1429))-(y(1382)*y(1430)+y(1383)*y(1431)+y(1384)*y(1432)+y(1385)*y(1433));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1381);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
