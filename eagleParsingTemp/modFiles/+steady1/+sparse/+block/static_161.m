function [y, T, residual, g1] = static_161(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(481)*y(524))-(y(482)*y(525)+y(484)*y(526));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(481);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
