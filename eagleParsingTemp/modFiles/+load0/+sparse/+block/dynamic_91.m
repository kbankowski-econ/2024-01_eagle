function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3622)*y(3563))-(y(4073)*params(449)*y(4109)*y(3520)/params(317)+y(3772)*params(385)*y(3808)*y(3519)/params(317)+y(3169)*params(252)*y(3205)*y(3518)/params(317)+y(2868)*params(187)*y(2904)*y(3517)/params(317)+y(2266)*params(57)*y(2302)*y(3515)/params(317)+y(2567)*T(651));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3563);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
