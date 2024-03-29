function [y, T, residual, g1] = static_95(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(428)*y(482))-(y(429)*y(483)+y(433)*y(485)+y(437)*y(487)+y(430)*y(484)+y(434)*y(486));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(428);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
