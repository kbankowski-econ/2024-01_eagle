function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3321)*y(3262))-(y(4072)*T(865)+y(3771)*T(864)+y(3470)*params(317)*y(3506)*y(3217)/params(252)+y(2867)*params(187)*y(2903)*y(3216)/params(252)+y(2265)*params(57)*y(2301)*y(3214)/params(252)+y(2566)*params(122)*y(2602)*y(3215)/params(252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3262);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
