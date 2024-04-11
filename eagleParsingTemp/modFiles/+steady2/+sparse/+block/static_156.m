function [y, T, residual, g1] = static_156(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1987)*y(1925))-(y(2180)*params(673)*y(2220)*y(1883)/params(577)+y(1481)*params(477)*y(1521)*y(1882)/params(577)+y(1132)*params(380)*y(1172)*y(1881)/params(577)+y(783)*params(283)*y(823)*y(1880)/params(577)+y(85)*params(89)*y(125)*y(1878)/params(577)+y(434)*params(186)*y(474)*y(1879)/params(577));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1925);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
