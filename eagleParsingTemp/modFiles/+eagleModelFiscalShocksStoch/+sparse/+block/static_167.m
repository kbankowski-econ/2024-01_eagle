function [y, T, residual, g1] = static_167(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1329)*y(1262))-(y(2207)*params(624)*y(2267)*y(1219)/params(346)+y(1853)*params(533)*y(1913)*y(1218)/params(346)+y(1499)*params(438)*y(1559)*y(1217)/params(346)+y(790)*params(254)*y(850)*y(1216)/params(346)+y(82)*params(70)*y(142)*y(1214)/params(346)+y(436)*params(162)*y(496)*y(1215)/params(346));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1262);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
