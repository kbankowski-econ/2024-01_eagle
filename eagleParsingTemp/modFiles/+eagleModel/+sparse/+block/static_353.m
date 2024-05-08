function [y, T, residual, g1] = static_353(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4267)=params(857)*T(2194)^params(862);
  residual(1)=(y(4160))-((1-params(857))*(y(4193)/y(4192))^(-params(862))+y(4160)*T(4267));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4267);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
