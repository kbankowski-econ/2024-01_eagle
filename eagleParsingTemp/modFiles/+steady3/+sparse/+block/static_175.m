function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(456)*y(1960))-(y(142)*(-params(58))-params(124)*y(445)-params(190)*y(748)-params(256)*y(1051));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(456);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
