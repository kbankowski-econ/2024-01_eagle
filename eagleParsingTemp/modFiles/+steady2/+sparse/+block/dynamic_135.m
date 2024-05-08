function [y, T, residual, g1] = dynamic_135(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6417)*y(6465))-(y(6418)*y(6466)+y(6419)*y(6467)+y(6420)*y(6468)+y(6421)*y(6469));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6417);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
