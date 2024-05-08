function [y, T, residual, g1] = static_264(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2903)=params(534)*T(1383)^params(539);
  residual(1)=(y(2831))-((1-params(534))*(y(2864)/y(2863))^(-params(539))+y(2831)*T(2903));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2903);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
