function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8586)*y(8639))-(y(8587)*y(8640)+y(8589)*y(8641)+y(8591)*y(8642)+y(8593)*y(8643));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8586);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
