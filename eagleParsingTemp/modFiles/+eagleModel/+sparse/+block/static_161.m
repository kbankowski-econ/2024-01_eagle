function [y, T, residual, g1] = static_161(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(783)*y(724))-(y(1774)*params(540)*y(1810)*y(681)/params(218)+y(1488)*params(461)*y(1524)*y(680)/params(218)+y(1202)*params(378)*y(1238)*y(679)/params(218)+y(916)*params(298)*y(952)*y(678)/params(218)+y(57)*params(58)*y(93)*y(676)/params(218)+y(343)*params(138)*y(379)*y(677)/params(218));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(724);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
