function [y, T, residual, g1] = static_144(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(157)*y(214))-(y(1875)*y(1911)*y(110)*params(456)/params(58)+y(1572)*y(1608)*y(109)*params(391)/params(58)+y(1269)*y(1305)*y(108)*params(322)/params(58)+y(966)*y(1002)*y(107)*params(256)/params(58)+y(360)*y(396)*y(105)*params(124)/params(58)+y(663)*y(699)*y(106)*params(190)/params(58));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(157);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
