function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6428)*y(6481))-(y(6429)*y(6482)+y(6431)*y(6483)+y(6433)*y(6484)+y(6435)*y(6485));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6428);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
