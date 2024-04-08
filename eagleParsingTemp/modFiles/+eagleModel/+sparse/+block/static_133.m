function [y, T, residual, g1] = static_133(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(1)-(y(1721)*params(377)*(1-y(1622))*y(2425)/y(2396));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(y(1721)*params(377)*(-y(2425))/y(2396)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
