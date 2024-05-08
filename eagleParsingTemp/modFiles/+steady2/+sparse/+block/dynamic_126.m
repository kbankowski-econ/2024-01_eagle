function [y, T, residual, g1] = dynamic_126(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7940)*y(7988))-(y(7941)*y(7989)+y(7942)*y(7990)+y(7943)*y(7991)+y(7944)*y(7992));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7940);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
