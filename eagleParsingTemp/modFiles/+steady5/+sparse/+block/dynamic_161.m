function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11333)*y(11385))-(y(11334)*y(11386)+y(11336)*y(11387)+y(11338)*y(11388)+y(11340)*y(11389));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11333);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
