function [y, T, residual, g1] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3611)*y(3664))-(y(3612)*y(3665)+y(3614)*y(3666)+y(3616)*y(3667)+y(3618)*y(3668));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3611);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
