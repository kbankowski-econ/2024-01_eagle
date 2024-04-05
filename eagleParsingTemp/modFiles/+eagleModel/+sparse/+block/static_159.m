function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(152)*y(211))-(y(1772)*y(1808)*y(109)*params(540)/params(58)+y(1486)*y(1522)*y(108)*params(461)/params(58)+y(1200)*y(1236)*y(107)*params(378)/params(58)+y(914)*y(950)*y(106)*params(298)/params(58)+y(342)*y(378)*y(104)*params(138)/params(58)+y(628)*y(664)*y(105)*params(218)/params(58));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(152);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
