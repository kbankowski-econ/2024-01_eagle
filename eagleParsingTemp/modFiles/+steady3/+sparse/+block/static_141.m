function [y, T, residual, g1] = static_141(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1123)*y(1066))-(y(1878)*params(456)*y(1914)*y(1019)/params(256)+y(1575)*params(391)*y(1611)*y(1018)/params(256)+y(1272)*params(322)*y(1308)*y(1017)/params(256)+y(665)*params(190)*y(701)*y(1016)/params(256)+y(59)*params(58)*y(95)*y(1014)/params(256)+y(362)*params(124)*y(398)*y(1015)/params(256));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1066);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
