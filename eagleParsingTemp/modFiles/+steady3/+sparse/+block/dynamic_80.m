function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2787)*y(2840))-(y(2788)*y(2841)+y(2790)*y(2842)+y(2792)*y(2843)+y(2794)*y(2844));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2787);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
