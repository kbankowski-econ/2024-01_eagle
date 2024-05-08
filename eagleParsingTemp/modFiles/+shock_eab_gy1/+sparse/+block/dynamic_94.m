function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11497)*y(11550))-(y(11498)*y(11551)+y(11500)*y(11552)+y(11502)*y(11553)+y(11504)*y(11554));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11497);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
