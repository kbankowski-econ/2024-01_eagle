function [y, T, residual, g1] = static_323(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3365)=params(380)*T(462)^params(385);
  residual(1)=(y(2129))-((1-params(380))*(y(2162)/y(2161))^(-params(385))+y(2129)*T(3365));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3365);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
