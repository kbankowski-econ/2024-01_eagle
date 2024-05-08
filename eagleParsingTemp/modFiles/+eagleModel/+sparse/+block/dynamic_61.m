function [y, T, residual, g1] = dynamic_61(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3749)*y(3802))-(y(3750)*y(3803)+y(3752)*y(3804)+y(3754)*y(3805)+y(3756)*y(3806));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3749);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
