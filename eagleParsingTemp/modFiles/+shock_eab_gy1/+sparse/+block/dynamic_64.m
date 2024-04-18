function [y, T, residual, g1] = dynamic_64(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(624)*y(4518))-(y(2580)*(-params(70))-params(162)*y(2903)-params(254)*y(3226)-params(346)*y(3549));
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
