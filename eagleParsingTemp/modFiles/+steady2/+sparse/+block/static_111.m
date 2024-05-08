function [y, T, residual, g1] = static_111(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1241)*y(1289))-(y(1242)*y(1290)+y(1243)*y(1291)+y(1244)*y(1292)+y(1245)*y(1293));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1241);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
