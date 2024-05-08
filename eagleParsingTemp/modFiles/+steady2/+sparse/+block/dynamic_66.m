function [y, T, residual, g1] = dynamic_66(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(511))-((-0.125)/(y(4301)*(y(4301)+y(4301)*y(4361)-1)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-((-((-0.125)*y(4301)*y(4301)))/(y(4301)*(y(4301)+y(4301)*y(4361)-1)*y(4301)*(y(4301)+y(4301)*y(4361)-1))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
