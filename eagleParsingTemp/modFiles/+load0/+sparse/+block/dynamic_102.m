function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2912)*y(2965))-(y(2913)*y(2966)+y(2915)*y(2967)+y(2917)*y(2968)+y(2919)*y(2969));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2912);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
