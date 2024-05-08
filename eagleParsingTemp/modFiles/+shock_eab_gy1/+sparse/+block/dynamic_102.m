function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10787)*y(10840))-(y(10788)*y(10841)+y(10790)*y(10842)+y(10792)*y(10843)+y(10794)*y(10844));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10787);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
