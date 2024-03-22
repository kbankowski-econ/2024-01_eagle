function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1578)*y(1521))-(y(1699)*T(273)+y(1008)*params(56)*y(1026)*y(1491)/params(187)+y(1238)*params(120)*y(1256)*y(1492)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1521);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
