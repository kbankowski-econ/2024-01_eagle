function [y, T, residual, g1] = dynamic_63(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3837)*y(3890))-(y(3838)*y(3891)+y(3840)*y(3892)+y(3842)*y(3893)+y(3844)*y(3894));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3837);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
