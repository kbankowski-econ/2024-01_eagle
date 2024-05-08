function [y, T, residual, g1] = dynamic_40(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2712)*y(2765))-(y(2713)*y(2766)+y(2715)*y(2767)+y(2717)*y(2768)+y(2719)*y(2769));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2712);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
