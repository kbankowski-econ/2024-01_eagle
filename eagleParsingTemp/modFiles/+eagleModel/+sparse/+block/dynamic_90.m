function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8876)*y(8929))-(y(8877)*y(8930)+y(8879)*y(8931)+y(8881)*y(8932)+y(8883)*y(8933));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8876);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
