function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(673)*y(2047))-(y(139)*(-params(89))-params(186)*y(457)-params(283)*y(775)-params(380)*y(1093));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(673);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
