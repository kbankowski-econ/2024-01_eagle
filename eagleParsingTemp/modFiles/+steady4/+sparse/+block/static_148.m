function [y, T, residual, g1] = static_148(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1115)*y(1056))-(y(1866)*params(449)*y(1902)*y(1013)/params(252)+y(1565)*params(385)*y(1601)*y(1012)/params(252)+y(1264)*params(317)*y(1300)*y(1011)/params(252)+y(661)*params(187)*y(697)*y(1010)/params(252)+y(59)*params(57)*y(95)*y(1008)/params(252)+y(360)*params(122)*y(396)*y(1009)/params(252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1056);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
