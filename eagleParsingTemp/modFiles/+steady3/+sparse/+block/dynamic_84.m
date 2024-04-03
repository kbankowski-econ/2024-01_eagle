function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3951)*y(3892))-(y(4102)*params(449)*y(4138)*y(3849)/params(385)+y(3499)*params(317)*y(3535)*y(3848)/params(385)+y(3198)*T(617)+y(2897)*params(187)*y(2933)*y(3846)/params(385)+y(2295)*params(57)*y(2331)*y(3844)/params(385)+y(2596)*params(122)*y(2632)*y(3845)/params(385));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3892);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
