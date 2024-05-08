function [y, T, residual, g1] = dynamic_37(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2188)*y(2241))-(y(2189)*y(2242)+y(2191)*y(2243)+y(2193)*y(2244)+y(2195)*y(2245));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2188);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
