function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2719)*y(2660))-(y(4070)*params(449)*y(4106)*y(2617)/params(122)+y(3769)*params(385)*y(3805)*y(2616)/params(122)+y(3468)*params(317)*y(3504)*y(2615)/params(122)+y(3167)*T(762)+y(2263)*params(57)*y(2299)*y(2612)/params(122)+y(2866)*params(187)*y(2902)*y(2613)/params(122));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2660);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
