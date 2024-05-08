function [y, T, residual, g1] = static_233(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1455)*y(1508))-(y(1456)*y(1509)+y(1458)*y(1510)+y(1460)*y(1511)+y(1462)*y(1512));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1455);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
