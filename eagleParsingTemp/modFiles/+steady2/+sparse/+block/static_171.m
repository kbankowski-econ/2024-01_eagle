function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1653)*y(1597))-(y(1808)*params(526)*y(1834)*y(1555)/params(451)+y(1225)*params(372)*y(1251)*y(1554)/params(451)+y(934)*params(296)*y(960)*y(1553)/params(451)+y(643)*params(220)*y(669)*y(1552)/params(451)+y(61)*params(68)*y(87)*y(1550)/params(451)+y(352)*params(144)*y(378)*y(1551)/params(451));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1597);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
