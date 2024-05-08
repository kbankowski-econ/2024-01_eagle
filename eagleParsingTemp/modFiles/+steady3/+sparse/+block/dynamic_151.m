function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12296)*y(12349))-(y(12297)*y(12350)+y(12299)*y(12351)+y(12301)*y(12352)+y(12303)*y(12353));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12296);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
