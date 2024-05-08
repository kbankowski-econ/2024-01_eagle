function [y, T, residual, g1] = dynamic_79(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7255)*y(7308))-(y(7256)*y(7309)+y(7258)*y(7310)+y(7260)*y(7311)+y(7262)*y(7312));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7255);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
