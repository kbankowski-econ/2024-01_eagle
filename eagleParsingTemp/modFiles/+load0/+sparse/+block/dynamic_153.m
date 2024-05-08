function [y, T, residual, g1] = dynamic_153(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6876)*y(6929))-(y(6877)*y(6930)+y(6879)*y(6931)+y(6881)*y(6932)+y(6883)*y(6933));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6876);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
