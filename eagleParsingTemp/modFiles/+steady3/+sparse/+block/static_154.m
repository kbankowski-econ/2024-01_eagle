function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1741)*y(1682))-(y(1892)*params(463)*y(1928)*y(1635)/params(397)+y(1281)*params(327)*y(1317)*y(1634)/params(397)+y(976)*params(260)*y(1012)*y(1633)/params(397)+y(671)*params(193)*y(707)*y(1632)/params(397)+y(61)*params(59)*y(97)*y(1630)/params(397)+y(366)*params(126)*y(402)*y(1631)/params(397));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1682);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
