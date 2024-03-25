function [y, T, residual, g1] = static_70(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(20)=log(y(1219));
  residual(1)=(T(20))-((1-params(345))*log(x(110))+T(20)*params(345)+x(124));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1219)-params(345)*1/y(1219);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
