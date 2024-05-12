function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(39)=log(y(4835));
  residual(1)=(T(39))-((1-params(1277))*log(x(254))+T(39)*params(1277)+x(268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4835)-params(1277)*1/y(4835);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
