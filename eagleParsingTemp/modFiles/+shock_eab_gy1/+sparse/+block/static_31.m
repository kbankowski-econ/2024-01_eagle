function [y, T, residual, g1] = static_31(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=log(y(1034));
  residual(1)=(T(7))-((1-params(165))*log(x(40))+T(7)*params(165)+x(55));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1034)-params(165)*1/y(1034);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
