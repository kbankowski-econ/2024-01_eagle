function [y, T, residual, g1] = static_289(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2918)=params(380)*T(524)^params(385);
  residual(1)=(y(2004))-((1-params(380))*(y(2037)/y(2036))^(-params(385))+y(2004)*T(2918));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
