function [y, T, residual, g1] = static_149(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1406)*y(1349))-(y(1855)*params(442)*y(1891)*y(1306)/params(312)+y(1556)*params(379)*y(1592)*y(1305)/params(312)+y(957)*params(248)*y(993)*y(1304)/params(312)+y(658)*params(184)*y(694)*y(1303)/params(312)+y(60)*params(56)*y(96)*y(1301)/params(312)+y(359)*params(120)*y(395)*y(1302)/params(312));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1349);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
