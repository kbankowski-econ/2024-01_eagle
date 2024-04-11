function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3716)*y(3649))-(y(5007)*params(533)*y(5067)*y(3606)/params(223)+y(4638)*T(437)+y(4269)*T(590)+y(3900)*params(300)*y(3960)*y(3603)/params(223)+y(2792)*params(69)*y(2852)*y(3601)/params(223)+y(3161)*params(146)*y(3221)*y(3602)/params(223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3649);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
