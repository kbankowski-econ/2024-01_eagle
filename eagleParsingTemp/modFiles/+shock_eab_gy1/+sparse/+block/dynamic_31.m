function [y, T, residual, g1] = dynamic_31(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1470)*y(1523))-(y(1471)*y(1524)+y(1473)*y(1525)+y(1475)*y(1526)+y(1477)*y(1527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1470);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
