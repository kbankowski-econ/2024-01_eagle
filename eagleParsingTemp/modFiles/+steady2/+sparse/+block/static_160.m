function [y, T, residual, g1] = static_160(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1641)*y(1587))-(y(1796)*params(519)*y(1822)*y(1545)/params(445)+y(1217)*params(367)*y(1243)*y(1544)/params(445)+y(928)*params(292)*y(954)*y(1543)/params(445)+y(639)*params(217)*y(665)*y(1542)/params(445)+y(61)*params(67)*y(87)*y(1540)/params(445)+y(350)*params(142)*y(376)*y(1541)/params(445));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1587);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
