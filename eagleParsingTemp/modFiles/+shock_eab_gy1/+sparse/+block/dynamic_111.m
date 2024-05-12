function [y, T, residual, g1] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10013)*y(10066))-(y(10014)*y(10067)+y(10016)*y(10068)+y(10018)*y(10069)+y(10020)*y(10070));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10013);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
