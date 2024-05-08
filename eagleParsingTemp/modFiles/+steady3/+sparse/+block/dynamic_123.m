function [y, T, residual, g1] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4585)*y(4638))-(y(4586)*y(4639)+y(4588)*y(4640)+y(4590)*y(4641)+y(4592)*y(4642));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4585);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
