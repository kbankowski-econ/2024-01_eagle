function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1359)*y(1412))-(y(1360)*y(1413)+y(1362)*y(1414)+y(1364)*y(1415)+y(1366)*y(1416));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
