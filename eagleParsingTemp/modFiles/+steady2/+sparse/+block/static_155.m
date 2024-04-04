function [y, T, residual, g1] = static_155(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1333)*y(1373))-(y(1334)*y(1374)+y(1335)*y(1375));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1333);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
