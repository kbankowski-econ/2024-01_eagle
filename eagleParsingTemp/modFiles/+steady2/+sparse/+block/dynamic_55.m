function [y, T, residual, g1] = dynamic_55(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1734)*y(1782))-(y(1735)*y(1783)+y(1736)*y(1784)+y(1737)*y(1785)+y(1738)*y(1786));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1734);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
