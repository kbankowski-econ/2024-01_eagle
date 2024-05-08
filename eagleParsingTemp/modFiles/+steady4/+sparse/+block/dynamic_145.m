function [y, T, residual, g1] = dynamic_145(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8887)*y(8940))-(y(8888)*y(8941)+y(8890)*y(8942)+y(8892)*y(8943)+y(8894)*y(8944));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8887);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
