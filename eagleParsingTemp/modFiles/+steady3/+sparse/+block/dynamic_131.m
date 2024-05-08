function [y, T, residual, g1] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7889)*y(7942))-(y(7890)*y(7943)+y(7892)*y(7944)+y(7894)*y(7945)+y(7896)*y(7946));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7889);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
