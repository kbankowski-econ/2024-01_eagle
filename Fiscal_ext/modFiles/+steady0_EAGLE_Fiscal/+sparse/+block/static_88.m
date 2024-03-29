function [y, T, residual, g1] = static_88(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1033)*y(963))-(y(605)*params(250)*y(641)*y(929)/params(335)+y(41)*params(77)*y(77)*y(927)/params(335)+y(323)*params(162)*y(359)*y(928)/params(335));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(963);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
