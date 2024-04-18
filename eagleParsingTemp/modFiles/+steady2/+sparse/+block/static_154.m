function [y, T, residual, g1] = static_154(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(496)*y(544))-(y(497)*y(545)+y(498)*y(546)+y(499)*y(547)+y(500)*y(548));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(496);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
