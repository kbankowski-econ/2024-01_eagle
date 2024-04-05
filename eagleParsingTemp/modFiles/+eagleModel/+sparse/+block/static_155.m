function [y, T, residual, g1] = static_155(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1355)*y(1296))-(y(1776)*params(540)*y(1812)*y(1253)/params(378)+y(1490)*params(461)*y(1526)*y(1252)/params(378)+y(917)*params(298)*y(953)*y(1251)/params(378)+y(631)*params(218)*y(667)*y(1250)/params(378)+y(59)*params(58)*y(95)*y(1248)/params(378)+y(345)*params(138)*y(381)*y(1249)/params(378));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1296);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
