function [y, T, residual, g1] = static_104(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(27)=log(y(2107));
  residual(1)=(T(27))-((1-params(451))*log(x(166))+T(27)*params(451)+x(180));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2107)-params(451)*1/y(2107);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
