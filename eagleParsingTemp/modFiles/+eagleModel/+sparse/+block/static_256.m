function [y, T, residual, g1] = static_256(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3646)*y(3699))-(y(3647)*y(3700)+y(3649)*y(3701)+y(3651)*y(3702)+y(3653)*y(3703));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3646);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
