function [y, T, residual, g1] = static_249(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2268)*y(2316))-(y(2269)*y(2317)+y(2270)*y(2318)+y(2271)*y(2319)+y(2272)*y(2320));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2268);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
