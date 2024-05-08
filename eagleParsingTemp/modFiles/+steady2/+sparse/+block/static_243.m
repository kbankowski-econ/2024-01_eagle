function [y, T, residual, g1] = static_243(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3474)*y(3522))-(y(3475)*y(3523)+y(3476)*y(3524)+y(3477)*y(3525)+y(3478)*y(3526));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3474);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
