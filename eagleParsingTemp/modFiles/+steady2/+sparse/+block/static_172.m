function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2302)*y(2350))-(y(2303)*y(2351)+y(2304)*y(2352)+y(2305)*y(2353)+y(2306)*y(2354));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2302);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
