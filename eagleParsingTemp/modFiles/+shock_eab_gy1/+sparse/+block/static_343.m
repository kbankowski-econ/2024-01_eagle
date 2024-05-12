function [y, T, residual, g1] = static_343(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3480)*y(3533))-(y(3481)*y(3534)+y(3483)*y(3535)+y(3485)*y(3536)+y(3487)*y(3537));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3480);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
