function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13461)*y(13514))-(y(13462)*y(13515)+y(13464)*y(13516)+y(13466)*y(13517)+y(13468)*y(13518));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13461);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
