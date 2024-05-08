function [y, T, residual, g1] = dynamic_111(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5813)*y(5866))-(y(5814)*y(5867)+y(5816)*y(5868)+y(5818)*y(5869)+y(5820)*y(5870));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5813);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
