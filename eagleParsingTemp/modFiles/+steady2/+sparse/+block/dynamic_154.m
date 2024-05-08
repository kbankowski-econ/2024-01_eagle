function [y, T, residual, g1] = dynamic_154(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6854)*y(6902))-(y(6855)*y(6903)+y(6856)*y(6904)+y(6857)*y(6905)+y(6858)*y(6906));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6854);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
