function [y, T, residual, g1] = static_202(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2101)*y(2154))-(y(2102)*y(2155)+y(2104)*y(2156)+y(2106)*y(2157)+y(2108)*y(2158));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2101);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
