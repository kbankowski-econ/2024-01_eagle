function [y, T, residual, g1] = static_94(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(878)*y(931))-(y(879)*y(932)+y(881)*y(933)+y(883)*y(934)+y(885)*y(935));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(878);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
