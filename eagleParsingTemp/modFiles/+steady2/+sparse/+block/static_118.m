function [y, T, residual, g1] = static_118(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(414)*y(462))-(y(415)*y(463)+y(416)*y(464)+y(417)*y(465)+y(418)*y(466));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(414);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
