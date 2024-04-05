function [y, T, residual, g1] = static_157(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1069)*y(1010))-(y(1775)*params(540)*y(1811)*y(967)/params(298)+y(1489)*params(461)*y(1525)*y(966)/params(298)+y(1203)*params(378)*y(1239)*y(965)/params(298)+y(630)*params(218)*y(666)*y(964)/params(298)+y(58)*params(58)*y(94)*y(962)/params(298)+y(344)*params(138)*y(380)*y(963)/params(298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1010);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
