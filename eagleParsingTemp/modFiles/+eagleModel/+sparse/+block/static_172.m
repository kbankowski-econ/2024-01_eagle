function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5367))-((1-params(1052))*x(290)+y(5367)*params(1052)+x(304));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1052);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
