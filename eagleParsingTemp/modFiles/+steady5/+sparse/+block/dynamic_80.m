function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2793)*y(2845))-(y(2794)*y(2846)+y(2796)*y(2847)+y(2798)*y(2848)+y(2800)*y(2849));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2793);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
