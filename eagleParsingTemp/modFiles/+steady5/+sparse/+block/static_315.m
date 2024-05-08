function [y, T, residual, g1] = static_315(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3429)=params(534)*T(1379)^params(539);
  residual(1)=(y(3004))-((1-params(534))*(y(3037)/y(3036))^(-params(539))+y(3004)*T(3429));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3429);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
