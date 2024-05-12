function [y, T, residual, g1] = static_323(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3619)*y(3672))-(y(3620)*y(3673)+y(3622)*y(3674)+y(3624)*y(3675)+y(3626)*y(3676));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3619);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
