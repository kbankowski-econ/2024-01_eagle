function [y, T, residual, g1] = static_170(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(586)*y(638))-(y(587)*y(639)+y(589)*y(640)+y(591)*y(641)+y(593)*y(642));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(586);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
