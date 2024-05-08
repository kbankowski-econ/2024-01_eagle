function [y, T, residual, g1] = static_233(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2260)=params(167)*T(868)^params(172);
  residual(1)=(y(699))-((1-params(167))*(y(732)/y(731))^(-params(172))+y(699)*T(2260));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2260);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
