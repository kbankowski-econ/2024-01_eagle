function [y, T, residual, g1] = static_32(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(8)=log(y(699));
  residual(1)=(T(8))-((1-params(159))*log(x(41))+T(8)*params(159)+x(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(699)-params(159)*1/y(699);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
