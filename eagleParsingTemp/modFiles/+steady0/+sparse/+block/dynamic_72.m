function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3701)*y(3754))-(y(3702)*y(3755)+y(3704)*y(3756)+y(3706)*y(3757)+y(3708)*y(3758));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
