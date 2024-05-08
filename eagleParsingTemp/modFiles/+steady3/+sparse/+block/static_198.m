function [y, T, residual, g1] = static_198(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1411)*y(1464))-(y(1412)*y(1465)+y(1414)*y(1466)+y(1416)*y(1467)+y(1418)*y(1468));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1411);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
