function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1926)*y(1868))-(y(1491)*params(461)*y(1527)*y(1825)/params(540)+y(1205)*params(378)*y(1241)*y(1824)/params(540)+y(919)*params(298)*y(955)*y(1823)/params(540)+y(633)*params(218)*y(669)*y(1822)/params(540)+y(61)*params(58)*y(97)*y(1820)/params(540)+y(347)*params(138)*y(383)*y(1821)/params(540));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1868);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
