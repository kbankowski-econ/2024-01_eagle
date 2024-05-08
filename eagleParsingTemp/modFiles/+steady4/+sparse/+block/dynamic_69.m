function [y, T, residual, g1] = dynamic_69(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(379)*y(2797))-(y(1645)*(-params(69))-params(146)*y(1933)-params(223)*y(2221)-params(303)*y(2509));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(379);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
