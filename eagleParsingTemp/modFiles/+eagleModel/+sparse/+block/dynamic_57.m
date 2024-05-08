function [y, T, residual, g1] = dynamic_57(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2908)*y(2961))-(y(2909)*y(2962)+y(2911)*y(2963)+y(2913)*y(2964)+y(2915)*y(2965));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2908);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
