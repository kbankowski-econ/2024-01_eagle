function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5160)*y(5213))-(y(5161)*y(5214)+y(5163)*y(5215)+y(5165)*y(5216)+y(5167)*y(5217));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5160);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
