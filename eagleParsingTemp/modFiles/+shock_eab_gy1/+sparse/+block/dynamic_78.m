function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9459)*y(9512))-(y(9460)*y(9513)+y(9462)*y(9514)+y(9464)*y(9515)+y(9466)*y(9516));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9459);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
