function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1440)*y(1381))-(y(1897)*params(477)*y(1933)*y(1334)/params(337)+y(1591)*params(409)*y(1627)*y(1333)/params(337)+y(978)*params(268)*y(1014)*y(1332)/params(337)+y(672)*params(199)*y(708)*y(1331)/params(337)+y(60)*params(61)*y(96)*y(1329)/params(337)+y(366)*params(130)*y(402)*y(1330)/params(337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1381);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
