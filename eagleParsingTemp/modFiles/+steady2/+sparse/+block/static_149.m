function [y, T, residual, g1] = static_149(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(142)*y(196))-(y(1791)*y(1817)*y(100)*params(519)/params(67)+y(1502)*y(1528)*y(99)*params(445)/params(67)+y(1213)*y(1239)*y(98)*params(367)/params(67)+y(924)*y(950)*y(97)*params(292)/params(67)+y(346)*y(372)*y(95)*params(142)/params(67)+y(635)*y(661)*y(96)*params(217)/params(67));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(142);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
