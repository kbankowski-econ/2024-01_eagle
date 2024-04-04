function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4251)*y(4193))-(y(3801)*params(385)*y(3837)*y(4150)/params(449)+y(3500)*T(683)+y(3199)*params(252)*y(3235)*y(4148)/params(449)+y(2898)*params(187)*y(2934)*y(4147)/params(449)+y(2296)*params(57)*y(2332)*y(4145)/params(449)+y(2597)*T(337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
