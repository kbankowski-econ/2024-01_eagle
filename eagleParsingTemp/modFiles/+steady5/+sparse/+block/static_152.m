function [y, T, residual, g1] = static_152(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(828)*y(769))-(y(1895)*params(477)*y(1931)*y(722)/params(199)+y(1589)*params(409)*y(1625)*y(721)/params(199)+y(1283)*params(337)*y(1319)*y(720)/params(199)+y(977)*params(268)*y(1013)*y(719)/params(199)+y(58)*params(61)*y(94)*y(717)/params(199)+y(364)*params(130)*y(400)*y(718)/params(199));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(769);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
