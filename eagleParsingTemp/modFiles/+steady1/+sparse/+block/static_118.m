function [y, T, residual, g1] = static_118(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4148))-((1-params(592))*x(191)+y(4148)*params(592)+x(204));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(592);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
