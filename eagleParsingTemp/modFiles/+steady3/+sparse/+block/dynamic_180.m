function [y, T, residual, g1] = dynamic_180(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13044)*y(13097))-(y(13045)*y(13098)+y(13047)*y(13099)+y(13049)*y(13100)+y(13051)*y(13101));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13044);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
