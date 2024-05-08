function [y, T, residual, g1] = static_127(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(31)=log(y(3529));
  residual(1)=(T(31))-((1-params(955))*log(x(200))+T(31)*params(955)+x(214));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3529)-params(955)*1/y(3529);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
