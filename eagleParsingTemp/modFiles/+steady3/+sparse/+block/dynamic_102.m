function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3678)*y(3731))-(y(3679)*y(3732)+y(3681)*y(3733)+y(3683)*y(3734)+y(3685)*y(3735));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3678);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
