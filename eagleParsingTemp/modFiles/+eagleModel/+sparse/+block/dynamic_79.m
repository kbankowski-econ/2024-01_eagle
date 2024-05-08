function [y, T, residual, g1] = dynamic_79(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7563)*y(7616))-(y(7564)*y(7617)+y(7566)*y(7618)+y(7568)*y(7619)+y(7570)*y(7620));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7563);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
