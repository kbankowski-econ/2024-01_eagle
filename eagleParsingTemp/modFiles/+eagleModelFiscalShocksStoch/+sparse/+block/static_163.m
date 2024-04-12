function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1683)*y(1616))-(y(2208)*params(624)*y(2268)*y(1573)/params(438)+y(1854)*params(533)*y(1914)*y(1572)/params(438)+y(1145)*params(346)*y(1205)*y(1571)/params(438)+y(791)*params(254)*y(851)*y(1570)/params(438)+y(83)*params(70)*y(143)*y(1568)/params(438)+y(437)*params(162)*y(497)*y(1569)/params(438));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1616);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
