function [y, T, residual, g1] = static_268(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5711)*y(5763))-(y(5712)*y(5764)+y(5714)*y(5765)+y(5716)*y(5766)+y(5718)*y(5767));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5711);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
