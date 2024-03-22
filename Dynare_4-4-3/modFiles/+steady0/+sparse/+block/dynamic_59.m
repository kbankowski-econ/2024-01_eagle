function [y, T, residual, g1] = dynamic_59(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1061)*y(1118))-(y(1697)*y(1715)*y(1033)*params(250)/params(56)+y(1237)*y(1255)*y(1031)*params(120)/params(56)+y(1467)*y(1485)*y(1032)*params(187)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1061);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
