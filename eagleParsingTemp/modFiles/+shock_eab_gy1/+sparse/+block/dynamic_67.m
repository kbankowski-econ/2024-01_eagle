function [y, T, residual, g1] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3187)*y(3240))-(y(3188)*y(3241)+y(3190)*y(3242)+y(3192)*y(3243)+y(3194)*y(3244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3187);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
