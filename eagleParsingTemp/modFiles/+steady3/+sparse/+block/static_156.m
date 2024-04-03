function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1436)*y(1377))-(y(1891)*params(463)*y(1927)*y(1330)/params(327)+y(1586)*params(397)*y(1622)*y(1329)/params(327)+y(975)*params(260)*y(1011)*y(1328)/params(327)+y(670)*params(193)*y(706)*y(1327)/params(327)+y(60)*params(59)*y(96)*y(1325)/params(327)+y(365)*params(126)*y(401)*y(1326)/params(327));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1377);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
