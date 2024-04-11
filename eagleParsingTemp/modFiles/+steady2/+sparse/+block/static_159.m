function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1638)*y(1576))-(y(2179)*params(673)*y(2219)*y(1534)/params(477)+y(1830)*params(577)*y(1870)*y(1533)/params(477)+y(1131)*params(380)*y(1171)*y(1532)/params(477)+y(782)*params(283)*y(822)*y(1531)/params(477)+y(84)*params(89)*y(124)*y(1529)/params(477)+y(433)*params(186)*y(473)*y(1530)/params(477));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1576);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
