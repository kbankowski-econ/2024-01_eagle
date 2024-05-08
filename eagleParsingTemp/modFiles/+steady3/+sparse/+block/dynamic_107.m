function [y, T, residual, g1] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4292)*y(4345))-(y(4293)*y(4346)+y(4295)*y(4347)+y(4297)*y(4348)+y(4299)*y(4349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4292);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
