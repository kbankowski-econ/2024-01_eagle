function [y, T, residual, g1] = static_153(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(513)*y(454))-(y(1864)*params(449)*y(1900)*y(411)/params(122)+y(1563)*params(385)*y(1599)*y(410)/params(122)+y(1262)*params(317)*y(1298)*y(409)/params(122)+y(961)*params(252)*y(997)*y(408)/params(122)+y(57)*params(57)*y(93)*y(406)/params(122)+y(660)*params(187)*y(696)*y(407)/params(122));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(454);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
