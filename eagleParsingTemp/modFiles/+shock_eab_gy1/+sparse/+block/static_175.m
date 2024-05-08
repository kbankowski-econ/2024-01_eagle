function [y, T, residual, g1] = static_175(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1279)=params(255)*T(240)^params(260);
  residual(1)=(y(854))-((1-params(255))*(y(887)/y(886))^(-params(260))+y(854)*T(1279));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1279);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
