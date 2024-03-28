function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3949)*y(3892))-(y(4100)*T(489)+y(3493)*params(322)*y(3529)*y(3844)/params(391)+y(3190)*T(488)+y(2887)*T(487)+y(2281)*T(485)+y(2584)*T(486));
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
