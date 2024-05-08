function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1204)*y(1257))-(y(1205)*y(1258)+y(1207)*y(1259)+y(1209)*y(1260)+y(1211)*y(1261));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1204);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
