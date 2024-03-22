function [y, T, residual, g1] = dynamic_42(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(287)*y(1670))-(y(1016)*(-params(57))-params(133)*y(1234)-params(212)*y(1452));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(287);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
