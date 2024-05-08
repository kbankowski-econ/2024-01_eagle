function [y, T, residual, g1] = dynamic_134(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5710)*y(5763))-(y(5711)*y(5764)+y(5713)*y(5765)+y(5715)*y(5766)+y(5717)*y(5767));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5710);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
