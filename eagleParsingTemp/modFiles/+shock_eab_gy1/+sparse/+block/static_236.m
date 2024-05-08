function [y, T, residual, g1] = static_236(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(1)-(y(1627)*params(297)*(1-y(1528))*y(4556)/y(4527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(1627)*params(297)*(-y(4556))/y(4527)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
