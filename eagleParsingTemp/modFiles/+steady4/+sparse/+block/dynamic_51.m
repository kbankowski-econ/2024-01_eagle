function [y, T, residual, g1] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1253)*y(1306))-(y(1254)*y(1307)+y(1256)*y(1308)+y(1258)*y(1309)+y(1260)*y(1310));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1253);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
