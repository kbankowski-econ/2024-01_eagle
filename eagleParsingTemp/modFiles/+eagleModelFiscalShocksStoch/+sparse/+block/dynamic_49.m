function [y, T, residual, g1] = dynamic_49(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4676)*y(4609))-(y(4848)*params(624)*y(4908)*y(4566)/params(533)+y(4139)*params(438)*y(4199)*y(4565)/params(533)+y(3785)*params(346)*y(3845)*y(4564)/params(533)+y(3431)*params(254)*y(3491)*y(4563)/params(533)+y(2723)*params(70)*y(2783)*y(4561)/params(533)+y(3077)*params(162)*y(3137)*y(4562)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4609);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
