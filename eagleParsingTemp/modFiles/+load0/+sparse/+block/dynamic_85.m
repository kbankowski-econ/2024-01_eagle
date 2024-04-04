function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3923)*y(3864))-(y(4074)*params(449)*y(4110)*y(3821)/params(385)+y(3471)*params(317)*y(3507)*y(3820)/params(385)+y(3170)*params(252)*y(3206)*y(3819)/params(385)+y(2869)*params(187)*y(2905)*y(3818)/params(385)+y(2267)*params(57)*y(2303)*y(3816)/params(385)+y(2568)*T(503));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3864);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
