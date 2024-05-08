function [y, T, residual, g1] = static_178(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(949)*y(1001))-(y(950)*y(1002)+y(952)*y(1003)+y(954)*y(1004)+y(956)*y(1005));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(949);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
