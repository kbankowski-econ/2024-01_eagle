function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(940)*y(878))-(y(2177)*params(673)*y(2217)*y(836)/params(283)+y(1828)*params(577)*y(1868)*y(835)/params(283)+y(1479)*params(477)*y(1519)*y(834)/params(283)+y(1130)*params(380)*y(1170)*y(833)/params(283)+y(82)*params(89)*y(122)*y(831)/params(283)+y(431)*params(186)*y(471)*y(832)/params(283));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(878);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
