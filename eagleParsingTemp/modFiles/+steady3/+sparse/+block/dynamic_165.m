function [y, T, residual, g1] = dynamic_165(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11189)*y(11242))-(y(11190)*y(11243)+y(11192)*y(11244)+y(11194)*y(11245)+y(11196)*y(11246));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11189);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
