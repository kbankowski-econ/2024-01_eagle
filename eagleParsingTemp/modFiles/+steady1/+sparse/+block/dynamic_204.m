function [y, T, residual, g1] = dynamic_204(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(16211)*y(16264))-(y(16212)*y(16265)+y(16214)*y(16266)+y(16216)*y(16267)+y(16218)*y(16268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(16211);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
