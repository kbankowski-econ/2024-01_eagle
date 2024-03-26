function [y, T, residual, g1] = static_141(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(509)*y(452))-(y(1852)*params(442)*y(1888)*y(409)/params(120)+y(1553)*params(379)*y(1589)*y(408)/params(120)+y(1254)*params(312)*y(1290)*y(407)/params(120)+y(955)*params(248)*y(991)*y(406)/params(120)+y(57)*params(56)*y(93)*y(404)/params(120)+y(656)*params(184)*y(692)*y(405)/params(120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(452);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
