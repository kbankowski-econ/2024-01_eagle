function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8481)*y(8534))-(y(8482)*y(8535)+y(8484)*y(8536)+y(8486)*y(8537)+y(8488)*y(8538));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8481);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
