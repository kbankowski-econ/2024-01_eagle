function [y, T, residual, g1] = static_314(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1348)*y(1401))-(y(1349)*y(1402)+y(1351)*y(1403)+y(1353)*y(1404)+y(1355)*y(1405));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1348);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
