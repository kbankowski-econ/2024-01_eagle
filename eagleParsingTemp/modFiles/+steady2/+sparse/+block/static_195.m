function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(802)*y(2532))-(y(159)*(-params(93))-params(194)*y(498)-params(295)*y(837)-params(396)*y(1176)-params(497)*y(1515)-params(598)*y(1854)-params(702)*y(2193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(802);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
