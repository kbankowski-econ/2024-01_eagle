function [y, T, residual, g1] = static_275(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4949)*y(5001))-(y(4950)*y(5002)+y(4952)*y(5003)+y(4954)*y(5004)+y(4956)*y(5005));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4949);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
