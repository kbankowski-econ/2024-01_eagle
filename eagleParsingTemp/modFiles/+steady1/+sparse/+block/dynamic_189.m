function [y, T, residual, g1] = dynamic_189(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9292)*y(9345))-(y(9293)*y(9346)+y(9295)*y(9347)+y(9297)*y(9348)+y(9299)*y(9349));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9292);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
