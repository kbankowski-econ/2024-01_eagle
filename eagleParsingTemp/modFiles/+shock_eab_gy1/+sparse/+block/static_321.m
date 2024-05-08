function [y, T, residual, g1] = static_321(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4413))-(y(4434)*log(y(5385)-params(901)*y(5385))-1/(1+params(949))*y(4337)^(1+params(949))+params(882)*y(4413));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(882);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
