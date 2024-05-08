function [y, T, residual, g1] = dynamic_150(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7852)*y(7905))-(y(7853)*y(7906)+y(7855)*y(7907)+y(7857)*y(7908)+y(7859)*y(7909));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7852);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
