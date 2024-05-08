function [y, T, residual, g1] = static_338(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1744)*y(6324))-(y(279)*(-params(117))-params(242)*y(744)-params(367)*y(1209)-params(492)*y(1674)-params(617)*y(2139)-params(742)*y(2604)-params(867)*y(3069)-params(992)*y(3534)-params(1117)*y(3999)-params(1242)*y(4464)-params(1367)*y(4929)-params(1492)*y(5394)-params(1620)*y(5859));
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
