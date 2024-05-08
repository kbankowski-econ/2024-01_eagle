function [y, T, residual, g1] = static_137(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3177))-((1-params(927))*x(221)+y(3177)*params(927)+x(234));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(927);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
