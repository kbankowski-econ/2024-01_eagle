function [y, T, residual, g1] = static_169(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1999)*y(2052))-(y(2000)*y(2053)+y(2002)*y(2054)+y(2004)*y(2055)+y(2006)*y(2056));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1999);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
