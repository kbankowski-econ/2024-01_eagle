function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1352)*y(1298))-(y(1795)*params(519)*y(1821)*y(1256)/params(367)+y(1506)*params(445)*y(1532)*y(1255)/params(367)+y(927)*params(292)*y(953)*y(1254)/params(367)+y(638)*params(217)*y(664)*y(1253)/params(367)+y(60)*params(67)*y(86)*y(1251)/params(367)+y(349)*params(142)*y(375)*y(1252)/params(367));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1298);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
