function [y, T, residual, g1] = static_301(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3428)=params(611)*T(1852)^params(616);
  residual(1)=(y(3442))-((1-params(611))*(y(3475)/y(3474))^(-params(616))+y(3442)*T(3428));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3428);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
