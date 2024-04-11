function [y, T, residual, g1] = dynamic_109(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3240)*y(3288))-(y(3241)*y(3289)+y(3242)*y(3290)+y(3243)*y(3291)+y(3244)*y(3292));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3240);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
