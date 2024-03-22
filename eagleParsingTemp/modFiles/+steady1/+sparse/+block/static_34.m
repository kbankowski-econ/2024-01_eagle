function [y, T, residual, g1] = static_34(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(9)=log(y(754));
  residual(1)=(T(9))-((1-params(182))*log(x(65))+T(9)*params(182)+x(79));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(754)-params(182)*1/y(754);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
