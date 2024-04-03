function [y, T, residual, g1] = static_168(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(782)*y(825))-(y(783)*y(826)+y(785)*y(827));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(782);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
