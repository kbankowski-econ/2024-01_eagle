function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1005)*y(939))-(y(2297)*params(533)*y(2357)*y(896)/params(223)+y(1928)*params(457)*y(1988)*y(895)/params(223)+y(1559)*params(377)*y(1619)*y(894)/params(223)+y(1190)*params(300)*y(1250)*y(893)/params(223)+y(82)*params(69)*y(142)*y(891)/params(223)+y(451)*params(146)*y(511)*y(892)/params(223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(939);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
