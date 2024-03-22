function [y, T, residual, g1] = static_29(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=log(y(453));
  residual(1)=(T(7))-((1-params(115))*log(x(36))+T(7)*params(115)+x(50));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(453)-params(115)*1/y(453);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
