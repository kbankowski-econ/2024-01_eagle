function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(624)*y(2096))-(y(158)*(-params(70))-params(162)*y(481)-params(254)*y(804)-params(346)*y(1127)-params(438)*y(1450)-params(533)*y(1773));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(624);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
