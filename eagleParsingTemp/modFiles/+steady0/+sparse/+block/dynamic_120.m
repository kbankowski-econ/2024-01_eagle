function [y, T, residual, g1] = dynamic_120(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4644)*y(4697))-(y(4645)*y(4698)+y(4647)*y(4699)+y(4649)*y(4700)+y(4651)*y(4701));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4644);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
