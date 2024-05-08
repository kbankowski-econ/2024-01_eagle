function [y, T, residual, g1] = dynamic_150(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7961)*y(8013))-(y(7962)*y(8014)+y(7964)*y(8015)+y(7966)*y(8016)+y(7968)*y(8017));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7961);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
