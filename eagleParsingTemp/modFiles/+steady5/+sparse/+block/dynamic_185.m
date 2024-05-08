function [y, T, residual, g1] = dynamic_185(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12796)*y(12848))-(y(12797)*y(12849)+y(12799)*y(12850)+y(12801)*y(12851)+y(12803)*y(12852));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12796);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
