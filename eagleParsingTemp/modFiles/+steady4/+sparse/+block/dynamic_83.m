function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3356)*y(3297))-(y(4107)*params(449)*y(4143)*y(3254)/params(252)+y(3806)*params(385)*y(3842)*y(3253)/params(252)+y(3505)*params(317)*y(3541)*y(3252)/params(252)+y(2902)*params(187)*y(2938)*y(3251)/params(252)+y(2300)*params(57)*y(2336)*y(3249)/params(252)+y(2601)*T(677));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3297);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
