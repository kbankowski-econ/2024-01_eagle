function [y, T, residual, g1] = static_291(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(298)*y(346))-(y(299)*y(347)+y(300)*y(348)+y(301)*y(349)+y(302)*y(350));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(298);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
