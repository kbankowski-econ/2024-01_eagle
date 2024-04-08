function [y, T, residual, g1] = static_184(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(624)*y(2313))-(y(189)*(-params(70))-params(162)*y(543)-params(254)*y(897)-params(346)*y(1251));
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
