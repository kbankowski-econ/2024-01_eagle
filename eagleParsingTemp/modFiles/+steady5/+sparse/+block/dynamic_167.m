function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7429)*y(7481))-(y(7430)*y(7482)+y(7432)*y(7483)+y(7434)*y(7484)+y(7436)*y(7485));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7429);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
