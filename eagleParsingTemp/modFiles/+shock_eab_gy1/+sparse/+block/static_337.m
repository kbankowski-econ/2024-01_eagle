function [y, T, residual, g1] = static_337(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4510)*y(4563))-(y(4511)*y(4564)+y(4513)*y(4565)+y(4515)*y(4566)+y(4517)*y(4567));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4510);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
