function [y, T, residual, g1] = static_146(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1063)*y(1009))-(y(1794)*params(519)*y(1820)*y(967)/params(292)+y(1505)*params(445)*y(1531)*y(966)/params(292)+y(1216)*params(367)*y(1242)*y(965)/params(292)+y(637)*params(217)*y(663)*y(964)/params(292)+y(59)*params(67)*y(85)*y(962)/params(292)+y(348)*params(142)*y(374)*y(963)/params(292));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1009);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
