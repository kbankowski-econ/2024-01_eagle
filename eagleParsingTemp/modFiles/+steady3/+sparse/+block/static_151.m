function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(157)*y(216))-(y(1887)*y(1923)*y(110)*params(463)/params(59)+y(1582)*y(1618)*y(109)*params(397)/params(59)+y(1277)*y(1313)*y(108)*params(327)/params(59)+y(972)*y(1008)*y(107)*params(260)/params(59)+y(362)*y(398)*y(105)*params(126)/params(59)+y(667)*y(703)*y(106)*params(193)/params(59));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(157);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
