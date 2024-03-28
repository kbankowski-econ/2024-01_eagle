function [y, T, residual, g1] = static_145(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(820)*y(763))-(y(1877)*params(456)*y(1913)*y(716)/params(190)+y(1574)*params(391)*y(1610)*y(715)/params(190)+y(1271)*params(322)*y(1307)*y(714)/params(190)+y(968)*params(256)*y(1004)*y(713)/params(190)+y(58)*params(58)*y(94)*y(711)/params(190)+y(361)*params(124)*y(397)*y(712)/params(190));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(763);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
