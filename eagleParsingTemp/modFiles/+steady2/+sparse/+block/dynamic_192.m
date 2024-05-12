function [y, T, residual, g1] = dynamic_192(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12029)*y(12077))-(y(12030)*y(12078)+y(12031)*y(12079)+y(12032)*y(12080)+y(12033)*y(12081));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12029);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
