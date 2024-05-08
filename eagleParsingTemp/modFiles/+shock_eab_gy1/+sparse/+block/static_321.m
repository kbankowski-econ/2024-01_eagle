function [y, T, residual, g1] = static_321(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3312)*y(3365))-(y(3313)*y(3366)+y(3315)*y(3367)+y(3317)*y(3368)+y(3319)*y(3369));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3312);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
