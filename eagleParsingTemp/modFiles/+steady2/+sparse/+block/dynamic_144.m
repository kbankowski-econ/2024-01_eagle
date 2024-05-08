function [y, T, residual, g1] = dynamic_144(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7245)*y(7293))-(y(7246)*y(7294)+y(7247)*y(7295)+y(7248)*y(7296)+y(7249)*y(7297));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7245);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
