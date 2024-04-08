function [y, T, residual, g1] = static_147(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2113)*y(2046))-(y(2300)*params(533)*y(2360)*y(2003)/params(457)+y(1561)*params(377)*y(1621)*y(2002)/params(457)+y(1192)*params(300)*y(1252)*y(2001)/params(457)+y(823)*params(223)*y(883)*y(2000)/params(457)+y(85)*params(69)*y(145)*y(1998)/params(457)+y(454)*params(146)*y(514)*y(1999)/params(457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2046);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
