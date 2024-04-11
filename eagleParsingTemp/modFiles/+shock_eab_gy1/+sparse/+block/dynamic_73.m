function [y, T, residual, g1] = dynamic_73(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(624)*y(4917))-(y(2793)*(-params(70))-params(162)*y(3147)-params(254)*y(3501)-params(346)*y(3855));
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
