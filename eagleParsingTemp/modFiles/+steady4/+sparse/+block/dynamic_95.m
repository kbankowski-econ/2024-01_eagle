function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4293)*y(4234))-(y(3833)*params(409)*y(3869)*y(4187)/params(477)+y(3527)*T(472)+y(3221)*T(731)+y(2915)*params(199)*y(2951)*y(4184)/params(477)+y(2303)*params(61)*y(2339)*y(4182)/params(477)+y(2609)*params(130)*y(2645)*y(4183)/params(477));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4234);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
