function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(774)*y(720))-(y(1793)*params(519)*y(1819)*y(678)/params(217)+y(1504)*params(445)*y(1530)*y(677)/params(217)+y(1215)*params(367)*y(1241)*y(676)/params(217)+y(926)*params(292)*y(952)*y(675)/params(217)+y(58)*params(67)*y(84)*y(673)/params(217)+y(347)*params(142)*y(373)*y(674)/params(217));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(720);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
