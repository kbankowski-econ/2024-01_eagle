function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1705)*y(1648))-(y(1856)*params(442)*y(1892)*y(1605)/params(379)+y(1257)*params(312)*y(1293)*y(1604)/params(379)+y(958)*params(248)*y(994)*y(1603)/params(379)+y(659)*params(184)*y(695)*y(1602)/params(379)+y(61)*params(56)*y(97)*y(1600)/params(379)+y(360)*params(120)*y(396)*y(1601)/params(379));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1648);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
