function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11427)*y(11480))-(y(11428)*y(11481)+y(11430)*y(11482)+y(11432)*y(11483)+y(11434)*y(11484));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11427);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
