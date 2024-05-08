function [y, T, residual, g1] = static_237(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3430)*y(3483))-(y(3431)*y(3484)+y(3433)*y(3485)+y(3435)*y(3486)+y(3437)*y(3487));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3430);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
