function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5068)*y(5121))-(y(5069)*y(5122)+y(5071)*y(5123)+y(5073)*y(5124)+y(5075)*y(5125));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5068);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
