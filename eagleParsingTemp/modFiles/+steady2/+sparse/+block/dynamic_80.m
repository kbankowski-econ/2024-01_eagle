function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2714)*y(2762))-(y(2715)*y(2763)+y(2716)*y(2764)+y(2717)*y(2765)+y(2718)*y(2766));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2714);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
