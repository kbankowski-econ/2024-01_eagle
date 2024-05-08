function [y, T, residual, g1] = static_133(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1370)*y(1423))-(y(1371)*y(1424)+y(1373)*y(1425)+y(1375)*y(1426)+y(1377)*y(1427));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1370);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
