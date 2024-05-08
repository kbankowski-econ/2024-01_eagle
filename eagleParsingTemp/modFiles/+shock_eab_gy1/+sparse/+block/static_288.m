function [y, T, residual, g1] = static_288(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1276)*y(1329))-(y(1277)*y(1330)+y(1279)*y(1331)+y(1281)*y(1332)+y(1283)*y(1333));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1276);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
