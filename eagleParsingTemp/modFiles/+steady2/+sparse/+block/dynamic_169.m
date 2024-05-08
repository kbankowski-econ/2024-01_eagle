function [y, T, residual, g1] = dynamic_169(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9495)*y(9543))-(y(9496)*y(9544)+y(9497)*y(9545)+y(9498)*y(9546)+y(9499)*y(9547));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9495);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
