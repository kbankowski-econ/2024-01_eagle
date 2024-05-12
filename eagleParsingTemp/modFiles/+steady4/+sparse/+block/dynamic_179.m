function [y, T, residual, g1] = dynamic_179(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13059)*y(13112))-(y(13060)*y(13113)+y(13062)*y(13114)+y(13064)*y(13115)+y(13066)*y(13116));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13059);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
