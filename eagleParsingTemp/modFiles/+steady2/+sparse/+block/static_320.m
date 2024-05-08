function [y, T, residual, g1] = static_320(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(318)*y(366))-(y(319)*y(367)+y(320)*y(368)+y(321)*y(369)+y(322)*y(370));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(318);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
