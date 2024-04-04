function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4258)*y(4200))-(y(3808)*params(385)*y(3844)*y(4157)/params(449)+y(3507)*params(317)*y(3543)*y(4156)/params(449)+y(3206)*params(252)*y(3242)*y(4155)/params(449)+y(2905)*params(187)*y(2941)*y(4154)/params(449)+y(2303)*params(57)*y(2339)*y(4152)/params(449)+y(2604)*params(122)*y(2640)*y(4153)/params(449));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
