function [y, T, residual, g1] = static_164(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2335)*y(2274))-(y(1831)*params(577)*y(1871)*y(2232)/params(673)+y(1482)*params(477)*y(1522)*y(2231)/params(673)+y(1133)*params(380)*y(1173)*y(2230)/params(673)+y(784)*params(283)*y(824)*y(2229)/params(673)+y(86)*params(89)*y(126)*y(2227)/params(673)+y(435)*params(186)*y(475)*y(2228)/params(673));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2274);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
