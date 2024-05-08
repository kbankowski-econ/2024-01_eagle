function [y, T, residual, g1] = static_52(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(14)=log(y(1778));
  residual(1)=(T(14))-((1-params(358))*log(x(98))+T(14)*params(358)+x(113));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1778)-params(358)*1/y(1778);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
