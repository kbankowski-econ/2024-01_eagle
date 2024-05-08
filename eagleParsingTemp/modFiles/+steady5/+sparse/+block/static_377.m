function [y, T, residual, g1] = static_377(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4541)=params(534)*T(1250)^params(539);
  residual(1)=(y(3352))-((1-params(534))*(y(3385)/y(3384))^(-params(539))+y(3352)*T(4541));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4541);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
