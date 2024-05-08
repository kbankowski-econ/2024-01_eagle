function [y, T, residual, g1] = static_216(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2532)=params(601)*T(1257)^params(606);
  residual(1)=(y(1970))-((1-params(601))*(y(2002)/y(2001))^(-params(606))+y(1970)*T(2532));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2532);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
