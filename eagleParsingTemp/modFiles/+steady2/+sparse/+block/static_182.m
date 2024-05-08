function [y, T, residual, g1] = static_182(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1562)=params(274)*T(180)^params(279);
  residual(1)=(y(829))-((1-params(274))*(y(861)/y(860))^(-params(279))+y(829)*T(1562));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1562);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
