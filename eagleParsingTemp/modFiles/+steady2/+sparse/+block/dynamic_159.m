function [y, T, residual, g1] = dynamic_159(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6431)*y(6479))-(y(6432)*y(6480)+y(6433)*y(6481)+y(6434)*y(6482)+y(6435)*y(6483));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6431);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
