function [y, T, residual, g1] = static_233(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1973)=params(72)*T(176)^params(77);
  residual(1)=(y(305))-((1-params(72))*(y(338)/y(337))^(-params(77))+y(305)*T(1973));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1973);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
