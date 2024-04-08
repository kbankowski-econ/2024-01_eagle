function [y, T, residual, g1] = static_149(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2443)*y(2496))-(y(2444)*y(2497)+y(2446)*y(2498)+y(2448)*y(2499)+y(2450)*y(2500));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2443);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
