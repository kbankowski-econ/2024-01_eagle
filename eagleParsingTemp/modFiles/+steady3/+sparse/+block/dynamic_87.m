function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3060)*y(3001))-(y(4123)*params(463)*y(4159)*y(2954)/params(193)+y(3818)*params(397)*y(3854)*y(2953)/params(193)+y(3513)*params(327)*y(3549)*y(2952)/params(193)+y(3208)*params(260)*y(3244)*y(2951)/params(193)+y(2292)*params(59)*y(2328)*y(2949)/params(193)+y(2597)*params(126)*y(2633)*y(2950)/params(193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3001);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
