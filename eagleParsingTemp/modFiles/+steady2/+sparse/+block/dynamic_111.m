function [y, T, residual, g1] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3894)*y(3942))-(y(3895)*y(3943)+y(3896)*y(3944)+y(3897)*y(3945)+y(3898)*y(3946));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3894);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
