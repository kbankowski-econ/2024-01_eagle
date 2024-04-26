function [y, T, residual, g1] = static_306(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7385)*y(7438))-(y(7386)*y(7439)+y(7388)*y(7440)+y(7390)*y(7441)+y(7392)*y(7442));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7385);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
