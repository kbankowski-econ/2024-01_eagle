function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(975)*y(908))-(y(2206)*params(624)*y(2266)*y(865)/params(254)+y(1852)*params(533)*y(1912)*y(864)/params(254)+y(1498)*params(438)*y(1558)*y(863)/params(254)+y(1144)*params(346)*y(1204)*y(862)/params(254)+y(81)*params(70)*y(141)*y(860)/params(254)+y(435)*params(162)*y(495)*y(861)/params(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(908);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
