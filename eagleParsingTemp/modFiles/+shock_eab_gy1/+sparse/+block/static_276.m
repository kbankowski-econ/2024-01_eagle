function [y, T, residual, g1] = static_276(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1032)*y(4444))-(y(254)*(-params(70))-params(166)*y(673)-params(262)*y(1092)-params(358)*y(1511)-params(454)*y(1930)-params(550)*y(2349)-params(646)*y(2768)-params(742)*y(3187)-params(838)*y(3606)-params(937)*y(4025));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1032);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
