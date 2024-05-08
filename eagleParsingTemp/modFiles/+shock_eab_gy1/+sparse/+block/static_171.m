function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(1)-(params(197)*(1-y(3348))*y(2545)/y(2516));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-(params(197)*(-y(2545))/y(2516)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
