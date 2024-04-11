function [y, T, residual, g1] = dynamic_100(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3589)*y(3637))-(y(3590)*y(3638)+y(3591)*y(3639)+y(3592)*y(3640)+y(3593)*y(3641));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3589);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
