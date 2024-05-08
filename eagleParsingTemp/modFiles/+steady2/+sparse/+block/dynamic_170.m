function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9051)*y(9099))-(y(9052)*y(9100)+y(9053)*y(9101)+y(9054)*y(9102)+y(9055)*y(9103));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9051);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
