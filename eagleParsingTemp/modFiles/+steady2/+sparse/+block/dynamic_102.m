function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2862)*y(2924))-(y(4857)*y(4897)*y(2820)*params(673)/params(89)+y(4508)*y(4548)*y(2819)*params(577)/params(89)+y(4159)*y(4199)*y(2818)*params(477)/params(89)+y(3810)*y(3850)*y(2817)*params(380)/params(89)+y(3112)*y(3152)*y(2815)*params(186)/params(89)+y(3461)*y(3501)*y(2816)*params(283)/params(89));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2862);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
