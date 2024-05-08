function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3644)*y(3696))-(y(3645)*y(3697)+y(3647)*y(3698)+y(3649)*y(3699)+y(3651)*y(3700));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3644);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
