function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(497)*y(438))-(y(1773)*params(540)*y(1809)*y(395)/params(138)+y(1487)*params(461)*y(1523)*y(394)/params(138)+y(1201)*params(378)*y(1237)*y(393)/params(138)+y(915)*params(298)*y(951)*y(392)/params(138)+y(56)*params(58)*y(92)*y(390)/params(138)+y(629)*params(218)*y(665)*y(391)/params(138));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(438);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
