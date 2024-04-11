function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(229)*y(282))-(y(230)*y(283)+y(232)*y(284)+y(234)*y(285)+y(236)*y(286));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(229);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
