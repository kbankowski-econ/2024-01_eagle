function [y, T, residual, g1] = static_187(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1263)*y(1316))-(y(1264)*y(1317)+y(1266)*y(1318)+y(1268)*y(1319)+y(1270)*y(1320));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1263);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
