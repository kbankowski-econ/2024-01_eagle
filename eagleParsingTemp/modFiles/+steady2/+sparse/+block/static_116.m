function [y, T, residual, g1] = static_116(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(138)*y(186))-(y(139)*y(187)+y(140)*y(188)+y(141)*y(189)+y(142)*y(190));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(138);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
