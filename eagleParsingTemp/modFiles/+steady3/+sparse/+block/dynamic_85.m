function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3951)*y(3892))-(y(4102)*T(507)+y(3499)*params(317)*y(3535)*y(3848)/params(385)+y(3198)*params(252)*y(3234)*y(3847)/params(385)+y(2897)*T(630)+y(2295)*T(290)+y(2596)*params(122)*y(2632)*y(3845)/params(385));
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
