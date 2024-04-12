function [y, T, residual, g1] = static_174(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1291)*y(1344))-(y(1292)*y(1345)+y(1294)*y(1346)+y(1296)*y(1347)+y(1298)*y(1348));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1291);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
