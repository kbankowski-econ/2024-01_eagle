function [y, T, residual, g1] = dynamic_148(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8424)*y(8477))-(y(8425)*y(8478)+y(8427)*y(8479)+y(8429)*y(8480)+y(8431)*y(8481));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8424);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
