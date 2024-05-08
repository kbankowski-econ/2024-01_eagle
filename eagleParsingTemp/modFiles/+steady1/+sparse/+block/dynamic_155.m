function [y, T, residual, g1] = dynamic_155(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10216)*y(10269))-(y(10217)*y(10270)+y(10219)*y(10271)+y(10221)*y(10272)+y(10223)*y(10273));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10216);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
