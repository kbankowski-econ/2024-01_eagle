function [y, T, residual, g1] = dynamic_58(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2585)*y(2638))-(y(2586)*y(2639)+y(2588)*y(2640)+y(2590)*y(2641)+y(2592)*y(2642));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2585);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
