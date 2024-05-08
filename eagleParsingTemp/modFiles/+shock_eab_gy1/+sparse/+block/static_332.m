function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3488)=params(361)*T(144)^params(366);
  residual(1)=(y(1633))-((1-params(361))*(y(1666)/y(1665))^(-params(366))+y(1633)*T(3488));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3488);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
