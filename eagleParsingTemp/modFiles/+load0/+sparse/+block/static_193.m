function [y, T, residual, g1] = static_193(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2187)*y(2240))-(y(2188)*y(2241)+y(2190)*y(2242)+y(2192)*y(2243)+y(2194)*y(2244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2187);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
