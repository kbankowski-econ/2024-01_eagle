function [y, T, residual, g1] = dynamic_203(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1744)*y(13710))-(y(7665)*(-params(117))-params(242)*y(8130)-params(367)*y(8595)-params(492)*y(9060)-params(617)*y(9525)-params(742)*y(9990)-params(867)*y(10455)-params(992)*y(10920)-params(1117)*y(11385)-params(1242)*y(11850)-params(1367)*y(12315)-params(1492)*y(12780)-params(1620)*y(13245));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1744);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
