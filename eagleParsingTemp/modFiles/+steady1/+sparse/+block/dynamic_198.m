function [y, T, residual, g1] = dynamic_198(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10294)*y(10347))-(y(10295)*y(10348)+y(10297)*y(10349)+y(10299)*y(10350)+y(10301)*y(10351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10294);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
