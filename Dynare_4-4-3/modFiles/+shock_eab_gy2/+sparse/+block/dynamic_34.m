function [y, T, residual, g1] = dynamic_34(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1271)*y(1313))-(y(1272)*y(1314)+y(1274)*y(1315));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1271);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
