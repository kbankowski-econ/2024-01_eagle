function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1359)*y(13912))-(y(7529)*(-params(70))-params(169)*y(8020)-params(268)*y(8511)-params(367)*y(9002)-params(466)*y(9493)-params(565)*y(9984)-params(664)*y(10475)-params(763)*y(10966)-params(862)*y(11457)-params(961)*y(11948)-params(1060)*y(12439)-params(1159)*y(12930)-params(1261)*y(13421));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
