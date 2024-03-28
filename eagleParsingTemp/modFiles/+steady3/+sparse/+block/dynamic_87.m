function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2377)*y(2434))-(y(4095)*y(4131)*y(2330)*params(456)/params(58)+y(3792)*T(935)+y(3489)*T(934)+y(3186)*y(3222)*y(2327)*params(256)/params(58)+y(2580)*y(2616)*y(2325)*params(124)/params(58)+y(2883)*y(2919)*y(2326)*params(190)/params(58));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2377);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
