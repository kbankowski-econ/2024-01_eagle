function [y, T, residual, g1] = dynamic_61(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3794)*y(3847))-(y(3795)*y(3848)+y(3797)*y(3849)+y(3799)*y(3850)+y(3801)*y(3851));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3794);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
