function [y, T, residual, g1] = static_14(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3)=log(y(293));
  residual(1)=(T(3))-((1-params(53))*log(x(10))+T(3)*params(53)+x(24));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(293)-params(53)*1/y(293);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
