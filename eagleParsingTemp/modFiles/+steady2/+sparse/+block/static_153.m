function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(591)*y(529))-(y(2176)*params(673)*y(2216)*y(487)/params(186)+y(1827)*params(577)*y(1867)*y(486)/params(186)+y(1478)*params(477)*y(1518)*y(485)/params(186)+y(1129)*params(380)*y(1169)*y(484)/params(186)+y(81)*params(89)*y(121)*y(482)/params(186)+y(780)*params(283)*y(820)*y(483)/params(186));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(529);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
