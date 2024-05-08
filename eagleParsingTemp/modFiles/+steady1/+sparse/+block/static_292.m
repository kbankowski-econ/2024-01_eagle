function [y, T, residual, g1] = static_292(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1393)*y(1446))-(y(1394)*y(1447)+y(1396)*y(1448)+y(1398)*y(1449)+y(1400)*y(1450));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1393);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
