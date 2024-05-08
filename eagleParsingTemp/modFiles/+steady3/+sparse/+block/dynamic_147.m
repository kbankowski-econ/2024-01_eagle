function [y, T, residual, g1] = dynamic_147(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8412)*y(8465))-(y(8413)*y(8466)+y(8415)*y(8467)+y(8417)*y(8468)+y(8419)*y(8469));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8412);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
