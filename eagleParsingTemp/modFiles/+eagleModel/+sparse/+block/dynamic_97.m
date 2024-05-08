function [y, T, residual, g1] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7587)*y(7640))-(y(7588)*y(7641)+y(7590)*y(7642)+y(7592)*y(7643)+y(7594)*y(7644));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7587);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
