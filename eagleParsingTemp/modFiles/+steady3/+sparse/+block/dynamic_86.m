function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3949)*y(3892))-(y(4100)*params(456)*y(4136)*y(3845)/params(391)+y(3493)*params(322)*y(3529)*y(3844)/params(391)+y(3190)*params(256)*y(3226)*y(3843)/params(391)+y(2887)*params(190)*y(2923)*y(3842)/params(391)+y(2281)*params(58)*y(2317)*y(3840)/params(391)+y(2584)*params(124)*y(2620)*y(3841)/params(391));
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
