function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1747)*y(1687))-(y(1898)*params(477)*y(1934)*y(1640)/params(409)+y(1285)*params(337)*y(1321)*y(1639)/params(409)+y(979)*params(268)*y(1015)*y(1638)/params(409)+y(673)*params(199)*y(709)*y(1637)/params(409)+y(61)*params(61)*y(97)*y(1635)/params(409)+y(367)*params(130)*y(403)*y(1636)/params(409));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1687);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
