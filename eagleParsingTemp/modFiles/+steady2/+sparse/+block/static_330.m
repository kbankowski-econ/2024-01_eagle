function [y, T, residual, g1] = static_330(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1310)*y(1358))-(y(1311)*y(1359)+y(1312)*y(1360)+y(1313)*y(1361)+y(1314)*y(1362));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1310);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
