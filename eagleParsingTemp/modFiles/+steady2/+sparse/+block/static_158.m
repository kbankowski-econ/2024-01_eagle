function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1450)*y(1498))-(y(1451)*y(1499)+y(1452)*y(1500)+y(1453)*y(1501)+y(1454)*y(1502));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1450);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
