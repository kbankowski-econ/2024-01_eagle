function [y, T, residual, g1] = static_229(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(58)=log(y(7263));
  residual(1)=(T(58))-((1-params(1926))*log(x(391))+T(58)*params(1926)+x(405));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7263)-params(1926)*1/y(7263);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
