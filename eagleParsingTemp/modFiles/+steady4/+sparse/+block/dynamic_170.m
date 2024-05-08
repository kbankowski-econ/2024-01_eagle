function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11414)*y(11467))-(y(11415)*y(11468)+y(11417)*y(11469)+y(11419)*y(11470)+y(11421)*y(11471));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11414);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
