function [y, T, residual, g1] = static_359(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7922)*y(7974))-(y(7923)*y(7975)+y(7925)*y(7976)+y(7927)*y(7977)+y(7929)*y(7978));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7922);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
