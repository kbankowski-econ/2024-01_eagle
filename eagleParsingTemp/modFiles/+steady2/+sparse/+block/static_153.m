function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1929)*y(1876))-(y(1507)*params(445)*y(1533)*y(1834)/params(519)+y(1218)*params(367)*y(1244)*y(1833)/params(519)+y(929)*params(292)*y(955)*y(1832)/params(519)+y(640)*params(217)*y(666)*y(1831)/params(519)+y(62)*params(67)*y(88)*y(1829)/params(519)+y(351)*params(142)*y(377)*y(1830)/params(519));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1876);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
