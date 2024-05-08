function [y, T, residual, g1] = dynamic_139(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4512)*y(4560))-(y(4513)*y(4561)+y(4514)*y(4562)+y(4515)*y(4563)+y(4516)*y(4564));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4512);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
