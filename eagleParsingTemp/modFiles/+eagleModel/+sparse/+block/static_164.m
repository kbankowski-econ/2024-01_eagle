function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(42)=log(y(4879));
  residual(1)=(T(42))-((1-params(1040))*log(x(294))+T(42)*params(1040)+x(310));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4879)-params(1040)*1/y(4879);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
