function [y, T, residual, g1] = dynamic_103(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12073)*y(12126))-(y(12074)*y(12127)+y(12076)*y(12128)+y(12078)*y(12129)+y(12080)*y(12130));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12073);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
