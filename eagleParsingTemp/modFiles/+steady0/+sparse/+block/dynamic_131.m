function [y, T, residual, g1] = dynamic_131(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7849)*y(7902))-(y(7850)*y(7903)+y(7852)*y(7904)+y(7854)*y(7905)+y(7856)*y(7906));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7849);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
