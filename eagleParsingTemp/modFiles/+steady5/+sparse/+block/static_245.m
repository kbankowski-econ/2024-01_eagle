function [y, T, residual, g1] = static_245(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(295)*y(347))-(y(296)*y(348)+y(298)*y(349)+y(300)*y(350)+y(302)*y(351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(295);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
