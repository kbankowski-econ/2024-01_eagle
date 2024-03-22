function [y, T, residual, g1] = static_30(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(8)=log(y(499));
  residual(1)=(T(8))-((1-params(116))*log(x(37))+T(8)*params(116)+x(51));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(499)-params(116)*1/y(499);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
