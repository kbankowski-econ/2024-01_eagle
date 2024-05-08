function [y, T, residual, g1] = static_301(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2959)=params(73)*T(85)^params(78);
  residual(1)=(y(352))-((1-params(73))*(y(385)/y(384))^(-params(78))+y(352)*T(2959));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2959);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
