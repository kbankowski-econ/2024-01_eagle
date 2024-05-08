function [y, T, residual, g1] = static_241(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2047)*y(2100))-(y(2048)*y(2101)+y(2050)*y(2102)+y(2052)*y(2103)+y(2054)*y(2104));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2047);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
