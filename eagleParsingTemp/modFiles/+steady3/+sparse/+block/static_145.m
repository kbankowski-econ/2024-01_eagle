function [y, T, residual, g1] = static_145(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(153)*y(210))-(y(1851)*y(1887)*y(110)*params(442)/params(56)+y(1552)*y(1588)*y(109)*params(379)/params(56)+y(1253)*y(1289)*y(108)*params(312)/params(56)+y(954)*y(990)*y(107)*params(248)/params(56)+y(356)*y(392)*y(105)*params(120)/params(56)+y(655)*y(691)*y(106)*params(184)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(153);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
