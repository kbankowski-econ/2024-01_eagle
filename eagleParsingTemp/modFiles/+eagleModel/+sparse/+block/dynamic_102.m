function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9463)*y(9516))-(y(9464)*y(9517)+y(9466)*y(9518)+y(9468)*y(9519)+y(9470)*y(9520));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9463);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
