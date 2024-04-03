function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3650)*y(3591))-(y(4101)*params(449)*y(4137)*y(3548)/params(317)+y(3800)*params(385)*y(3836)*y(3547)/params(317)+y(3197)*params(252)*y(3233)*y(3546)/params(317)+y(2896)*T(799)+y(2294)*params(57)*y(2330)*y(3543)/params(317)+y(2595)*T(798));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3591);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
