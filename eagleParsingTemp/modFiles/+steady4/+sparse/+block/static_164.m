function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1337)*y(1390))-(y(1338)*y(1391)+y(1340)*y(1392)+y(1342)*y(1393)+y(1344)*y(1394));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1337);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
