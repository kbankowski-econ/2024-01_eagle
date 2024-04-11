function [y, T, residual, g1] = static_167(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(180)*y(242))-(y(2175)*y(2215)*y(138)*params(673)/params(89)+y(1826)*y(1866)*y(137)*params(577)/params(89)+y(1477)*y(1517)*y(136)*params(477)/params(89)+y(1128)*y(1168)*y(135)*params(380)/params(89)+y(430)*y(470)*y(133)*params(186)/params(89)+y(779)*y(819)*y(134)*params(283)/params(89));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(180);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
