function [y, T, residual, g1] = dynamic_103(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3281)*y(3333))-(y(3282)*y(3334)+y(3284)*y(3335)+y(3286)*y(3336)+y(3288)*y(3337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3281);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
