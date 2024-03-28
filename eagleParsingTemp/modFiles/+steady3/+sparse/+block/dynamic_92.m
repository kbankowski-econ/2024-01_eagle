function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3646)*y(3589))-(y(4099)*params(456)*y(4135)*y(3542)/params(322)+y(3796)*T(748)+y(3189)*params(256)*y(3225)*y(3540)/params(322)+y(2886)*params(190)*y(2922)*y(3539)/params(322)+y(2280)*params(58)*y(2316)*y(3537)/params(322)+y(2583)*params(124)*y(2619)*y(3538)/params(322));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3589);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
