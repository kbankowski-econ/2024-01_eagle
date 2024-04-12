function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2390)*y(2324))-(y(1855)*params(533)*y(1915)*y(2281)/params(624)+y(1501)*params(438)*y(1561)*y(2280)/params(624)+y(1147)*params(346)*y(1207)*y(2279)/params(624)+y(793)*params(254)*y(853)*y(2278)/params(624)+y(85)*params(70)*y(145)*y(2276)/params(624)+y(439)*params(162)*y(499)*y(2277)/params(624));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2324);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
